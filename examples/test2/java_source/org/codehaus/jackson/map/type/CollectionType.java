package org.codehaus.jackson.map.type;

import org.codehaus.jackson.type.JavaType;

public final class CollectionType
  extends CollectionLikeType
{
  private CollectionType(Class<?> paramClass, JavaType paramJavaType)
  {
    super(paramClass, paramJavaType);
  }
  
  public static CollectionType construct(Class<?> paramClass, JavaType paramJavaType)
  {
    return new CollectionType(paramClass, paramJavaType);
  }
  
  protected JavaType _narrow(Class<?> paramClass)
  {
    return new CollectionType(paramClass, _elementType);
  }
  
  public JavaType narrowContentsBy(Class<?> paramClass)
  {
    if (paramClass == _elementType.getRawClass()) {
      return this;
    }
    return new CollectionType(_class, _elementType.narrowBy(paramClass)).copyHandlers(this);
  }
  
  public String toString()
  {
    return "[collection type; class " + _class.getName() + ", contains " + _elementType + "]";
  }
  
  public JavaType widenContentsBy(Class<?> paramClass)
  {
    if (paramClass == _elementType.getRawClass()) {
      return this;
    }
    return new CollectionType(_class, _elementType.widenBy(paramClass)).copyHandlers(this);
  }
  
  public CollectionType withContentTypeHandler(Object paramObject)
  {
    return new CollectionType(_class, _elementType.withTypeHandler(paramObject));
  }
  
  public CollectionType withTypeHandler(Object paramObject)
  {
    CollectionType localCollectionType = new CollectionType(_class, _elementType);
    _typeHandler = paramObject;
    return localCollectionType;
  }
}
