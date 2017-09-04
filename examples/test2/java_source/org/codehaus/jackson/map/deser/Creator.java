package org.codehaus.jackson.map.deser;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashMap;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.introspect.AnnotatedConstructor;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;
import org.codehaus.jackson.map.type.TypeBindings;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.type.JavaType;

abstract class Creator
{
  private Creator() {}
  
  static final class Delegating
  {
    protected final AnnotatedMember _creator;
    protected final Constructor<?> _ctor;
    protected JsonDeserializer<Object> _deserializer;
    protected final Method _factoryMethod;
    protected final JavaType _valueType;
    
    public Delegating(BasicBeanDescription paramBasicBeanDescription, AnnotatedConstructor paramAnnotatedConstructor, AnnotatedMethod paramAnnotatedMethod)
    {
      paramBasicBeanDescription = paramBasicBeanDescription.bindingsForBeanType();
      if (paramAnnotatedConstructor != null)
      {
        _creator = paramAnnotatedConstructor;
        _ctor = paramAnnotatedConstructor.getAnnotated();
        _factoryMethod = null;
        _valueType = paramBasicBeanDescription.resolveType(paramAnnotatedConstructor.getParameterType(0));
        return;
      }
      if (paramAnnotatedMethod != null)
      {
        _creator = paramAnnotatedMethod;
        _ctor = null;
        _factoryMethod = paramAnnotatedMethod.getAnnotated();
        _valueType = paramBasicBeanDescription.resolveType(paramAnnotatedMethod.getParameterType(0));
        return;
      }
      throw new IllegalArgumentException("Internal error: neither delegating constructor nor factory method passed");
    }
    
    public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      paramJsonParser = _deserializer.deserialize(paramJsonParser, paramDeserializationContext);
      try
      {
        if (_ctor != null) {
          return _ctor.newInstance(new Object[] { paramJsonParser });
        }
        paramJsonParser = _factoryMethod.invoke(null, new Object[] { paramJsonParser });
        return paramJsonParser;
      }
      catch (Exception paramJsonParser)
      {
        ClassUtil.unwrapAndThrowAsIAE(paramJsonParser);
      }
      return null;
    }
    
    public AnnotatedMember getCreator()
    {
      return _creator;
    }
    
    public JavaType getValueType()
    {
      return _valueType;
    }
    
