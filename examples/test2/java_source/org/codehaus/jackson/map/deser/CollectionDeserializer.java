package org.codehaus.jackson.map.deser;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.Collection;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.type.JavaType;

@JacksonStdImpl
public class CollectionDeserializer
  extends ContainerDeserializer<Collection<Object>>
{
  protected final JavaType _collectionType;
  final Constructor<Collection<Object>> _defaultCtor;
  final JsonDeserializer<Object> _valueDeserializer;
  final TypeDeserializer _valueTypeDeserializer;
  
  public CollectionDeserializer(JavaType paramJavaType, JsonDeserializer<Object> paramJsonDeserializer, TypeDeserializer paramTypeDeserializer, Constructor<Collection<Object>> paramConstructor)
  {
    super(paramJavaType.getRawClass());
    _collectionType = paramJavaType;
    _valueDeserializer = paramJsonDeserializer;
    _valueTypeDeserializer = paramTypeDeserializer;
    if (paramConstructor == null) {
      throw new IllegalArgumentException("No default constructor found for container class " + paramJavaType.getRawClass().getName());
    }
    _defaultCtor = paramConstructor;
  }
  
  private final Collection<Object> handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Collection<Object> paramCollection)
    throws IOException, JsonProcessingException
  {
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
      throw paramDeserializationContext.mappingException(_collectionType.getRawClass());
    }
    JsonDeserializer localJsonDeserializer = _valueDeserializer;
    TypeDeserializer localTypeDeserializer = _valueTypeDeserializer;
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
      paramJsonParser = null;
    }
    for (;;)
    {
      paramCollection.add(paramJsonParser);
      return paramCollection;
      if (localTypeDeserializer == null) {
        paramJsonParser = localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
      } else {
        paramJsonParser = localJsonDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, localTypeDeserializer);
      }
    }
  }
  
  public Collection<Object> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    try
    {
      Collection localCollection = (Collection)_defaultCtor.newInstance(new Object[0]);
      return deserialize(paramJsonParser, paramDeserializationContext, localCollection);
    }
    catch (Exception paramJsonParser)
    {
      throw paramDeserializationContext.instantiationException(_collectionType.getRawClass(), paramJsonParser);
    }
  }
  
  public Collection<Object> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Collection<Object> paramCollection)
    throws IOException, JsonProcessingException
  {
    Object localObject;
    if (!paramJsonParser.isExpectedStartArrayToken()) {
      localObject = handleNonArray(paramJsonParser, paramDeserializationContext, paramCollection);
    }
    JsonDeserializer localJsonDeserializer;
    TypeDeserializer localTypeDeserializer;
    JsonToken localJsonToken;
    do
    {
      return localObject;
      localJsonDeserializer = _valueDeserializer;
      localTypeDeserializer = _valueTypeDeserializer;
      localJsonToken = paramJsonParser.nextToken();
      localObject = paramCollection;
    } while (localJsonToken == JsonToken.END_ARRAY);
    if (localJsonToken == JsonToken.VALUE_NULL) {
      localObject = null;
    }
    for (;;)
    {
      paramCollection.add(localObject);
      break;
      if (localTypeDeserializer == null) {
        localObject = localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
      } else {
        localObject = localJsonDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, localTypeDeserializer);
      }
    }
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    throws IOException, JsonProcessingException
  {
    return paramTypeDeserializer.deserializeTypedFromArray(paramJsonParser, paramDeserializationContext);
  }
  
  public JsonDeserializer<Object> getContentDeserializer()
  {
    return _valueDeserializer;
  }
  
  public JavaType getContentType()
  {
    return _collectionType.getContentType();
  }
}
