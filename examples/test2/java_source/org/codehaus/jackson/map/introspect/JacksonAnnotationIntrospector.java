package org.codehaus.jackson.map.introspect;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;
import org.codehaus.jackson.annotate.JacksonAnnotation;
import org.codehaus.jackson.annotate.JsonAnyGetter;
import org.codehaus.jackson.annotate.JsonAnySetter;
import org.codehaus.jackson.annotate.JsonAutoDetect;
import org.codehaus.jackson.annotate.JsonBackReference;
import org.codehaus.jackson.annotate.JsonClass;
import org.codehaus.jackson.annotate.JsonContentClass;
import org.codehaus.jackson.annotate.JsonCreator;
import org.codehaus.jackson.annotate.JsonGetter;
import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import org.codehaus.jackson.annotate.JsonIgnoreType;
import org.codehaus.jackson.annotate.JsonKeyClass;
import org.codehaus.jackson.annotate.JsonManagedReference;
import org.codehaus.jackson.annotate.JsonProperty;
import org.codehaus.jackson.annotate.JsonPropertyOrder;
import org.codehaus.jackson.annotate.JsonRawValue;
import org.codehaus.jackson.annotate.JsonSetter;
import org.codehaus.jackson.annotate.JsonSubTypes;
import org.codehaus.jackson.annotate.JsonSubTypes.Type;
import org.codehaus.jackson.annotate.JsonTypeInfo;
import org.codehaus.jackson.annotate.JsonTypeInfo.Id;
import org.codehaus.jackson.annotate.JsonTypeName;
import org.codehaus.jackson.annotate.JsonValue;
import org.codehaus.jackson.annotate.JsonWriteNullProperties;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.AnnotationIntrospector.ReferenceProperty;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonDeserializer.None;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.JsonSerializer.None;
import org.codehaus.jackson.map.KeyDeserializer;
import org.codehaus.jackson.map.KeyDeserializer.None;
import org.codehaus.jackson.map.MapperConfig;
import org.codehaus.jackson.map.annotate.JsonCachable;
import org.codehaus.jackson.map.annotate.JsonDeserialize;
import org.codehaus.jackson.map.annotate.JsonFilter;
import org.codehaus.jackson.map.annotate.JsonSerialize;
import org.codehaus.jackson.map.annotate.JsonSerialize.Inclusion;
import org.codehaus.jackson.map.annotate.JsonSerialize.Typing;
import org.codehaus.jackson.map.annotate.JsonTypeIdResolver;
import org.codehaus.jackson.map.annotate.JsonTypeResolver;
import org.codehaus.jackson.map.annotate.JsonView;
import org.codehaus.jackson.map.annotate.NoClass;
import org.codehaus.jackson.map.jsontype.NamedType;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;
import org.codehaus.jackson.map.jsontype.TypeResolverBuilder;
import org.codehaus.jackson.map.jsontype.impl.StdTypeResolverBuilder;
import org.codehaus.jackson.map.ser.impl.RawSerializer;
import org.codehaus.jackson.type.JavaType;

