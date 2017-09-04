package org.codehaus.jackson.map.jsontype.impl;

import java.io.IOException;
import java.util.HashMap;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;
import org.codehaus.jackson.type.JavaType;

public abstract class TypeDeserializerBase
  extends TypeDeserializer
{
  protected final JavaType _baseType;
  protected final HashMap<String, JsonDeserializer<Object>> _deserializers;
  protected final TypeIdResolver _idResolver;
  protected final BeanProperty _property;
  
  protected TypeDeserializerBase(JavaType paramJavaType, TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty)
  {
    _baseType = paramJavaType;
    _idResolver = paramTypeIdResolver;
    _property = paramBeanProperty;
    _deserializers = new HashMap();
  }
  
  protected final JsonDeserializer<Object> _findDeserializer(DeserializationContext paramDeserializationContext, String paramString)
    throws IOException, JsonProcessingException
  {
    Object localObject2;
    synchronized (_deserializers)
    {
      localObject2 = (JsonDeserializer)_deserializers.get(paramString);
      localObject1 = localObject2;
      if (localObject2 != null) {
        break label131;
      }
      localObject2 = _idResolver.typeFromId(paramString);
      if (localObject2 == null) {
        throw paramDeserializationContext.unknownTypeException(_baseType, paramString);
      }
    }
    Object localObject1 = localObject2;
    if (_baseType != null)
    {
      localObject1 = localObject2;
      if (_baseType.getClass() == localObject2.getClass()) {
        localObject1 = _baseType.narrowBy(((JavaType)localObject2).getRawClass());
      }
    }
    localObject1 = paramDeserializationContext.getDeserializerProvider().findValueDeserializer(paramDeserializationContext.getConfig(), (JavaType)localObject1, _property);
    _deserializers.put(paramString, localObject1);
    label131:
    return localObject1;
  }
  
  public String baseTypeName()
  {
    return _baseType.getRawClass().getName();
  }
  
  public String getPropertyName()
  {
    return null;
  }
  
  public TypeIdResolver getTypeIdResolver()
  {
    return _idResolver;
  }
  
  public abstract JsonTypeInfo.As getTypeInclusion();
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('[').append(getClass().getName());
    localStringBuilder.append("; base-type:").append(_baseType);
    localStringBuilder.append("; id-resolver: ").append(_idResolver);
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
}
