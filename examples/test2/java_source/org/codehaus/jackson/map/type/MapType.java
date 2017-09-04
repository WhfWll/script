package org.codehaus.jackson.map.type;

import org.codehaus.jackson.type.JavaType;

public final class MapType
  extends MapLikeType
{
  private MapType(Class<?> paramClass, JavaType paramJavaType1, JavaType paramJavaType2)
  {
    super(paramClass, paramJavaType1, paramJavaType2);
  }
  
  public static MapType construct(Class<?> paramClass, JavaType paramJavaType1, JavaType paramJavaType2)
  {
    return new MapType(paramClass, paramJavaType1, paramJavaType2);
  }
  
  protected JavaType _narrow(Class<?> paramClass)
  {
    return new MapType(paramClass, _keyType, _valueType);
  }
  
  public JavaType narrowContentsBy(Class<?> paramClass)
  {
    if (paramClass == _valueType.getRawClass()) {
      return this;
    }
    return new MapType(_class, _keyType, _valueType.narrowBy(paramClass)).copyHandlers(this);
  }
  
  public JavaType narrowKey(Class<?> paramClass)
  {
    if (paramClass == _keyType.getRawClass()) {
      return this;
    }
    return new MapType(_class, _keyType.narrowBy(paramClass), _valueType).copyHandlers(this);
  }
  
  public String toString()
  {
    return "[map type; class " + _class.getName() + ", " + _keyType + " -> " + _valueType + "]";
  }
  
  public JavaType widenContentsBy(Class<?> paramClass)
  {
    if (paramClass == _valueType.getRawClass()) {
      return this;
    }
    return new MapType(_class, _keyType, _valueType.widenBy(paramClass)).copyHandlers(this);
  }
  
  public JavaType widenKey(Class<?> paramClass)
  {
    if (paramClass == _keyType.getRawClass()) {
      return this;
    }
    return new MapType(_class, _keyType.widenBy(paramClass), _valueType).copyHandlers(this);
  }
  
  public MapType withContentTypeHandler(Object paramObject)
  {
    return new MapType(_class, _keyType, _valueType.withTypeHandler(paramObject));
  }
  
  public MapType withTypeHandler(Object paramObject)
  {
    MapType localMapType = new MapType(_class, _keyType, _valueType);
    _typeHandler = paramObject;
    return localMapType;
  }
}
