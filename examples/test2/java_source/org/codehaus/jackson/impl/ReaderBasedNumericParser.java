package org.codehaus.jackson.impl;

import java.io.IOException;
import java.io.Reader;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.io.IOContext;
import org.codehaus.jackson.util.TextBuffer;

public abstract class ReaderBasedNumericParser
  extends ReaderBasedParserBase
{
  public ReaderBasedNumericParser(IOContext paramIOContext, int paramInt, Reader paramReader)
  {
    super(paramIOContext, paramInt, paramReader);
  }
  
  private final char _verifyNoLeadingZeroes()
    throws IOException, JsonParseException
  {
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {}
    char c2;
    do
    {
      for (char c1 = '0'; (_inputPtr >= _inputEnd) && (!loadMore()); c1 = c2) {
        do
        {
          return c1;
          c2 = _inputBuffer[_inputPtr];
          if ((c2 < '0') || (c2 > '9')) {
            return '0';
          }
          if (!isEnabled(JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS)) {
            reportInvalidNumber("Leading zeroes not allowed");
          }
          _inputPtr += 1;
          c1 = c2;
        } while (c2 != '0');
      }
      c2 = _inputBuffer[_inputPtr];
      if ((c2 < '0') || (c2 > '9')) {
        return '0';
      }
      _inputPtr += 1;
      c1 = c2;
    } while (c2 == '0');
    return c2;
  }
  
  private final JsonToken parseNumberText2(boolean paramBoolean)
    throws IOException, JsonParseException
  {
    Object localObject2 = _textBuffer.emptyAndGetCurrentSegment();
    int k = 0;
    if (paramBoolean)
    {
      localObject2[0] = 45;
      k = 0 + 1;
    }
    int n = 0;
    Object localObject1;
    int m;
    int i;
    int j;
    int i1;
    label85:
    int i4;
    if (_inputPtr < _inputEnd)
    {
      localObject1 = _inputBuffer;
      m = _inputPtr;
      _inputPtr = (m + 1);
      i = localObject1[m];
      j = i;
      if (i == 48) {
        j = _verifyNoLeadingZeroes();
      }
      i1 = 0;
      i = j;
      if ((i < 48) || (i > 57)) {
        break label906;
      }
      n += 1;
      localObject1 = localObject2;
      m = k;
      if (k >= localObject2.length)
      {
        localObject1 = _textBuffer.finishCurrentSegment();
        m = 0;
      }
      k = m + 1;
      localObject1[m] = i;
      if ((_inputPtr < _inputEnd) || (loadMore())) {
        break label680;
      }
      i = 0;
      m = 1;
      i4 = n;
    }
    for (;;)
    {
      if (i4 == 0) {
        reportInvalidNumber("Missing integer part (next char " + _getCharDesc(i) + ")");
      }
      int i5 = 0;
      i1 = 0;
      label234:
      int i2;
      if (i == 46)
      {
        n = k + 1;
        localObject1[k] = i;
        k = n;
        if ((_inputPtr >= _inputEnd) && (!loadMore()))
        {
          i2 = 1;
          label255:
          j = i;
          m = i2;
          i5 = i1;
          localObject2 = localObject1;
          n = k;
          if (i1 == 0)
          {
            reportUnexpectedNumberChar(i, "Decimal point not followed by a digit");
            n = k;
            localObject2 = localObject1;
            i5 = i1;
            m = i2;
            j = i;
          }
        }
      }
      for (;;)
      {
        int i3 = 0;
        i1 = 0;
        int i6;
        if (j != 101)
        {
          k = m;
          i6 = n;
          if (j != 69) {}
        }
        else
        {
          localObject1 = localObject2;
          k = n;
          if (n >= localObject2.length)
          {
            localObject1 = _textBuffer.finishCurrentSegment();
            k = 0;
          }
          n = k + 1;
          localObject1[k] = j;
          if (_inputPtr >= _inputEnd) {
            break label818;
          }
          localObject2 = _inputBuffer;
          k = _inputPtr;
          _inputPtr = (k + 1);
          i = localObject2[k];
          label406:
          if ((i != 45) && (i != 43)) {
            break label882;
          }
          if (n < localObject1.length) {
            break label875;
          }
          localObject1 = _textBuffer.finishCurrentSegment();
          k = 0;
          label438:
          localObject1[k] = i;
          if (_inputPtr >= _inputEnd) {
            break label828;
          }
          localObject2 = _inputBuffer;
          n = _inputPtr;
          _inputPtr = (n + 1);
          i = localObject2[n];
          label481:
          k += 1;
          i3 = i1;
        }
        for (;;)
        {
          i2 = m;
          i1 = i3;
          n = k;
          if (i <= 57)
          {
            i2 = m;
            i1 = i3;
            n = k;
            if (i >= 48)
            {
              i1 = i3 + 1;
              localObject2 = localObject1;
              n = k;
              if (k >= localObject1.length)
              {
                localObject2 = _textBuffer.finishCurrentSegment();
                n = 0;
              }
              k = n + 1;
              localObject2[n] = i;
              if ((_inputPtr < _inputEnd) || (loadMore())) {
                break label838;
              }
              i2 = 1;
              n = k;
            }
          }
          k = i2;
          i3 = i1;
          i6 = n;
          if (i1 == 0)
          {
            reportUnexpectedNumberChar(i, "Exponent indicator not followed by a digit");
            i6 = n;
            i3 = i1;
            k = i2;
          }
          if (k == 0) {
            _inputPtr -= 1;
          }
          _textBuffer.setCurrentLength(i6);
          return reset(paramBoolean, i4, i5, i3);
          i = getNextChar("No digit following minus sign");
          break;
          label680:
          localObject2 = _inputBuffer;
          m = _inputPtr;
          _inputPtr = (m + 1);
          i = localObject2[m];
          localObject2 = localObject1;
          break label85;
          localObject2 = _inputBuffer;
          n = _inputPtr;
          _inputPtr = (n + 1);
          j = localObject2[n];
          i = j;
          i2 = m;
          if (j < 48) {
            break label255;
          }
          i = j;
          i2 = m;
          if (j > 57) {
            break label255;
          }
          i1 += 1;
          localObject2 = localObject1;
          n = k;
          if (k >= localObject1.length)
          {
            localObject2 = _textBuffer.finishCurrentSegment();
            n = 0;
          }
          localObject2[n] = j;
          k = n + 1;
          i = j;
          localObject1 = localObject2;
          break label234;
          label818:
          i = getNextChar("expected a digit for number exponent");
          break label406;
          label828:
          i = getNextChar("expected a digit for number exponent");
          break label481;
          label838:
          localObject1 = _inputBuffer;
          n = _inputPtr;
          _inputPtr = (n + 1);
          i = localObject1[n];
          i3 = i1;
          localObject1 = localObject2;
          continue;
          label875:
          k = n;
          break label438;
          label882:
          k = n;
          i3 = i1;
        }
        j = i;
        localObject2 = localObject1;
        n = k;
      }
      label906:
      m = i1;
      i4 = n;
      localObject1 = localObject2;
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
        break label163;
      }
      if (paramBoolean)
      {
        localObject = "-INF";
        i = paramInt;
        if (!_matchToken((String)localObject, 3)) {
          break label153;
        }
        if (!isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
          break label121;
        }
        if (!paramBoolean) {
          break label114;
        }
      }
      for (;;)
      {
        return resetAsNaN((String)localObject, d);
        localObject = "+INF";
        break;
        label114:
        d = Double.POSITIVE_INFINITY;
      }
      label121:
      _reportError("Non-standard token '" + (String)localObject + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
      i = paramInt;
    }
    for (;;)
    {
      label153:
      reportUnexpectedNumberChar(i, "expected digit (0-9) to follow minus sign, for valid numeric value");
      return null;
      label163:
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
            break label229;
          }
          if (!paramBoolean) {
            break label222;
          }
        }
        for (;;)
        {
          return resetAsNaN((String)localObject, d);
          localObject = "+Infinity";
          break;
          label222:
          d = Double.POSITIVE_INFINITY;
        }
        label229:
        _reportError("Non-standard token '" + (String)localObject + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
        i = paramInt;
      }
    }
  }
  
  protected final JsonToken parseNumberText(int paramInt)
    throws IOException, JsonParseException
  {
    boolean bool;
    int i2;
    int i3;
    int i;
    if (paramInt == 45)
    {
      bool = true;
      j = _inputPtr;
      i2 = j - 1;
      i3 = _inputEnd;
      i = j;
      if (!bool) {
        break label110;
      }
      if (j < _inputEnd) {
        break label71;
      }
    }
    label71:
    label110:
    int k;
    label121:
    int i1;
    int m;
    int n;
    label243:
    label281:
    do
    {
      do
      {
        paramInt = i2;
        if (bool) {
          paramInt = i2 + 1;
        }
        _inputPtr = paramInt;
        return parseNumberText2(bool);
        bool = false;
        break;
        arrayOfChar = _inputBuffer;
        i = j + 1;
        paramInt = arrayOfChar[j];
        if ((paramInt > 57) || (paramInt < 48))
        {
          _inputPtr = i;
          return _handleInvalidNumberStart(paramInt, true);
        }
      } while (paramInt == 48);
      k = 1;
      paramInt = i;
      if (paramInt < _inputEnd)
      {
        arrayOfChar = _inputBuffer;
        i = paramInt + 1;
        i1 = arrayOfChar[paramInt];
        if ((i1 < 48) || (i1 > 57))
        {
          m = 0;
          n = 0;
          paramInt = i;
          j = i1;
          if (i1 != 46) {
            break label243;
          }
          j = i;
          i = n;
        }
      }
      for (;;)
      {
        if (j >= i3)
        {
          break;
          k += 1;
          paramInt = i;
          break label121;
          break;
        }
        arrayOfChar = _inputBuffer;
        paramInt = j + 1;
        j = arrayOfChar[j];
        if ((j < 48) || (j > 57))
        {
          if (i == 0) {
            reportUnexpectedNumberChar(j, "Decimal point not followed by a digit");
          }
          m = i;
          n = 0;
          i = 0;
          if (j != 101)
          {
            i1 = paramInt;
            if (j != 69) {
              break label395;
            }
          }
          if (paramInt < i3) {
            break label281;
          }
          break;
        }
        i += 1;
        j = paramInt;
      }
      arrayOfChar = _inputBuffer;
      n = paramInt + 1;
      j = arrayOfChar[paramInt];
      if ((j != 45) && (j != 43)) {
        break label435;
      }
    } while (n >= i3);
    char[] arrayOfChar = _inputBuffer;
    paramInt = n + 1;
    int j = arrayOfChar[n];
    for (;;)
    {
      if ((j <= 57) && (j >= 48))
      {
        i += 1;
        if (paramInt >= i3) {
          break;
        }
        j = _inputBuffer[paramInt];
        paramInt += 1;
        continue;
      }
      n = i;
      i1 = paramInt;
      if (i == 0)
      {
        reportUnexpectedNumberChar(j, "Exponent indicator not followed by a digit");
        i1 = paramInt;
        n = i;
      }
      label395:
      paramInt = i1 - 1;
      _inputPtr = paramInt;
      _textBuffer.resetWithShared(_inputBuffer, i2, paramInt - i2);
      return reset(bool, k, m, n);
      label435:
      paramInt = n;
    }
  }
}
