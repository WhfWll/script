package org.codehaus.jackson.impl;

import java.io.IOException;
import java.io.InputStream;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.io.IOContext;
import org.codehaus.jackson.sym.BytesToNameCanonicalizer;
import org.codehaus.jackson.sym.Name;
import org.codehaus.jackson.util.ByteArrayBuilder;
import org.codehaus.jackson.util.CharTypes;
import org.codehaus.jackson.util.TextBuffer;

public final class Utf8StreamParser
  extends StreamBasedParserBase
{
  static final byte BYTE_LF = 10;
  private static final int[] sInputCodesLatin1 = CharTypes.getInputCodeLatin1();
  private static final int[] sInputCodesUtf8 = ;
  protected ObjectCodec _objectCodec;
  private int _quad1;
  protected int[] _quadBuffer = new int[16];
  protected final BytesToNameCanonicalizer _symbols;
  protected boolean _tokenIncomplete = false;
  
  public Utf8StreamParser(IOContext paramIOContext, int paramInt1, InputStream paramInputStream, ObjectCodec paramObjectCodec, BytesToNameCanonicalizer paramBytesToNameCanonicalizer, byte[] paramArrayOfByte, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    super(paramIOContext, paramInt1, paramInputStream, paramArrayOfByte, paramInt2, paramInt3, paramBoolean);
    _objectCodec = paramObjectCodec;
    _symbols = paramBytesToNameCanonicalizer;
    if (!JsonParser.Feature.CANONICALIZE_FIELD_NAMES.enabledIn(paramInt1)) {
      _throwInternal();
    }
  }
  
  private final int _decodeBase64Escape(Base64Variant paramBase64Variant, int paramInt1, int paramInt2)
    throws IOException, JsonParseException
  {
    if (paramInt1 != 92) {
      throw reportInvalidChar(paramBase64Variant, paramInt1, paramInt2);
    }
    int j = _decodeEscaped();
    if ((j <= 32) && (paramInt2 == 0)) {
      paramInt1 = -1;
    }
    int i;
    do
    {
      return paramInt1;
      i = paramBase64Variant.decodeBase64Char(j);
      paramInt1 = i;
    } while (i >= 0);
    throw reportInvalidChar(paramBase64Variant, j, paramInt2);
  }
  
  private final int _decodeUtf8_2(int paramInt)
    throws IOException, JsonParseException
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i];
    if ((i & 0xC0) != 128) {
      _reportInvalidOther(i & 0xFF, _inputPtr);
    }
    return (paramInt & 0x1F) << 6 | i & 0x3F;
  }
  
  private final int _decodeUtf8_3(int paramInt)
    throws IOException, JsonParseException
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i];
    if ((i & 0xC0) != 128) {
      _reportInvalidOther(i & 0xFF, _inputPtr);
    }
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    int j = _inputPtr;
    _inputPtr = (j + 1);
    j = arrayOfByte[j];
    if ((j & 0xC0) != 128) {
      _reportInvalidOther(j & 0xFF, _inputPtr);
    }
    return ((paramInt & 0xF) << 6 | i & 0x3F) << 6 | j & 0x3F;
  }
  
  private final int _decodeUtf8_3fast(int paramInt)
    throws IOException, JsonParseException
  {
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i];
    if ((i & 0xC0) != 128) {
      _reportInvalidOther(i & 0xFF, _inputPtr);
    }
    arrayOfByte = _inputBuffer;
    int j = _inputPtr;
    _inputPtr = (j + 1);
    j = arrayOfByte[j];
    if ((j & 0xC0) != 128) {
      _reportInvalidOther(j & 0xFF, _inputPtr);
    }
    return ((paramInt & 0xF) << 6 | i & 0x3F) << 6 | j & 0x3F;
  }
  
  private final int _decodeUtf8_4(int paramInt)
    throws IOException, JsonParseException
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i];
    if ((i & 0xC0) != 128) {
      _reportInvalidOther(i & 0xFF, _inputPtr);
    }
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    int j = _inputPtr;
    _inputPtr = (j + 1);
    j = arrayOfByte[j];
    if ((j & 0xC0) != 128) {
      _reportInvalidOther(j & 0xFF, _inputPtr);
    }
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    int k = _inputPtr;
    _inputPtr = (k + 1);
    k = arrayOfByte[k];
    if ((k & 0xC0) != 128) {
      _reportInvalidOther(k & 0xFF, _inputPtr);
    }
    return ((((paramInt & 0x7) << 6 | i & 0x3F) << 6 | j & 0x3F) << 6 | k & 0x3F) - 65536;
  }
  
  private final void _finishString2(char[] paramArrayOfChar, int paramInt)
    throws IOException, JsonParseException
  {
    int[] arrayOfInt = sInputCodesUtf8;
    byte[] arrayOfByte = _inputBuffer;
    int j;
    int i;
    for (char[] arrayOfChar = paramArrayOfChar;; arrayOfChar = paramArrayOfChar)
    {
      j = _inputPtr;
      i = j;
      if (j >= _inputEnd)
      {
        loadMoreGuaranteed();
        i = _inputPtr;
      }
      paramArrayOfChar = arrayOfChar;
      j = paramInt;
      if (paramInt >= arrayOfChar.length)
      {
        paramArrayOfChar = _textBuffer.finishCurrentSegment();
        j = 0;
      }
      int k = Math.min(_inputEnd, paramArrayOfChar.length - j + i);
      paramInt = j;
      while (i < k)
      {
        j = i + 1;
        i = arrayOfByte[i] & 0xFF;
        if (arrayOfInt[i] != 0)
        {
          _inputPtr = j;
          if (i != 34) {
            break label158;
          }
          _textBuffer.setCurrentLength(paramInt);
          return;
        }
        paramArrayOfChar[paramInt] = ((char)i);
        i = j;
        paramInt += 1;
      }
      _inputPtr = i;
    }
    label158:
    switch (arrayOfInt[i])
    {
    default: 
      if (i < 32) {
        _throwUnquotedSpace(i, "string value");
      }
      break;
    }
    for (;;)
    {
      arrayOfChar = paramArrayOfChar;
      j = paramInt;
      if (paramInt >= paramArrayOfChar.length)
      {
        arrayOfChar = _textBuffer.finishCurrentSegment();
        j = 0;
      }
      arrayOfChar[j] = ((char)i);
      paramInt = j + 1;
      break;
      i = _decodeEscaped();
      continue;
      i = _decodeUtf8_2(i);
      continue;
      if (_inputEnd - _inputPtr >= 2)
      {
        i = _decodeUtf8_3fast(i);
      }
      else
      {
        i = _decodeUtf8_3(i);
        continue;
        j = _decodeUtf8_4(i);
        i = paramInt + 1;
        paramArrayOfChar[paramInt] = ((char)(0xD800 | j >> 10));
        arrayOfChar = paramArrayOfChar;
        paramInt = i;
        if (i >= paramArrayOfChar.length)
        {
          arrayOfChar = _textBuffer.finishCurrentSegment();
          paramInt = 0;
        }
        i = 0xDC00 | j & 0x3FF;
        paramArrayOfChar = arrayOfChar;
        continue;
        _reportInvalidChar(i);
      }
    }
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
  
  private final JsonToken _nextTokenNotInObject(int paramInt)
    throws IOException, JsonParseException
  {
    if (paramInt == 34)
    {
      _tokenIncomplete = true;
      localJsonToken = JsonToken.VALUE_STRING;
      _currToken = localJsonToken;
      return localJsonToken;
    }
    switch (paramInt)
    {
    default: 
      localJsonToken = _handleUnexpectedValue(paramInt);
      _currToken = localJsonToken;
      return localJsonToken;
    case 91: 
      _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
      localJsonToken = JsonToken.START_ARRAY;
      _currToken = localJsonToken;
      return localJsonToken;
    case 123: 
      _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
      localJsonToken = JsonToken.START_OBJECT;
      _currToken = localJsonToken;
      return localJsonToken;
    case 93: 
    case 125: 
      _reportUnexpectedChar(paramInt, "expected a value");
    case 116: 
      _matchToken(JsonToken.VALUE_TRUE);
      localJsonToken = JsonToken.VALUE_TRUE;
      _currToken = localJsonToken;
      return localJsonToken;
    case 102: 
      _matchToken(JsonToken.VALUE_FALSE);
      localJsonToken = JsonToken.VALUE_FALSE;
      _currToken = localJsonToken;
      return localJsonToken;
    case 110: 
      _matchToken(JsonToken.VALUE_NULL);
      localJsonToken = JsonToken.VALUE_NULL;
      _currToken = localJsonToken;
      return localJsonToken;
    }
    JsonToken localJsonToken = parseNumberText(paramInt);
    _currToken = localJsonToken;
    return localJsonToken;
  }
  
  private final JsonToken _parseFloatText(char[] paramArrayOfChar, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    throws IOException, JsonParseException
  {
    int i1 = 0;
    int m = 0;
    int i = 0;
    int i2 = 0;
    Object localObject = paramArrayOfChar;
    int j = paramInt1;
    int n = paramInt2;
    if (paramInt2 == 46)
    {
      paramArrayOfChar[paramInt1] = ((char)paramInt2);
      paramInt1 += 1;
      k = paramInt2;
      paramInt2 = m;
      if ((_inputPtr < _inputEnd) || (loadMore())) {
        break label469;
      }
      m = 1;
      label63:
      i = m;
      i1 = paramInt2;
      localObject = paramArrayOfChar;
      j = paramInt1;
      n = k;
      if (paramInt2 == 0)
      {
        reportUnexpectedNumberChar(k, "Decimal point not followed by a digit");
        n = k;
        j = paramInt1;
        localObject = paramArrayOfChar;
        i1 = paramInt2;
        i = m;
      }
    }
    int k = 0;
    m = 0;
    if (n != 101)
    {
      paramInt1 = i;
      i2 = j;
      if (n != 69) {}
    }
    else
    {
      paramArrayOfChar = (char[])localObject;
      paramInt2 = j;
      if (j >= localObject.length)
      {
        paramArrayOfChar = _textBuffer.finishCurrentSegment();
        paramInt2 = 0;
      }
      paramInt1 = paramInt2 + 1;
      paramArrayOfChar[paramInt2] = ((char)n);
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      localObject = _inputBuffer;
      paramInt2 = _inputPtr;
      _inputPtr = (paramInt2 + 1);
      paramInt2 = localObject[paramInt2] & 0xFF;
      if ((paramInt2 != 45) && (paramInt2 != 43)) {
        break label615;
      }
      if (paramInt1 < paramArrayOfChar.length) {
        break label612;
      }
      paramArrayOfChar = _textBuffer.finishCurrentSegment();
      paramInt1 = 0;
      label240:
      paramArrayOfChar[paramInt1] = ((char)paramInt2);
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      localObject = _inputBuffer;
      paramInt2 = _inputPtr;
      _inputPtr = (paramInt2 + 1);
      paramInt2 = localObject[paramInt2] & 0xFF;
      paramInt1 += 1;
      k = m;
    }
    for (;;)
    {
      n = i;
      m = k;
      j = paramInt1;
      if (paramInt2 <= 57)
      {
        n = i;
        m = k;
        j = paramInt1;
        if (paramInt2 >= 48)
        {
          k += 1;
          localObject = paramArrayOfChar;
          j = paramInt1;
          if (paramInt1 >= paramArrayOfChar.length)
          {
            localObject = _textBuffer.finishCurrentSegment();
            j = 0;
          }
          paramInt1 = j + 1;
          localObject[j] = ((char)paramInt2);
          if ((_inputPtr < _inputEnd) || (loadMore())) {
            break label581;
          }
          n = 1;
          j = paramInt1;
          m = k;
        }
      }
      paramInt1 = n;
      k = m;
      i2 = j;
      if (m == 0)
      {
        reportUnexpectedNumberChar(paramInt2, "Exponent indicator not followed by a digit");
        i2 = j;
        k = m;
        paramInt1 = n;
      }
      if (paramInt1 == 0) {
        _inputPtr -= 1;
      }
      _textBuffer.setCurrentLength(i2);
      return resetFloat(paramBoolean, paramInt3, i1, k);
      label469:
      localObject = _inputBuffer;
      i = _inputPtr;
      _inputPtr = (i + 1);
      i = localObject[i] & 0xFF;
      m = i2;
      k = i;
      if (i < 48) {
        break label63;
      }
      m = i2;
      k = i;
      if (i > 57) {
        break label63;
      }
      j = paramInt2 + 1;
      localObject = paramArrayOfChar;
      paramInt2 = paramInt1;
      if (paramInt1 >= paramArrayOfChar.length)
      {
        localObject = _textBuffer.finishCurrentSegment();
        paramInt2 = 0;
      }
      localObject[paramInt2] = ((char)i);
      paramInt1 = paramInt2 + 1;
      paramInt2 = j;
      paramArrayOfChar = (char[])localObject;
      k = i;
      break;
      label581:
      paramArrayOfChar = _inputBuffer;
      paramInt2 = _inputPtr;
      _inputPtr = (paramInt2 + 1);
      paramInt2 = paramArrayOfChar[paramInt2] & 0xFF;
      paramArrayOfChar = (char[])localObject;
      continue;
      label612:
      break label240;
      label615:
      k = m;
    }
  }
  
  private final JsonToken _parserNumber2(char[] paramArrayOfChar, int paramInt1, boolean paramBoolean, int paramInt2)
    throws IOException, JsonParseException
  {
    for (;;)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore()))
      {
        _textBuffer.setCurrentLength(paramInt1);
        return resetInt(paramBoolean, paramInt2);
      }
      Object localObject = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      int j = localObject[i] & 0xFF;
      if ((j > 57) || (j < 48))
      {
        if ((j != 46) && (j != 101) && (j != 69)) {
          break;
        }
        return _parseFloatText(paramArrayOfChar, paramInt1, j, paramBoolean, paramInt2);
      }
      localObject = paramArrayOfChar;
      i = paramInt1;
      if (paramInt1 >= paramArrayOfChar.length)
      {
        localObject = _textBuffer.finishCurrentSegment();
        i = 0;
      }
      localObject[i] = ((char)j);
      paramInt2 += 1;
      paramInt1 = i + 1;
      paramArrayOfChar = (char[])localObject;
    }
    _inputPtr -= 1;
    _textBuffer.setCurrentLength(paramInt1);
    return resetInt(paramBoolean, paramInt2);
  }
  
  private final void _skipCComment()
    throws IOException, JsonParseException
  {
    int[] arrayOfInt = CharTypes.getInputCodeComment();
    while ((_inputPtr < _inputEnd) || (loadMore()))
    {
      byte[] arrayOfByte = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfByte[i] & 0xFF;
      int j = arrayOfInt[i];
      if (j != 0) {
        switch (j)
        {
        default: 
          _reportInvalidChar(i);
          break;
        case 42: 
          if (_inputBuffer[_inputPtr] == 47)
          {
            _inputPtr += 1;
            return;
          }
          break;
        case 10: 
          _skipLF();
          break;
        case 13: 
          _skipCR();
        }
      }
    }
    _reportInvalidEOF(" in a comment");
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
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i] & 0xFF;
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
    int[] arrayOfInt = CharTypes.getInputCodeComment();
    while ((_inputPtr < _inputEnd) || (loadMore()))
    {
      byte[] arrayOfByte = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfByte[i] & 0xFF;
      int j = arrayOfInt[i];
      if (j != 0) {
        switch (j)
        {
        case 42: 
        default: 
          _reportInvalidChar(i);
          break;
        case 10: 
          _skipLF();
        }
      }
    }
    return;
    _skipCR();
  }
  
  private final void _skipUtf8_2(int paramInt)
    throws IOException, JsonParseException
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    paramInt = arrayOfByte[paramInt];
    if ((paramInt & 0xC0) != 128) {
      _reportInvalidOther(paramInt & 0xFF, _inputPtr);
    }
  }
  
  private final void _skipUtf8_3(int paramInt)
    throws IOException, JsonParseException
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    paramInt = arrayOfByte[paramInt];
    if ((paramInt & 0xC0) != 128) {
      _reportInvalidOther(paramInt & 0xFF, _inputPtr);
    }
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    paramInt = arrayOfByte[paramInt];
    if ((paramInt & 0xC0) != 128) {
      _reportInvalidOther(paramInt & 0xFF, _inputPtr);
    }
  }
  
  private final void _skipUtf8_4(int paramInt)
    throws IOException, JsonParseException
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    paramInt = arrayOfByte[paramInt];
    if ((paramInt & 0xC0) != 128) {
      _reportInvalidOther(paramInt & 0xFF, _inputPtr);
    }
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    if ((paramInt & 0xC0) != 128) {
      _reportInvalidOther(paramInt & 0xFF, _inputPtr);
    }
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    paramInt = arrayOfByte[paramInt];
    if ((paramInt & 0xC0) != 128) {
      _reportInvalidOther(paramInt & 0xFF, _inputPtr);
    }
  }
  
  private final int _skipWS()
    throws IOException, JsonParseException
  {
    while ((_inputPtr < _inputEnd) || (loadMore()))
    {
      byte[] arrayOfByte = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfByte[i] & 0xFF;
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
      byte[] arrayOfByte = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfByte[i] & 0xFF;
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
  
  private final int _verifyNoLeadingZeroes()
    throws IOException, JsonParseException
  {
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {}
    int j;
    do
    {
      for (int i = 48; (_inputPtr >= _inputEnd) && (!loadMore()); i = j) {
        do
        {
          return i;
          j = _inputBuffer[_inputPtr] & 0xFF;
          if ((j < 48) || (j > 57)) {
            return 48;
          }
          if (!isEnabled(JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS)) {
            reportInvalidNumber("Leading zeroes not allowed");
          }
          _inputPtr += 1;
          i = j;
        } while (j != 48);
      }
      j = _inputBuffer[_inputPtr] & 0xFF;
      if ((j < 48) || (j > 57)) {
        return 48;
      }
      _inputPtr += 1;
      i = j;
    } while (j == 48);
    return j;
  }
  
  private final Name addName(int[] paramArrayOfInt, int paramInt1, int paramInt2)
    throws JsonParseException
  {
    int i3 = (paramInt1 << 2) - 4 + paramInt2;
    int i2;
    Object localObject1;
    int i;
    int m;
    label49:
    int j;
    int i1;
    int n;
    label120:
    Object localObject2;
    if (paramInt2 < 4)
    {
      i2 = paramArrayOfInt[(paramInt1 - 1)];
      paramArrayOfInt[(paramInt1 - 1)] = (i2 << (4 - paramInt2 << 3));
      localObject1 = _textBuffer.emptyAndGetCurrentSegment();
      i = 0;
      m = 0;
      if (i >= i3) {
        break label521;
      }
      j = paramArrayOfInt[(i >> 2)] >> (3 - (i & 0x3) << 3) & 0xFF;
      int k = i + 1;
      i1 = j;
      n = k;
      if (j <= 127) {
        break label559;
      }
      if ((j & 0xE0) != 192) {
        break label456;
      }
      i = j & 0x1F;
      j = 1;
      if (k + j > i3) {
        _reportInvalidEOF(" in field name");
      }
      i1 = paramArrayOfInt[(k >> 2)] >> (3 - (k & 0x3) << 3);
      n = k + 1;
      if ((i1 & 0xC0) != 128) {
        _reportInvalidOther(i1);
      }
      i1 = i << 6 | i1 & 0x3F;
      k = i1;
      i = n;
      if (j > 1)
      {
        i = paramArrayOfInt[(n >> 2)] >> (3 - (n & 0x3) << 3);
        n += 1;
        if ((i & 0xC0) != 128) {
          _reportInvalidOther(i);
        }
        i1 = i1 << 6 | i & 0x3F;
        k = i1;
        i = n;
        if (j > 2)
        {
          k = paramArrayOfInt[(n >> 2)] >> (3 - (n & 0x3) << 3);
          i = n + 1;
          if ((k & 0xC0) != 128) {
            _reportInvalidOther(k & 0xFF);
          }
          k = i1 << 6 | k & 0x3F;
        }
      }
      i1 = k;
      n = i;
      if (j <= 2) {
        break label559;
      }
      k -= 65536;
      localObject2 = localObject1;
      if (m >= localObject1.length) {
        localObject2 = _textBuffer.expandCurrentSegment();
      }
      j = m + 1;
      localObject2[m] = ((char)(55296 + (k >> 10)));
      i1 = 0xDC00 | k & 0x3FF;
      localObject1 = localObject2;
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (j >= localObject1.length) {
        localObject2 = _textBuffer.expandCurrentSegment();
      }
      m = j + 1;
      localObject2[j] = ((char)i1);
      localObject1 = localObject2;
      break label49;
      i2 = 0;
      break;
      label456:
      if ((j & 0xF0) == 224)
      {
        i = j & 0xF;
        j = 2;
        break label120;
      }
      if ((j & 0xF8) == 240)
      {
        i = j & 0x7;
        j = 3;
        break label120;
      }
      _reportInvalidInitial(j);
      i = 1;
      j = 1;
      break label120;
      label521:
      localObject1 = new String((char[])localObject1, 0, m);
      if (paramInt2 < 4) {
        paramArrayOfInt[(paramInt1 - 1)] = i2;
      }
      return _symbols.addName((String)localObject1, paramArrayOfInt, paramInt1);
      label559:
      j = m;
      i = n;
    }
  }
  
  private final Name findName(int paramInt1, int paramInt2)
    throws JsonParseException
  {
    Name localName = _symbols.findName(paramInt1);
    if (localName != null) {
      return localName;
    }
    _quadBuffer[0] = paramInt1;
    return addName(_quadBuffer, 1, paramInt2);
  }
  
  private final Name findName(int paramInt1, int paramInt2, int paramInt3)
    throws JsonParseException
  {
    Name localName = _symbols.findName(paramInt1, paramInt2);
    if (localName != null) {
      return localName;
    }
    _quadBuffer[0] = paramInt1;
    _quadBuffer[1] = paramInt2;
    return addName(_quadBuffer, 2, paramInt3);
  }
  
  private final Name findName(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3)
    throws JsonParseException
  {
    int[] arrayOfInt = paramArrayOfInt;
    if (paramInt1 >= paramArrayOfInt.length)
    {
      arrayOfInt = growArrayBy(paramArrayOfInt, paramArrayOfInt.length);
      _quadBuffer = arrayOfInt;
    }
    int i = paramInt1 + 1;
    arrayOfInt[paramInt1] = paramInt2;
    Name localName = _symbols.findName(arrayOfInt, i);
    paramArrayOfInt = localName;
    if (localName == null) {
      paramArrayOfInt = addName(arrayOfInt, i, paramInt3);
    }
    return paramArrayOfInt;
  }
  
  public static int[] growArrayBy(int[] paramArrayOfInt, int paramInt)
  {
    if (paramArrayOfInt == null) {
      return new int[paramInt];
    }
    int i = paramArrayOfInt.length;
    int[] arrayOfInt = new int[i + paramInt];
    System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, i);
    return arrayOfInt;
  }
  
  private int nextByte()
    throws IOException, JsonParseException
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    return arrayOfByte[i] & 0xFF;
  }
  
  private final Name parseFieldName(int paramInt1, int paramInt2, int paramInt3)
    throws IOException, JsonParseException
  {
    return parseEscapedFieldName(_quadBuffer, 0, paramInt1, paramInt2, paramInt3);
  }
  
  private final Name parseFieldName(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws IOException, JsonParseException
  {
    _quadBuffer[0] = paramInt1;
    return parseEscapedFieldName(_quadBuffer, 1, paramInt2, paramInt3, paramInt4);
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
      byte[] arrayOfByte = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      int k = arrayOfByte[i] & 0xFF;
      if (k > 32)
      {
        int j = paramBase64Variant.decodeBase64Char(k);
        i = j;
        if (j < 0)
        {
          if (k == 34) {
            return localByteArrayBuilder.toByteArray();
          }
          i = _decodeBase64Escape(paramBase64Variant, k, 0);
          if (i < 0) {}
        }
        else
        {
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfByte = _inputBuffer;
          j = _inputPtr;
          _inputPtr = (j + 1);
          int m = arrayOfByte[j] & 0xFF;
          k = paramBase64Variant.decodeBase64Char(m);
          j = k;
          if (k < 0) {
            j = _decodeBase64Escape(paramBase64Variant, m, 1);
          }
          m = i << 6 | j;
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfByte = _inputBuffer;
          i = _inputPtr;
          _inputPtr = (i + 1);
          int n = arrayOfByte[i] & 0xFF;
          j = paramBase64Variant.decodeBase64Char(n);
          k = j;
          if (j < 0)
          {
            i = j;
            if (j != -2) {
              i = _decodeBase64Escape(paramBase64Variant, n, 2);
            }
            k = i;
            if (i == -2)
            {
              if (_inputPtr >= _inputEnd) {
                loadMoreGuaranteed();
              }
              arrayOfByte = _inputBuffer;
              i = _inputPtr;
              _inputPtr = (i + 1);
              i = arrayOfByte[i] & 0xFF;
              if (!paramBase64Variant.usesPaddingChar(i)) {
                throw reportInvalidChar(paramBase64Variant, i, 3, "expected padding character '" + paramBase64Variant.getPaddingChar() + "'");
              }
              localByteArrayBuilder.append(m >> 4);
              continue;
            }
          }
          m = m << 6 | k;
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfByte = _inputBuffer;
          i = _inputPtr;
          _inputPtr = (i + 1);
          n = arrayOfByte[i] & 0xFF;
          j = paramBase64Variant.decodeBase64Char(n);
          k = j;
          if (j < 0)
          {
            i = j;
            if (j != -2) {
              i = _decodeBase64Escape(paramBase64Variant, n, 3);
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
  
  protected int _decodeCharForError(int paramInt)
    throws IOException, JsonParseException
  {
    int i = paramInt;
    if (paramInt < 0)
    {
      if ((paramInt & 0xE0) != 192) {
        break label145;
      }
      i = paramInt & 0x1F;
      paramInt = 1;
    }
    for (;;)
    {
      int j = nextByte();
      if ((j & 0xC0) != 128) {
        _reportInvalidOther(j & 0xFF);
      }
      j = i << 6 | j & 0x3F;
      i = j;
      if (paramInt > 1)
      {
        i = nextByte();
        if ((i & 0xC0) != 128) {
          _reportInvalidOther(i & 0xFF);
        }
        j = j << 6 | i & 0x3F;
        i = j;
        if (paramInt > 2)
        {
          paramInt = nextByte();
          if ((paramInt & 0xC0) != 128) {
            _reportInvalidOther(paramInt & 0xFF);
          }
          i = j << 6 | paramInt & 0x3F;
        }
      }
      return i;
      label145:
      if ((paramInt & 0xF0) == 224)
      {
        i = paramInt & 0xF;
        paramInt = 2;
      }
      else if ((paramInt & 0xF8) == 240)
      {
        i = paramInt & 0x7;
        paramInt = 3;
      }
      else
      {
        _reportInvalidInitial(paramInt & 0xFF);
        j = 1;
        i = paramInt;
        paramInt = j;
      }
    }
  }
  
  protected final char _decodeEscaped()
    throws IOException, JsonParseException
  {
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(" in character escape sequence");
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i];
    switch (i)
    {
    default: 
      return _handleUnrecognizedCharacterEscape((char)_decodeCharForError(i));
    case 98: 
      return '\b';
    case 116: 
      return '\t';
    case 110: 
      return '\n';
    case 102: 
      return '\f';
    case 114: 
      return '\r';
    case 34: 
    case 47: 
    case 92: 
      return (char)i;
    }
    int j = 0;
    i = 0;
    while (i < 4)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOF(" in character escape sequence");
      }
      arrayOfByte = _inputBuffer;
      int k = _inputPtr;
      _inputPtr = (k + 1);
      k = arrayOfByte[k];
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
    int j = _inputPtr;
    int i = j;
    if (j >= _inputEnd)
    {
      loadMoreGuaranteed();
      i = _inputPtr;
    }
    char[] arrayOfChar = _textBuffer.emptyAndGetCurrentSegment();
    int[] arrayOfInt = sInputCodesUtf8;
    int m = Math.min(_inputEnd, arrayOfChar.length + i);
    byte[] arrayOfByte = _inputBuffer;
    int k = 0;
    j = i;
    i = k;
    while (j < m)
    {
      k = arrayOfByte[j] & 0xFF;
      if (arrayOfInt[k] != 0)
      {
        if (k != 34) {
          break;
        }
        _inputPtr = (j + 1);
        _textBuffer.setCurrentLength(i);
        return;
      }
      j += 1;
      arrayOfChar[i] = ((char)k);
      i += 1;
    }
    _inputPtr = j;
    _finishString2(arrayOfChar, i);
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
  
  protected JsonToken _handleApostropheValue()
    throws IOException, JsonParseException
  {
    int i = 0;
    Object localObject2 = _textBuffer.emptyAndGetCurrentSegment();
    int[] arrayOfInt = sInputCodesUtf8;
    byte[] arrayOfByte = _inputBuffer;
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    Object localObject1 = localObject2;
    int k = i;
    if (i >= localObject2.length)
    {
      localObject1 = _textBuffer.finishCurrentSegment();
      k = 0;
    }
    i = _inputEnd;
    int n = _inputPtr + (localObject1.length - k);
    int m = i;
    int j = k;
    if (n < i)
    {
      m = n;
      j = k;
    }
    for (;;)
    {
      localObject2 = localObject1;
      i = j;
      if (_inputPtr >= m) {
        break;
      }
      i = _inputPtr;
      _inputPtr = (i + 1);
      n = arrayOfByte[i] & 0xFF;
      if ((n == 39) || (arrayOfInt[n] != 0))
      {
        if (n != 39) {
          break label180;
        }
        _textBuffer.setCurrentLength(j);
        return JsonToken.VALUE_STRING;
      }
      localObject1[j] = ((char)n);
      j += 1;
    }
    label180:
    switch (arrayOfInt[n])
    {
    default: 
      if (n < 32) {
        _throwUnquotedSpace(n, "string value");
      }
      _reportInvalidChar(n);
      k = j;
      localObject2 = localObject1;
      i = n;
    case 1: 
    case 2: 
    case 3: 
      for (;;)
      {
        localObject1 = localObject2;
        j = k;
        if (k >= localObject2.length)
        {
          localObject1 = _textBuffer.finishCurrentSegment();
          j = 0;
        }
        localObject1[j] = ((char)i);
        i = j + 1;
        localObject2 = localObject1;
        break;
        i = n;
        localObject2 = localObject1;
        k = j;
        if (n != 34)
        {
          i = _decodeEscaped();
          localObject2 = localObject1;
          k = j;
          continue;
          i = _decodeUtf8_2(n);
          localObject2 = localObject1;
          k = j;
          continue;
          if (_inputEnd - _inputPtr >= 2)
          {
            i = _decodeUtf8_3fast(n);
            localObject2 = localObject1;
            k = j;
          }
          else
          {
            i = _decodeUtf8_3(n);
            localObject2 = localObject1;
            k = j;
          }
        }
      }
    }
    i = _decodeUtf8_4(n);
    k = j + 1;
    localObject1[j] = ((char)(0xD800 | i >> 10));
    if (k >= localObject1.length)
    {
      localObject1 = _textBuffer.finishCurrentSegment();
      k = 0;
    }
    for (;;)
    {
      i = 0xDC00 | i & 0x3FF;
      localObject2 = localObject1;
      break;
    }
  }
  
  protected JsonToken _handleInvalidNumberStart(int paramInt, boolean paramBoolean)
    throws IOException, JsonParseException
  {
    double d = Double.NEGATIVE_INFINITY;
    int i = paramInt;
    Object localObject;
    if (paramInt == 73)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOFInValue();
      }
      localObject = _inputBuffer;
      paramInt = _inputPtr;
      _inputPtr = (paramInt + 1);
      paramInt = localObject[paramInt];
      if (paramInt != 78) {
        break label168;
      }
      if (paramBoolean)
      {
        localObject = "-INF";
        i = paramInt;
        if (!_matchToken((String)localObject, 3)) {
          break label157;
        }
        if (!isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
          break label123;
        }
        if (!paramBoolean) {
          break label116;
        }
      }
      for (;;)
      {
        return resetAsNaN((String)localObject, d);
        localObject = "+INF";
        break;
        label116:
        d = Double.POSITIVE_INFINITY;
      }
      label123:
      _reportError("Non-standard token '" + (String)localObject + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
      i = paramInt;
    }
    for (;;)
    {
      label157:
      reportUnexpectedNumberChar(i, "expected digit (0-9) to follow minus sign, for valid numeric value");
      return null;
      label168:
      i = paramInt;
      if (paramInt == 110)
      {
        if (paramBoolean)
        {
          localObject = "-Infinity";
          i = paramInt;
          if (!_matchToken((String)localObject, 3)) {
            continue;
          }
          if (!isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
            break label236;
          }
          if (!paramBoolean) {
            break label229;
          }
        }
        for (;;)
        {
          return resetAsNaN((String)localObject, d);
          localObject = "+Infinity";
          break;
          label229:
          d = Double.POSITIVE_INFINITY;
        }
        label236:
        _reportError("Non-standard token '" + (String)localObject + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
        i = paramInt;
      }
    }
  }
  
  protected JsonToken _handleUnexpectedValue(int paramInt)
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
          arrayOfByte = _inputBuffer;
          int i = _inputPtr;
          _inputPtr = (i + 1);
          _reportUnexpectedChar(arrayOfByte[i] & 0xFF, "expected 'NaN' or a valid value");
        }
      }
    }
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOFInValue();
    }
    byte[] arrayOfByte = _inputBuffer;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    return _handleInvalidNumberStart(arrayOfByte[paramInt] & 0xFF, false);
  }
  
  protected final Name _handleUnusualFieldName(int paramInt)
    throws IOException, JsonParseException
  {
    if ((paramInt == 39) && (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)))
    {
      localObject1 = _parseApostropheFieldName();
      return localObject1;
    }
    if (!isEnabled(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES)) {
      _reportUnexpectedChar(paramInt, "was expecting double-quote to start field name");
    }
    Object localObject3 = CharTypes.getInputCodeUtf8JsNames();
    if (localObject3[paramInt] != 0) {
      _reportUnexpectedChar(paramInt, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
    }
    Object localObject1 = _quadBuffer;
    int j = 0;
    int k = 0;
    int m = 0;
    int i = paramInt;
    paramInt = m;
    for (;;)
    {
      if (k < 4)
      {
        k += 1;
        j = j << 8 | i;
        i = k;
      }
      for (;;)
      {
        if ((_inputPtr >= _inputEnd) && (!loadMore())) {
          _reportInvalidEOF(" in field name");
        }
        m = _inputBuffer[_inputPtr] & 0xFF;
        if (localObject3[m] == 0) {
          break label285;
        }
        k = paramInt;
        Object localObject2 = localObject1;
        if (i > 0)
        {
          localObject2 = localObject1;
          if (paramInt >= localObject1.length)
          {
            localObject2 = growArrayBy((int[])localObject1, localObject1.length);
            _quadBuffer = ((int[])localObject2);
          }
          localObject2[paramInt] = j;
          k = paramInt + 1;
        }
        localObject3 = _symbols.findName((int[])localObject2, k);
        localObject1 = localObject3;
        if (localObject3 != null) {
          break;
        }
        return addName((int[])localObject2, k, i);
        localObject2 = localObject1;
        if (paramInt >= localObject1.length)
        {
          localObject2 = growArrayBy((int[])localObject1, localObject1.length);
          _quadBuffer = ((int[])localObject2);
        }
        k = paramInt + 1;
        localObject2[paramInt] = j;
        paramInt = 1;
        j = i;
        i = paramInt;
        paramInt = k;
        localObject1 = localObject2;
      }
      label285:
      _inputPtr += 1;
      k = i;
      i = m;
    }
  }
  
  protected void _matchToken(JsonToken paramJsonToken)
    throws IOException, JsonParseException
  {
    byte[] arrayOfByte = paramJsonToken.asByteArray();
    int i = 1;
    int j = arrayOfByte.length;
    while (i < j)
    {
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      if (arrayOfByte[i] != _inputBuffer[_inputPtr]) {
        _reportInvalidToken(paramJsonToken.asString().substring(0, i), "'null', 'true' or 'false'");
      }
      _inputPtr += 1;
      i += 1;
    }
  }
  
  protected final boolean _matchToken(String paramString, int paramInt)
    throws IOException, JsonParseException
  {
    int j = paramString.length();
    int i;
    do
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOF(" in a value");
      }
      if (_inputBuffer[_inputPtr] != paramString.charAt(paramInt)) {
        _reportInvalidToken(paramString.substring(0, paramInt), "'null', 'true', 'false' or NaN");
      }
      _inputPtr += 1;
      i = paramInt + 1;
      paramInt = i;
    } while (i < j);
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {}
    while (!Character.isJavaIdentifierPart((char)_decodeCharForError(_inputBuffer[_inputPtr] & 0xFF))) {
      return true;
    }
    _inputPtr += 1;
    _reportInvalidToken(paramString.substring(0, i), "'null', 'true', 'false' or NaN");
    return true;
  }
  
  protected final Name _parseApostropheFieldName()
    throws IOException, JsonParseException
  {
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(": was expecting closing ''' for name");
    }
    Object localObject1 = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    int m = localObject1[i] & 0xFF;
    if (m == 39) {
      localObject1 = BytesToNameCanonicalizer.getEmptyName();
    }
    int j;
    Object localObject3;
    do
    {
      return localObject1;
      localObject1 = _quadBuffer;
      k = 0;
      j = 0;
      localObject3 = sInputCodesLatin1;
      i = 0;
      if (m != 39) {
        break;
      }
      if (j <= 0) {
        break label619;
      }
      localObject2 = localObject1;
      if (i >= localObject1.length)
      {
        localObject2 = growArrayBy((int[])localObject1, localObject1.length);
        _quadBuffer = ((int[])localObject2);
      }
      m = i + 1;
      localObject2[i] = k;
      i = m;
      localObject3 = _symbols.findName((int[])localObject2, i);
      localObject1 = localObject3;
    } while (localObject3 != null);
    return addName((int[])localObject2, i, j);
    int n = m;
    int i3 = k;
    int i4 = j;
    int i2 = i;
    Object localObject2 = localObject1;
    if (m != 34)
    {
      n = m;
      i3 = k;
      i4 = j;
      i2 = i;
      localObject2 = localObject1;
      if (localObject3[m] != 0)
      {
        if (m == 92) {
          break label458;
        }
        _throwUnquotedSpace(m, "name");
      }
    }
    label352:
    label399:
    label458:
    for (int i1 = m;; i1 = _decodeEscaped())
    {
      n = i1;
      i3 = k;
      i4 = j;
      i2 = i;
      localObject2 = localObject1;
      if (i1 > 127)
      {
        i2 = k;
        n = j;
        m = i;
        localObject2 = localObject1;
        if (j >= 4)
        {
          localObject2 = localObject1;
          if (i >= localObject1.length)
          {
            localObject2 = growArrayBy((int[])localObject1, localObject1.length);
            _quadBuffer = ((int[])localObject2);
          }
          localObject2[i] = k;
          i2 = 0;
          n = 0;
          m = i + 1;
        }
        if (i1 >= 2048) {
          break label467;
        }
        i = i2 << 8 | i1 >> 6 | 0xC0;
        k = n + 1;
        j = m;
        n = i1 & 0x3F | 0x80;
        i2 = j;
        i4 = k;
        i3 = i;
      }
      if (i4 >= 4) {
        break label571;
      }
      j = i4 + 1;
      k = i3 << 8 | n;
      i = i2;
      localObject1 = localObject2;
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOF(" in field name");
      }
      localObject2 = _inputBuffer;
      m = _inputPtr;
      _inputPtr = (m + 1);
      m = localObject2[m] & 0xFF;
      break;
    }
    label467:
    int k = i2 << 8 | i1 >> 12 | 0xE0;
    i = n + 1;
    if (i >= 4)
    {
      localObject1 = localObject2;
      if (m >= localObject2.length)
      {
        localObject1 = growArrayBy((int[])localObject2, localObject2.length);
        _quadBuffer = ((int[])localObject1);
      }
      j = m + 1;
      localObject1[m] = k;
      k = 0;
      i = 0;
    }
    for (;;)
    {
      k = k << 8 | i1 >> 6 & 0x3F | 0x80;
      m = i + 1;
      i = k;
      k = m;
      localObject2 = localObject1;
      break label352;
      label571:
      localObject1 = localObject2;
      if (i2 >= localObject2.length)
      {
        localObject1 = growArrayBy((int[])localObject2, localObject2.length);
        _quadBuffer = ((int[])localObject1);
      }
      i = i2 + 1;
      localObject1[i2] = i3;
      k = n;
      j = 1;
      break label399;
      label619:
      localObject2 = localObject1;
      break;
      j = m;
      localObject1 = localObject2;
    }
  }
  
  protected final Name _parseFieldName(int paramInt)
    throws IOException, JsonParseException
  {
    if (paramInt != 34) {
      return _handleUnusualFieldName(paramInt);
    }
    if (_inputPtr + 9 > _inputEnd) {
      return slowParseFieldName();
    }
    byte[] arrayOfByte = _inputBuffer;
    int[] arrayOfInt = sInputCodesLatin1;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    paramInt = arrayOfByte[paramInt] & 0xFF;
    if (arrayOfInt[paramInt] == 0)
    {
      int i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfByte[i] & 0xFF;
      if (arrayOfInt[i] == 0)
      {
        paramInt = paramInt << 8 | i;
        i = _inputPtr;
        _inputPtr = (i + 1);
        i = arrayOfByte[i] & 0xFF;
        if (arrayOfInt[i] == 0)
        {
          paramInt = paramInt << 8 | i;
          i = _inputPtr;
          _inputPtr = (i + 1);
          i = arrayOfByte[i] & 0xFF;
          if (arrayOfInt[i] == 0)
          {
            paramInt = paramInt << 8 | i;
            i = _inputPtr;
            _inputPtr = (i + 1);
            i = arrayOfByte[i] & 0xFF;
            if (arrayOfInt[i] == 0)
            {
              _quad1 = paramInt;
              return parseMediumFieldName(i, arrayOfInt);
            }
            if (i == 34) {
              return findName(paramInt, 4);
            }
            return parseFieldName(paramInt, i, 4);
          }
          if (i == 34) {
            return findName(paramInt, 3);
          }
          return parseFieldName(paramInt, i, 3);
        }
        if (i == 34) {
          return findName(paramInt, 2);
        }
        return parseFieldName(paramInt, i, 2);
      }
      if (i == 34) {
        return findName(paramInt, 1);
      }
      return parseFieldName(paramInt, i, 1);
    }
    if (paramInt == 34) {
      return BytesToNameCanonicalizer.getEmptyName();
    }
    return parseFieldName(0, paramInt, 0);
  }
  
  protected void _reportInvalidChar(int paramInt)
    throws JsonParseException
  {
    if (paramInt < 32) {
      _throwInvalidSpace(paramInt);
    }
    _reportInvalidInitial(paramInt);
  }
  
  protected void _reportInvalidInitial(int paramInt)
    throws JsonParseException
  {
    _reportError("Invalid UTF-8 start byte 0x" + Integer.toHexString(paramInt));
  }
  
  protected void _reportInvalidOther(int paramInt)
    throws JsonParseException
  {
    _reportError("Invalid UTF-8 middle byte 0x" + Integer.toHexString(paramInt));
  }
  
  protected void _reportInvalidOther(int paramInt1, int paramInt2)
    throws JsonParseException
  {
    _inputPtr = paramInt2;
    _reportInvalidOther(paramInt1);
  }
  
  protected void _reportInvalidToken(String paramString1, String paramString2)
    throws IOException, JsonParseException
  {
    paramString1 = new StringBuilder(paramString1);
    for (;;)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {}
      char c;
      do
      {
        _reportError("Unrecognized token '" + paramString1.toString() + "': was expecting " + paramString2);
        return;
        byte[] arrayOfByte = _inputBuffer;
        int i = _inputPtr;
        _inputPtr = (i + 1);
        c = (char)_decodeCharForError(arrayOfByte[i]);
      } while (!Character.isJavaIdentifierPart(c));
      _inputPtr += 1;
      paramString1.append(c);
    }
  }
  
  protected final void _skipCR()
    throws IOException
  {
    if (((_inputPtr < _inputEnd) || (loadMore())) && (_inputBuffer[_inputPtr] == 10)) {
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
    int[] arrayOfInt = sInputCodesUtf8;
    byte[] arrayOfByte = _inputBuffer;
    int k = _inputPtr;
    int m = _inputEnd;
    int j = m;
    int i = k;
    if (k >= m)
    {
      loadMoreGuaranteed();
      i = _inputPtr;
      j = _inputEnd;
    }
    label198:
    for (;;)
    {
      if (i < j)
      {
        k = i + 1;
        m = arrayOfByte[i] & 0xFF;
        i = k;
        if (arrayOfInt[m] == 0) {
          break label198;
        }
        _inputPtr = k;
        if (m != 34) {}
      }
      else
      {
        _inputPtr = i;
        break;
      }
      switch (arrayOfInt[m])
      {
      default: 
        if (m < 32) {
          _throwUnquotedSpace(m, "string value");
        }
        break;
      case 1: 
        _decodeEscaped();
        break;
      case 2: 
        _skipUtf8_2(m);
        break;
      case 3: 
        _skipUtf8_3(m);
        break;
      case 4: 
        _skipUtf8_4(m);
        break;
        _reportInvalidChar(m);
        break;
      }
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
  
  public String getText()
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
    if (!_parsingContext.inObject()) {
      return _nextTokenNotInObject(i);
    }
    Object localObject = _parseFieldName(i);
    _parsingContext.setCurrentName(((Name)localObject).getName());
    _currToken = JsonToken.FIELD_NAME;
    i = _skipWS();
    if (i != 58) {
      _reportUnexpectedChar(i, "was expecting a colon to separate field name and value");
    }
    i = _skipWS();
    if (i == 34)
    {
      _tokenIncomplete = true;
      _nextToken = JsonToken.VALUE_STRING;
      return _currToken;
    }
    switch (i)
    {
    default: 
      localObject = _handleUnexpectedValue(i);
    }
    for (;;)
    {
      _nextToken = ((JsonToken)localObject);
      return _currToken;
      localObject = JsonToken.START_ARRAY;
      continue;
      localObject = JsonToken.START_OBJECT;
      continue;
      _reportUnexpectedChar(i, "expected a value");
      _matchToken(JsonToken.VALUE_TRUE);
      localObject = JsonToken.VALUE_TRUE;
      continue;
      _matchToken(JsonToken.VALUE_FALSE);
      localObject = JsonToken.VALUE_FALSE;
      continue;
      _matchToken(JsonToken.VALUE_NULL);
      localObject = JsonToken.VALUE_NULL;
      continue;
      localObject = parseNumberText(i);
    }
  }
  
  protected Name parseEscapedFieldName(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws IOException, JsonParseException
  {
    Object localObject2 = sInputCodesLatin1;
    int i = paramInt3;
    Object localObject1;
    if (localObject2[paramInt3] != 0)
    {
      if (paramInt3 == 34)
      {
        localObject1 = paramArrayOfInt;
        paramInt3 = paramInt1;
        if (paramInt4 > 0)
        {
          localObject1 = paramArrayOfInt;
          if (paramInt1 >= paramArrayOfInt.length)
          {
            localObject1 = growArrayBy(paramArrayOfInt, paramArrayOfInt.length);
            _quadBuffer = ((int[])localObject1);
          }
          localObject1[paramInt1] = paramInt2;
          paramInt3 = paramInt1 + 1;
        }
        localObject2 = _symbols.findName((int[])localObject1, paramInt3);
        paramArrayOfInt = (int[])localObject2;
        if (localObject2 == null) {
          paramArrayOfInt = addName((int[])localObject1, paramInt3, paramInt4);
        }
        return paramArrayOfInt;
      }
      if (paramInt3 != 92)
      {
        _throwUnquotedSpace(paramInt3, "name");
        label118:
        i = paramInt3;
        if (paramInt3 <= 127) {
          break label491;
        }
        if (paramInt4 < 4) {
          break label488;
        }
        localObject1 = paramArrayOfInt;
        if (paramInt1 >= paramArrayOfInt.length)
        {
          localObject1 = growArrayBy(paramArrayOfInt, paramArrayOfInt.length);
          _quadBuffer = ((int[])localObject1);
        }
        i = paramInt1 + 1;
        localObject1[paramInt1] = paramInt2;
        paramInt2 = 0;
        paramInt4 = 0;
        paramArrayOfInt = (int[])localObject1;
        paramInt1 = i;
        label179:
        if (paramInt3 >= 2048) {
          break label325;
        }
        i = paramInt2 << 8 | paramInt3 >> 6 | 0xC0;
        paramInt2 = paramInt4 + 1;
        paramInt4 = paramInt1;
        paramInt1 = i;
        paramInt3 = paramInt3 & 0x3F | 0x80;
        i = paramInt2;
        paramInt2 = paramInt3;
        paramInt3 = paramInt1;
        paramInt1 = paramInt4;
      }
    }
    for (;;)
    {
      if (i < 4)
      {
        paramInt4 = i + 1;
        paramInt2 = paramInt3 << 8 | paramInt2;
        label257:
        if ((_inputPtr >= _inputEnd) && (!loadMore())) {
          _reportInvalidEOF(" in field name");
        }
        localObject1 = _inputBuffer;
        paramInt3 = _inputPtr;
        _inputPtr = (paramInt3 + 1);
        paramInt3 = localObject1[paramInt3] & 0xFF;
        break;
        paramInt3 = _decodeEscaped();
        break label118;
        label325:
        paramInt2 = paramInt2 << 8 | paramInt3 >> 12 | 0xE0;
        i = paramInt4 + 1;
        if (i < 4) {
          break label479;
        }
        localObject1 = paramArrayOfInt;
        if (paramInt1 >= paramArrayOfInt.length)
        {
          localObject1 = growArrayBy(paramArrayOfInt, paramArrayOfInt.length);
          _quadBuffer = ((int[])localObject1);
        }
        i = paramInt1 + 1;
        localObject1[paramInt1] = paramInt2;
        paramInt4 = 0;
        paramInt2 = 0;
        paramInt1 = i;
        paramArrayOfInt = (int[])localObject1;
      }
      for (;;)
      {
        i = paramInt4 << 8 | paramInt3 >> 6 & 0x3F | 0x80;
        paramInt2 += 1;
        paramInt4 = paramInt1;
        paramInt1 = i;
        break;
        localObject1 = paramArrayOfInt;
        if (paramInt1 >= paramArrayOfInt.length)
        {
          localObject1 = growArrayBy(paramArrayOfInt, paramArrayOfInt.length);
          _quadBuffer = ((int[])localObject1);
        }
        paramInt4 = paramInt1 + 1;
        localObject1[paramInt1] = paramInt3;
        paramInt3 = 1;
        paramArrayOfInt = (int[])localObject1;
        paramInt1 = paramInt4;
        paramInt4 = paramInt3;
        break label257;
        label479:
        paramInt4 = paramInt2;
        paramInt2 = i;
      }
      label488:
      break label179;
      label491:
      paramInt3 = paramInt2;
      paramInt2 = i;
      i = paramInt4;
    }
  }
  
  protected Name parseLongFieldName(int paramInt)
    throws IOException, JsonParseException
  {
    int[] arrayOfInt = sInputCodesLatin1;
    int j = 2;
    int i = paramInt;
    paramInt = j;
    for (;;)
    {
      if (_inputEnd - _inputPtr < 4) {
        return parseEscapedFieldName(_quadBuffer, paramInt, 0, i, 0);
      }
      byte[] arrayOfByte = _inputBuffer;
      j = _inputPtr;
      _inputPtr = (j + 1);
      j = arrayOfByte[j] & 0xFF;
      if (arrayOfInt[j] != 0)
      {
        if (j == 34) {
          return findName(_quadBuffer, paramInt, i, 1);
        }
        return parseEscapedFieldName(_quadBuffer, paramInt, i, j, 1);
      }
      i = i << 8 | j;
      arrayOfByte = _inputBuffer;
      j = _inputPtr;
      _inputPtr = (j + 1);
      j = arrayOfByte[j] & 0xFF;
      if (arrayOfInt[j] != 0)
      {
        if (j == 34) {
          return findName(_quadBuffer, paramInt, i, 2);
        }
        return parseEscapedFieldName(_quadBuffer, paramInt, i, j, 2);
      }
      i = i << 8 | j;
      arrayOfByte = _inputBuffer;
      j = _inputPtr;
      _inputPtr = (j + 1);
      j = arrayOfByte[j] & 0xFF;
      if (arrayOfInt[j] != 0)
      {
        if (j == 34) {
          return findName(_quadBuffer, paramInt, i, 3);
        }
        return parseEscapedFieldName(_quadBuffer, paramInt, i, j, 3);
      }
      j = i << 8 | j;
      arrayOfByte = _inputBuffer;
      i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfByte[i] & 0xFF;
      if (arrayOfInt[i] != 0)
      {
        if (i == 34) {
          return findName(_quadBuffer, paramInt, j, 4);
        }
        return parseEscapedFieldName(_quadBuffer, paramInt, j, i, 4);
      }
      if (paramInt >= _quadBuffer.length) {
        _quadBuffer = growArrayBy(_quadBuffer, paramInt);
      }
      _quadBuffer[paramInt] = j;
      paramInt += 1;
    }
  }
  
  protected final Name parseMediumFieldName(int paramInt, int[] paramArrayOfInt)
    throws IOException, JsonParseException
  {
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i] & 0xFF;
    if (paramArrayOfInt[i] != 0)
    {
      if (i == 34) {
        return findName(_quad1, paramInt, 1);
      }
      return parseFieldName(_quad1, paramInt, i, 1);
    }
    paramInt = paramInt << 8 | i;
    arrayOfByte = _inputBuffer;
    i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i] & 0xFF;
    if (paramArrayOfInt[i] != 0)
    {
      if (i == 34) {
        return findName(_quad1, paramInt, 2);
      }
      return parseFieldName(_quad1, paramInt, i, 2);
    }
    paramInt = paramInt << 8 | i;
    arrayOfByte = _inputBuffer;
    i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i] & 0xFF;
    if (paramArrayOfInt[i] != 0)
    {
      if (i == 34) {
        return findName(_quad1, paramInt, 3);
      }
      return parseFieldName(_quad1, paramInt, i, 3);
    }
    paramInt = paramInt << 8 | i;
    arrayOfByte = _inputBuffer;
    i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i] & 0xFF;
    if (paramArrayOfInt[i] != 0)
    {
      if (i == 34) {
        return findName(_quad1, paramInt, 4);
      }
      return parseFieldName(_quad1, paramInt, i, 4);
    }
    _quadBuffer[0] = _quad1;
    _quadBuffer[1] = paramInt;
    return parseLongFieldName(i);
  }
  
  protected final JsonToken parseNumberText(int paramInt)
    throws IOException, JsonParseException
  {
    char[] arrayOfChar = _textBuffer.emptyAndGetCurrentSegment();
    if (paramInt == 45) {}
    byte[] arrayOfByte;
    for (boolean bool = true; bool; bool = false)
    {
      i = 0 + 1;
      arrayOfChar[0] = '-';
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      arrayOfByte = _inputBuffer;
      paramInt = _inputPtr;
      _inputPtr = (paramInt + 1);
      j = arrayOfByte[paramInt] & 0xFF;
      if (j >= 48)
      {
        paramInt = j;
        if (j <= 57) {
          break label104;
        }
      }
      return _handleInvalidNumberStart(j, true);
    }
    int i = 0;
    label104:
    int j = paramInt;
    if (paramInt == 48) {
      j = _verifyNoLeadingZeroes();
    }
    int k = i + 1;
    arrayOfChar[i] = ((char)j);
    int m = 1;
    int n = _inputPtr + arrayOfChar.length;
    i = k;
    j = m;
    paramInt = n;
    if (n > _inputEnd)
    {
      paramInt = _inputEnd;
      j = m;
      i = k;
    }
    for (;;)
    {
      if (_inputPtr >= paramInt) {
        return _parserNumber2(arrayOfChar, i, bool, j);
      }
      arrayOfByte = _inputBuffer;
      k = _inputPtr;
      _inputPtr = (k + 1);
      k = arrayOfByte[k] & 0xFF;
      if ((k < 48) || (k > 57))
      {
        if ((k != 46) && (k != 101) && (k != 69)) {
          break;
        }
        return _parseFloatText(arrayOfChar, i, k, bool, j);
      }
      j += 1;
      arrayOfChar[i] = ((char)k);
      i += 1;
    }
    _inputPtr -= 1;
    _textBuffer.setCurrentLength(i);
    return resetInt(bool, j);
  }
  
  protected IllegalArgumentException reportInvalidChar(Base64Variant paramBase64Variant, int paramInt1, int paramInt2)
    throws IllegalArgumentException
  {
    return reportInvalidChar(paramBase64Variant, paramInt1, paramInt2, null);
  }
  
  protected IllegalArgumentException reportInvalidChar(Base64Variant paramBase64Variant, int paramInt1, int paramInt2, String paramString)
    throws IllegalArgumentException
  {
    if (paramInt1 <= 32) {
      paramBase64Variant = "Illegal white space character (code 0x" + Integer.toHexString(paramInt1) + ") as character #" + (paramInt2 + 1) + " of 4-char base64 unit: can only used between units";
    }
    for (;;)
    {
      Object localObject = paramBase64Variant;
      if (paramString != null) {
        localObject = paramBase64Variant + ": " + paramString;
      }
      return new IllegalArgumentException((String)localObject);
      if (paramBase64Variant.usesPaddingChar(paramInt1)) {
        paramBase64Variant = "Unexpected padding character ('" + paramBase64Variant.getPaddingChar() + "') as character #" + (paramInt2 + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
      } else if ((!Character.isDefined(paramInt1)) || (Character.isISOControl(paramInt1))) {
        paramBase64Variant = "Illegal character (code 0x" + Integer.toHexString(paramInt1) + ") in base64 content";
      } else {
        paramBase64Variant = "Illegal character '" + (char)paramInt1 + "' (code 0x" + Integer.toHexString(paramInt1) + ") in base64 content";
      }
    }
  }
  
  public void setCodec(ObjectCodec paramObjectCodec)
  {
    _objectCodec = paramObjectCodec;
  }
  
  protected Name slowParseFieldName()
    throws IOException, JsonParseException
  {
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(": was expecting closing '\"' for name");
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i] & 0xFF;
    if (i == 34) {
      return BytesToNameCanonicalizer.getEmptyName();
    }
    return parseEscapedFieldName(_quadBuffer, 0, 0, i, 0);
  }
}