    public void setDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
    {
      _deserializer = paramJsonDeserializer;
    }
  }
  
  static final class NumberBased
  {
    protected final Constructor<?> _intCtor;
    protected final Method _intFactoryMethod;
    protected final Constructor<?> _longCtor;
    protected final Method _longFactoryMethod;
    protected final Class<?> _valueClass;
    
    public NumberBased(Class<?> paramClass, AnnotatedConstructor paramAnnotatedConstructor1, AnnotatedMethod paramAnnotatedMethod1, AnnotatedConstructor paramAnnotatedConstructor2, AnnotatedMethod paramAnnotatedMethod2)
    {
      _valueClass = paramClass;
      if (paramAnnotatedConstructor1 == null)
      {
        paramClass = null;
        _intCtor = paramClass;
        if (paramAnnotatedConstructor2 != null) {
          break label68;
        }
        paramClass = null;
        label30:
        _longCtor = paramClass;
        if (paramAnnotatedMethod1 != null) {
          break label77;
        }
        paramClass = null;
        label41:
        _intFactoryMethod = paramClass;
        if (paramAnnotatedMethod2 != null) {
          break label85;
        }
      }
      label68:
      label77:
      label85:
      for (paramClass = localObject;; paramClass = paramAnnotatedMethod2.getAnnotated())
      {
        _longFactoryMethod = paramClass;
        return;
        paramClass = paramAnnotatedConstructor1.getAnnotated();
        break;
        paramClass = paramAnnotatedConstructor2.getAnnotated();
        break label30;
        paramClass = paramAnnotatedMethod1.getAnnotated();
        break label41;
      }
    }
    
    public Object construct(int paramInt)
    {
      try
      {
        if (_intCtor != null) {
          return _intCtor.newInstance(new Object[] { Integer.valueOf(paramInt) });
        }
        if (_intFactoryMethod != null)
        {
          Object localObject = _intFactoryMethod.invoke(_valueClass, new Object[] { Integer.valueOf(paramInt) });
          return localObject;
        }
      }
      catch (Exception localException)
      {
        ClassUtil.unwrapAndThrowAsIAE(localException);
      }
      return construct(paramInt);
    }
    
    public Object construct(long paramLong)
    {
      try
      {
        if (_longCtor != null) {
          return _longCtor.newInstance(new Object[] { Long.valueOf(paramLong) });
        }
        if (_longFactoryMethod != null)
        {
          Object localObject = _longFactoryMethod.invoke(_valueClass, new Object[] { Long.valueOf(paramLong) });
          return localObject;
        }
      }
      catch (Exception localException)
      {
        ClassUtil.unwrapAndThrowAsIAE(localException);
      }
      return null;
    }
  }
  
  static final class PropertyBased
  {
    protected final Constructor<?> _ctor;
    protected final Object[] _defaultValues;
    protected final Method _factoryMethod;
    protected final HashMap<String, SettableBeanProperty> _properties;
    
    public PropertyBased(AnnotatedConstructor paramAnnotatedConstructor, SettableBeanProperty[] paramArrayOfSettableBeanProperty1, AnnotatedMethod paramAnnotatedMethod, SettableBeanProperty[] paramArrayOfSettableBeanProperty2)
    {
      if (paramAnnotatedConstructor != null)
      {
        _ctor = paramAnnotatedConstructor.getAnnotated();
        _factoryMethod = null;
      }
      for (paramAnnotatedMethod = paramArrayOfSettableBeanProperty1;; paramAnnotatedMethod = paramArrayOfSettableBeanProperty2)
      {
        _properties = new HashMap();
        paramAnnotatedConstructor = null;
        int i = 0;
        int j = paramAnnotatedMethod.length;
        while (i < j)
        {
          paramArrayOfSettableBeanProperty2 = paramAnnotatedMethod[i];
          _properties.put(paramArrayOfSettableBeanProperty2.getName(), paramArrayOfSettableBeanProperty2);
          paramArrayOfSettableBeanProperty1 = paramAnnotatedConstructor;
          if (paramArrayOfSettableBeanProperty2.getType().isPrimitive())
          {
            paramArrayOfSettableBeanProperty1 = paramAnnotatedConstructor;
            if (paramAnnotatedConstructor == null) {
              paramArrayOfSettableBeanProperty1 = new Object[j];
            }
            paramArrayOfSettableBeanProperty1[i] = ClassUtil.defaultValue(paramArrayOfSettableBeanProperty2.getType().getRawClass());
          }
          i += 1;
          paramAnnotatedConstructor = paramArrayOfSettableBeanProperty1;
        }
        if (paramAnnotatedMethod == null) {
          break;
        }
        _ctor = null;
        _factoryMethod = paramAnnotatedMethod.getAnnotated();
      }
      throw new IllegalArgumentException("Internal error: neither delegating constructor nor factory method passed");
      _defaultValues = paramAnnotatedConstructor;
    }
    
    public Object build(PropertyValueBuffer paramPropertyValueBuffer)
      throws Exception
    {
      localObject2 = null;
      try
      {
        if (_ctor != null) {}
        for (Object localObject1 = _ctor.newInstance(paramPropertyValueBuffer.getParameters(_defaultValues));; localObject1 = _factoryMethod.invoke(null, paramPropertyValueBuffer.getParameters(_defaultValues))) {
          for (paramPropertyValueBuffer = paramPropertyValueBuffer.buffered();; paramPropertyValueBuffer = next)
          {
            localObject2 = localObject1;
            if (paramPropertyValueBuffer == null) {
              break;
            }
            paramPropertyValueBuffer.assign(localObject1);
          }
        }
        return localObject2;
      }
      catch (Exception paramPropertyValueBuffer)
      {
        ClassUtil.throwRootCause(paramPropertyValueBuffer);
      }
    }
    
    public SettableBeanProperty findCreatorProperty(String paramString)
    {
      return (SettableBeanProperty)_properties.get(paramString);
    }
    
    public Collection<SettableBeanProperty> properties()
    {
      return _properties.values();
    }
    
    public PropertyValueBuffer startBuilding(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    {
      return new PropertyValueBuffer(paramJsonParser, paramDeserializationContext, _properties.size());
    }
  }
  
  static final class StringBased
  {
    protected final Constructor<?> _ctor;
    protected final Method _factoryMethod;
    protected final Class<?> _valueClass;
    
    public StringBased(Class<?> paramClass, AnnotatedConstructor paramAnnotatedConstructor, AnnotatedMethod paramAnnotatedMethod)
    {
      _valueClass = paramClass;
      if (paramAnnotatedConstructor == null)
      {
        paramClass = null;
        _ctor = paramClass;
        if (paramAnnotatedMethod != null) {
          break label44;
        }
      }
      label44:
      for (paramClass = localObject;; paramClass = paramAnnotatedMethod.getAnnotated())
      {
        _factoryMethod = paramClass;
        return;
        paramClass = paramAnnotatedConstructor.getAnnotated();
        break;
      }
    }
    
    public Object construct(String paramString)
    {
      try
      {
        if (_ctor != null) {
          return _ctor.newInstance(new Object[] { paramString });
        }
        if (_factoryMethod != null)
        {
          paramString = _factoryMethod.invoke(_valueClass, new Object[] { paramString });
          return paramString;
        }
      }
      catch (Exception paramString)
      {
        ClassUtil.unwrapAndThrowAsIAE(paramString);
      }
      return null;
    }
  }
}
