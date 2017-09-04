package org.codehaus.jackson.map.type;

import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import org.codehaus.jackson.type.JavaType;

public class TypeBindings
{
  private static final JavaType[] NO_TYPES = new JavaType[0];
  public static final JavaType UNBOUND = new SimpleType(Object.class);
  protected Map<String, JavaType> _bindings;
  protected final Class<?> _contextClass;
  protected final JavaType _contextType;
  private final TypeBindings _parentBindings;
  protected HashSet<String> _placeholders;
  protected final TypeFactory _typeFactory;
  
  public TypeBindings(TypeFactory paramTypeFactory, Class<?> paramClass)
  {
    this(paramTypeFactory, null, paramClass, null);
  }
  
  private TypeBindings(TypeFactory paramTypeFactory, TypeBindings paramTypeBindings, Class<?> paramClass, JavaType paramJavaType)
  {
    _typeFactory = paramTypeFactory;
    _parentBindings = paramTypeBindings;
    _contextClass = paramClass;
    _contextType = paramJavaType;
  }
  
  public TypeBindings(TypeFactory paramTypeFactory, JavaType paramJavaType)
  {
    this(paramTypeFactory, null, paramJavaType.getRawClass(), paramJavaType);
  }
  
  public void _addPlaceholder(String paramString)
  {
    if (_placeholders == null) {
      _placeholders = new HashSet();
    }
    _placeholders.add(paramString);
  }
  
  protected void _resolve()
  {
    _resolveBindings(_contextClass);
    if (_contextType != null)
    {
      int j = _contextType.containedTypeCount();
      if (j > 0)
      {
        if (_bindings == null) {
          _bindings = new LinkedHashMap();
        }
        int i = 0;
        while (i < j)
        {
          String str = _contextType.containedTypeName(i);
          JavaType localJavaType = _contextType.containedType(i);
          _bindings.put(str, localJavaType);
          i += 1;
        }
      }
    }
    if (_bindings == null) {
      _bindings = Collections.emptyMap();
    }
  }
  
  protected void _resolveBindings(Type paramType)
  {
    if (paramType == null) {
      return;
    }
    Object localObject1;
    TypeVariable[] arrayOfTypeVariable;
    int i;
    int j;
    if ((paramType instanceof ParameterizedType))
    {
      paramType = (ParameterizedType)paramType;
      localObject1 = paramType.getActualTypeArguments();
      if ((localObject1 != null) && (localObject1.length > 0))
      {
        localObject2 = (Class)paramType.getRawType();
        arrayOfTypeVariable = ((Class)localObject2).getTypeParameters();
        if (arrayOfTypeVariable.length != localObject1.length) {
          throw new IllegalArgumentException("Strange parametrized type (in class " + ((Class)localObject2).getName() + "): number of type arguments != number of type parameters (" + localObject1.length + " vs " + arrayOfTypeVariable.length + ")");
        }
        i = 0;
        j = localObject1.length;
        if (i < j)
        {
          localObject2 = arrayOfTypeVariable[i].getName();
          if (_bindings == null)
          {
            _bindings = new LinkedHashMap();
            label161:
            _addPlaceholder((String)localObject2);
            _bindings.put(localObject2, _typeFactory._constructType(localObject1[i], this));
          }
          for (;;)
          {
            i += 1;
            break;
            if (!_bindings.containsKey(localObject2)) {
              break label161;
            }
          }
        }
      }
      paramType = (Class)paramType.getRawType();
    }
    do
    {
      do
      {
        do
        {
          _resolveBindings(paramType.getGenericSuperclass());
          paramType = paramType.getGenericInterfaces();
          j = paramType.length;
          i = 0;
          while (i < j)
          {
            _resolveBindings(paramType[i]);
            i += 1;
          }
          break;
          if (!(paramType instanceof Class)) {
            break;
          }
          localObject1 = (Class)paramType;
          arrayOfTypeVariable = ((Class)localObject1).getTypeParameters();
          paramType = (Type)localObject1;
        } while (arrayOfTypeVariable == null);
        paramType = (Type)localObject1;
      } while (arrayOfTypeVariable.length <= 0);
      j = arrayOfTypeVariable.length;
      i = 0;
      paramType = (Type)localObject1;
    } while (i >= j);
    Object localObject2 = arrayOfTypeVariable[i];
    paramType = ((TypeVariable)localObject2).getName();
    localObject2 = localObject2.getBounds()[0];
    if (localObject2 != null)
    {
      if (_bindings != null) {
        break label394;
      }
      _bindings = new LinkedHashMap();
      label361:
      _addPlaceholder(paramType);
      _bindings.put(paramType, _typeFactory._constructType((Type)localObject2, this));
    }
    for (;;)
    {
      i += 1;
      break;
      label394:
      if (!_bindings.containsKey(paramType)) {
        break label361;
      }
    }
  }
  
  public void addBinding(String paramString, JavaType paramJavaType)
  {
    if ((_bindings == null) || (_bindings.size() == 0)) {
      _bindings = new LinkedHashMap();
    }
    _bindings.put(paramString, paramJavaType);
  }
  
  public TypeBindings childInstance()
  {
    return new TypeBindings(_typeFactory, this, _contextClass, _contextType);
  }
  
  public JavaType findType(String paramString)
  {
    if (_bindings == null) {
      _resolve();
    }
    Object localObject = (JavaType)_bindings.get(paramString);
    if (localObject != null) {
      return localObject;
    }
    if ((_placeholders != null) && (_placeholders.contains(paramString))) {
      return UNBOUND;
    }
    if (_parentBindings != null) {
      return _parentBindings.findType(paramString);
    }
    if ((_contextClass != null) && (_contextClass.getEnclosingClass() != null) && (!Modifier.isStatic(_contextClass.getModifiers()))) {
      return UNBOUND;
    }
    if (_contextClass != null) {
      localObject = _contextClass.getName();
    }
    for (;;)
    {
      throw new IllegalArgumentException("Type variable '" + paramString + "' can not be resolved (with context of class " + (String)localObject + ")");
      if (_contextType != null) {
        localObject = _contextType.toString();
      } else {
        localObject = "UNKNOWN";
      }
    }
  }
  
  public int getBindingCount()
  {
    if (_bindings == null) {
      _resolve();
    }
    return _bindings.size();
  }
  
  public JavaType resolveType(Class<?> paramClass)
  {
    return _typeFactory._constructType(paramClass, this);
  }
  
  public JavaType resolveType(Type paramType)
  {
    return _typeFactory._constructType(paramType, this);
  }
  
  public String toString()
  {
    if (_bindings == null) {
      _resolve();
    }
    StringBuilder localStringBuilder = new StringBuilder("[TypeBindings for ");
    if (_contextType != null) {
      localStringBuilder.append(_contextType.toString());
    }
    for (;;)
    {
      localStringBuilder.append(": ").append(_bindings).append("]");
      return localStringBuilder.toString();
      localStringBuilder.append(_contextClass.getName());
    }
  }
  
  public JavaType[] typesAsArray()
  {
    if (_bindings == null) {
      _resolve();
    }
    if (_bindings.size() == 0) {
      return NO_TYPES;
    }
    return (JavaType[])_bindings.values().toArray(new JavaType[_bindings.size()]);
  }
}
