package org.codehaus.jackson.map.type;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public class HierarchicType
{
  protected final Type _actualType;
  protected final ParameterizedType _genericType;
  protected final Class<?> _rawClass;
  protected HierarchicType _subType;
  protected HierarchicType _superType;
  
  public HierarchicType(Type paramType)
  {
    _actualType = paramType;
    if ((paramType instanceof Class))
    {
      _rawClass = ((Class)paramType);
      _genericType = null;
      return;
    }
    if ((paramType instanceof ParameterizedType))
    {
      _genericType = ((ParameterizedType)paramType);
      _rawClass = ((Class)_genericType.getRawType());
      return;
    }
    throw new IllegalArgumentException("Type " + paramType.getClass().getName() + " can not be used to construct HierarchicType");
  }
  
  public ParameterizedType asGeneric()
  {
    return _genericType;
  }
  
  public Class<?> getRawClass()
  {
    return _rawClass;
  }
  
  public HierarchicType getSubType()
  {
    return _subType;
  }
  
  public HierarchicType getSuperType()
  {
    return _superType;
  }
  
  public boolean isGeneric()
  {
    return _genericType != null;
  }
  
  public void setSubType(HierarchicType paramHierarchicType)
  {
    _subType = paramHierarchicType;
  }
  
  public void setSuperType(HierarchicType paramHierarchicType)
  {
    _superType = paramHierarchicType;
  }
  
  public String toString()
  {
    if (_genericType != null) {
      return _genericType.toString();
    }
    return _rawClass.getName();
  }
}
