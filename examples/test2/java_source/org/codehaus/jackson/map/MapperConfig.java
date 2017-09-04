package org.codehaus.jackson.map;

import java.text.DateFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.codehaus.jackson.map.introspect.Annotated;
import org.codehaus.jackson.map.introspect.VisibilityChecker;
import org.codehaus.jackson.map.jsontype.SubtypeResolver;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;
import org.codehaus.jackson.map.jsontype.TypeResolverBuilder;
import org.codehaus.jackson.map.jsontype.impl.StdSubtypeResolver;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.map.util.StdDateFormat;
import org.codehaus.jackson.type.JavaType;

public abstract class MapperConfig<T extends MapperConfig<T>>
  implements ClassIntrospector.MixInResolver
{
  protected static final DateFormat DEFAULT_DATE_FORMAT = StdDateFormat.instance;
  protected Base _base;
  protected HashMap<ClassKey, Class<?>> _mixInAnnotations;
  protected boolean _mixInAnnotationsShared;
  protected SubtypeResolver _subtypeResolver;
  
  protected MapperConfig(ClassIntrospector<? extends BeanDescription> paramClassIntrospector, AnnotationIntrospector paramAnnotationIntrospector, VisibilityChecker<?> paramVisibilityChecker, SubtypeResolver paramSubtypeResolver, PropertyNamingStrategy paramPropertyNamingStrategy, TypeFactory paramTypeFactory, HandlerInstantiator paramHandlerInstantiator)
  {
    _base = new Base(paramClassIntrospector, paramAnnotationIntrospector, paramVisibilityChecker, paramPropertyNamingStrategy, paramTypeFactory, null, DEFAULT_DATE_FORMAT, paramHandlerInstantiator);
    _subtypeResolver = paramSubtypeResolver;
    _mixInAnnotationsShared = true;
  }
  
  protected MapperConfig(MapperConfig<?> paramMapperConfig)
  {
    this(paramMapperConfig, _base, _subtypeResolver);
  }
  
  protected MapperConfig(MapperConfig<?> paramMapperConfig, Base paramBase, SubtypeResolver paramSubtypeResolver)
  {
    _base = paramBase;
    _subtypeResolver = paramSubtypeResolver;
    _mixInAnnotationsShared = true;
    _mixInAnnotations = _mixInAnnotations;
  }
  
  public final void addMixInAnnotations(Class<?> paramClass1, Class<?> paramClass2)
  {
    if (_mixInAnnotations == null)
    {
      _mixInAnnotationsShared = false;
      _mixInAnnotations = new HashMap();
    }
    for (;;)
    {
      _mixInAnnotations.put(new ClassKey(paramClass1), paramClass2);
      return;
      if (_mixInAnnotationsShared)
      {
        _mixInAnnotationsShared = false;
        _mixInAnnotations = new HashMap(_mixInAnnotations);
      }
    }
  }
  
  public final void appendAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
  {
    _base = _base.withAnnotationIntrospector(AnnotationIntrospector.Pair.create(getAnnotationIntrospector(), paramAnnotationIntrospector));
  }
  
  public abstract boolean canOverrideAccessModifiers();
  
  public final JavaType constructType(Class<?> paramClass)
  {
    return getTypeFactory().constructType(paramClass);
  }
  
  public abstract T createUnshared(SubtypeResolver paramSubtypeResolver);
  
  @Deprecated
  public abstract T createUnshared(TypeResolverBuilder<?> paramTypeResolverBuilder, VisibilityChecker<?> paramVisibilityChecker, SubtypeResolver paramSubtypeResolver);
  
  public final Class<?> findMixInClassFor(Class<?> paramClass)
  {
    if (_mixInAnnotations == null) {
      return null;
    }
    return (Class)_mixInAnnotations.get(new ClassKey(paramClass));
  }
  
  public abstract void fromAnnotations(Class<?> paramClass);
  
  public AnnotationIntrospector getAnnotationIntrospector()
  {
    return _base.getAnnotationIntrospector();
  }
  
  public ClassIntrospector<? extends BeanDescription> getClassIntrospector()
  {
    return _base.getClassIntrospector();
  }
  
  public final DateFormat getDateFormat()
  {
    return _base.getDateFormat();
  }
  
  public final TypeResolverBuilder<?> getDefaultTyper(JavaType paramJavaType)
  {
    return _base.getTypeResolverBuilder();
  }
  
  public final VisibilityChecker<?> getDefaultVisibilityChecker()
  {
    return _base.getVisibilityChecker();
  }
  
  public final HandlerInstantiator getHandlerInstantiator()
  {
    return _base.getHandlerInstantiator();
  }
  
  public final PropertyNamingStrategy getPropertyNamingStrategy()
  {
    return _base.getPropertyNamingStrategy();
  }
  
  public final SubtypeResolver getSubtypeResolver()
  {
    if (_subtypeResolver == null) {
      _subtypeResolver = new StdSubtypeResolver();
    }
    return _subtypeResolver;
  }
  
  public final TypeFactory getTypeFactory()
  {
    return _base.getTypeFactory();
  }
  
  public final void insertAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
  {
    _base = _base.withAnnotationIntrospector(AnnotationIntrospector.Pair.create(paramAnnotationIntrospector, getAnnotationIntrospector()));
  }
  
  public abstract <DESC extends BeanDescription> DESC introspectClassAnnotations(Class<?> paramClass);
  
  public abstract <DESC extends BeanDescription> DESC introspectDirectClassAnnotations(Class<?> paramClass);
  
  public abstract boolean isAnnotationProcessingEnabled();
  
  public final int mixInCount()
  {
    if (_mixInAnnotations == null) {
      return 0;
    }
    return _mixInAnnotations.size();
  }
  
  @Deprecated
  public final void setAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
  {
    _base = _base.withAnnotationIntrospector(paramAnnotationIntrospector);
  }
  
  @Deprecated
  public void setDateFormat(DateFormat paramDateFormat)
  {
    Object localObject = paramDateFormat;
    if (paramDateFormat == null) {
      localObject = StdDateFormat.instance;
    }
    _base = _base.withDateFormat((DateFormat)localObject);
  }
  
  @Deprecated
  public final void setIntrospector(ClassIntrospector<? extends BeanDescription> paramClassIntrospector)
  {
    _base = _base.withClassIntrospector(paramClassIntrospector);
  }
  
  public final void setMixInAnnotations(Map<Class<?>, Class<?>> paramMap)
  {
    HashMap localHashMap = null;
    Object localObject = localHashMap;
    if (paramMap != null)
    {
      localObject = localHashMap;
      if (paramMap.size() > 0)
      {
        localHashMap = new HashMap(paramMap.size());
        paramMap = paramMap.entrySet().iterator();
        for (;;)
        {
          localObject = localHashMap;
          if (!paramMap.hasNext()) {
            break;
          }
          localObject = (Map.Entry)paramMap.next();
          localHashMap.put(new ClassKey((Class)((Map.Entry)localObject).getKey()), ((Map.Entry)localObject).getValue());
        }
      }
    }
    _mixInAnnotationsShared = false;
    _mixInAnnotations = ((HashMap)localObject);
  }
  
  @Deprecated
  public final void setSubtypeResolver(SubtypeResolver paramSubtypeResolver)
  {
    _subtypeResolver = paramSubtypeResolver;
  }
  
  public TypeIdResolver typeIdResolverInstance(Annotated paramAnnotated, Class<? extends TypeIdResolver> paramClass)
  {
    HandlerInstantiator localHandlerInstantiator = getHandlerInstantiator();
    if (localHandlerInstantiator != null)
    {
      paramAnnotated = localHandlerInstantiator.typeIdResolverInstance(this, paramAnnotated, paramClass);
      if (paramAnnotated != null) {
        return paramAnnotated;
      }
    }
    return (TypeIdResolver)ClassUtil.createInstance(paramClass, canOverrideAccessModifiers());
  }
  
  public TypeResolverBuilder<?> typeResolverBuilderInstance(Annotated paramAnnotated, Class<? extends TypeResolverBuilder<?>> paramClass)
  {
    HandlerInstantiator localHandlerInstantiator = getHandlerInstantiator();
    if (localHandlerInstantiator != null)
    {
      paramAnnotated = localHandlerInstantiator.typeResolverBuilderInstance(this, paramAnnotated, paramClass);
      if (paramAnnotated != null) {
        return paramAnnotated;
      }
    }
    return (TypeResolverBuilder)ClassUtil.createInstance(paramClass, canOverrideAccessModifiers());
  }
  
  public abstract T withAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector);
  
  public abstract T withClassIntrospector(ClassIntrospector<? extends BeanDescription> paramClassIntrospector);
  
  public abstract T withDateFormat(DateFormat paramDateFormat);
  
  public abstract T withHandlerInstantiator(HandlerInstantiator paramHandlerInstantiator);
  
  public abstract T withPropertyNamingStrategy(PropertyNamingStrategy paramPropertyNamingStrategy);
  
  public abstract T withSubtypeResolver(SubtypeResolver paramSubtypeResolver);
  
  public abstract T withTypeFactory(TypeFactory paramTypeFactory);
  
  public abstract T withTypeResolverBuilder(TypeResolverBuilder<?> paramTypeResolverBuilder);
  
  public abstract T withVisibilityChecker(VisibilityChecker<?> paramVisibilityChecker);
  
  public static class Base
  {
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final ClassIntrospector<? extends BeanDescription> _classIntrospector;
    protected final DateFormat _dateFormat;
    protected final HandlerInstantiator _handlerInstantiator;
    protected final PropertyNamingStrategy _propertyNamingStrategy;
    protected final TypeFactory _typeFactory;
    protected final TypeResolverBuilder<?> _typeResolverBuilder;
    protected final VisibilityChecker<?> _visibilityChecker;
    
    public Base(ClassIntrospector<? extends BeanDescription> paramClassIntrospector, AnnotationIntrospector paramAnnotationIntrospector, VisibilityChecker<?> paramVisibilityChecker, PropertyNamingStrategy paramPropertyNamingStrategy, TypeFactory paramTypeFactory, TypeResolverBuilder<?> paramTypeResolverBuilder, DateFormat paramDateFormat, HandlerInstantiator paramHandlerInstantiator)
    {
      _classIntrospector = paramClassIntrospector;
      _annotationIntrospector = paramAnnotationIntrospector;
      _visibilityChecker = paramVisibilityChecker;
      _propertyNamingStrategy = paramPropertyNamingStrategy;
      _typeFactory = paramTypeFactory;
      _typeResolverBuilder = paramTypeResolverBuilder;
      _dateFormat = paramDateFormat;
      _handlerInstantiator = paramHandlerInstantiator;
    }
    
    public AnnotationIntrospector getAnnotationIntrospector()
    {
      return _annotationIntrospector;
    }
    
    public ClassIntrospector<? extends BeanDescription> getClassIntrospector()
    {
      return _classIntrospector;
    }
    
    public DateFormat getDateFormat()
    {
      return _dateFormat;
    }
    
    public HandlerInstantiator getHandlerInstantiator()
    {
      return _handlerInstantiator;
    }
    
    public PropertyNamingStrategy getPropertyNamingStrategy()
    {
      return _propertyNamingStrategy;
    }
    
    public TypeFactory getTypeFactory()
    {
      return _typeFactory;
    }
    
    public TypeResolverBuilder<?> getTypeResolverBuilder()
    {
      return _typeResolverBuilder;
    }
    
    public VisibilityChecker<?> getVisibilityChecker()
    {
      return _visibilityChecker;
    }
    
    public Base withAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
    {
      return new Base(_classIntrospector, paramAnnotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator);
    }
    
    public Base withClassIntrospector(ClassIntrospector<? extends BeanDescription> paramClassIntrospector)
    {
      return new Base(paramClassIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator);
    }
    
    public Base withDateFormat(DateFormat paramDateFormat)
    {
      return new Base(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, paramDateFormat, _handlerInstantiator);
    }
    
    public Base withHandlerInstantiator(HandlerInstantiator paramHandlerInstantiator)
    {
      return new Base(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, paramHandlerInstantiator);
    }
    
    public Base withPropertyNamingStrategy(PropertyNamingStrategy paramPropertyNamingStrategy)
    {
      return new Base(_classIntrospector, _annotationIntrospector, _visibilityChecker, paramPropertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator);
    }
    
    public Base withTypeFactory(TypeFactory paramTypeFactory)
    {
      return new Base(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, paramTypeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator);
    }
    
    public Base withTypeResolverBuilder(TypeResolverBuilder<?> paramTypeResolverBuilder)
    {
      return new Base(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, paramTypeResolverBuilder, _dateFormat, _handlerInstantiator);
    }
    
    public Base withVisibilityChecker(VisibilityChecker<?> paramVisibilityChecker)
    {
      return new Base(_classIntrospector, _annotationIntrospector, paramVisibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator);
    }
  }
}
