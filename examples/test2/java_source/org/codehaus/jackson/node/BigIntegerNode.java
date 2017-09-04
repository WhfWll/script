package org.codehaus.jackson.node;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonParser.NumberType;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.SerializerProvider;

public final class BigIntegerNode
  extends NumericNode
{
  protected final BigInteger _value;
  
  public BigIntegerNode(BigInteger paramBigInteger)
  {
    _value = paramBigInteger;
  }
  
  public static BigIntegerNode valueOf(BigInteger paramBigInteger)
  {
    return new BigIntegerNode(paramBigInteger);
  }
  
  public JsonToken asToken()
  {
    return JsonToken.VALUE_NUMBER_INT;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (paramObject.getClass() != getClass()) {
        return false;
      }
    } while (_value == _value);
    return false;
  }
  
  public BigInteger getBigIntegerValue()
  {
    return _value;
  }
  
  public BigDecimal getDecimalValue()
  {
    return new BigDecimal(_value);
  }
  
  public double getDoubleValue()
  {
    return _value.doubleValue();
  }
  
  public int getIntValue()
  {
    return _value.intValue();
  }
  
  public long getLongValue()
  {
    return _value.longValue();
  }
  
  public JsonParser.NumberType getNumberType()
  {
    return JsonParser.NumberType.BIG_INTEGER;
  }
  
  public Number getNumberValue()
  {
    return _value;
  }
  
  public boolean getValueAsBoolean(boolean paramBoolean)
  {
    return !BigInteger.ZERO.equals(_value);
  }
  
  public String getValueAsText()
  {
    return _value.toString();
  }
  
  public int hashCode()
  {
    return _value.hashCode();
  }
  
  public boolean isBigInteger()
  {
    return true;
  }
  
  public boolean isIntegralNumber()
  {
    return true;
  }
  
  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeNumber(_value);
  }
}
