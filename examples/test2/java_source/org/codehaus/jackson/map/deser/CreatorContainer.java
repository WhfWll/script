package org.codehaus.jackson.map.deser;

import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.codehaus.jackson.map.introspect.AnnotatedConstructor;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;
import org.codehaus.jackson.map.util.ClassUtil;

public class CreatorContainer
{
  final BasicBeanDescription _beanDesc;
  final boolean _canFixAccess;
  protected Constructor<?> _defaultConstructor;
  AnnotatedConstructor _delegatingConstructor;
  AnnotatedMethod _delegatingFactory;
  AnnotatedConstructor _intConstructor;
  AnnotatedMethod _intFactory;
  AnnotatedConstructor _longConstructor;
  AnnotatedMethod _longFactory;
  AnnotatedConstructor _propertyBasedConstructor;
  SettableBeanProperty[] _propertyBasedConstructorProperties = null;
  AnnotatedMethod _propertyBasedFactory;
  SettableBeanProperty[] _propertyBasedFactoryProperties = null;
  AnnotatedConstructor _strConstructor;
  AnnotatedMethod _strFactory;
  
  public CreatorContainer(BasicBeanDescription paramBasicBeanDescription, boolean paramBoolean)
  {
    _beanDesc = paramBasicBeanDescription;
    _canFixAccess = paramBoolean;
  }
  
  public void addDelegatingConstructor(AnnotatedConstructor paramAnnotatedConstructor)
  {
    _delegatingConstructor = verifyNonDup(paramAnnotatedConstructor, _delegatingConstructor, "long");
  }
  
  public void addDelegatingFactory(AnnotatedMethod paramAnnotatedMethod)
  {
    _delegatingFactory = verifyNonDup(paramAnnotatedMethod, _delegatingFactory, "long");
  }
  
  public void addIntConstructor(AnnotatedConstructor paramAnnotatedConstructor)
  {
    _intConstructor = verifyNonDup(paramAnnotatedConstructor, _intConstructor, "int");
  }
  
  public void addIntFactory(AnnotatedMethod paramAnnotatedMethod)
  {
    _intFactory = verifyNonDup(paramAnnotatedMethod, _intFactory, "int");
  }
  
  public void addLongConstructor(AnnotatedConstructor paramAnnotatedConstructor)
  {
    _longConstructor = verifyNonDup(paramAnnotatedConstructor, _longConstructor, "long");
  }
  
  public void addLongFactory(AnnotatedMethod paramAnnotatedMethod)
  {
    _longFactory = verifyNonDup(paramAnnotatedMethod, _longFactory, "long");
  }
  
  public void addPropertyConstructor(AnnotatedConstructor paramAnnotatedConstructor, SettableBeanProperty[] paramArrayOfSettableBeanProperty)
  {
    _propertyBasedConstructor = verifyNonDup(paramAnnotatedConstructor, _propertyBasedConstructor, "property-based");
    if (paramArrayOfSettableBeanProperty.length > 1)
    {
      paramAnnotatedConstructor = new HashMap();
      int i = 0;
      int j = paramArrayOfSettableBeanProperty.length;
      while (i < j)
      {
        String str = paramArrayOfSettableBeanProperty[i].getName();
        Integer localInteger = (Integer)paramAnnotatedConstructor.put(str, Integer.valueOf(i));
        if (localInteger != null) {
          throw new IllegalArgumentException("Duplicate creator property \"" + str + "\" (index " + localInteger + " vs " + i + ")");
        }
        i += 1;
      }
    }
    _propertyBasedConstructorProperties = paramArrayOfSettableBeanProperty;
  }
  
  public void addPropertyFactory(AnnotatedMethod paramAnnotatedMethod, SettableBeanProperty[] paramArrayOfSettableBeanProperty)
  {
    _propertyBasedFactory = verifyNonDup(paramAnnotatedMethod, _propertyBasedFactory, "property-based");
    _propertyBasedFactoryProperties = paramArrayOfSettableBeanProperty;
  }
  
  public void addStringConstructor(AnnotatedConstructor paramAnnotatedConstructor)
  {
    _strConstructor = verifyNonDup(paramAnnotatedConstructor, _strConstructor, "String");
  }
  
  public void addStringFactory(AnnotatedMethod paramAnnotatedMethod)
  {
    _strFactory = verifyNonDup(paramAnnotatedMethod, _strFactory, "String");
  }
  
  public Creator.Delegating delegatingCreator()
  {
    if ((_delegatingConstructor == null) && (_delegatingFactory == null)) {
      return null;
    }
    return new Creator.Delegating(_beanDesc, _delegatingConstructor, _delegatingFactory);
  }
  
  public Constructor<?> getDefaultConstructor()
  {
    return _defaultConstructor;
  }
  
  public Creator.NumberBased numberCreator()
  {
    if ((_intConstructor == null) && (_intFactory == null) && (_longConstructor == null) && (_longFactory == null)) {
      return null;
    }
    return new Creator.NumberBased(_beanDesc.getBeanClass(), _intConstructor, _intFactory, _longConstructor, _longFactory);
  }
  
  public Creator.PropertyBased propertyBasedCreator()
  {
    if ((_propertyBasedConstructor == null) && (_propertyBasedFactory == null)) {
      return null;
    }
    return new Creator.PropertyBased(_propertyBasedConstructor, _propertyBasedConstructorProperties, _propertyBasedFactory, _propertyBasedFactoryProperties);
  }
  
  public void setDefaultConstructor(Constructor<?> paramConstructor)
  {
    _defaultConstructor = paramConstructor;
  }
  
  public Creator.StringBased stringCreator()
  {
    if ((_strConstructor == null) && (_strFactory == null)) {
      return null;
    }
    return new Creator.StringBased(_beanDesc.getBeanClass(), _strConstructor, _strFactory);
  }
  
  protected AnnotatedConstructor verifyNonDup(AnnotatedConstructor paramAnnotatedConstructor1, AnnotatedConstructor paramAnnotatedConstructor2, String paramString)
  {
    if (paramAnnotatedConstructor2 != null) {
      throw new IllegalArgumentException("Conflicting " + paramString + " constructors: already had " + paramAnnotatedConstructor2 + ", encountered " + paramAnnotatedConstructor1);
    }
    if (_canFixAccess) {
      ClassUtil.checkAndFixAccess(paramAnnotatedConstructor1.getAnnotated());
    }
    return paramAnnotatedConstructor1;
  }
  
  protected AnnotatedMethod verifyNonDup(AnnotatedMethod paramAnnotatedMethod1, AnnotatedMethod paramAnnotatedMethod2, String paramString)
  {
    if (paramAnnotatedMethod2 != null) {
      throw new IllegalArgumentException("Conflicting " + paramString + " factory methods: already had " + paramAnnotatedMethod2 + ", encountered " + paramAnnotatedMethod1);
    }
    if (_canFixAccess) {
      ClassUtil.checkAndFixAccess(paramAnnotatedMethod1.getAnnotated());
    }
    return paramAnnotatedMethod1;
  }
}
