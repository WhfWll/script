package org.codehaus.jackson.map.type;

import java.util.Collection;
import org.codehaus.jackson.type.JavaType;

public class CollectionLikeType
  extends TypeBase
{
  protected final JavaType _elementType;
  
  protected CollectionLikeType(Class<?> paramClass, JavaType paramJavaType)
  {
    super(paramClass, paramJavaType.hashCode());
    _elementType = paramJavaType;
  }
  
  public static CollectionLikeType construct(Class<?> paramClass, JavaType paramJavaType)
  {
    return new CollectionLikeType(paramClass, paramJavaType);
  }
  
  protected JavaType _narrow(Class<?> paramClass)
  {
    return new CollectionLikeType(paramClass, _elementType);
  }
  
  protected String buildCanonicalName()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(_class.getName());
    if (_elementType != null)
    {
      localStringBuilder.append('<');
      localStringBuilder.append(_elementType.toCanonical());
      localStringBuilder.append('>');
    }
    return localStringBuilder.toString();
  }
  
  public JavaType containedType(int paramInt)
  {
    if (paramInt == 0) {
      return _elementType;
    }
    return null;
  }
  
  public int containedTypeCount()
  {
    return 1;
  }
  
  public String containedTypeName(int paramInt)
  {
    if (paramInt == 0) {
      return "E";
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
      paramObject = (CollectionLikeType)paramObject;
    } while ((_class == _class) && (_elementType.equals(_elementType)));
    return false;
  }
  
  public JavaType getContentType()
  {
    return _elementType;
  }
  
  public StringBuilder getErasedSignature(StringBuilder paramStringBuilder)
  {
    return _classSignature(_class, paramStringBuilder, true);
  }
  
  public StringBuilder getGenericSignature(StringBuilder paramStringBuilder)
  {
    _classSignature(_class, paramStringBuilder, false);
    paramStringBuilder.append('<');
    _elementType.getGenericSignature(paramStringBuilder);
    paramStringBuilder.append(">;");
    return paramStringBuilder;
  }
  
  public boolean isCollectionLikeType()
  {
    return true;
  }
  
  public boolean isContainerType()
  {
    return true;
  }
  
  public boolean isTrueCollectionType()
  {
    return Collection.class.isAssignableFrom(_class);
  }
  
  public JavaType narrowContentsBy(Class<?> paramClass)
  {
    if (paramClass == _elementType.getRawClass()) {
      return this;
    }
    return new CollectionLikeType(_class, _elementType.narrowBy(paramClass)).copyHandlers(this);
  }
  
  public String toString()
  {
    return "[collection-like type; class " + _class.getName() + ", contains " + _elementType + "]";
  }
  
  public JavaType widenContentsBy(Class<?> paramClass)
  {
    if (paramClass == _elementType.getRawClass()) {
      return this;
    }
    return new CollectionLikeType(_class, _elementType.widenBy(paramClass)).copyHandlers(this);
  }
  
  public CollectionLikeType withContentTypeHandler(Object paramObject)
  {
    return new CollectionLikeType(_class, _elementType.withTypeHandler(paramObject));
  }
  
  public CollectionLikeType withTypeHandler(Object paramObject)
  {
    CollectionLikeType localCollectionLikeType = new CollectionLikeType(_class, _elementType);
    _typeHandler = paramObject;
    return localCollectionLikeType;
  }
}
