package org.codehaus.jackson.map.deser;

import java.io.IOException;
import java.lang.reflect.Method;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.annotate.JsonCachable;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.util.ClassUtil;

@JsonCachable
public class EnumDeserializer
  extends StdScalarDeserializer<Enum<?>>
{
  final EnumResolver<?> _resolver;
  
  public EnumDeserializer(EnumResolver<?> paramEnumResolver)
  {
    super(Enum.class);
    _resolver = paramEnumResolver;
  }
  
  public static JsonDeserializer<?> deserializerForCreator(DeserializationConfig paramDeserializationConfig, Class<?> paramClass, AnnotatedMethod paramAnnotatedMethod)
  {
    if (paramAnnotatedMethod.getParameterType(0) != String.class) {
      throw new IllegalArgumentException("Parameter #0 type for factory method (" + paramAnnotatedMethod + ") not suitable, must be java.lang.String");
    }
    if (paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
      ClassUtil.checkAndFixAccess(paramAnnotatedMethod.getMember());
    }
    return new FactoryBasedDeserializer(paramClass, paramAnnotatedMethod);
  }
  
  public Enum<?> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      paramJsonParser = paramJsonParser.getText();
      paramJsonParser = _resolver.findEnum(paramJsonParser);
      if (paramJsonParser == null) {
        throw paramDeserializationContext.weirdStringException(_resolver.getEnumClass(), "value not one of declared Enum instance names");
      }
      return paramJsonParser;
    }
    if (localJsonToken == JsonToken.VALUE_NUMBER_INT)
    {
      if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.FAIL_ON_NUMBERS_FOR_ENUMS)) {
        throw paramDeserializationContext.mappingException("Not allowed to deserialize Enum value out of JSON number (disable DeserializationConfig.Feature.FAIL_ON_NUMBERS_FOR_ENUMS to allow)");
      }
      int i = paramJsonParser.getIntValue();
      paramJsonParser = _resolver.getEnum(i);
      if (paramJsonParser == null) {
        throw paramDeserializationContext.weirdNumberException(_resolver.getEnumClass(), "index value outside legal index range [0.." + _resolver.lastValidIndex() + "]");
      }
      return paramJsonParser;
    }
    throw paramDeserializationContext.mappingException(_resolver.getEnumClass());
  }
  
  protected static class FactoryBasedDeserializer
    extends StdScalarDeserializer<Object>
  {
    protected final Class<?> _enumClass;
    protected final Method _factory;
    
    public FactoryBasedDeserializer(Class<?> paramClass, AnnotatedMethod paramAnnotatedMethod)
    {
      super();
      _enumClass = paramClass;
      _factory = paramAnnotatedMethod.getAnnotated();
    }
    
    public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      if (paramJsonParser.getCurrentToken() != JsonToken.VALUE_STRING) {
        throw paramDeserializationContext.mappingException(_enumClass);
      }
      paramJsonParser = paramJsonParser.getText();
      try
      {
        paramJsonParser = _factory.invoke(_enumClass, new Object[] { paramJsonParser });
        return paramJsonParser;
      }
      catch (Exception paramJsonParser)
      {
        ClassUtil.unwrapAndThrowAsIAE(paramJsonParser);
      }
      return null;
    }
  }
}
