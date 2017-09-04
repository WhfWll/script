package org.codehaus.jackson.map.type;

import java.lang.reflect.Array;
import org.codehaus.jackson.type.JavaType;

public final class ArrayType
  extends TypeBase
{
  final JavaType _componentType;
  final Object _emptyArray;
  
  private ArrayType(JavaType paramJavaType, Object paramObject)
  {
    super(paramObject.getClass(), paramJavaType.hashCode());
    _componentType = paramJavaType;
    _emptyArray = paramObject;
  }
  
  public static ArrayType construct(JavaType paramJavaType)
  {
    return new ArrayType(paramJavaType, Array.newInstance(paramJavaType.getRawClass(), 0));
  }
  
  protected JavaType _narrow(Class<?> paramClass)
  {
    if (!paramClass.isArray()) {
      throw new IllegalArgumentException("Incompatible narrowing operation: trying to narrow " + toString() + " to class " + paramClass.getName());
    }
    paramClass = paramClass.getComponentType();
    return construct(TypeFactory.defaultInstance().constructType(paramClass));
  }
  
  protected String buildCanonicalName()
  {
    return _class.getName();
  }
  
  public JavaType containedType(int paramInt)
  {
    if (paramInt == 0) {
      return _componentType;
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
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramObject == null);
      bool1 = bool2;
    } while (paramObject.getClass() != getClass());
    paramObject = (ArrayType)paramObject;
    return _componentType.equals(_componentType);
  }
  
  public JavaType getContentType()
  {
    return _componentType;
  }
  
  public StringBuilder getErasedSignature(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append('[');
    return _componentType.getErasedSignature(paramStringBuilder);
  }
  
  public StringBuilder getGenericSignature(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append('[');
    return _componentType.getGenericSignature(paramStringBuilder);
  }
  
  public boolean hasGenericTypes()
  {
    return _componentType.hasGenericTypes();
  }
  
  public boolean isAbstract()
  {
    return false;
  }
  
  public boolean isArrayType()
  {
    return true;
  }
  
  public boolean isConcrete()
  {
    return true;
  }
  
  public boolean isContainerType()
  {
    return true;
  }
  
  public JavaType narrowContentsBy(Class<?> paramClass)
  {
    if (paramClass == _componentType.getRawClass()) {
      return this;
    }
    return construct(_componentType.narrowBy(paramClass)).copyHandlers(this);
  }
  
  public String toString()
  {
    return "[array type, component type: " + _componentType + "]";
  }
  
  public JavaType widenContentsBy(Class<?> paramClass)
  {
    if (paramClass == _componentType.getRawClass()) {
      return this;
    }
    return construct(_componentType.widenBy(paramClass)).copyHandlers(this);
  }
  
  public ArrayType withContentTypeHandler(Object paramObject)
  {
    return new ArrayType(_componentType.withTypeHandler(paramObject), _emptyArray);
  }
  
  public ArrayType withTypeHandler(Object paramObject)
  {
    ArrayType localArrayType = new ArrayType(_componentType, _emptyArray);
    _typeHandler = paramObject;
    return localArrayType;
  }
}
