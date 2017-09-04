package org.codehaus.jackson.map.jsontype.impl;

import java.util.Collection;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.annotate.JsonTypeInfo.Id;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.MapperConfig;
import org.codehaus.jackson.map.SerializationConfig;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.jsontype.NamedType;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;
import org.codehaus.jackson.map.jsontype.TypeResolverBuilder;
import org.codehaus.jackson.type.JavaType;

public class StdTypeResolverBuilder
  implements TypeResolverBuilder<StdTypeResolverBuilder>
{
  protected TypeIdResolver _customIdResolver;
  protected JsonTypeInfo.Id _idType;
  protected JsonTypeInfo.As _includeAs;
  protected String _typeProperty;
  
  public StdTypeResolverBuilder() {}
  
  public TypeDeserializer buildTypeDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, Collection<NamedType> paramCollection, BeanProperty paramBeanProperty)
  {
    paramDeserializationConfig = idResolver(paramDeserializationConfig, paramJavaType, paramCollection, false, true);
    switch (1.$SwitchMap$org$codehaus$jackson$annotate$JsonTypeInfo$As[_includeAs.ordinal()])
    {
    default: 
      throw new IllegalStateException("Do not know how to construct standard type serializer for inclusion type: " + _includeAs);
    case 1: 
      return new AsArrayTypeDeserializer(paramJavaType, paramDeserializationConfig, paramBeanProperty);
    case 2: 
      return new AsPropertyTypeDeserializer(paramJavaType, paramDeserializationConfig, paramBeanProperty, _typeProperty);
    }
    return new AsWrapperTypeDeserializer(paramJavaType, paramDeserializationConfig, paramBeanProperty);
  }
  
  public TypeSerializer buildTypeSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, Collection<NamedType> paramCollection, BeanProperty paramBeanProperty)
  {
    paramSerializationConfig = idResolver(paramSerializationConfig, paramJavaType, paramCollection, true, false);
    switch (1.$SwitchMap$org$codehaus$jackson$annotate$JsonTypeInfo$As[_includeAs.ordinal()])
    {
    default: 
      throw new IllegalStateException("Do not know how to construct standard type serializer for inclusion type: " + _includeAs);
    case 1: 
      return new AsArrayTypeSerializer(paramSerializationConfig, paramBeanProperty);
    case 2: 
      return new AsPropertyTypeSerializer(paramSerializationConfig, paramBeanProperty, _typeProperty);
    }
    return new AsWrapperTypeSerializer(paramSerializationConfig, paramBeanProperty);
  }
  
  public String getTypeProperty()
  {
    return _typeProperty;
  }
  
  protected TypeIdResolver idResolver(MapperConfig<?> paramMapperConfig, JavaType paramJavaType, Collection<NamedType> paramCollection, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (_customIdResolver != null) {
      return _customIdResolver;
    }
    if (_idType == null) {
      throw new IllegalStateException("Can not build, 'init()' not yet called");
    }
    switch (1.$SwitchMap$org$codehaus$jackson$annotate$JsonTypeInfo$Id[_idType.ordinal()])
    {
    default: 
      throw new IllegalStateException("Do not know how to construct standard type id resolver for idType: " + _idType);
    case 1: 
      return new ClassNameIdResolver(paramJavaType, paramMapperConfig.getTypeFactory());
    case 2: 
      return new MinimalClassNameIdResolver(paramJavaType, paramMapperConfig.getTypeFactory());
    }
    return TypeNameIdResolver.construct(paramMapperConfig, paramJavaType, paramCollection, paramBoolean1, paramBoolean2);
  }
  
  public StdTypeResolverBuilder inclusion(JsonTypeInfo.As paramAs)
  {
    if (paramAs == null) {
      throw new IllegalArgumentException("includeAs can not be null");
    }
    _includeAs = paramAs;
    return this;
  }
  
  public StdTypeResolverBuilder init(JsonTypeInfo.Id paramId, TypeIdResolver paramTypeIdResolver)
  {
    if (paramId == null) {
      throw new IllegalArgumentException("idType can not be null");
    }
    _idType = paramId;
    _customIdResolver = paramTypeIdResolver;
    _typeProperty = paramId.getDefaultPropertyName();
    return this;
  }
  
  public StdTypeResolverBuilder typeProperty(String paramString)
  {
    String str;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.length() != 0) {}
    }
    else
    {
      str = _idType.getDefaultPropertyName();
    }
    _typeProperty = str;
    return this;
  }
}
