package org.codehaus.jackson.node;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.SerializerProvider;

public final class POJONode
  extends ValueNode
{
  protected final Object _value;
  
  public POJONode(Object paramObject)
  {
    _value = paramObject;
  }
  
  public JsonToken asToken()
  {
    return JsonToken.VALUE_EMBEDDED_OBJECT;
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
      paramObject = (POJONode)paramObject;
      if (_value != null) {
        break;
      }
    } while (_value == null);
    return false;
    return _value.equals(_value);
  }
  
  public Object getPojo()
  {
    return _value;
  }
  
  public boolean getValueAsBoolean(boolean paramBoolean)
  {
    boolean bool = paramBoolean;
    if (_value != null)
    {
      bool = paramBoolean;
      if ((_value instanceof Boolean)) {
        bool = ((Boolean)_value).booleanValue();
      }
    }
    return bool;
  }
  
  public double getValueAsDouble(double paramDouble)
  {
    if ((_value instanceof Number)) {
      paramDouble = ((Number)_value).doubleValue();
    }
    return paramDouble;
  }
  
  public int getValueAsInt(int paramInt)
  {
    if ((_value instanceof Number)) {
      paramInt = ((Number)_value).intValue();
    }
    return paramInt;
  }
  
  public long getValueAsLong(long paramLong)
  {
    if ((_value instanceof Number)) {
      paramLong = ((Number)_value).longValue();
    }
    return paramLong;
  }
  
  public String getValueAsText()
  {
    if (_value == null) {
      return "null";
    }
    return _value.toString();
  }
  
  public int hashCode()
  {
    return _value.hashCode();
  }
  
  public boolean isPojo()
  {
    return true;
  }
  
  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonProcessingException
  {
    if (_value == null)
    {
      paramJsonGenerator.writeNull();
      return;
    }
    paramJsonGenerator.writeObject(_value);
  }
  
  public String toString()
  {
    return String.valueOf(_value);
  }
}
