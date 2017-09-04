package org.codehaus.jackson.map.introspect;

import java.lang.annotation.Annotation;
import java.util.HashMap;
import org.codehaus.jackson.map.util.Annotations;

public final class AnnotationMap
  implements Annotations
{
  protected HashMap<Class<? extends Annotation>, Annotation> _annotations;
  
  public AnnotationMap() {}
  
  protected final void _add(Annotation paramAnnotation)
  {
    if (_annotations == null) {
      _annotations = new HashMap();
    }
    _annotations.put(paramAnnotation.annotationType(), paramAnnotation);
  }
  
  public void add(Annotation paramAnnotation)
  {
    _add(paramAnnotation);
  }
  
  public void addIfNotPresent(Annotation paramAnnotation)
  {
    if ((_annotations == null) || (!_annotations.containsKey(paramAnnotation.annotationType()))) {
      _add(paramAnnotation);
    }
  }
  
  public <A extends Annotation> A get(Class<A> paramClass)
  {
    if (_annotations == null) {
      return null;
    }
    return (Annotation)_annotations.get(paramClass);
  }
  
  public int size()
  {
    if (_annotations == null) {
      return 0;
    }
    return _annotations.size();
  }
  
  public String toString()
  {
    if (_annotations == null) {
      return "[null]";
    }
    return _annotations.toString();
  }
}