public class JacksonAnnotationIntrospector
  extends AnnotationIntrospector
{
  public JacksonAnnotationIntrospector() {}
  
  protected StdTypeResolverBuilder _constructStdTypeResolverBuilder()
  {
    return new StdTypeResolverBuilder();
  }
  
  protected TypeResolverBuilder<?> _findTypeResolver(MapperConfig<?> paramMapperConfig, Annotated paramAnnotated, JavaType paramJavaType)
  {
    JsonTypeInfo localJsonTypeInfo = (JsonTypeInfo)paramAnnotated.getAnnotation(JsonTypeInfo.class);
    Object localObject = (JsonTypeResolver)paramAnnotated.getAnnotation(JsonTypeResolver.class);
    JsonTypeIdResolver localJsonTypeIdResolver;
    if (localObject != null)
    {
      if (localJsonTypeInfo == null) {
        return null;
      }
      localObject = paramMapperConfig.typeResolverBuilderInstance(paramAnnotated, ((JsonTypeResolver)localObject).value());
      localJsonTypeIdResolver = (JsonTypeIdResolver)paramAnnotated.getAnnotation(JsonTypeIdResolver.class);
      if (localJsonTypeIdResolver != null) {
        break label146;
      }
    }
    label146:
    for (paramMapperConfig = null;; paramMapperConfig = paramMapperConfig.typeIdResolverInstance(paramAnnotated, localJsonTypeIdResolver.value()))
    {
      if (paramMapperConfig != null) {
        paramMapperConfig.init(paramJavaType);
      }
      return ((TypeResolverBuilder)localObject).init(localJsonTypeInfo.use(), paramMapperConfig).inclusion(localJsonTypeInfo.include()).typeProperty(localJsonTypeInfo.property());
      if ((localJsonTypeInfo == null) || (localJsonTypeInfo.use() == JsonTypeInfo.Id.NONE)) {
        return null;
      }
      localObject = _constructStdTypeResolverBuilder();
      break;
    }
  }
  
  protected boolean _isIgnorable(Annotated paramAnnotated)
  {
    paramAnnotated = (JsonIgnore)paramAnnotated.getAnnotation(JsonIgnore.class);
    return (paramAnnotated != null) && (paramAnnotated.value());
  }
  
  public VisibilityChecker<?> findAutoDetectVisibility(AnnotatedClass paramAnnotatedClass, VisibilityChecker<?> paramVisibilityChecker)
  {
    paramAnnotatedClass = (JsonAutoDetect)paramAnnotatedClass.getAnnotation(JsonAutoDetect.class);
    if (paramAnnotatedClass == null) {
      return paramVisibilityChecker;
    }
    return paramVisibilityChecker.with(paramAnnotatedClass);
  }
  
  public Boolean findCachability(AnnotatedClass paramAnnotatedClass)
  {
    paramAnnotatedClass = (JsonCachable)paramAnnotatedClass.getAnnotation(JsonCachable.class);
    if (paramAnnotatedClass == null) {
      return null;
    }
    if (paramAnnotatedClass.value()) {
      return Boolean.TRUE;
    }
    return Boolean.FALSE;
  }
  
  public Class<? extends JsonDeserializer<?>> findContentDeserializer(Annotated paramAnnotated)
  {
    paramAnnotated = (JsonDeserialize)paramAnnotated.getAnnotation(JsonDeserialize.class);
    if (paramAnnotated != null)
    {
      paramAnnotated = paramAnnotated.contentUsing();
      if (paramAnnotated != JsonDeserializer.None.class) {
        return paramAnnotated;
      }
    }
    return null;
  }
  
  public Class<? extends JsonSerializer<?>> findContentSerializer(Annotated paramAnnotated)
  {
    paramAnnotated = (JsonSerialize)paramAnnotated.getAnnotation(JsonSerialize.class);
    if (paramAnnotated != null)
    {
      paramAnnotated = paramAnnotated.contentUsing();
      if (paramAnnotated != JsonSerializer.None.class) {
        return paramAnnotated;
      }
    }
    return null;
  }
  
  public String findDeserializablePropertyName(AnnotatedField paramAnnotatedField)
  {
    JsonProperty localJsonProperty = (JsonProperty)paramAnnotatedField.getAnnotation(JsonProperty.class);
    if (localJsonProperty != null) {
      return localJsonProperty.value();
    }
    if ((paramAnnotatedField.hasAnnotation(JsonDeserialize.class)) || (paramAnnotatedField.hasAnnotation(JsonView.class))) {
      return "";
    }
    return null;
  }
  
  public Class<?> findDeserializationContentType(Annotated paramAnnotated, JavaType paramJavaType, String paramString)
  {
    paramJavaType = (JsonDeserialize)paramAnnotated.getAnnotation(JsonDeserialize.class);
    if (paramJavaType != null)
    {
      paramJavaType = paramJavaType.contentAs();
      if (paramJavaType != NoClass.class) {
        paramAnnotated = paramJavaType;
      }
    }
    do
    {
      return paramAnnotated;
      paramAnnotated = (JsonContentClass)paramAnnotated.getAnnotation(JsonContentClass.class);
      if (paramAnnotated == null) {
        break;
      }
      paramJavaType = paramAnnotated.value();
      paramAnnotated = paramJavaType;
    } while (paramJavaType != NoClass.class);
    return null;
  }
  
  public Class<?> findDeserializationKeyType(Annotated paramAnnotated, JavaType paramJavaType, String paramString)
  {
    paramJavaType = (JsonDeserialize)paramAnnotated.getAnnotation(JsonDeserialize.class);
    if (paramJavaType != null)
    {
      paramJavaType = paramJavaType.keyAs();
      if (paramJavaType != NoClass.class) {
        paramAnnotated = paramJavaType;
      }
    }
    do
    {
      return paramAnnotated;
      paramAnnotated = (JsonKeyClass)paramAnnotated.getAnnotation(JsonKeyClass.class);
      if (paramAnnotated == null) {
        break;
      }
      paramJavaType = paramAnnotated.value();
      paramAnnotated = paramJavaType;
    } while (paramJavaType != NoClass.class);
    return null;
  }
  
  public Class<?> findDeserializationType(Annotated paramAnnotated, JavaType paramJavaType, String paramString)
  {
    paramJavaType = (JsonDeserialize)paramAnnotated.getAnnotation(JsonDeserialize.class);
    if (paramJavaType != null)
    {
      paramJavaType = paramJavaType.as();
      if (paramJavaType != NoClass.class) {
        paramAnnotated = paramJavaType;
      }
    }
    do
    {
      return paramAnnotated;
      paramAnnotated = (JsonClass)paramAnnotated.getAnnotation(JsonClass.class);
      if (paramAnnotated == null) {
        break;
      }
      paramJavaType = paramAnnotated.value();
      paramAnnotated = paramJavaType;
    } while (paramJavaType != NoClass.class);
    return null;
  }
  
  public Class<? extends JsonDeserializer<?>> findDeserializer(Annotated paramAnnotated, BeanProperty paramBeanProperty)
  {
    paramAnnotated = (JsonDeserialize)paramAnnotated.getAnnotation(JsonDeserialize.class);
    if (paramAnnotated != null)
    {
      paramAnnotated = paramAnnotated.using();
      if (paramAnnotated != JsonDeserializer.None.class) {
        return paramAnnotated;
      }
    }
    return null;
  }
  
  public String findEnumValue(Enum<?> paramEnum)
  {
    return paramEnum.name();
  }
  
  public Object findFilterId(AnnotatedClass paramAnnotatedClass)
  {
    paramAnnotatedClass = (JsonFilter)paramAnnotatedClass.getAnnotation(JsonFilter.class);
    if (paramAnnotatedClass != null)
    {
      paramAnnotatedClass = paramAnnotatedClass.value();
      if (paramAnnotatedClass.length() > 0) {
        return paramAnnotatedClass;
      }
    }
    return null;
  }
  
  public String findGettablePropertyName(AnnotatedMethod paramAnnotatedMethod)
  {
    Object localObject = (JsonProperty)paramAnnotatedMethod.getAnnotation(JsonProperty.class);
    if (localObject != null) {
      return ((JsonProperty)localObject).value();
    }
    localObject = (JsonGetter)paramAnnotatedMethod.getAnnotation(JsonGetter.class);
    if (localObject != null) {
      return ((JsonGetter)localObject).value();
    }
    if ((paramAnnotatedMethod.hasAnnotation(JsonSerialize.class)) || (paramAnnotatedMethod.hasAnnotation(JsonView.class))) {
      return "";
    }
    return null;
  }
  
  public Boolean findIgnoreUnknownProperties(AnnotatedClass paramAnnotatedClass)
  {
    paramAnnotatedClass = (JsonIgnoreProperties)paramAnnotatedClass.getAnnotation(JsonIgnoreProperties.class);
    if (paramAnnotatedClass == null) {
      return null;
    }
    return Boolean.valueOf(paramAnnotatedClass.ignoreUnknown());
  }
  
  public Class<? extends KeyDeserializer> findKeyDeserializer(Annotated paramAnnotated)
  {
    paramAnnotated = (JsonDeserialize)paramAnnotated.getAnnotation(JsonDeserialize.class);
    if (paramAnnotated != null)
    {
      paramAnnotated = paramAnnotated.keyUsing();
      if (paramAnnotated != KeyDeserializer.None.class) {
        return paramAnnotated;
      }
    }
    return null;
  }
  
  public Class<? extends JsonSerializer<?>> findKeySerializer(Annotated paramAnnotated)
  {
    paramAnnotated = (JsonSerialize)paramAnnotated.getAnnotation(JsonSerialize.class);
    if (paramAnnotated != null)
    {
      paramAnnotated = paramAnnotated.keyUsing();
      if (paramAnnotated != JsonSerializer.None.class) {
        return paramAnnotated;
      }
    }
    return null;
  }
  
  public String[] findPropertiesToIgnore(AnnotatedClass paramAnnotatedClass)
  {
    paramAnnotatedClass = (JsonIgnoreProperties)paramAnnotatedClass.getAnnotation(JsonIgnoreProperties.class);
    if (paramAnnotatedClass == null) {
      return null;
    }
    return paramAnnotatedClass.value();
  }
  
  public TypeResolverBuilder<?> findPropertyContentTypeResolver(MapperConfig<?> paramMapperConfig, AnnotatedMember paramAnnotatedMember, JavaType paramJavaType)
  {
    if (!paramJavaType.isContainerType()) {
      throw new IllegalArgumentException("Must call method with a container type (got " + paramJavaType + ")");
    }
    return _findTypeResolver(paramMapperConfig, paramAnnotatedMember, paramJavaType);
  }
  
  public String findPropertyNameForParam(AnnotatedParameter paramAnnotatedParameter)
  {
    if (paramAnnotatedParameter != null)
    {
      paramAnnotatedParameter = (JsonProperty)paramAnnotatedParameter.getAnnotation(JsonProperty.class);
      if (paramAnnotatedParameter != null) {
        return paramAnnotatedParameter.value();
      }
    }
    return null;
  }
  
  public TypeResolverBuilder<?> findPropertyTypeResolver(MapperConfig<?> paramMapperConfig, AnnotatedMember paramAnnotatedMember, JavaType paramJavaType)
  {
    if (paramJavaType.isContainerType()) {
      return null;
    }
    return _findTypeResolver(paramMapperConfig, paramAnnotatedMember, paramJavaType);
  }
  
  public AnnotationIntrospector.ReferenceProperty findReferenceType(AnnotatedMember paramAnnotatedMember)
  {
    JsonManagedReference localJsonManagedReference = (JsonManagedReference)paramAnnotatedMember.getAnnotation(JsonManagedReference.class);
    if (localJsonManagedReference != null) {
      return AnnotationIntrospector.ReferenceProperty.managed(localJsonManagedReference.value());
    }
    paramAnnotatedMember = (JsonBackReference)paramAnnotatedMember.getAnnotation(JsonBackReference.class);
    if (paramAnnotatedMember != null) {
      return AnnotationIntrospector.ReferenceProperty.back(paramAnnotatedMember.value());
    }
    return null;
  }
  
  public String findRootName(AnnotatedClass paramAnnotatedClass)
  {
    return null;
  }
  
  public String findSerializablePropertyName(AnnotatedField paramAnnotatedField)
  {
    JsonProperty localJsonProperty = (JsonProperty)paramAnnotatedField.getAnnotation(JsonProperty.class);
    if (localJsonProperty != null) {
      return localJsonProperty.value();
    }
    if ((paramAnnotatedField.hasAnnotation(JsonSerialize.class)) || (paramAnnotatedField.hasAnnotation(JsonView.class))) {
      return "";
    }
    return null;
  }
  
  public Class<?> findSerializationContentType(Annotated paramAnnotated, JavaType paramJavaType)
  {
    paramAnnotated = (JsonSerialize)paramAnnotated.getAnnotation(JsonSerialize.class);
    if (paramAnnotated != null)
    {
      paramAnnotated = paramAnnotated.contentAs();
      if (paramAnnotated != NoClass.class) {
        return paramAnnotated;
      }
    }
    return null;
  }
  
  public JsonSerialize.Inclusion findSerializationInclusion(Annotated paramAnnotated, JsonSerialize.Inclusion paramInclusion)
  {
    JsonSerialize localJsonSerialize = (JsonSerialize)paramAnnotated.getAnnotation(JsonSerialize.class);
    if (localJsonSerialize != null) {
      return localJsonSerialize.include();
    }
    paramAnnotated = (JsonWriteNullProperties)paramAnnotated.getAnnotation(JsonWriteNullProperties.class);
    if (paramAnnotated != null)
    {
      if (paramAnnotated.value()) {
        return JsonSerialize.Inclusion.ALWAYS;
      }
      return JsonSerialize.Inclusion.NON_NULL;
    }
    return paramInclusion;
  }
  
  public Class<?> findSerializationKeyType(Annotated paramAnnotated, JavaType paramJavaType)
  {
    paramAnnotated = (JsonSerialize)paramAnnotated.getAnnotation(JsonSerialize.class);
    if (paramAnnotated != null)
    {
      paramAnnotated = paramAnnotated.keyAs();
      if (paramAnnotated != NoClass.class) {
        return paramAnnotated;
      }
    }
    return null;
  }
  
  public String[] findSerializationPropertyOrder(AnnotatedClass paramAnnotatedClass)
  {
    paramAnnotatedClass = (JsonPropertyOrder)paramAnnotatedClass.getAnnotation(JsonPropertyOrder.class);
    if (paramAnnotatedClass == null) {
      return null;
    }
    return paramAnnotatedClass.value();
  }
  
  public Boolean findSerializationSortAlphabetically(AnnotatedClass paramAnnotatedClass)
  {
    paramAnnotatedClass = (JsonPropertyOrder)paramAnnotatedClass.getAnnotation(JsonPropertyOrder.class);
    if (paramAnnotatedClass == null) {
      return null;
    }
    return Boolean.valueOf(paramAnnotatedClass.alphabetic());
  }
  
  public Class<?> findSerializationType(Annotated paramAnnotated)
  {
    paramAnnotated = (JsonSerialize)paramAnnotated.getAnnotation(JsonSerialize.class);
    if (paramAnnotated != null)
    {
      paramAnnotated = paramAnnotated.as();
      if (paramAnnotated != NoClass.class) {
        return paramAnnotated;
      }
    }
    return null;
  }
  
  public JsonSerialize.Typing findSerializationTyping(Annotated paramAnnotated)
  {
    paramAnnotated = (JsonSerialize)paramAnnotated.getAnnotation(JsonSerialize.class);
    if (paramAnnotated == null) {
      return null;
    }
    return paramAnnotated.typing();
  }
  
  public Class<?>[] findSerializationViews(Annotated paramAnnotated)
  {
    paramAnnotated = (JsonView)paramAnnotated.getAnnotation(JsonView.class);
    if (paramAnnotated == null) {
      return null;
    }
    return paramAnnotated.value();
  }
  
  public Object findSerializer(Annotated paramAnnotated, BeanProperty paramBeanProperty)
  {
    paramBeanProperty = (JsonSerialize)paramAnnotated.getAnnotation(JsonSerialize.class);
    if (paramBeanProperty != null)
    {
      paramBeanProperty = paramBeanProperty.using();
      if (paramBeanProperty != JsonSerializer.None.class) {
        return paramBeanProperty;
      }
    }
    paramBeanProperty = (JsonRawValue)paramAnnotated.getAnnotation(JsonRawValue.class);
    if ((paramBeanProperty != null) && (paramBeanProperty.value())) {
      return new RawSerializer(paramAnnotated.getRawType());
    }
    return null;
  }
  
  public String findSettablePropertyName(AnnotatedMethod paramAnnotatedMethod)
  {
    Object localObject = (JsonProperty)paramAnnotatedMethod.getAnnotation(JsonProperty.class);
    if (localObject != null) {
      return ((JsonProperty)localObject).value();
    }
    localObject = (JsonSetter)paramAnnotatedMethod.getAnnotation(JsonSetter.class);
    if (localObject != null) {
      return ((JsonSetter)localObject).value();
    }
    if ((paramAnnotatedMethod.hasAnnotation(JsonDeserialize.class)) || (paramAnnotatedMethod.hasAnnotation(JsonView.class))) {
      return "";
    }
    return null;
  }
  
  public List<NamedType> findSubtypes(Annotated paramAnnotated)
  {
    paramAnnotated = (JsonSubTypes)paramAnnotated.getAnnotation(JsonSubTypes.class);
    if (paramAnnotated == null)
    {
      paramAnnotated = null;
      return paramAnnotated;
    }
    JsonSubTypes.Type[] arrayOfType = paramAnnotated.value();
    ArrayList localArrayList = new ArrayList(arrayOfType.length);
    int j = arrayOfType.length;
    int i = 0;
    for (;;)
    {
      paramAnnotated = localArrayList;
      if (i >= j) {
        break;
      }
      paramAnnotated = arrayOfType[i];
      localArrayList.add(new NamedType(paramAnnotated.value(), paramAnnotated.name()));
      i += 1;
    }
  }
  
  public String findTypeName(AnnotatedClass paramAnnotatedClass)
  {
    paramAnnotatedClass = (JsonTypeName)paramAnnotatedClass.getAnnotation(JsonTypeName.class);
    if (paramAnnotatedClass == null) {
      return null;
    }
    return paramAnnotatedClass.value();
  }
  
  public TypeResolverBuilder<?> findTypeResolver(MapperConfig<?> paramMapperConfig, AnnotatedClass paramAnnotatedClass, JavaType paramJavaType)
  {
    return _findTypeResolver(paramMapperConfig, paramAnnotatedClass, paramJavaType);
  }
  
  public boolean hasAnyGetterAnnotation(AnnotatedMethod paramAnnotatedMethod)
  {
    return paramAnnotatedMethod.hasAnnotation(JsonAnyGetter.class);
  }
  
  public boolean hasAnySetterAnnotation(AnnotatedMethod paramAnnotatedMethod)
  {
    return paramAnnotatedMethod.hasAnnotation(JsonAnySetter.class);
  }
  
  public boolean hasAsValueAnnotation(AnnotatedMethod paramAnnotatedMethod)
  {
    paramAnnotatedMethod = (JsonValue)paramAnnotatedMethod.getAnnotation(JsonValue.class);
    return (paramAnnotatedMethod != null) && (paramAnnotatedMethod.value());
  }
  
  public boolean hasCreatorAnnotation(Annotated paramAnnotated)
  {
    return paramAnnotated.hasAnnotation(JsonCreator.class);
  }
  
  public boolean isHandled(Annotation paramAnnotation)
  {
    return paramAnnotation.annotationType().getAnnotation(JacksonAnnotation.class) != null;
  }
  
  public boolean isIgnorableConstructor(AnnotatedConstructor paramAnnotatedConstructor)
  {
    return _isIgnorable(paramAnnotatedConstructor);
  }
  
  public boolean isIgnorableField(AnnotatedField paramAnnotatedField)
  {
    return _isIgnorable(paramAnnotatedField);
  }
  
  public boolean isIgnorableMethod(AnnotatedMethod paramAnnotatedMethod)
  {
    return _isIgnorable(paramAnnotatedMethod);
  }
  
  public Boolean isIgnorableType(AnnotatedClass paramAnnotatedClass)
  {
    paramAnnotatedClass = (JsonIgnoreType)paramAnnotatedClass.getAnnotation(JsonIgnoreType.class);
    if (paramAnnotatedClass == null) {
      return null;
    }
    return Boolean.valueOf(paramAnnotatedClass.value());
  }
}
