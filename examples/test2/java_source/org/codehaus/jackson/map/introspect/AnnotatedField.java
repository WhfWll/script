package org.codehaus.jackson.map.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Type;

public final class AnnotatedField
  extends AnnotatedMember
{
  protected final AnnotationMap _annotations;
  protected final Field _field;
  
  public AnnotatedField(Field paramField, AnnotationMap paramAnnotationMap)
  {
    _field = paramField;
    _annotations = paramAnnotationMap;
  }
  
  public void addOrOverride(Annotation paramAnnotation)
  {
    _annotations.add(paramAnnotation);
  }
  
  public Field getAnnotated()
  {
    return _field;
  }
  
  public <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    return _annotations.get(paramClass);
  }
  
  public int getAnnotationCount()
  {
    return _annotations.size();
  }
  
  public Class<?> getDeclaringClass()
  {
    return _field.getDeclaringClass();
  }
  
  public String getFullName()
  {
    return getDeclaringClass().getName() + "#" + getName();
  }
  
  public Type getGenericType()
  {
    return _field.getGenericType();
  }
  
  public Member getMember()
  {
    return _field;
  }
  
  public int getModifiers()
  {
    return _field.getModifiers();
  }
  
  public String getName()
  {
    return _field.getName();
  }
  
  public Class<?> getRawType()
  {
    return _field.getType();
  }
  
  public String toString()
  {
    return "[field " + getName() + ", annotations: " + _annotations + "]";
  }
}
