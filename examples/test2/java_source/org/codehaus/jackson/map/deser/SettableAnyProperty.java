package org.codehaus.jackson.map.deser;

import java.io.IOException;
import java.lang.reflect.Method;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.type.JavaType;

public final class SettableAnyProperty
{
  protected final BeanProperty _property;
  protected final Method _setter;
  protected final JavaType _type;
  protected JsonDeserializer<Object> _valueDeserializer;
  
  public SettableAnyProperty(BeanProperty paramBeanProperty, AnnotatedMethod paramAnnotatedMethod, JavaType paramJavaType)
  {
    _property = paramBeanProperty;
    _type = paramJavaType;
    _setter = paramAnnotatedMethod.getAnnotated();
  }
  
  private String getClassName()
  {
    return _setter.getDeclaringClass().getName();
  }
  
  protected void _throwAsIOE(Exception paramException, String paramString, Object paramObject)
    throws IOException
  {
    if ((paramException instanceof IllegalArgumentException))
    {
      if (paramObject == null)
      {
        paramObject = "[NULL]";
        paramString = new StringBuilder("Problem deserializing \"any\" property '").append(paramString);
        paramString.append("' of class " + getClassName() + " (expected type: ").append(_type);
        paramString.append("; actual type: ").append(paramObject).append(")");
        paramObject = paramException.getMessage();
        if (paramObject == null) {
          break label128;
        }
        paramString.append(", problem: ").append(paramObject);
      }
      for (;;)
      {
        throw new JsonMappingException(paramString.toString(), null, paramException);
        paramObject = paramObject.getClass().getName();
        break;
        label128:
        paramString.append(" (no error message provided)");
      }
    }
    if ((paramException instanceof IOException)) {
      throw ((IOException)paramException);
    }
    if ((paramException instanceof RuntimeException)) {
      throw ((RuntimeException)paramException);
    }
    while (paramException.getCause() != null) {
      paramException = paramException.getCause();
    }
    throw new JsonMappingException(paramException.getMessage(), null, paramException);
  }
  
  public final Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
      return null;
    }
    return _valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
  }
  
  public final void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject, String paramString)
    throws IOException, JsonProcessingException
  {
    set(paramObject, paramString, deserialize(paramJsonParser, paramDeserializationContext));
  }
  
  public BeanProperty getProperty()
  {
    return _property;
  }
  
  public JavaType getType()
  {
    return _type;
  }
  
  public boolean hasValueDeserializer()
  {
    return _valueDeserializer != null;
  }
  
  public final void set(Object paramObject1, String paramString, Object paramObject2)
    throws IOException
  {
    try
    {
      _setter.invoke(paramObject1, new Object[] { paramString, paramObject2 });
      return;
    }
    catch (Exception paramObject1)
    {
      _throwAsIOE(paramObject1, paramString, paramObject2);
    }
  }
  
  public void setValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
  {
    if (_valueDeserializer != null) {
      throw new IllegalStateException("Already had assigned deserializer for SettableAnyProperty");
    }
    _valueDeserializer = paramJsonDeserializer;
  }
  
  public String toString()
  {
    return "[any property on class " + getClassName() + "]";
  }
}
