package org.codehaus.jackson.map.ser;

import java.io.IOException;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.util.Date;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.ContextualSerializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializationConfig;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.SerializerFactory;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.ser.impl.ReadOnlyClassToSerializerMap;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.map.util.RootNameLookup;
import org.codehaus.jackson.node.ObjectNode;
import org.codehaus.jackson.schema.JsonSchema;
import org.codehaus.jackson.schema.SchemaAware;
import org.codehaus.jackson.type.JavaType;

public class StdSerializerProvider
  extends SerializerProvider
{
  static final boolean CACHE_UNKNOWN_MAPPINGS = false;
  public static final JsonSerializer<Object> DEFAULT_KEY_SERIALIZER = new StdKeySerializer();
  public static final JsonSerializer<Object> DEFAULT_NULL_KEY_SERIALIZER = new FailingSerializer("Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)");
  public static final JsonSerializer<Object> DEFAULT_UNKNOWN_SERIALIZER = new SerializerBase(Object.class)
  {
    protected void failForEmpty(Object paramAnonymousObject)
      throws JsonMappingException
    {
      throw new JsonMappingException("No serializer found for class " + paramAnonymousObject.getClass().getName() + " and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS) )");
    }
    
    public JsonNode getSchema(SerializerProvider paramAnonymousSerializerProvider, Type paramAnonymousType)
      throws JsonMappingException
    {
      return null;
    }
    
    public void serialize(Object paramAnonymousObject, JsonGenerator paramAnonymousJsonGenerator, SerializerProvider paramAnonymousSerializerProvider)
      throws IOException, JsonMappingException
    {
      if (paramAnonymousSerializerProvider.isEnabled(SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS)) {
        failForEmpty(paramAnonymousObject);
      }
      paramAnonymousJsonGenerator.writeStartObject();
      paramAnonymousJsonGenerator.writeEndObject();
    }
    
    public final void serializeWithType(Object paramAnonymousObject, JsonGenerator paramAnonymousJsonGenerator, SerializerProvider paramAnonymousSerializerProvider, TypeSerializer paramAnonymousTypeSerializer)
      throws IOException, JsonGenerationException
    {
      if (paramAnonymousSerializerProvider.isEnabled(SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS)) {
        failForEmpty(paramAnonymousObject);
      }
      paramAnonymousTypeSerializer.writeTypePrefixForObject(paramAnonymousObject, paramAnonymousJsonGenerator);
      paramAnonymousTypeSerializer.writeTypeSuffixForObject(paramAnonymousObject, paramAnonymousJsonGenerator);
    }
  };
  protected DateFormat _dateFormat;
  protected JsonSerializer<Object> _keySerializer = DEFAULT_KEY_SERIALIZER;
  protected final ReadOnlyClassToSerializerMap _knownSerializers;
  protected JsonSerializer<Object> _nullKeySerializer = DEFAULT_NULL_KEY_SERIALIZER;
  protected JsonSerializer<Object> _nullValueSerializer = NullSerializer.instance;
  protected final RootNameLookup _rootNames;
  protected final SerializerCache _serializerCache;
  protected final SerializerFactory _serializerFactory;
  protected JsonSerializer<Object> _unknownTypeSerializer = DEFAULT_UNKNOWN_SERIALIZER;
  
  public StdSerializerProvider()
  {
    super(null);
    _serializerFactory = null;
    _serializerCache = new SerializerCache();
    _knownSerializers = null;
    _rootNames = new RootNameLookup();
  }
  
  protected StdSerializerProvider(SerializationConfig paramSerializationConfig, StdSerializerProvider paramStdSerializerProvider, SerializerFactory paramSerializerFactory)
  {
    super(paramSerializationConfig);
    if (paramSerializationConfig == null) {
      throw new NullPointerException();
    }
    _serializerFactory = paramSerializerFactory;
    _serializerCache = _serializerCache;
    _unknownTypeSerializer = _unknownTypeSerializer;
    _keySerializer = _keySerializer;
    _nullValueSerializer = _nullValueSerializer;
    _nullKeySerializer = _nullKeySerializer;
    _rootNames = _rootNames;
    _knownSerializers = _serializerCache.getReadOnlyLookupMap();
  }
  
  protected JsonSerializer<Object> _createAndCacheUntypedSerializer(Class<?> paramClass, BeanProperty paramBeanProperty)
    throws JsonMappingException
  {
    try
    {
      paramBeanProperty = _createUntypedSerializer(_config.constructType(paramClass), paramBeanProperty);
      if (paramBeanProperty != null) {
        _serializerCache.addAndResolveNonTypedSerializer(paramClass, paramBeanProperty, this);
      }
      return paramBeanProperty;
    }
    catch (IllegalArgumentException paramClass)
    {
      throw new JsonMappingException(paramClass.getMessage(), null, paramClass);
    }
  }
  
  protected JsonSerializer<Object> _createAndCacheUntypedSerializer(JavaType paramJavaType, BeanProperty paramBeanProperty)
    throws JsonMappingException
  {
    try
    {
      paramBeanProperty = _createUntypedSerializer(paramJavaType, paramBeanProperty);
      if (paramBeanProperty != null) {
        _serializerCache.addAndResolveNonTypedSerializer(paramJavaType, paramBeanProperty, this);
      }
      return paramBeanProperty;
    }
    catch (IllegalArgumentException paramJavaType)
    {
      throw new JsonMappingException(paramJavaType.getMessage(), null, paramJavaType);
    }
  }
  
  protected JsonSerializer<Object> _createUntypedSerializer(JavaType paramJavaType, BeanProperty paramBeanProperty)
    throws JsonMappingException
  {
    return _serializerFactory.createSerializer(_config, paramJavaType, paramBeanProperty);
  }
  
  protected JsonSerializer<Object> _findExplicitUntypedSerializer(Class<?> paramClass, BeanProperty paramBeanProperty)
  {
    JsonSerializer localJsonSerializer = _knownSerializers.untypedValueSerializer(paramClass);
    if (localJsonSerializer != null) {
      return localJsonSerializer;
    }
    localJsonSerializer = _serializerCache.untypedValueSerializer(paramClass);
    if (localJsonSerializer != null) {
      return localJsonSerializer;
    }
    try
    {
      paramClass = _createAndCacheUntypedSerializer(paramClass, paramBeanProperty);
      return paramClass;
    }
    catch (Exception paramClass) {}
    return null;
  }
  
  protected void _reportIncompatibleRootType(Object paramObject, JavaType paramJavaType)
    throws IOException, JsonProcessingException
  {
    if ((paramJavaType.isPrimitive()) && (ClassUtil.wrapperType(paramJavaType.getRawClass()).isAssignableFrom(paramObject.getClass()))) {
      return;
    }
    throw new JsonMappingException("Incompatible types: declared root type (" + paramJavaType + ") vs " + paramObject.getClass().getName());
  }
  
  protected void _serializeValue(JsonGenerator paramJsonGenerator, Object paramObject)
    throws IOException, JsonProcessingException
  {
    Object localObject;
    int i;
    if (paramObject == null)
    {
      localObject = getNullValueSerializer();
      i = 0;
    }
    for (;;)
    {
      try
      {
        ((JsonSerializer)localObject).serialize(paramObject, paramJsonGenerator, this);
        if (i != 0) {
          paramJsonGenerator.writeEndObject();
        }
        return;
      }
      catch (IOException paramJsonGenerator)
      {
        JsonSerializer localJsonSerializer;
        boolean bool;
        throw paramJsonGenerator;
      }
      catch (Exception localException)
      {
        paramObject = localException.getMessage();
        paramJsonGenerator = paramObject;
        if (paramObject != null) {
          continue;
        }
        paramJsonGenerator = "[no message for " + localException.getClass().getName() + "]";
        throw new JsonMappingException(paramJsonGenerator, localException);
      }
      localJsonSerializer = findTypedValueSerializer(paramObject.getClass(), true, null);
      bool = _config.isEnabled(SerializationConfig.Feature.WRAP_ROOT_VALUE);
      localObject = localJsonSerializer;
      i = bool;
      if (bool)
      {
        paramJsonGenerator.writeStartObject();
        paramJsonGenerator.writeFieldName(_rootNames.findRootName(paramObject.getClass(), _config));
        localObject = localJsonSerializer;
        i = bool;
      }
    }
  }
  
  protected void _serializeValue(JsonGenerator paramJsonGenerator, Object paramObject, JavaType paramJavaType)
    throws IOException, JsonProcessingException
  {
    Object localObject;
    int i;
    if (paramObject == null)
    {
      localObject = getNullValueSerializer();
      i = 0;
    }
    for (;;)
    {
      try
      {
        ((JsonSerializer)localObject).serialize(paramObject, paramJsonGenerator, this);
        if (i != 0) {
          paramJsonGenerator.writeEndObject();
        }
        return;
      }
      catch (IOException paramJsonGenerator)
      {
        JsonSerializer localJsonSerializer;
        boolean bool;
        throw paramJsonGenerator;
      }
      catch (Exception paramJavaType)
      {
        paramObject = paramJavaType.getMessage();
        paramJsonGenerator = paramObject;
        if (paramObject != null) {
          continue;
        }
        paramJsonGenerator = "[no message for " + paramJavaType.getClass().getName() + "]";
        throw new JsonMappingException(paramJsonGenerator, paramJavaType);
      }
      if (!paramJavaType.getRawClass().isAssignableFrom(paramObject.getClass())) {
        _reportIncompatibleRootType(paramObject, paramJavaType);
      }
      localJsonSerializer = findTypedValueSerializer(paramJavaType, true, null);
      bool = _config.isEnabled(SerializationConfig.Feature.WRAP_ROOT_VALUE);
      localObject = localJsonSerializer;
      i = bool;
      if (bool)
      {
        paramJsonGenerator.writeStartObject();
        paramJsonGenerator.writeFieldName(_rootNames.findRootName(paramJavaType, _config));
        localObject = localJsonSerializer;
        i = bool;
      }
    }
  }
  
  public int cachedSerializersCount()
  {
    return _serializerCache.size();
  }
  
  protected StdSerializerProvider createInstance(SerializationConfig paramSerializationConfig, SerializerFactory paramSerializerFactory)
  {
    return new StdSerializerProvider(paramSerializationConfig, this, paramSerializerFactory);
  }
  
  public final void defaultSerializeDateValue(long paramLong, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    if (isEnabled(SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS))
    {
      paramJsonGenerator.writeNumber(paramLong);
      return;
    }
    if (_dateFormat == null) {
      _dateFormat = ((DateFormat)_config.getDateFormat().clone());
    }
    paramJsonGenerator.writeString(_dateFormat.format(new Date(paramLong)));
  }
  
  public final void defaultSerializeDateValue(Date paramDate, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    if (isEnabled(SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS))
    {
      paramJsonGenerator.writeNumber(paramDate.getTime());
      return;
    }
    if (_dateFormat == null) {
      _dateFormat = ((DateFormat)_config.getDateFormat().clone());
    }
    paramJsonGenerator.writeString(_dateFormat.format(paramDate));
  }
  
  public JsonSerializer<Object> findKeySerializer(JavaType paramJavaType, BeanProperty paramBeanProperty)
    throws JsonMappingException
  {
    Object localObject = _serializerFactory.createKeySerializer(_config, paramJavaType, paramBeanProperty);
    paramJavaType = (JavaType)localObject;
    if (localObject == null) {
      paramJavaType = _keySerializer;
    }
    localObject = paramJavaType;
    if ((paramJavaType instanceof ContextualSerializer)) {
      localObject = ((ContextualSerializer)paramJavaType).createContextual(_config, paramBeanProperty);
    }
    return localObject;
  }
  
  public JsonSerializer<Object> findTypedValueSerializer(Class<?> paramClass, boolean paramBoolean, BeanProperty paramBeanProperty)
    throws JsonMappingException
  {
    JsonSerializer localJsonSerializer = _knownSerializers.typedValueSerializer(paramClass);
    if (localJsonSerializer != null) {
      return localJsonSerializer;
    }
    localJsonSerializer = _serializerCache.typedValueSerializer(paramClass);
    if (localJsonSerializer != null) {
      return localJsonSerializer;
    }
    localJsonSerializer = findValueSerializer(paramClass, paramBeanProperty);
    TypeSerializer localTypeSerializer = _serializerFactory.createTypeSerializer(_config, _config.constructType(paramClass), paramBeanProperty);
    paramBeanProperty = localJsonSerializer;
    if (localTypeSerializer != null) {
      paramBeanProperty = new WrappedSerializer(localTypeSerializer, localJsonSerializer);
    }
    if (paramBoolean) {
      _serializerCache.addTypedSerializer(paramClass, paramBeanProperty);
    }
    return paramBeanProperty;
  }
  
  public JsonSerializer<Object> findTypedValueSerializer(JavaType paramJavaType, boolean paramBoolean, BeanProperty paramBeanProperty)
    throws JsonMappingException
  {
    JsonSerializer localJsonSerializer = _knownSerializers.typedValueSerializer(paramJavaType);
    if (localJsonSerializer != null) {
      return localJsonSerializer;
    }
    localJsonSerializer = _serializerCache.typedValueSerializer(paramJavaType);
    if (localJsonSerializer != null) {
      return localJsonSerializer;
    }
    localJsonSerializer = findValueSerializer(paramJavaType, paramBeanProperty);
    TypeSerializer localTypeSerializer = _serializerFactory.createTypeSerializer(_config, paramJavaType, paramBeanProperty);
    paramBeanProperty = localJsonSerializer;
    if (localTypeSerializer != null) {
      paramBeanProperty = new WrappedSerializer(localTypeSerializer, localJsonSerializer);
    }
    if (paramBoolean) {
      _serializerCache.addTypedSerializer(paramJavaType, paramBeanProperty);
    }
    return paramBeanProperty;
  }
  
  public JsonSerializer<Object> findValueSerializer(Class<?> paramClass, BeanProperty paramBeanProperty)
    throws JsonMappingException
  {
    JsonSerializer localJsonSerializer2 = _knownSerializers.untypedValueSerializer(paramClass);
    JsonSerializer localJsonSerializer1 = localJsonSerializer2;
    if (localJsonSerializer2 == null)
    {
      localJsonSerializer2 = _serializerCache.untypedValueSerializer(paramClass);
      localJsonSerializer1 = localJsonSerializer2;
      if (localJsonSerializer2 == null)
      {
        localJsonSerializer2 = _serializerCache.untypedValueSerializer(_config.constructType(paramClass));
        localJsonSerializer1 = localJsonSerializer2;
        if (localJsonSerializer2 == null)
        {
          localJsonSerializer2 = _createAndCacheUntypedSerializer(paramClass, paramBeanProperty);
          localJsonSerializer1 = localJsonSerializer2;
          if (localJsonSerializer2 == null) {
            return getUnknownTypeSerializer(paramClass);
          }
        }
      }
    }
    if ((localJsonSerializer1 instanceof ContextualSerializer)) {
      return ((ContextualSerializer)localJsonSerializer1).createContextual(_config, paramBeanProperty);
    }
    return localJsonSerializer1;
  }
  
  public JsonSerializer<Object> findValueSerializer(JavaType paramJavaType, BeanProperty paramBeanProperty)
    throws JsonMappingException
  {
    JsonSerializer localJsonSerializer2 = _knownSerializers.untypedValueSerializer(paramJavaType);
    JsonSerializer localJsonSerializer1 = localJsonSerializer2;
    if (localJsonSerializer2 == null)
    {
      localJsonSerializer2 = _serializerCache.untypedValueSerializer(paramJavaType);
      localJsonSerializer1 = localJsonSerializer2;
      if (localJsonSerializer2 == null)
      {
        localJsonSerializer2 = _createAndCacheUntypedSerializer(paramJavaType, paramBeanProperty);
        localJsonSerializer1 = localJsonSerializer2;
        if (localJsonSerializer2 == null) {
          return getUnknownTypeSerializer(paramJavaType.getRawClass());
        }
      }
    }
    if ((localJsonSerializer1 instanceof ContextualSerializer)) {
      return ((ContextualSerializer)localJsonSerializer1).createContextual(_config, paramBeanProperty);
    }
    return localJsonSerializer1;
  }
  
  public void flushCachedSerializers()
  {
    _serializerCache.flush();
  }
  
  public JsonSchema generateJsonSchema(Class<?> paramClass, SerializationConfig paramSerializationConfig, SerializerFactory paramSerializerFactory)
    throws JsonMappingException
  {
    if (paramClass == null) {
      throw new IllegalArgumentException("A class must be provided");
    }
    paramSerializationConfig = createInstance(paramSerializationConfig, paramSerializerFactory);
    if (paramSerializationConfig.getClass() != getClass()) {
      throw new IllegalStateException("Broken serializer provider: createInstance returned instance of type " + paramSerializationConfig.getClass() + "; blueprint of type " + getClass());
    }
    paramSerializerFactory = paramSerializationConfig.findValueSerializer(paramClass, null);
    if ((paramSerializerFactory instanceof SchemaAware)) {}
    for (paramSerializationConfig = ((SchemaAware)paramSerializerFactory).getSchema(paramSerializationConfig, null); !(paramSerializationConfig instanceof ObjectNode); paramSerializationConfig = JsonSchema.getDefaultSchemaNode()) {
      throw new IllegalArgumentException("Class " + paramClass.getName() + " would not be serialized as a JSON object and therefore has no schema");
    }
    return new JsonSchema((ObjectNode)paramSerializationConfig);
  }
  
  public JsonSerializer<Object> getNullKeySerializer()
  {
    return _nullKeySerializer;
  }
  
  public JsonSerializer<Object> getNullValueSerializer()
  {
    return _nullValueSerializer;
  }
  
  public JsonSerializer<Object> getUnknownTypeSerializer(Class<?> paramClass)
  {
    return _unknownTypeSerializer;
  }
  
  public boolean hasSerializerFor(SerializationConfig paramSerializationConfig, Class<?> paramClass, SerializerFactory paramSerializerFactory)
  {
    return createInstance(paramSerializationConfig, paramSerializerFactory)._findExplicitUntypedSerializer(paramClass, null) != null;
  }
  
  public final void serializeValue(SerializationConfig paramSerializationConfig, JsonGenerator paramJsonGenerator, Object paramObject, SerializerFactory paramSerializerFactory)
    throws IOException, JsonGenerationException
  {
    if (paramSerializerFactory == null) {
      throw new IllegalArgumentException("Can not pass null serializerFactory");
    }
    paramSerializationConfig = createInstance(paramSerializationConfig, paramSerializerFactory);
    if (paramSerializationConfig.getClass() != getClass()) {
      throw new IllegalStateException("Broken serializer provider: createInstance returned instance of type " + paramSerializationConfig.getClass() + "; blueprint of type " + getClass());
    }
    paramSerializationConfig._serializeValue(paramJsonGenerator, paramObject);
  }
  
  public final void serializeValue(SerializationConfig paramSerializationConfig, JsonGenerator paramJsonGenerator, Object paramObject, JavaType paramJavaType, SerializerFactory paramSerializerFactory)
    throws IOException, JsonGenerationException
  {
    if (paramSerializerFactory == null) {
      throw new IllegalArgumentException("Can not pass null serializerFactory");
    }
    paramSerializationConfig = createInstance(paramSerializationConfig, paramSerializerFactory);
    if (paramSerializationConfig.getClass() != getClass()) {
      throw new IllegalStateException("Broken serializer provider: createInstance returned instance of type " + paramSerializationConfig.getClass() + "; blueprint of type " + getClass());
    }
    paramSerializationConfig._serializeValue(paramJsonGenerator, paramObject, paramJavaType);
  }
  
  public void setDefaultKeySerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    if (paramJsonSerializer == null) {
      throw new IllegalArgumentException("Can not pass null JsonSerializer");
    }
    _keySerializer = paramJsonSerializer;
  }
  
  public void setNullKeySerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    if (paramJsonSerializer == null) {
      throw new IllegalArgumentException("Can not pass null JsonSerializer");
    }
    _nullKeySerializer = paramJsonSerializer;
  }
  
  public void setNullValueSerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    if (paramJsonSerializer == null) {
      throw new IllegalArgumentException("Can not pass null JsonSerializer");
    }
    _nullValueSerializer = paramJsonSerializer;
  }
  
  private static final class WrappedSerializer
    extends JsonSerializer<Object>
  {
    protected final JsonSerializer<Object> _serializer;
    protected final TypeSerializer _typeSerializer;
    
    public WrappedSerializer(TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer)
    {
      _typeSerializer = paramTypeSerializer;
      _serializer = paramJsonSerializer;
    }
    
    public Class<Object> handledType()
    {
      return Object.class;
    }
    
    public void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws IOException, JsonProcessingException
    {
      _serializer.serializeWithType(paramObject, paramJsonGenerator, paramSerializerProvider, _typeSerializer);
    }
    
    public void serializeWithType(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
      throws IOException, JsonProcessingException
    {
      _serializer.serializeWithType(paramObject, paramJsonGenerator, paramSerializerProvider, paramTypeSerializer);
    }
  }
}
