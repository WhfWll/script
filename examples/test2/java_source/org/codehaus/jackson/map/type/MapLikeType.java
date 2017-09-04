package org.codehaus.jackson.map.type;

import java.util.Map;
import org.codehaus.jackson.type.JavaType;

public class MapLikeType
  extends TypeBase
{
  protected final JavaType _keyType;
  protected final JavaType _valueType;
  
  protected MapLikeType(Class<?> paramClass, JavaType paramJavaType1, JavaType paramJavaType2)
  {
    super(paramClass, paramJavaType1.hashCode() ^ paramJavaType2.hashCode());
    _keyType = paramJavaType1;
    _valueType = paramJavaType2;
  }
  
  public static MapLikeType construct(Class<?> paramClass, JavaType paramJavaType1, JavaType paramJavaType2)
  {
    return new MapLikeType(paramClass, paramJavaType1, paramJavaType2);
  }
  
  protected JavaType _narrow(Class<?> paramClass)
  {
    return new MapLikeType(paramClass, _keyType, _valueType);
  }
  
  protected String buildCanonicalName()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(_class.getName());
    if (_keyType != null)
    {
      localStringBuilder.append('<');
      localStringBuilder.append(_keyType.toCanonical());
      localStringBuilder.append(',');
      localStringBuilder.append(_valueType.toCanonical());
      localStringBuilder.append('>');
    }
    return localStringBuilder.toString();
  }
  
  public JavaType containedType(int paramInt)
  {
    if (paramInt == 0) {
      return _keyType;
    }
    if (paramInt == 1) {
      return _valueType;
    }
    return null;
  }
  
  public int containedTypeCount()
  {
    return 2;
  }
  
  public String containedTypeName(int paramInt)
  {
    if (paramInt == 0) {
      return "K";
    }
    if (paramInt == 1) {
      return "V";
    }
    return null;
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
      paramObject = (MapLikeType)paramObject;
    } while ((_class == _class) && (_keyType.equals(_keyType)) && (_valueType.equals(_valueType)));
    return false;
  }
  
  public JavaType getContentType()
  {
    return _valueType;
  }
  
  public StringBuilder getErasedSignature(StringBuilder paramStringBuilder)
  {
    return _classSignature(_class, paramStringBuilder, true);
  }
  
  public StringBuilder getGenericSignature(StringBuilder paramStringBuilder)
  {
    _classSignature(_class, paramStringBuilder, false);
    paramStringBuilder.append('<');
    _keyType.getGenericSignature(paramStringBuilder);
    _valueType.getGenericSignature(paramStringBuilder);
    paramStringBuilder.append(">;");
    return paramStringBuilder;
  }
  
  public JavaType getKeyType()
  {
    return _keyType;
  }
  
  public boolean isContainerType()
  {
    return true;
  }
  
  public boolean isMapLikeType()
  {
    return true;
  }
  
  public boolean isTrueMapType()
  {
    return Map.class.isAssignableFrom(_class);
  }
  
  public JavaType narrowContentsBy(Class<?> paramClass)
  {
    if (paramClass == _valueType.getRawClass()) {
      return this;
    }
    return new MapLikeType(_class, _keyType, _valueType.narrowBy(paramClass)).copyHandlers(this);
  }
  
  public JavaType narrowKey(Class<?> paramClass)
  {
    if (paramClass == _keyType.getRawClass()) {
      return this;
    }
    return new MapLikeType(_class, _keyType.narrowBy(paramClass), _valueType).copyHandlers(this);
  }
  
  public String toString()
  {
    return "[map-like type; class " + _class.getName() + ", " + _keyType + " -> " + _valueType + "]";
  }
  
  public JavaType widenContentsBy(Class<?> paramClass)
  {
    if (paramClass == _valueType.getRawClass()) {
      return this;
    }
    return new MapLikeType(_class, _keyType, _valueType.widenBy(paramClass)).copyHandlers(this);
  }
  
  public JavaType widenKey(Class<?> paramClass)
  {
    if (paramClass == _keyType.getRawClass()) {
      return this;
    }
    return new MapLikeType(_class, _keyType.widenBy(paramClass), _valueType).copyHandlers(this);
  }
  
  public MapLikeType withContentTypeHandler(Object paramObject)
  {
    return new MapLikeType(_class, _keyType, _valueType.withTypeHandler(paramObject));
  }
  
  public MapLikeType withTypeHandler(Object paramObject)
  {
    MapLikeType localMapLikeType = new MapLikeType(_class, _keyType, _valueType);
    _typeHandler = paramObject;
    return localMapLikeType;
  }
}
