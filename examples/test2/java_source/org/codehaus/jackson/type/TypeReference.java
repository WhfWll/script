package org.codehaus.jackson.type;

import java.lang.reflect.Type;

public class TypeReference<T>
{
  private final Type genericType = ((java.lang.reflect.ParameterizedType)getClass().getGenericSuperclass()).getActualTypeArguments()[0];
  
  public TypeReference() {}
  
  public Type getType()
  {
    return genericType;
  }
}
