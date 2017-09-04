package org.codehaus.jackson.impl;

import java.io.IOException;
import java.io.Reader;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.io.IOContext;
import org.codehaus.jackson.sym.CharsToNameCanonicalizer;
import org.codehaus.jackson.util.ByteArrayBuilder;
import org.codehaus.jackson.util.CharTypes;
import org.codehaus.jackson.util.TextBuffer;

public final class ReaderBasedParser
  extends ReaderBasedNumericParser
{
  protected ObjectCodec _objectCodec;
  protected final CharsToNameCanonicalizer _symbols;
  protected boolean _tokenIncomplete = false;
  
  public ReaderBasedParser(IOContext paramIOContext, int paramInt, Reader paramReader, ObjectCodec paramObjectCodec, CharsToNameCanonicalizer paramCharsToNameCanonicalizer)
  {
    super(paramIOContext, paramInt, paramReader);
    _objectCodec = paramObjectCodec;
    _symbols = paramCharsToNameCanonicalizer;
  }
  
  private final int _decodeBase64Escape(Base64Variant paramBase64Variant, char paramChar, int paramInt)
    throws IOException, JsonParseException
  {
    if (paramChar != '\\') {
      throw reportInvalidChar(paramBase64Variant, paramChar, paramInt);
    }
    paramChar = _decodeEscaped();
    int i;
    if ((paramChar <= ' ') && (paramInt == 0)) {
      i = -1;
    }
    int j;
    do
    {
      return i;
      j = paramBase64Variant.decodeBase64Char(paramChar);
      i = j;
    } while (j >= 0);
    throw reportInvalidChar(paramBase64Variant, paramChar, paramInt);
  }
  
  private final JsonToken _nextAfterName()
  {
    _nameCopied = false;
    JsonToken localJsonToken = _nextToken;
    _nextToken = null;
    if (localJsonToken == JsonToken.START_ARRAY) {
      _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
    }
    for (;;)
    {
      _currToken = localJsonToken;
      return localJsonToken;
      if (localJsonToken == JsonToken.START_OBJECT) {
        _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
      }
    }
  }
  
  private String _parseFieldName2(int paramInt1, int paramInt2, int paramInt3)
    throws IOException, JsonParseException
  {
    _textBuffer.resetWithShared(_inputBuffer, paramInt1, _inputPtr - paramInt1);
    Object localObject = _textBuffer.getCurrentSegment();
    paramInt1 = _textBuffer.getCurrentSegmentSize();
    for (;;)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOF(": was expecting closing '" + (char)paramInt3 + "' for name");
      }
      char[] arrayOfChar = _inputBuffer;
      int k = _inputPtr;
      _inputPtr = (k + 1);
      int j = arrayOfChar[k];
      int i = j;
      if (j <= 92)
      {
        if (j != 92) {
          break label174;
        }
        i = _decodeEscaped();
      }
      for (;;)
      {
        paramInt2 = paramInt2 * 31 + j;
        k = paramInt1 + 1;
        localObject[paramInt1] = i;
        if (k < localObject.length) {
          break label262;
        }
        localObject = _textBuffer.finishCurrentSegment();
        paramInt1 = 0;
        break;
        label174:
        i = j;
        if (j <= paramInt3)
        {
          if (j == paramInt3)
          {
            _textBuffer.setCurrentLength(paramInt1);
            localObject = _textBuffer;
            arrayOfChar = ((TextBuffer)localObject).getTextBuffer();
            paramInt1 = ((TextBuffer)localObject).getTextOffset();
            paramInt3 = ((TextBuffer)localObject).size();
            return _symbols.findSymbol(arrayOfChar, paramInt1, paramInt3, paramInt2);
          }
          i = j;
          if (j < 32)
          {
            _throwUnquotedSpace(j, "name");
            i = j;
          }
        }
      }
      label262:
      paramInt1 = k;
    }
  }
  
  private String _parseUnusualFieldName2(int paramInt1, int paramInt2, int[] paramArrayOfInt)
    throws IOException, JsonParseException
  {
    _textBuffer.resetWithShared(_inputBuffer, paramInt1, _inputPtr - paramInt1);
    char[] arrayOfChar = _textBuffer.getCurrentSegment();
    paramInt1 = _textBuffer.getCurrentSegmentSize();
    int k = paramArrayOfInt.length;
    for (;;)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {}
      int j;
      for (;;)
      {
        _textBuffer.setCurrentLength(paramInt1);
        paramArrayOfInt = _textBuffer;
        arrayOfChar = paramArrayOfInt.getTextBuffer();
        paramInt1 = paramArrayOfInt.getTextOffset();
        j = paramArrayOfInt.size();
        return _symbols.findSymbol(arrayOfChar, paramInt1, j, paramInt2);
        int i = _inputBuffer[_inputPtr];
        if (i <= k)
        {
          if (paramArrayOfInt[i] != 0) {}
        }
        else {
          while (Character.isJavaIdentifierPart(i))
          {
            _inputPtr += 1;
            paramInt2 = paramInt2 * 31 + i;
            j = paramInt1 + 1;
            arrayOfChar[paramInt1] = i;
            if (j < arrayOfChar.length) {
              break label188;
            }
            arrayOfChar = _textBuffer.finishCurrentSegment();
            paramInt1 = 0;
            break;
          }
        }
      }
      label188:
      paramInt1 = j;
    }
  }
  
  private final void _skipCComment()
    throws IOException, JsonParseException
  {
    for (;;)
    {
      int i;
      if ((_inputPtr < _inputEnd) || (loadMore()))
      {
        char[] arrayOfChar = _inputBuffer;
        i = _inputPtr;
        _inputPtr = (i + 1);
        i = arrayOfChar[i];
        if (i > 42) {
          continue;
        }
        if (i != 42) {
          break label101;
        }
        if ((_inputPtr < _inputEnd) || (loadMore())) {}
      }
      else
      {
        _reportInvalidEOF(" in a comment");
        return;
      }
      if (_inputBuffer[_inputPtr] == '/')
      {
        _inputPtr += 1;
        return;
        label101:
        if (i < 32) {
          if (i == 10) {
            _skipLF();
          } else if (i == 13) {
            _skipCR();
          } else if (i != 9) {
            _throwInvalidSpace(i);
          }
        }
      }
    }
  }
  
  private final void _skipComment()
    throws IOException, JsonParseException
  {
    if (!isEnabled(JsonParser.Feature.ALLOW_COMMENTS)) {
      _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
    }
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(" in a comment");
    }
    char[] arrayOfChar = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfChar[i];
    if (i == 47)
    {
      _skipCppComment();
      return;
    }
    if (i == 42)
    {
      _skipCComment();
      return;
    }
    _reportUnexpectedChar(i, "was expecting either '*' or '/' for a comment");
  }
  
  private final void _skipCppComment()
    throws IOException, JsonParseException
  {
    for (;;)
    {
      int i;
      if ((_inputPtr < _inputEnd) || (loadMore()))
      {
        char[] arrayOfChar = _inputBuffer;
        i = _inputPtr;
        _inputPtr = (i + 1);
        i = arrayOfChar[i];
        if (i >= 32) {
          continue;
        }
        if (i == 10) {
          _skipLF();
        }
      }
      else
      {
        return;
      }
      if (i == 13)
      {
        _skipCR();
        return;
      }
      if (i != 9) {
        _throwInvalidSpace(i);
      }
    }
  }
  
  private final int _skipWS()
    throws IOException, JsonParseException
  {
    while ((_inputPtr < _inputEnd) || (loadMore()))
    {
      char[] arrayOfChar = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfChar[i];
      if (i > 32)
      {
        if (i != 47) {
          return i;
        }
        _skipComment();
      }
      else if (i != 32)
      {
        if (i == 10) {
          _skipLF();
        } else if (i == 13) {
          _skipCR();
        } else if (i != 9) {
          _throwInvalidSpace(i);
        }
      }
    }
    throw _constructError("Unexpected end-of-input within/between " + _parsingContext.getTypeDesc() + " entries");
  }
  
  private final int _skipWSOrEnd()
    throws IOException, JsonParseException
  {
    while ((_inputPtr < _inputEnd) || (loadMore()))
    {
      char[] arrayOfChar = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfChar[i];
      if (i > 32)
      {
        if (i != 47) {
          return i;
        }
        _skipComment();
      }
      else if (i != 32)
      {
        if (i == 10) {
          _skipLF();
        } else if (i == 13) {
          _skipCR();
        } else if (i != 9) {
          _throwInvalidSpace(i);
        }
      }
    }
    _handleEOF();
    return -1;
  }
  
  protected byte[] _decodeBase64(Base64Variant paramBase64Variant)
    throws IOException, JsonParseException
  {
    ByteArrayBuilder localByteArrayBuilder = _getByteArrayBuilder();
    for (;;)
    {
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      char[] arrayOfChar = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      char c = arrayOfChar[i];
      if (c > ' ')
      {
        int j = paramBase64Variant.decodeBase64Char(c);
        i = j;
        if (j < 0)
        {
          if (c == '"') {
            return localByteArrayBuilder.toByteArray();
          }
          i = _decodeBase64Escape(paramBase64Variant, c, 0);
          if (i < 0) {}
        }
        else
        {
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfChar = _inputBuffer;
          j = _inputPtr;
          _inputPtr = (j + 1);
          c = arrayOfChar[j];
          int k = paramBase64Variant.decodeBase64Char(c);
          j = k;
          if (k < 0) {
            j = _decodeBase64Escape(paramBase64Variant, c, 1);
          }
          int m = i << 6 | j;
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfChar = _inputBuffer;
          i = _inputPtr;
          _inputPtr = (i + 1);
          c = arrayOfChar[i];
          j = paramBase64Variant.decodeBase64Char(c);
          k = j;
          if (j < 0)
          {
            i = j;
            if (j != -2) {
              i = _decodeBase64Escape(paramBase64Variant, c, 2);
            }
            k = i;
            if (i == -2)
            {
              if (_inputPtr >= _inputEnd) {
                loadMoreGuaranteed();
              }
              arrayOfChar = _inputBuffer;
              i = _inputPtr;
              _inputPtr = (i + 1);
              c = arrayOfChar[i];
              if (!paramBase64Variant.usesPaddingChar(c)) {
                throw reportInvalidChar(paramBase64Variant, c, 3, "expected padding character '" + paramBase64Variant.getPaddingChar() + "'");
              }
              localByteArrayBuilder.append(m >> 4);
              continue;
            }
          }
          m = m << 6 | k;
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfChar = _inputBuffer;
          i = _inputPtr;
          _inputPtr = (i + 1);
          c = arrayOfChar[i];
          j = paramBase64Variant.decodeBase64Char(c);
          k = j;
          if (j < 0)
          {
            i = j;
            if (j != -2) {
              i = _decodeBase64Escape(paramBase64Variant, c, 3);
            }
            k = i;
            if (i == -2)
            {
              localByteArrayBuilder.appendTwoBytes(m >> 2);
              continue;
            }
          }
          localByteArrayBuilder.appendThreeBytes(m << 6 | k);
        }
      }
    }
  }
  
  protected final char _decodeEscaped()
    throws IOException, JsonParseException
  {
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(" in character escape sequence");
    }
    char[] arrayOfChar = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    char c2 = arrayOfChar[i];
    char c1 = c2;
    switch (c2)
    {
    default: 
      c1 = _handleUnrecognizedCharacterEscape(c2);
    case '"': 
    case '/': 
    case '\\': 
      return c1;
    case 'b': 
      return '\b';
    case 't': 
      return '\t';
    case 'n': 
      return '\n';
    case 'f': 
      return '\f';
    case 'r': 
      return '\r';
    }
    int j = 0;
    i = 0;
    while (i < 4)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOF(" in character escape sequence");
      }
      arrayOfChar = _inputBuffer;
      int k = _inputPtr;
      _inputPtr = (k + 1);
      k = arrayOfChar[k];
      int m = CharTypes.charToHex(k);
      if (m < 0) {
        _reportUnexpectedChar(k, "expected a hex-digit for character escape sequence");
      }
      j = j << 4 | m;
      i += 1;
    }
    return (char)j;
  }
  
  protected void _finishString()
    throws IOException, JsonParseException
  {
    int i = _inputPtr;
    int k = _inputEnd;
    int j = i;
    if (i < k)
    {
      int[] arrayOfInt = CharTypes.getInputCodeLatin1();
      int m = arrayOfInt.length;
      do
      {
        int n = _inputBuffer[i];
        if ((n < m) && (arrayOfInt[n] != 0))
        {
          j = i;
          if (n != 34) {
            break;
          }
          _textBuffer.resetWithShared(_inputBuffer, _inputPtr, i - _inputPtr);
          _inputPtr = (i + 1);
          return;
        }
        j = i + 1;
        i = j;
      } while (j < k);
    }
    _textBuffer.resetWithCopy(_inputBuffer, _inputPtr, j - _inputPtr);
    _inputPtr = j;
    _finishString2();
  }
  
  protected void _finishString2()
    throws IOException, JsonParseException
  {
    Object localObject1 = _textBuffer.getCurrentSegment();
    int k = _textBuffer.getCurrentSegmentSize();
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(": was expecting closing quote for a string value");
    }
    Object localObject2 = _inputBuffer;
    int m = _inputPtr;
    _inputPtr = (m + 1);
    int j = localObject2[m];
    int i = j;
    if (j <= 92)
    {
      if (j != 92) {
        break label131;
      }
      i = _decodeEscaped();
    }
    for (;;)
    {
      localObject2 = localObject1;
      m = k;
      if (k >= localObject1.length)
      {
        localObject2 = _textBuffer.finishCurrentSegment();
        m = 0;
      }
      localObject2[m] = i;
      k = m + 1;
      localObject1 = localObject2;
      break;
      label131:
      i = j;
      if (j <= 34)
      {
        if (j == 34)
        {
          _textBuffer.setCurrentLength(k);
          return;
        }
        i = j;
        if (j < 32)
        {
          _throwUnquotedSpace(j, "string value");
          i = j;
        }
      }
    }
  }
  
  protected final String _getText2(JsonToken paramJsonToken)
  {
    if (paramJsonToken == null) {
      return null;
    }
    switch (1.$SwitchMap$org$codehaus$jackson$JsonToken[paramJsonToken.ordinal()])
    {
    default: 
      return paramJsonToken.asString();
    case 1: 
      return _parsingContext.getCurrentName();
    }
    return _textBuffer.contentsAsString();
  }
  
  protected final JsonToken _handleApostropheValue()
    throws IOException, JsonParseException
  {
    Object localObject1 = _textBuffer.emptyAndGetCurrentSegment();
    int k = _textBuffer.getCurrentSegmentSize();
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(": was expecting closing quote for a string value");
    }
    Object localObject2 = _inputBuffer;
    int m = _inputPtr;
    _inputPtr = (m + 1);
    int j = localObject2[m];
    int i = j;
    if (j <= 92)
    {
      if (j != 92) {
        break label131;
      }
      i = _decodeEscaped();
    }
    for (;;)
    {
      localObject2 = localObject1;
      m = k;
      if (k >= localObject1.length)
      {
        localObject2 = _textBuffer.finishCurrentSegment();
        m = 0;
      }
      localObject2[m] = i;
      k = m + 1;
      localObject1 = localObject2;
      break;
      label131:
      i = j;
      if (j <= 39)
      {
        if (j == 39)
        {
          _textBuffer.setCurrentLength(k);
          return JsonToken.VALUE_STRING;
        }
        i = j;
        if (j < 32)
        {
          _throwUnquotedSpace(j, "string value");
          i = j;
        }
      }
    }
  }
  
  protected final JsonToken _handleUnexpectedValue(int paramInt)
    throws IOException, JsonParseException
  {
    switch (paramInt)
    {
    default: 
    case 39: 
    case 78: 
      for (;;)
      {
        _reportUnexpectedChar(paramInt, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
        if (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES))
        {
          return _handleApostropheValue();
          if (_matchToken("NaN", 1))
          {
            if (isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
              return resetAsNaN("NaN", NaN.0D);
            }
            _reportError("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
          }
          arrayOfChar = _inputBuffer;
          int i = _inputPtr;
          _inputPtr = (i + 1);
          _reportUnexpectedChar(arrayOfChar[i], "expected 'NaN' or a valid value");
        }
      }
    }
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOFInValue();
    }
    char[] arrayOfChar = _inputBuffer;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    return _handleInvalidNumberStart(arrayOfChar[paramInt], false);
  }
  
  protected final String _handleUnusualFieldName(int paramInt)
    throws IOException, JsonParseException
  {
    if ((paramInt == 39) && (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES))) {
      return _parseApostropheFieldName();
    }
    if (!isEnabled(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES)) {
      _reportUnexpectedChar(paramInt, "was expecting double-quote to start field name");
    }
    int[] arrayOfInt = CharTypes.getInputCodeLatin1JsNames();
    int m = arrayOfInt.length;
    boolean bool;
    int j;
    int k;
    int n;
    if (paramInt < m) {
      if ((arrayOfInt[paramInt] == 0) && ((paramInt < 48) || (paramInt > 57)))
      {
        bool = true;
        if (!bool) {
          _reportUnexpectedChar(paramInt, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        i = _inputPtr;
        j = 0;
        k = 0;
        n = _inputEnd;
        paramInt = i;
        if (i >= n) {
          break label248;
        }
        paramInt = i;
        i = k;
      }
    }
    label221:
    do
    {
      j = _inputBuffer[paramInt];
      if (j < m)
      {
        if (arrayOfInt[j] == 0) {
          break label221;
        }
        j = _inputPtr - 1;
        _inputPtr = paramInt;
        return _symbols.findSymbol(_inputBuffer, j, paramInt - j, i);
        bool = false;
        break;
        bool = Character.isJavaIdentifierPart((char)paramInt);
        break;
      }
      if (!Character.isJavaIdentifierPart((char)j))
      {
        j = _inputPtr - 1;
        _inputPtr = paramInt;
        return _symbols.findSymbol(_inputBuffer, j, paramInt - j, i);
      }
      j = i * 31 + j;
      k = paramInt + 1;
      i = j;
      paramInt = k;
    } while (k < n);
    paramInt = k;
    label248:
    int i = _inputPtr;
    _inputPtr = paramInt;
    return _parseUnusualFieldName2(i - 1, j, arrayOfInt);
  }
  
  protected void _matchToken(JsonToken paramJsonToken)
    throws IOException, JsonParseException
  {
    paramJsonToken = paramJsonToken.asString();
    int i = 1;
    int j = paramJsonToken.length();
    while (i < j)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOF(" in a value");
      }
      if (_inputBuffer[_inputPtr] != paramJsonToken.charAt(i)) {
        _reportInvalidToken(paramJsonToken.substring(0, i), "'null', 'true' or 'false'");
      }
      _inputPtr += 1;
      i += 1;
    }
  }
  
  protected final String _parseApostropheFieldName()
    throws IOException, JsonParseException
  {
    int k = _inputPtr;
    int i = 0;
    int m = 0;
    int n = _inputEnd;
    int j = k;
    if (k < n)
    {
      int[] arrayOfInt = CharTypes.getInputCodeLatin1();
      int i1 = arrayOfInt.length;
      j = k;
      i = m;
      k = _inputBuffer[j];
      if (k == 39)
      {
        k = _inputPtr;
        _inputPtr = (j + 1);
        return _symbols.findSymbol(_inputBuffer, k, j - k, i);
      }
      if ((k >= i1) || (arrayOfInt[k] == 0)) {
        break label113;
      }
    }
    for (;;)
    {
      k = _inputPtr;
      _inputPtr = j;
      return _parseFieldName2(k, i, 39);
      label113:
      m = i * 31 + k;
      k = j + 1;
      i = m;
      j = k;
      if (k < n) {
        break;
      }
      i = m;
      j = k;
    }
  }
  
  protected final String _parseFieldName(int paramInt)
    throws IOException, JsonParseException
  {
    if (paramInt != 34) {
      return _handleUnusualFieldName(paramInt);
    }
    paramInt = _inputPtr;
    int k = 0;
    int i = 0;
    int m = _inputEnd;
    int j = paramInt;
    if (paramInt < m)
    {
      int[] arrayOfInt = CharTypes.getInputCodeLatin1();
      int n = arrayOfInt.length;
      do
      {
        int i1 = _inputBuffer[paramInt];
        if ((i1 < n) && (arrayOfInt[i1] != 0))
        {
          k = i;
          j = paramInt;
          if (i1 != 34) {
            break;
          }
          j = _inputPtr;
          _inputPtr = (paramInt + 1);
          return _symbols.findSymbol(_inputBuffer, j, paramInt - j, i);
        }
        k = i * 31 + i1;
        j = paramInt + 1;
        i = k;
        paramInt = j;
      } while (j < m);
    }
    paramInt = _inputPtr;
    _inputPtr = j;
    return _parseFieldName2(paramInt, k, 34);
  }
  
  protected final void _skipCR()
    throws IOException
  {
    if (((_inputPtr < _inputEnd) || (loadMore())) && (_inputBuffer[_inputPtr] == '\n')) {
      _inputPtr += 1;
    }
    _currInputRow += 1;
    _currInputRowStart = _inputPtr;
  }
  
  protected final void _skipLF()
    throws IOException
  {
    _currInputRow += 1;
    _currInputRowStart = _inputPtr;
  }
  
  protected void _skipString()
    throws IOException, JsonParseException
  {
    _tokenIncomplete = false;
    int i = _inputPtr;
    int j = _inputEnd;
    char[] arrayOfChar = _inputBuffer;
    for (;;)
    {
      int k = j;
      int m = i;
      if (i >= j)
      {
        _inputPtr = i;
        if (!loadMore()) {
          _reportInvalidEOF(": was expecting closing quote for a string value");
        }
        m = _inputPtr;
        k = _inputEnd;
      }
      i = m + 1;
      j = arrayOfChar[m];
      if (j <= 92)
      {
        if (j == 92)
        {
          _inputPtr = i;
          _decodeEscaped();
          i = _inputPtr;
          j = _inputEnd;
          continue;
        }
        if (j <= 34)
        {
          if (j == 34)
          {
            _inputPtr = i;
            return;
          }
          if (j < 32)
          {
            _inputPtr = i;
            _throwUnquotedSpace(j, "string value");
          }
        }
      }
      j = k;
    }
  }
  
  public void close()
    throws IOException
  {
    super.close();
    _symbols.release();
  }
  
  public byte[] getBinaryValue(Base64Variant paramBase64Variant)
    throws IOException, JsonParseException
  {
    if ((_currToken != JsonToken.VALUE_STRING) && ((_currToken != JsonToken.VALUE_EMBEDDED_OBJECT) || (_binaryValue == null))) {
      _reportError("Current token (" + _currToken + ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
    }
    if (_tokenIncomplete) {}
    try
    {
      _binaryValue = _decodeBase64(paramBase64Variant);
      _tokenIncomplete = false;
      return _binaryValue;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw _constructError("Failed to decode VALUE_STRING as base64 (" + paramBase64Variant + "): " + localIllegalArgumentException.getMessage());
    }
  }
  
  public ObjectCodec getCodec()
  {
    return _objectCodec;
  }
  
  public final String getText()
    throws IOException, JsonParseException
  {
    JsonToken localJsonToken = _currToken;
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      if (_tokenIncomplete)
      {
        _tokenIncomplete = false;
        _finishString();
      }
      return _textBuffer.contentsAsString();
    }
    return _getText2(localJsonToken);
  }
  
  public char[] getTextCharacters()
    throws IOException, JsonParseException
  {
    if (_currToken != null)
    {
      switch (1.$SwitchMap$org$codehaus$jackson$JsonToken[_currToken.ordinal()])
      {
      default: 
        return _currToken.asCharArray();
      case 1: 
        String str;
        int i;
        if (!_nameCopied)
        {
          str = _parsingContext.getCurrentName();
          i = str.length();
          if (_nameCopyBuffer != null) {
            break label116;
          }
          _nameCopyBuffer = _ioContext.allocNameCopyBuffer(i);
        }
        for (;;)
        {
          str.getChars(0, i, _nameCopyBuffer, 0);
          _nameCopied = true;
          return _nameCopyBuffer;
          if (_nameCopyBuffer.length < i) {
            _nameCopyBuffer = new char[i];
          }
        }
      case 2: 
        label116:
        if (_tokenIncomplete)
        {
          _tokenIncomplete = false;
          _finishString();
        }
        break;
      }
      return _textBuffer.getTextBuffer();
    }
    return null;
  }
  
  public int getTextLength()
    throws IOException, JsonParseException
  {
    int i = 0;
    if (_currToken != null) {}
    switch (1.$SwitchMap$org$codehaus$jackson$JsonToken[_currToken.ordinal()])
    {
    default: 
      i = _currToken.asCharArray().length;
      return i;
    case 1: 
      return _parsingContext.getCurrentName().length();
    case 2: 
      if (_tokenIncomplete)
      {
        _tokenIncomplete = false;
        _finishString();
      }
      break;
    }
    return _textBuffer.size();
  }
  
  public int getTextOffset()
    throws IOException, JsonParseException
  {
    if (_currToken != null) {}
    switch (1.$SwitchMap$org$codehaus$jackson$JsonToken[_currToken.ordinal()])
    {
    case 1: 
    default: 
      return 0;
    case 2: 
      if (_tokenIncomplete)
      {
        _tokenIncomplete = false;
        _finishString();
      }
      break;
    }
    return _textBuffer.getTextOffset();
  }
  
  public JsonToken nextToken()
    throws IOException, JsonParseException
  {
    if (_currToken == JsonToken.FIELD_NAME) {
      return _nextAfterName();
    }
    if (_tokenIncomplete) {
      _skipString();
    }
    int j = _skipWSOrEnd();
    if (j < 0)
    {
      close();
      _currToken = null;
      return null;
    }
    _tokenInputTotal = (_currInputProcessed + _inputPtr - 1L);
    _tokenInputRow = _currInputRow;
    _tokenInputCol = (_inputPtr - _currInputRowStart - 1);
    _binaryValue = null;
    Object localObject;
    if (j == 93)
    {
      if (!_parsingContext.inArray()) {
        _reportMismatchedEndMarker(j, '}');
      }
      _parsingContext = _parsingContext.getParent();
      localObject = JsonToken.END_ARRAY;
      _currToken = ((JsonToken)localObject);
      return localObject;
    }
    if (j == 125)
    {
      if (!_parsingContext.inObject()) {
        _reportMismatchedEndMarker(j, ']');
      }
      _parsingContext = _parsingContext.getParent();
      localObject = JsonToken.END_OBJECT;
      _currToken = ((JsonToken)localObject);
      return localObject;
    }
    int i = j;
    if (_parsingContext.expectComma())
    {
      if (j != 44) {
        _reportUnexpectedChar(j, "was expecting comma to separate " + _parsingContext.getTypeDesc() + " entries");
      }
      i = _skipWS();
    }
    boolean bool = _parsingContext.inObject();
    j = i;
    if (bool)
    {
      localObject = _parseFieldName(i);
      _parsingContext.setCurrentName((String)localObject);
      _currToken = JsonToken.FIELD_NAME;
      i = _skipWS();
      if (i != 58) {
        _reportUnexpectedChar(i, "was expecting a colon to separate field name and value");
      }
      j = _skipWS();
    }
    switch (j)
    {
    default: 
      localObject = _handleUnexpectedValue(j);
    }
    while (bool)
    {
      _nextToken = ((JsonToken)localObject);
      return _currToken;
      _tokenIncomplete = true;
      localObject = JsonToken.VALUE_STRING;
      continue;
      if (!bool) {
        _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
      }
      localObject = JsonToken.START_ARRAY;
      continue;
      if (!bool) {
        _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
      }
      localObject = JsonToken.START_OBJECT;
      continue;
      _reportUnexpectedChar(j, "expected a value");
      _matchToken(JsonToken.VALUE_TRUE);
      localObject = JsonToken.VALUE_TRUE;
      continue;
      _matchToken(JsonToken.VALUE_FALSE);
      localObject = JsonToken.VALUE_FALSE;
      continue;
      _matchToken(JsonToken.VALUE_NULL);
      localObject = JsonToken.VALUE_NULL;
      continue;
      localObject = parseNumberText(j);
    }
    _currToken = ((JsonToken)localObject);
    return localObject;
  }
  
  protected IllegalArgumentException reportInvalidChar(Base64Variant paramBase64Variant, char paramChar, int paramInt)
    throws IllegalArgumentException
  {
    return reportInvalidChar(paramBase64Variant, paramChar, paramInt, null);
  }
  
  protected IllegalArgumentException reportInvalidChar(Base64Variant paramBase64Variant, char paramChar, int paramInt, String paramString)
    throws IllegalArgumentException
  {
    if (paramChar <= ' ') {
      paramBase64Variant = "Illegal white space character (code 0x" + Integer.toHexString(paramChar) + ") as character #" + (paramInt + 1) + " of 4-char base64 unit: can only used between units";
    }
    for (;;)
    {
      Object localObject = paramBase64Variant;
      if (paramString != null) {
        localObject = paramBase64Variant + ": " + paramString;
      }
      return new IllegalArgumentException((String)localObject);
      if (paramBase64Variant.usesPaddingChar(paramChar)) {
        paramBase64Variant = "Unexpected padding character ('" + paramBase64Variant.getPaddingChar() + "') as character #" + (paramInt + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
      } else if ((!Character.isDefined(paramChar)) || (Character.isISOControl(paramChar))) {
        paramBase64Variant = "Illegal character (code 0x" + Integer.toHexString(paramChar) + ") in base64 content";
      } else {
        paramBase64Variant = "Illegal character '" + paramChar + "' (code 0x" + Integer.toHexString(paramChar) + ") in base64 content";
      }
    }
  }
  
  public void setCodec(ObjectCodec paramObjectCodec)
  {
    _objectCodec = paramObjectCodec;
  }
}
