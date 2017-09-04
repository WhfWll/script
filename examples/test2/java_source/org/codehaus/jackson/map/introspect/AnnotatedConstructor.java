package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import org.codehaus.jackson.map.type.TypeBindings;
import org.codehaus.jackson.type.JavaType;

public final class AnnotatedConstructor
  extends AnnotatedWithParams
{
  protected final Constructor<?> _constructor;
  
  public AnnotatedConstructor(Constructor<?> paramConstructor, AnnotationMap paramAnnotationMap, AnnotationMap[] paramArrayOfAnnotationMap)
  {
    super(paramAnnotationMap, paramArrayOfAnnotationMap);
    if (paramConstructor == null) {
      throw new IllegalArgumentException("Null constructor not allowed");
    }
    _constructor = paramConstructor;
  }
  
  public Constructor<?> getAnnotated()
  {
    return _constructor;
  }
  
  public Class<?> getDeclaringClass()
  {
    return _constructor.getDeclaringClass();
  }
  
  public Type getGenericType()
  {
    return getRawType();
  }
  
  public Member getMember()
  {
    return _constructor;
  }
  
  public int getModifiers()
  {
    return _constructor.getModifiers();
  }
  
  public String getName()
  {
    return _constructor.getName();
  }
  
  public AnnotatedParameter getParameter(int paramInt)
  {
    return new AnnotatedParameter(this, getParameterType(paramInt), _paramAnnotations[paramInt]);
  }
  
  public Class<?> getParameterClass(int paramInt)
  {
    Class[] arrayOfClass = _constructor.getParameterTypes();
    if (paramInt >= arrayOfClass.length) {
      return null;
    }
    return arrayOfClass[paramInt];
  }
  
  public int getParameterCount()
  {
    return _constructor.getParameterTypes().length;
  }
  
  public Type getParameterType(int paramInt)
  {
    Type[] arrayOfType = _constructor.getGenericParameterTypes();
    if (paramInt >= arrayOfType.length) {
      return null;
    }
    return arrayOfType[paramInt];
  }
  
  public Class<?> getRawType()
  {
    return _constructor.getDeclaringClass();
  }
  
  public JavaType getType(TypeBindings paramTypeBindings)
  {
    return getType(paramTypeBindings, _constructor.getTypeParameters());
  }
  
  public String toString()
  {
    return "[constructor for " + getName() + ", annotations: " + _annotations + "]";
  }
}
