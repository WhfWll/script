package org.codehaus.jackson.map.deser;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.BeanProperty.Std;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ResolvableDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JsonCachable;
import org.codehaus.jackson.map.deser.impl.BeanPropertyMap;
import org.codehaus.jackson.map.introspect.AnnotatedClass;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.type.JavaType;
import org.codehaus.jackson.util.TokenBuffer;

@JsonCachable
public class BeanDeserializer
  extends StdDeserializer<Object>
  implements ResolvableDeserializer
{
  protected final SettableAnyProperty _anySetter;
  protected final Map<String, SettableBeanProperty> _backRefs;
  protected final BeanPropertyMap _beanProperties;
  protected final JavaType _beanType;
  protected final Constructor<?> _defaultConstructor;
  protected final Creator.Delegating _delegatingCreator;
  protected final AnnotatedClass _forClass;
  protected final HashSet<String> _ignorableProps;
  protected final boolean _ignoreAllUnknown;
  protected final Creator.NumberBased _numberCreator;
  protected final BeanProperty _property;
  protected final Creator.PropertyBased _propertyBasedCreator;
  protected final Creator.StringBased _stringCreator;
  protected HashMap<ClassKey, JsonDeserializer<Object>> _subDeserializers;
  
  protected BeanDeserializer(BeanDeserializer paramBeanDeserializer)
  {
    super(_beanType);
    _forClass = _forClass;
    _beanType = _beanType;
    _property = _property;
    _beanProperties = _beanProperties;
    _backRefs = _backRefs;
    _ignorableProps = _ignorableProps;
    _ignoreAllUnknown = _ignoreAllUnknown;
    _anySetter = _anySetter;
    _defaultConstructor = _defaultConstructor;
    _stringCreator = _stringCreator;
    _numberCreator = _numberCreator;
    _delegatingCreator = _delegatingCreator;
    _propertyBasedCreator = _propertyBasedCreator;
  }
  
  public BeanDeserializer(AnnotatedClass paramAnnotatedClass, JavaType paramJavaType, BeanProperty paramBeanProperty, CreatorContainer paramCreatorContainer, BeanPropertyMap paramBeanPropertyMap, Map<String, SettableBeanProperty> paramMap, HashSet<String> paramHashSet, boolean paramBoolean, SettableAnyProperty paramSettableAnyProperty)
  {
    super(paramJavaType);
    _forClass = paramAnnotatedClass;
    _beanType = paramJavaType;
    _property = paramBeanProperty;
    _beanProperties = paramBeanPropertyMap;
    _backRefs = paramMap;
    _ignorableProps = paramHashSet;
    _ignoreAllUnknown = paramBoolean;
    _anySetter = paramSettableAnyProperty;
    _stringCreator = paramCreatorContainer.stringCreator();
    _numberCreator = paramCreatorContainer.numberCreator();
    _delegatingCreator = paramCreatorContainer.delegatingCreator();
    _propertyBasedCreator = paramCreatorContainer.propertyBasedCreator();
    if ((_delegatingCreator != null) || (_propertyBasedCreator != null))
    {
      _defaultConstructor = null;
      return;
    }
    _defaultConstructor = paramCreatorContainer.getDefaultConstructor();
  }
  
  protected final Object _deserializeUsingPropertyBased(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    Creator.PropertyBased localPropertyBased = _propertyBasedCreator;
    PropertyValueBuffer localPropertyValueBuffer = localPropertyBased.startBuilding(paramJsonParser, paramDeserializationContext);
    Object localObject1 = null;
    Object localObject4 = paramJsonParser.getCurrentToken();
    Object localObject2;
    if (localObject4 == JsonToken.FIELD_NAME)
    {
      localObject4 = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      SettableBeanProperty localSettableBeanProperty = localPropertyBased.findCreatorProperty((String)localObject4);
      if (localSettableBeanProperty != null)
      {
        Object localObject5 = localSettableBeanProperty.deserialize(paramJsonParser, paramDeserializationContext);
        localObject2 = localObject1;
        if (localPropertyValueBuffer.assignParameter(localSettableBeanProperty.getCreatorIndex(), localObject5)) {
          paramJsonParser.nextToken();
        }
      }
    }
    Object localObject3;
    for (;;)
    {
      try
      {
        localObject2 = localPropertyBased.build(localPropertyValueBuffer);
        if (localObject2.getClass() != _beanType.getRawClass())
        {
          paramJsonParser = handlePolymorphic(paramJsonParser, paramDeserializationContext, localObject2, (TokenBuffer)localObject1);
          return paramJsonParser;
        }
      }
      catch (Exception localException)
      {
        wrapAndThrow(localException, _beanType.getRawClass(), (String)localObject4, paramDeserializationContext);
        localObject3 = localObject1;
      }
      for (;;)
      {
        localObject4 = paramJsonParser.nextToken();
        localObject1 = localObject3;
        break;
        localObject4 = localObject3;
        if (localObject1 != null) {
          localObject4 = handleUnknownProperties(paramDeserializationContext, localObject3, (TokenBuffer)localObject1);
        }
        return deserialize(paramJsonParser, paramDeserializationContext, localObject4);
        localObject3 = _beanProperties.find((String)localObject4);
        if (localObject3 != null)
        {
          localPropertyValueBuffer.bufferProperty((SettableBeanProperty)localObject3, ((SettableBeanProperty)localObject3).deserialize(paramJsonParser, paramDeserializationContext));
          localObject3 = localObject1;
        }
        else if ((_ignorableProps != null) && (_ignorableProps.contains(localObject4)))
        {
          paramJsonParser.skipChildren();
          localObject3 = localObject1;
        }
        else if (_anySetter != null)
        {
          localPropertyValueBuffer.bufferAnyProperty(_anySetter, (String)localObject4, _anySetter.deserialize(paramJsonParser, paramDeserializationContext));
          localObject3 = localObject1;
        }
        else
        {
          localObject3 = localObject1;
          if (localObject1 == null) {
            localObject3 = new TokenBuffer(paramJsonParser.getCodec());
          }
          ((TokenBuffer)localObject3).writeFieldName((String)localObject4);
          ((TokenBuffer)localObject3).copyCurrentStructure(paramJsonParser);
        }
      }
      try
      {
        localObject3 = localPropertyBased.build(localPropertyValueBuffer);
        paramJsonParser = (JsonParser)localObject3;
        if (localObject1 != null) {
          if (localObject3.getClass() != _beanType.getRawClass()) {
            return handlePolymorphic(null, paramDeserializationContext, localObject3, (TokenBuffer)localObject1);
          }
        }
      }
      catch (Exception paramJsonParser)
      {
        wrapInstantiationProblem(paramJsonParser, paramDeserializationContext);
        return null;
      }
    }
    return handleUnknownProperties(paramDeserializationContext, localObject3, (TokenBuffer)localObject1);
  }
  
  protected JsonDeserializer<Object> _findSubclassDeserializer(DeserializationContext paramDeserializationContext, Object paramObject, TokenBuffer paramTokenBuffer)
    throws IOException, JsonProcessingException
  {
    try
    {
      if (_subDeserializers == null) {}
      for (paramTokenBuffer = null;; paramTokenBuffer = (JsonDeserializer)_subDeserializers.get(new ClassKey(paramObject.getClass())))
      {
        if (paramTokenBuffer == null) {
          break;
        }
        return paramTokenBuffer;
      }
      localDeserializerProvider = paramDeserializationContext.getDeserializerProvider();
    }
    finally {}
    DeserializerProvider localDeserializerProvider;
    if (localDeserializerProvider != null)
    {
      paramTokenBuffer = paramDeserializationContext.constructType(paramObject.getClass());
      paramDeserializationContext = localDeserializerProvider.findValueDeserializer(paramDeserializationContext.getConfig(), paramTokenBuffer, _property);
      paramTokenBuffer = paramDeserializationContext;
      if (paramDeserializationContext != null) {
        try
        {
          if (_subDeserializers == null) {
            _subDeserializers = new HashMap();
          }
          _subDeserializers.put(new ClassKey(paramObject.getClass()), paramDeserializationContext);
          paramTokenBuffer = paramDeserializationContext;
        }
        finally {}
      }
    }
    return paramTokenBuffer;
  }
  
  protected Object constructDefaultInstance()
  {
    try
    {
      Object localObject = _defaultConstructor.newInstance(new Object[0]);
      return localObject;
    }
    catch (Exception localException)
    {
      ClassUtil.unwrapAndThrowAsIAE(localException);
    }
    return null;
  }
  
  public final Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.START_OBJECT)
    {
      paramJsonParser.nextToken();
      return deserializeFromObject(paramJsonParser, paramDeserializationContext);
    }
    switch (1.$SwitchMap$org$codehaus$jackson$JsonToken[localJsonToken.ordinal()])
    {
    default: 
      throw paramDeserializationContext.mappingException(getBeanClass());
    case 1: 
      return deserializeFromString(paramJsonParser, paramDeserializationContext);
    case 2: 
    case 3: 
      return deserializeFromNumber(paramJsonParser, paramDeserializationContext);
    case 4: 
      return paramJsonParser.getEmbeddedObject();
    case 5: 
    case 6: 
    case 7: 
      return deserializeUsingCreator(paramJsonParser, paramDeserializationContext);
    }
    return deserializeFromObject(paramJsonParser, paramDeserializationContext);
  }
  
  public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
    throws IOException, JsonProcessingException
  {
    Object localObject2 = paramJsonParser.getCurrentToken();
    Object localObject1 = localObject2;
    if (localObject2 == JsonToken.START_OBJECT) {
      localObject1 = paramJsonParser.nextToken();
    }
    if (localObject1 == JsonToken.FIELD_NAME)
    {
      localObject1 = paramJsonParser.getCurrentName();
      localObject2 = _beanProperties.find((String)localObject1);
      paramJsonParser.nextToken();
      if (localObject2 != null) {}
      for (;;)
      {
        try
        {
          ((SettableBeanProperty)localObject2).deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject);
          localObject1 = paramJsonParser.nextToken();
        }
        catch (Exception localException)
        {
          wrapAndThrow(localException, paramObject, (String)localObject1, paramDeserializationContext);
          continue;
        }
        if ((_ignorableProps != null) && (_ignorableProps.contains(localObject1))) {
          paramJsonParser.skipChildren();
        } else if (_anySetter != null) {
          _anySetter.deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject, (String)localObject1);
        } else {
          handleUnknownProperty(paramJsonParser, paramDeserializationContext, paramObject, (String)localObject1);
        }
      }
    }
    return paramObject;
  }
  
  public Object deserializeFromNumber(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (_numberCreator != null) {}
    switch (1.$SwitchMap$org$codehaus$jackson$JsonParser$NumberType[paramJsonParser.getNumberType().ordinal()])
    {
    default: 
      if (_delegatingCreator != null) {
        return _delegatingCreator.deserialize(paramJsonParser, paramDeserializationContext);
      }
      break;
    case 1: 
      return _numberCreator.construct(paramJsonParser.getIntValue());
    case 2: 
      return _numberCreator.construct(paramJsonParser.getLongValue());
    }
    throw paramDeserializationContext.instantiationException(getBeanClass(), "no suitable creator method found to deserialize from JSON Number");
  }
  
  public Object deserializeFromObject(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (_defaultConstructor == null) {
      if (_propertyBasedCreator != null) {
        localObject1 = _deserializeUsingPropertyBased(paramJsonParser, paramDeserializationContext);
      }
    }
    Object localObject2;
    do
    {
      return localObject1;
      if (_delegatingCreator != null) {
        return _delegatingCreator.deserialize(paramJsonParser, paramDeserializationContext);
      }
      if (_beanType.isAbstract()) {
        throw JsonMappingException.from(paramJsonParser, "Can not instantiate abstract type " + _beanType + " (need to add/enable type information?)");
      }
      throw JsonMappingException.from(paramJsonParser, "No suitable constructor found for type " + _beanType + ": can not instantiate from JSON object (need to add/enable type information?)");
      localObject2 = constructDefaultInstance();
      localObject1 = localObject2;
    } while (paramJsonParser.getCurrentToken() == JsonToken.END_OBJECT);
    Object localObject1 = paramJsonParser.getCurrentName();
    paramJsonParser.nextToken();
    SettableBeanProperty localSettableBeanProperty = _beanProperties.find((String)localObject1);
    if (localSettableBeanProperty != null) {}
    for (;;)
    {
      try
      {
        localSettableBeanProperty.deserializeAndSet(paramJsonParser, paramDeserializationContext, localObject2);
        paramJsonParser.nextToken();
      }
      catch (Exception localException1)
      {
        wrapAndThrow(localException1, localObject2, (String)localObject1, paramDeserializationContext);
        continue;
      }
      if ((_ignorableProps != null) && (_ignorableProps.contains(localObject1))) {
        paramJsonParser.skipChildren();
      } else if (_anySetter != null) {
        try
        {
          _anySetter.deserializeAndSet(paramJsonParser, paramDeserializationContext, localObject2, (String)localObject1);
        }
        catch (Exception localException2)
        {
          wrapAndThrow(localException2, localObject2, (String)localObject1, paramDeserializationContext);
        }
      } else {
        handleUnknownProperty(paramJsonParser, paramDeserializationContext, localObject2, (String)localObject1);
      }
    }
  }
  
  public Object deserializeFromString(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (_stringCreator != null) {
      return _stringCreator.construct(paramJsonParser.getText());
    }
    if (_delegatingCreator != null) {
      return _delegatingCreator.deserialize(paramJsonParser, paramDeserializationContext);
    }
    if ((paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getTextLength() == 0)) {
      return null;
    }
    throw paramDeserializationContext.instantiationException(getBeanClass(), "no suitable creator method found to deserialize from JSON String");
  }
  
  public Object deserializeUsingCreator(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (_delegatingCreator != null) {
      try
      {
        paramJsonParser = _delegatingCreator.deserialize(paramJsonParser, paramDeserializationContext);
        return paramJsonParser;
      }
      catch (Exception paramJsonParser)
      {
        wrapInstantiationProblem(paramJsonParser, paramDeserializationContext);
      }
    }
    throw paramDeserializationContext.mappingException(getBeanClass());
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    throws IOException, JsonProcessingException
  {
    return paramTypeDeserializer.deserializeTypedFromObject(paramJsonParser, paramDeserializationContext);
  }
  
  public SettableBeanProperty findBackReference(String paramString)
  {
    if (_backRefs == null) {
      return null;
    }
    return (SettableBeanProperty)_backRefs.get(paramString);
  }
  
  public final Class<?> getBeanClass()
  {
    return _beanType.getRawClass();
  }
  
  public int getPropertyCount()
  {
    return _beanProperties.size();
  }
  
  public JavaType getValueType()
  {
    return _beanType;
  }
  
  protected Object handlePolymorphic(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject, TokenBuffer paramTokenBuffer)
    throws IOException, JsonProcessingException
  {
    JsonDeserializer localJsonDeserializer = _findSubclassDeserializer(paramDeserializationContext, paramObject, paramTokenBuffer);
    if (localJsonDeserializer != null)
    {
      localObject = paramObject;
      if (paramTokenBuffer != null)
      {
        paramTokenBuffer.writeEndObject();
        paramTokenBuffer = paramTokenBuffer.asParser();
        paramTokenBuffer.nextToken();
        localObject = localJsonDeserializer.deserialize(paramTokenBuffer, paramDeserializationContext, paramObject);
      }
      paramObject = localObject;
      if (paramJsonParser != null) {
        paramObject = localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext, localObject);
      }
      return paramObject;
    }
    Object localObject = paramObject;
    if (paramTokenBuffer != null) {
      localObject = handleUnknownProperties(paramDeserializationContext, paramObject, paramTokenBuffer);
    }
    paramObject = localObject;
    if (paramJsonParser != null) {
      paramObject = deserialize(paramJsonParser, paramDeserializationContext, localObject);
    }
    return paramObject;
  }
  
  protected Object handleUnknownProperties(DeserializationContext paramDeserializationContext, Object paramObject, TokenBuffer paramTokenBuffer)
    throws IOException, JsonProcessingException
  {
    paramTokenBuffer.writeEndObject();
    paramTokenBuffer = paramTokenBuffer.asParser();
    while (paramTokenBuffer.nextToken() != JsonToken.END_OBJECT)
    {
      String str = paramTokenBuffer.getCurrentName();
      paramTokenBuffer.nextToken();
      handleUnknownProperty(paramTokenBuffer, paramDeserializationContext, paramObject, str);
    }
    return paramObject;
  }
  
  protected void handleUnknownProperty(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject, String paramString)
    throws IOException, JsonProcessingException
  {
    if ((_ignoreAllUnknown) || ((_ignorableProps != null) && (_ignorableProps.contains(paramString))))
    {
      paramJsonParser.skipChildren();
      return;
    }
    super.handleUnknownProperty(paramJsonParser, paramDeserializationContext, paramObject, paramString);
  }
  
  public boolean hasProperty(String paramString)
  {
    return _beanProperties.find(paramString) != null;
  }
  
  public Iterator<SettableBeanProperty> properties()
  {
    if (_beanProperties == null) {
      throw new IllegalStateException("Can only call before BeanDeserializer has been resolved");
    }
    return _beanProperties.allProperties();
  }
  
  public void resolve(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider)
    throws JsonMappingException
  {
    Object localObject2 = _beanProperties.allProperties();
    Object localObject1;
    while (((Iterator)localObject2).hasNext())
    {
      SettableBeanProperty localSettableBeanProperty = (SettableBeanProperty)((Iterator)localObject2).next();
      if (!localSettableBeanProperty.hasValueDeserializer()) {
        localSettableBeanProperty.setValueDeserializer(findDeserializer(paramDeserializationConfig, paramDeserializerProvider, localSettableBeanProperty.getType(), localSettableBeanProperty));
      }
      String str = localSettableBeanProperty.getManagedReferenceName();
      if (str != null)
      {
        localObject1 = _valueDeserializer;
        boolean bool = false;
        if ((localObject1 instanceof BeanDeserializer)) {
          localObject1 = ((BeanDeserializer)localObject1).findBackReference(str);
        }
        while (localObject1 == null)
        {
          throw new IllegalArgumentException("Can not handle managed/back reference '" + str + "': no back reference property found from type " + localSettableBeanProperty.getType());
          if ((localObject1 instanceof ContainerDeserializer))
          {
            localObject1 = ((ContainerDeserializer)localObject1).getContentDeserializer();
            if (!(localObject1 instanceof BeanDeserializer)) {
              throw new IllegalArgumentException("Can not handle managed/back reference '" + str + "': value deserializer is of type ContainerDeserializer, but content type is not handled by a BeanDeserializer " + " (instead it's of type " + localObject1.getClass().getName() + ")");
            }
            localObject1 = ((BeanDeserializer)localObject1).findBackReference(str);
            bool = true;
          }
          else
          {
            if ((localObject1 instanceof AbstractDeserializer)) {
              throw new IllegalArgumentException("Can not handle managed/back reference for abstract types (property " + _beanType.getRawClass().getName() + "." + localSettableBeanProperty.getName() + ")");
            }
            throw new IllegalArgumentException("Can not handle managed/back reference '" + str + "': type for value deserializer is not BeanDeserializer or ContainerDeserializer, but " + localObject1.getClass().getName());
          }
        }
        JavaType localJavaType1 = _beanType;
        JavaType localJavaType2 = ((SettableBeanProperty)localObject1).getType();
        if (!localJavaType2.getRawClass().isAssignableFrom(localJavaType1.getRawClass())) {
          throw new IllegalArgumentException("Can not handle managed/back reference '" + str + "': back reference type (" + localJavaType2.getRawClass().getName() + ") not compatible with managed type (" + localJavaType1.getRawClass().getName() + ")");
        }
        _beanProperties.replace(new SettableBeanProperty.ManagedReferenceProperty(str, localSettableBeanProperty, (SettableBeanProperty)localObject1, _forClass.getAnnotations(), bool));
      }
    }
    if ((_anySetter != null) && (!_anySetter.hasValueDeserializer())) {
      _anySetter.setValueDeserializer(findDeserializer(paramDeserializationConfig, paramDeserializerProvider, _anySetter.getType(), _anySetter.getProperty()));
    }
    if (_delegatingCreator != null)
    {
      localObject1 = new BeanProperty.Std(null, _delegatingCreator.getValueType(), _forClass.getAnnotations(), _delegatingCreator.getCreator());
      localObject1 = findDeserializer(paramDeserializationConfig, paramDeserializerProvider, _delegatingCreator.getValueType(), (BeanProperty)localObject1);
      _delegatingCreator.setDeserializer((JsonDeserializer)localObject1);
    }
    if (_propertyBasedCreator != null)
    {
      localObject1 = _propertyBasedCreator.properties().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (SettableBeanProperty)((Iterator)localObject1).next();
        if (!((SettableBeanProperty)localObject2).hasValueDeserializer()) {
          ((SettableBeanProperty)localObject2).setValueDeserializer(findDeserializer(paramDeserializationConfig, paramDeserializerProvider, ((SettableBeanProperty)localObject2).getType(), (BeanProperty)localObject2));
        }
      }
    }
  }
  
  @Deprecated
  public void wrapAndThrow(Throwable paramThrowable, Object paramObject, int paramInt)
    throws IOException
  {
    wrapAndThrow(paramThrowable, paramObject, paramInt, null);
  }
  
  public void wrapAndThrow(Throwable paramThrowable, Object paramObject, int paramInt, DeserializationContext paramDeserializationContext)
    throws IOException
  {
    while (((paramThrowable instanceof InvocationTargetException)) && (paramThrowable.getCause() != null)) {
      paramThrowable = paramThrowable.getCause();
    }
    if ((paramThrowable instanceof Error)) {
      throw ((Error)paramThrowable);
    }
    if ((paramDeserializationContext == null) || (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.WRAP_EXCEPTIONS))) {}
    for (int i = 1; (paramThrowable instanceof IOException); i = 0)
    {
      if ((i != 0) && ((paramThrowable instanceof JsonMappingException))) {
        break label100;
      }
      throw ((IOException)paramThrowable);
    }
    if ((i == 0) && ((paramThrowable instanceof RuntimeException))) {
      throw ((RuntimeException)paramThrowable);
    }
    label100:
    throw JsonMappingException.wrapWithPath(paramThrowable, paramObject, paramInt);
  }
  
  @Deprecated
  public void wrapAndThrow(Throwable paramThrowable, Object paramObject, String paramString)
    throws IOException
  {
    wrapAndThrow(paramThrowable, paramObject, paramString, null);
  }
  
  public void wrapAndThrow(Throwable paramThrowable, Object paramObject, String paramString, DeserializationContext paramDeserializationContext)
    throws IOException
  {
    while (((paramThrowable instanceof InvocationTargetException)) && (paramThrowable.getCause() != null)) {
      paramThrowable = paramThrowable.getCause();
    }
    if ((paramThrowable instanceof Error)) {
      throw ((Error)paramThrowable);
    }
    if ((paramDeserializationContext == null) || (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.WRAP_EXCEPTIONS))) {}
    for (int i = 1; (paramThrowable instanceof IOException); i = 0)
    {
      if ((i != 0) && ((paramThrowable instanceof JsonMappingException))) {
        break label100;
      }
      throw ((IOException)paramThrowable);
    }
    if ((i == 0) && ((paramThrowable instanceof RuntimeException))) {
      throw ((RuntimeException)paramThrowable);
    }
    label100:
    throw JsonMappingException.wrapWithPath(paramThrowable, paramObject, paramString);
  }
  
  protected void wrapInstantiationProblem(Throwable paramThrowable, DeserializationContext paramDeserializationContext)
    throws IOException
  {
    while (((paramThrowable instanceof InvocationTargetException)) && (paramThrowable.getCause() != null)) {
      paramThrowable = paramThrowable.getCause();
    }
    if ((paramThrowable instanceof Error)) {
      throw ((Error)paramThrowable);
    }
    if ((paramDeserializationContext == null) || (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.WRAP_EXCEPTIONS))) {}
    for (int i = 1; (paramThrowable instanceof IOException); i = 0) {
      throw ((IOException)paramThrowable);
    }
    if ((i == 0) && ((paramThrowable instanceof RuntimeException))) {
      throw ((RuntimeException)paramThrowable);
    }
    throw paramDeserializationContext.instantiationException(_beanType.getRawClass(), paramThrowable);
  }
}
