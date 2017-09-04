package org.codehaus.jackson.impl;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser.NumberType;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.io.IOContext;
import org.codehaus.jackson.io.NumberInput;
import org.codehaus.jackson.util.TextBuffer;

public abstract class JsonNumericParserBase
  extends JsonParserBase
{
  static final BigDecimal BD_MAX_INT = new BigDecimal(Long.MAX_VALUE);
  static final BigDecimal BD_MAX_LONG;
  static final BigDecimal BD_MIN_INT;
  static final BigDecimal BD_MIN_LONG = new BigDecimal(Long.MIN_VALUE);
  protected static final char CHAR_NULL = '\000';
  protected static final int INT_0 = 48;
  protected static final int INT_1 = 49;
  protected static final int INT_2 = 50;
  protected static final int INT_3 = 51;
  protected static final int INT_4 = 52;
  protected static final int INT_5 = 53;
  protected static final int INT_6 = 54;
  protected static final int INT_7 = 55;
  protected static final int INT_8 = 56;
  protected static final int INT_9 = 57;
  protected static final int INT_DECIMAL_POINT = 46;
  protected static final int INT_E = 69;
  protected static final int INT_MINUS = 45;
  protected static final int INT_PLUS = 43;
  protected static final int INT_e = 101;
  static final double MAX_INT_D = 2.147483647E9D;
  static final long MAX_INT_L = 2147483647L;
  static final double MAX_LONG_D = 9.223372036854776E18D;
  static final double MIN_INT_D = -2.147483648E9D;
  static final long MIN_INT_L = -2147483648L;
  static final double MIN_LONG_D = -9.223372036854776E18D;
  protected static final int NR_BIGDECIMAL = 16;
  protected static final int NR_BIGINT = 4;
  protected static final int NR_DOUBLE = 8;
  protected static final int NR_INT = 1;
  protected static final int NR_LONG = 2;
  protected static final int NR_UNKNOWN = 0;
  protected int _expLength;
  protected int _fractLength;
  protected int _intLength;
  protected int _numTypesValid = 0;
  protected BigDecimal _numberBigDecimal;
  protected BigInteger _numberBigInt;
  protected double _numberDouble;
  protected int _numberInt;
  protected long _numberLong;
  protected boolean _numberNegative;
  
  static
  {
    BD_MAX_LONG = new BigDecimal(Long.MAX_VALUE);
    BD_MIN_INT = new BigDecimal(Long.MIN_VALUE);
  }
  
  protected JsonNumericParserBase(IOContext paramIOContext, int paramInt)
  {
    super(paramIOContext, paramInt);
  }
  
  private final void _parseSlowFloatValue(int paramInt)
    throws IOException, JsonParseException
  {
    if (paramInt == 16) {}
    try
    {
      _numberBigDecimal = _textBuffer.contentsAsDecimal();
      _numTypesValid = 16;
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      _wrapError("Malformed numeric value '" + _textBuffer.contentsAsString() + "'", localNumberFormatException);
    }
    _numberDouble = _textBuffer.contentsAsDouble();
    _numTypesValid = 8;
    return;
  }
  
  private final void _parseSlowIntValue(int paramInt1, char[] paramArrayOfChar, int paramInt2, int paramInt3)
    throws IOException, JsonParseException
  {
    String str = _textBuffer.contentsAsString();
    try
    {
      if (NumberInput.inLongRange(paramArrayOfChar, paramInt2, paramInt3, _numberNegative))
      {
        _numberLong = Long.parseLong(str);
        _numTypesValid = 2;
        return;
      }
      _numberBigInt = new BigInteger(str);
      _numTypesValid = 4;
      return;
    }
    catch (NumberFormatException paramArrayOfChar)
    {
      _wrapError("Malformed numeric value '" + str + "'", paramArrayOfChar);
    }
  }
  
  protected void _parseNumericValue(int paramInt)
    throws IOException, JsonParseException
  {
    if (_currToken == JsonToken.VALUE_NUMBER_INT)
    {
      char[] arrayOfChar = _textBuffer.getTextBuffer();
      int j = _textBuffer.getTextOffset();
      int k = _intLength;
      int i = j;
      if (_numberNegative) {
        i = j + 1;
      }
      if (k <= 9)
      {
        i = NumberInput.parseInt(arrayOfChar, i, k);
        paramInt = i;
        if (_numberNegative) {
          paramInt = -i;
        }
        _numberInt = paramInt;
        _numTypesValid = 1;
        return;
      }
      if (k <= 18)
      {
        long l2 = NumberInput.parseLong(arrayOfChar, i, k);
        long l1 = l2;
        if (_numberNegative) {
          l1 = -l2;
        }
        if (k == 10) {
          if (_numberNegative)
          {
            if (l1 >= -2147483648L)
            {
              _numberInt = ((int)l1);
              _numTypesValid = 1;
            }
          }
          else if (l1 <= 2147483647L)
          {
            _numberInt = ((int)l1);
            _numTypesValid = 1;
            return;
          }
        }
        _numberLong = l1;
        _numTypesValid = 2;
        return;
      }
      _parseSlowIntValue(paramInt, arrayOfChar, i, k);
      return;
    }
    if (_currToken == JsonToken.VALUE_NUMBER_FLOAT)
    {
      _parseSlowFloatValue(paramInt);
      return;
    }
    _reportError("Current token (" + _currToken + ") not numeric, can not use numeric value accessors");
  }
  
  protected void convertNumberToBigDecimal()
    throws IOException, JsonParseException
  {
    if ((_numTypesValid & 0x8) != 0) {
      _numberBigDecimal = new BigDecimal(getText());
    }
    for (;;)
    {
      _numTypesValid |= 0x10;
      return;
      if ((_numTypesValid & 0x4) != 0) {
        _numberBigDecimal = new BigDecimal(_numberBigInt);
      } else if ((_numTypesValid & 0x2) != 0) {
        _numberBigDecimal = BigDecimal.valueOf(_numberLong);
      } else if ((_numTypesValid & 0x1) != 0) {
        _numberBigDecimal = BigDecimal.valueOf(_numberInt);
      } else {
        _throwInternal();
      }
    }
  }
  
  protected void convertNumberToBigInteger()
    throws IOException, JsonParseException
  {
    if ((_numTypesValid & 0x10) != 0) {
      _numberBigInt = _numberBigDecimal.toBigInteger();
    }
    for (;;)
    {
      _numTypesValid |= 0x4;
      return;
      if ((_numTypesValid & 0x2) != 0) {
        _numberBigInt = BigInteger.valueOf(_numberLong);
      } else if ((_numTypesValid & 0x1) != 0) {
        _numberBigInt = BigInteger.valueOf(_numberInt);
      } else if ((_numTypesValid & 0x8) != 0) {
        _numberBigInt = BigDecimal.valueOf(_numberDouble).toBigInteger();
      } else {
        _throwInternal();
      }
    }
  }
  
  protected void convertNumberToDouble()
    throws IOException, JsonParseException
  {
    if ((_numTypesValid & 0x10) != 0) {
      _numberDouble = _numberBigDecimal.doubleValue();
    }
    for (;;)
    {
      _numTypesValid |= 0x8;
      return;
      if ((_numTypesValid & 0x4) != 0) {
        _numberDouble = _numberBigInt.doubleValue();
      } else if ((_numTypesValid & 0x2) != 0) {
        _numberDouble = _numberLong;
      } else if ((_numTypesValid & 0x1) != 0) {
        _numberDouble = _numberInt;
      } else {
        _throwInternal();
      }
    }
  }
  
  protected void convertNumberToInt()
    throws IOException, JsonParseException
  {
    if ((_numTypesValid & 0x2) != 0)
    {
      int i = (int)_numberLong;
      if (i != _numberLong) {
        _reportError("Numeric value (" + getText() + ") out of range of int");
      }
      _numberInt = i;
    }
    for (;;)
    {
      _numTypesValid |= 0x1;
      return;
      if ((_numTypesValid & 0x4) != 0)
      {
        _numberInt = _numberBigInt.intValue();
      }
      else if ((_numTypesValid & 0x8) != 0)
      {
        if ((_numberDouble < -2.147483648E9D) || (_numberDouble > 2.147483647E9D)) {
          reportOverflowInt();
        }
        _numberInt = ((int)_numberDouble);
      }
      else if ((_numTypesValid & 0x10) != 0)
      {
        if ((BD_MIN_INT.compareTo(_numberBigDecimal) > 0) || (BD_MAX_INT.compareTo(_numberBigDecimal) < 0)) {
          reportOverflowInt();
        }
        _numberInt = _numberBigDecimal.intValue();
      }
      else
      {
        _throwInternal();
      }
    }
  }
  
  protected void convertNumberToLong()
    throws IOException, JsonParseException
  {
    if ((_numTypesValid & 0x1) != 0) {
      _numberLong = _numberInt;
    }
    for (;;)
    {
      _numTypesValid |= 0x2;
      return;
      if ((_numTypesValid & 0x4) != 0)
      {
        _numberLong = _numberBigInt.longValue();
      }
      else if ((_numTypesValid & 0x8) != 0)
      {
        if ((_numberDouble < -9.223372036854776E18D) || (_numberDouble > 9.223372036854776E18D)) {
          reportOverflowLong();
        }
        _numberLong = (_numberDouble);
      }
      else if ((_numTypesValid & 0x10) != 0)
      {
        if ((BD_MIN_LONG.compareTo(_numberBigDecimal) > 0) || (BD_MAX_LONG.compareTo(_numberBigDecimal) < 0)) {
          reportOverflowLong();
        }
        _numberLong = _numberBigDecimal.longValue();
      }
      else
      {
        _throwInternal();
      }
    }
  }
  
  public BigInteger getBigIntegerValue()
    throws IOException, JsonParseException
  {
    if ((_numTypesValid & 0x4) == 0)
    {
      if (_numTypesValid == 0) {
        _parseNumericValue(4);
      }
      if ((_numTypesValid & 0x4) == 0) {
        convertNumberToBigInteger();
      }
    }
    return _numberBigInt;
  }
  
  public BigDecimal getDecimalValue()
    throws IOException, JsonParseException
  {
    if ((_numTypesValid & 0x10) == 0)
    {
      if (_numTypesValid == 0) {
        _parseNumericValue(16);
      }
      if ((_numTypesValid & 0x10) == 0) {
        convertNumberToBigDecimal();
      }
    }
    return _numberBigDecimal;
  }
  
  public double getDoubleValue()
    throws IOException, JsonParseException
  {
    if ((_numTypesValid & 0x8) == 0)
    {
      if (_numTypesValid == 0) {
        _parseNumericValue(8);
      }
      if ((_numTypesValid & 0x8) == 0) {
        convertNumberToDouble();
      }
    }
    return _numberDouble;
  }
  
  public float getFloatValue()
    throws IOException, JsonParseException
  {
    return (float)getDoubleValue();
  }
  
  public int getIntValue()
    throws IOException, JsonParseException
  {
    if ((_numTypesValid & 0x1) == 0)
    {
      if (_numTypesValid == 0) {
        _parseNumericValue(1);
      }
      if ((_numTypesValid & 0x1) == 0) {
        convertNumberToInt();
      }
    }
    return _numberInt;
  }
  
  public long getLongValue()
    throws IOException, JsonParseException
  {
    if ((_numTypesValid & 0x2) == 0)
    {
      if (_numTypesValid == 0) {
        _parseNumericValue(2);
      }
      if ((_numTypesValid & 0x2) == 0) {
        convertNumberToLong();
      }
    }
    return _numberLong;
  }
  
  public JsonParser.NumberType getNumberType()
    throws IOException, JsonParseException
  {
    if (_numTypesValid == 0) {
      _parseNumericValue(0);
    }
    if (_currToken == JsonToken.VALUE_NUMBER_INT)
    {
      if ((_numTypesValid & 0x1) != 0) {
        return JsonParser.NumberType.INT;
      }
      if ((_numTypesValid & 0x2) != 0) {
        return JsonParser.NumberType.LONG;
      }
      return JsonParser.NumberType.BIG_INTEGER;
    }
    if ((_numTypesValid & 0x10) != 0) {
      return JsonParser.NumberType.BIG_DECIMAL;
    }
    return JsonParser.NumberType.DOUBLE;
  }
  
  public Number getNumberValue()
    throws IOException, JsonParseException
  {
    if (_numTypesValid == 0) {
      _parseNumericValue(0);
    }
    if (_currToken == JsonToken.VALUE_NUMBER_INT)
    {
      if ((_numTypesValid & 0x1) != 0) {
        return Integer.valueOf(_numberInt);
      }
      if ((_numTypesValid & 0x2) != 0) {
        return Long.valueOf(_numberLong);
      }
      if ((_numTypesValid & 0x4) != 0) {
        return _numberBigInt;
      }
      return _numberBigDecimal;
    }
    if ((_numTypesValid & 0x10) != 0) {
      return _numberBigDecimal;
    }
    if ((_numTypesValid & 0x8) == 0) {
      _throwInternal();
    }
    return Double.valueOf(_numberDouble);
  }
  
  protected void reportInvalidNumber(String paramString)
    throws JsonParseException
  {
    _reportError("Invalid numeric value: " + paramString);
  }
  
  protected void reportOverflowInt()
    throws IOException, JsonParseException
  {
    _reportError("Numeric value (" + getText() + ") out of range of int (" + Integer.MIN_VALUE + " - " + Integer.MAX_VALUE + ")");
  }
  
  protected void reportOverflowLong()
    throws IOException, JsonParseException
  {
    _reportError("Numeric value (" + getText() + ") out of range of long (" + Long.MIN_VALUE + " - " + Long.MAX_VALUE + ")");
  }
  
  protected void reportUnexpectedNumberChar(int paramInt, String paramString)
    throws JsonParseException
  {
    String str2 = "Unexpected character (" + _getCharDesc(paramInt) + ") in numeric value";
    String str1 = str2;
    if (paramString != null) {
      str1 = str2 + ": " + paramString;
    }
    _reportError(str1);
  }
  
  protected final JsonToken reset(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 < 1) && (paramInt3 < 1)) {
      return resetInt(paramBoolean, paramInt1);
    }
    return resetFloat(paramBoolean, paramInt1, paramInt2, paramInt3);
  }
  
  protected final JsonToken resetAsNaN(String paramString, double paramDouble)
  {
    _textBuffer.resetWithString(paramString);
    _numberDouble = paramDouble;
    _numTypesValid = 8;
    return JsonToken.VALUE_NUMBER_FLOAT;
  }
  
  protected final JsonToken resetFloat(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    _numberNegative = paramBoolean;
    _intLength = paramInt1;
    _fractLength = paramInt2;
    _expLength = paramInt3;
    _numTypesValid = 0;
    return JsonToken.VALUE_NUMBER_FLOAT;
  }
  
  protected final JsonToken resetInt(boolean paramBoolean, int paramInt)
  {
    _numberNegative = paramBoolean;
    _intLength = paramInt;
    _fractLength = 0;
    _expLength = 0;
    _numTypesValid = 0;
    return JsonToken.VALUE_NUMBER_INT;
  }
}
