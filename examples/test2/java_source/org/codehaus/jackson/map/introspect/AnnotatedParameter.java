package org.codehaus.jackson.map.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.type.JavaType;

public final class AnnotatedParameter
  extends AnnotatedMember
{
  protected final AnnotationMap _annotations;
  protected final AnnotatedMember _owner;
  protected final Type _type;
  
  public AnnotatedParameter(AnnotatedMember paramAnnotatedMember, Type paramType, AnnotationMap paramAnnotationMap)
  {
    _owner = paramAnnotatedMember;
    _type = paramType;
    _annotations = paramAnnotationMap;
  }
  
  public void addOrOverride(Annotation paramAnnotation)
  {
    _annotations.add(paramAnnotation);
  }
  
  public AnnotatedElement getAnnotated()
  {
    return null;
  }
  
  public <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    return _annotations.get(paramClass);
  }
  
  public Class<?> getDeclaringClass()
  {
    return _owner.getDeclaringClass();
  }
  
  public Type getGenericType()
  {
    return _type;
  }
  
  public Member getMember()
  {
    return _owner.getMember();
  }
  
  public int getModifiers()
  {
    return _owner.getModifiers();
  }
  
  public String getName()
  {
    return "";
  }
  
  public Type getParameterType()
  {
    return _type;
  }
  
  public Class<?> getRawType()
  {
    if ((_type instanceof Class)) {
      return (Class)_type;
    }
    return TypeFactory.defaultInstance().constructType(_type).getRawClass();
  }
}
