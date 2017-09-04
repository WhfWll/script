package org.codehaus.jackson.map.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.ClassIntrospector.MixInResolver;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ClassUtil;

public final class AnnotatedClass
  extends Annotated
{
  private static final AnnotationMap[] NO_ANNOTATION_MAPS = new AnnotationMap[0];
  protected final AnnotationIntrospector _annotationIntrospector;
  protected final Class<?> _class;
  protected AnnotationMap _classAnnotations;
  protected List<AnnotatedConstructor> _constructors;
  protected List<AnnotatedMethod> _creatorMethods;
  protected AnnotatedConstructor _defaultConstructor;
  protected List<AnnotatedField> _fields;
  protected List<AnnotatedField> _ignoredFields;
  protected List<AnnotatedMethod> _ignoredMethods;
  protected AnnotatedMethodMap _memberMethods;
  protected final ClassIntrospector.MixInResolver _mixInResolver;
  protected final Class<?> _primaryMixIn;
  protected final Collection<Class<?>> _superTypes;
  
  private AnnotatedClass(Class<?> paramClass, List<Class<?>> paramList, AnnotationIntrospector paramAnnotationIntrospector, ClassIntrospector.MixInResolver paramMixInResolver)
  {
    _class = paramClass;
    _superTypes = paramList;
    _annotationIntrospector = paramAnnotationIntrospector;
    _mixInResolver = paramMixInResolver;
    if (_mixInResolver == null) {}
    for (paramClass = null;; paramClass = _mixInResolver.findMixInClassFor(_class))
    {
      _primaryMixIn = paramClass;
      return;
    }
  }
  
  private AnnotationMap _emptyAnnotationMap()
  {
    return new AnnotationMap();
  }
  
  private AnnotationMap[] _emptyAnnotationMaps(int paramInt)
  {
    Object localObject;
    if (paramInt == 0)
    {
      localObject = NO_ANNOTATION_MAPS;
      return localObject;
    }
    AnnotationMap[] arrayOfAnnotationMap = new AnnotationMap[paramInt];
    int i = 0;
    for (;;)
    {
      localObject = arrayOfAnnotationMap;
      if (i >= paramInt) {
        break;
      }
      arrayOfAnnotationMap[i] = _emptyAnnotationMap();
      i += 1;
    }
  }
  
  private boolean _isIncludableField(Field paramField)
  {
    if (paramField.isSynthetic()) {}
    int i;
    do
    {
      return false;
      i = paramField.getModifiers();
    } while ((Modifier.isStatic(i)) || (Modifier.isTransient(i)));
    return true;
  }
  
  public static AnnotatedClass construct(Class<?> paramClass, AnnotationIntrospector paramAnnotationIntrospector, ClassIntrospector.MixInResolver paramMixInResolver)
  {
    paramClass = new AnnotatedClass(paramClass, ClassUtil.findSuperTypes(paramClass, null), paramAnnotationIntrospector, paramMixInResolver);
    paramClass.resolveClassAnnotations();
    return paramClass;
  }
  
  public static AnnotatedClass constructWithoutSuperTypes(Class<?> paramClass, AnnotationIntrospector paramAnnotationIntrospector, ClassIntrospector.MixInResolver paramMixInResolver)
  {
    paramClass = new AnnotatedClass(paramClass, Collections.emptyList(), paramAnnotationIntrospector, paramMixInResolver);
    paramClass.resolveClassAnnotations();
    return paramClass;
  }
  
  protected void _addClassMixIns(AnnotationMap paramAnnotationMap, Class<?> paramClass)
  {
    if (_mixInResolver != null) {
      _addClassMixIns(paramAnnotationMap, paramClass, _mixInResolver.findMixInClassFor(paramClass));
    }
  }
  
  protected void _addClassMixIns(AnnotationMap paramAnnotationMap, Class<?> paramClass1, Class<?> paramClass2)
  {
    if (paramClass2 == null) {
      return;
    }
    Annotation[] arrayOfAnnotation = paramClass2.getDeclaredAnnotations();
    int j = arrayOfAnnotation.length;
    int i = 0;
    while (i < j)
    {
      Annotation localAnnotation = arrayOfAnnotation[i];
      if (_annotationIntrospector.isHandled(localAnnotation)) {
        paramAnnotationMap.addIfNotPresent(localAnnotation);
      }
      i += 1;
    }
    paramClass1 = ClassUtil.findSuperTypes(paramClass2, paramClass1).iterator();
    while (paramClass1.hasNext())
    {
      paramClass2 = ((Class)paramClass1.next()).getDeclaredAnnotations();
      j = paramClass2.length;
      i = 0;
      while (i < j)
      {
        arrayOfAnnotation = paramClass2[i];
        if (_annotationIntrospector.isHandled(arrayOfAnnotation)) {
          paramAnnotationMap.addIfNotPresent(arrayOfAnnotation);
        }
        i += 1;
      }
    }
  }
  
  protected void _addConstructorMixIns(Class<?> paramClass)
  {
    Object localObject1 = null;
    if (_constructors == null) {}
    int j;
    Constructor localConstructor;
    int k;
    for (int i = 0;; i = _constructors.size())
    {
      Constructor[] arrayOfConstructor = paramClass.getDeclaredConstructors();
      int m = arrayOfConstructor.length;
      j = 0;
      if (j >= m) {
        return;
      }
      localConstructor = arrayOfConstructor[j];
      switch (localConstructor.getParameterTypes().length)
      {
      default: 
        paramClass = (Class<?>)localObject1;
        if (localObject1 != null) {
          break label174;
        }
        localObject1 = new MemberKey[i];
        k = 0;
        for (;;)
        {
          paramClass = (Class<?>)localObject1;
          if (k >= i) {
            break;
          }
          localObject1[k] = new MemberKey(((AnnotatedConstructor)_constructors.get(k)).getAnnotated());
          k += 1;
        }
      }
    }
    Object localObject2 = localObject1;
    if (_defaultConstructor != null)
    {
      _addMixOvers(localConstructor, _defaultConstructor, false);
      localObject2 = localObject1;
    }
    for (;;)
    {
      j += 1;
      localObject1 = localObject2;
      break;
      label174:
      localObject1 = new MemberKey(localConstructor);
      k = 0;
      for (;;)
      {
        localObject2 = paramClass;
        if (k >= i) {
          break;
        }
        if (((MemberKey)localObject1).equals(paramClass[k])) {
          break label218;
        }
        k += 1;
      }
      label218:
      _addMixOvers(localConstructor, (AnnotatedConstructor)_constructors.get(k), true);
      localObject2 = paramClass;
    }
  }
  
  protected void _addFactoryMixIns(Class<?> paramClass)
  {
    Object localObject1 = null;
    int k = _creatorMethods.size();
    Method[] arrayOfMethod = paramClass.getDeclaredMethods();
    int m = arrayOfMethod.length;
    int i = 0;
    if (i < m)
    {
      Method localMethod = arrayOfMethod[i];
      Object localObject2;
      if (!Modifier.isStatic(localMethod.getModifiers())) {
        localObject2 = localObject1;
      }
      for (;;)
      {
        i += 1;
        localObject1 = localObject2;
        break;
        localObject2 = localObject1;
        if (localMethod.getParameterTypes().length != 0)
        {
          paramClass = (Class<?>)localObject1;
          if (localObject1 == null)
          {
            localObject1 = new MemberKey[k];
            j = 0;
            for (;;)
            {
              paramClass = (Class<?>)localObject1;
              if (j >= k) {
                break;
              }
              localObject1[j] = new MemberKey(((AnnotatedMethod)_creatorMethods.get(j)).getAnnotated());
              j += 1;
            }
          }
          localObject1 = new MemberKey(localMethod);
          int j = 0;
          for (;;)
          {
            localObject2 = paramClass;
            if (j >= k) {
              break;
            }
            if (((MemberKey)localObject1).equals(paramClass[j])) {
              break label178;
            }
            j += 1;
          }
          label178:
          _addMixOvers(localMethod, (AnnotatedMethod)_creatorMethods.get(j), true);
          localObject2 = paramClass;
        }
      }
    }
  }
  
  protected void _addFieldMixIns(Class<?> paramClass, Map<String, AnnotatedField> paramMap)
  {
    paramClass = paramClass.getDeclaredFields();
    int k = paramClass.length;
    int i = 0;
    if (i < k)
    {
      Object localObject = paramClass[i];
      if (!_isIncludableField((Field)localObject)) {}
      for (;;)
      {
        i += 1;
        break;
        AnnotatedField localAnnotatedField = (AnnotatedField)paramMap.get(((Field)localObject).getName());
        if (localAnnotatedField != null)
        {
          localObject = ((Field)localObject).getDeclaredAnnotations();
          int m = localObject.length;
          int j = 0;
          while (j < m)
          {
            Annotation localAnnotation = localObject[j];
            if (_annotationIntrospector.isHandled(localAnnotation)) {
              localAnnotatedField.addOrOverride(localAnnotation);
            }
            j += 1;
          }
        }
      }
    }
  }
  
  protected void _addFields(Map<String, AnnotatedField> paramMap, Class<?> paramClass)
  {
    Object localObject = paramClass.getSuperclass();
    if (localObject != null)
    {
      _addFields(paramMap, (Class)localObject);
      localObject = paramClass.getDeclaredFields();
      int j = localObject.length;
      int i = 0;
      if (i < j)
      {
        Field localField = localObject[i];
        if (!_isIncludableField(localField)) {}
        for (;;)
        {
          i += 1;
          break;
          paramMap.put(localField.getName(), _constructField(localField));
        }
      }
      if (_mixInResolver != null)
      {
        paramClass = _mixInResolver.findMixInClassFor(paramClass);
        if (paramClass != null) {
          _addFieldMixIns(paramClass, paramMap);
        }
      }
    }
  }
  
  protected void _addMemberMethods(Class<?> paramClass1, MethodFilter paramMethodFilter, AnnotatedMethodMap paramAnnotatedMethodMap1, Class<?> paramClass2, AnnotatedMethodMap paramAnnotatedMethodMap2)
  {
    if (paramClass2 != null) {
      _addMethodMixIns(paramMethodFilter, paramAnnotatedMethodMap1, paramClass2, paramAnnotatedMethodMap2);
    }
    if (paramClass1 == null) {
      return;
    }
    paramClass1 = paramClass1.getDeclaredMethods();
    int j = paramClass1.length;
    int i = 0;
    label32:
    if (i < j)
    {
      paramClass2 = paramClass1[i];
      if (_isIncludableMethod(paramClass2, paramMethodFilter)) {
        break label64;
      }
    }
    for (;;)
    {
      i += 1;
      break label32;
      break;
      label64:
      AnnotatedMethod localAnnotatedMethod = paramAnnotatedMethodMap1.find(paramClass2);
      if (localAnnotatedMethod == null)
      {
        localAnnotatedMethod = _constructMethod(paramClass2);
        paramAnnotatedMethodMap1.add(localAnnotatedMethod);
        paramClass2 = paramAnnotatedMethodMap2.remove(paramClass2);
        if (paramClass2 != null) {
          _addMixOvers(paramClass2.getAnnotated(), localAnnotatedMethod, false);
        }
      }
      else
      {
        _addMixUnders(paramClass2, localAnnotatedMethod);
        if ((localAnnotatedMethod.getDeclaringClass().isInterface()) && (!paramClass2.getDeclaringClass().isInterface())) {
          paramAnnotatedMethodMap1.add(localAnnotatedMethod.withMethod(paramClass2));
        }
      }
    }
  }
  
  protected void _addMethodMixIns(MethodFilter paramMethodFilter, AnnotatedMethodMap paramAnnotatedMethodMap1, Class<?> paramClass, AnnotatedMethodMap paramAnnotatedMethodMap2)
  {
    paramClass = paramClass.getDeclaredMethods();
    int j = paramClass.length;
    int i = 0;
    if (i < j)
    {
      Method localMethod = paramClass[i];
      if (!_isIncludableMethod(localMethod, paramMethodFilter)) {}
      for (;;)
      {
        i += 1;
        break;
        AnnotatedMethod localAnnotatedMethod = paramAnnotatedMethodMap1.find(localMethod);
        if (localAnnotatedMethod != null) {
          _addMixUnders(localMethod, localAnnotatedMethod);
        } else {
          paramAnnotatedMethodMap2.add(_constructMethod(localMethod));
        }
      }
    }
  }
  
  protected void _addMixOvers(Constructor<?> paramConstructor, AnnotatedConstructor paramAnnotatedConstructor, boolean paramBoolean)
  {
    Annotation[] arrayOfAnnotation = paramConstructor.getDeclaredAnnotations();
    int j = arrayOfAnnotation.length;
    int i = 0;
    while (i < j)
    {
      Annotation localAnnotation = arrayOfAnnotation[i];
      if (_annotationIntrospector.isHandled(localAnnotation)) {
        paramAnnotatedConstructor.addOrOverride(localAnnotation);
      }
      i += 1;
    }
    if (paramBoolean)
    {
      paramConstructor = paramConstructor.getParameterAnnotations();
      i = 0;
      int k = paramConstructor.length;
      while (i < k)
      {
        arrayOfAnnotation = paramConstructor[i];
        int m = arrayOfAnnotation.length;
        j = 0;
        while (j < m)
        {
          paramAnnotatedConstructor.addOrOverrideParam(i, arrayOfAnnotation[j]);
          j += 1;
        }
        i += 1;
      }
    }
  }
  
  protected void _addMixOvers(Method paramMethod, AnnotatedMethod paramAnnotatedMethod, boolean paramBoolean)
  {
    Annotation[] arrayOfAnnotation = paramMethod.getDeclaredAnnotations();
    int j = arrayOfAnnotation.length;
    int i = 0;
    while (i < j)
    {
      Annotation localAnnotation = arrayOfAnnotation[i];
      if (_annotationIntrospector.isHandled(localAnnotation)) {
        paramAnnotatedMethod.addOrOverride(localAnnotation);
      }
      i += 1;
    }
    if (paramBoolean)
    {
      paramMethod = paramMethod.getParameterAnnotations();
      i = 0;
      int k = paramMethod.length;
      while (i < k)
      {
        arrayOfAnnotation = paramMethod[i];
        int m = arrayOfAnnotation.length;
        j = 0;
        while (j < m)
        {
          paramAnnotatedMethod.addOrOverrideParam(i, arrayOfAnnotation[j]);
          j += 1;
        }
        i += 1;
      }
    }
  }
  
  protected void _addMixUnders(Method paramMethod, AnnotatedMethod paramAnnotatedMethod)
  {
    paramMethod = paramMethod.getDeclaredAnnotations();
    int j = paramMethod.length;
    int i = 0;
    while (i < j)
    {
      Annotation localAnnotation = paramMethod[i];
      if (_annotationIntrospector.isHandled(localAnnotation)) {
        paramAnnotatedMethod.addIfNotPresent(localAnnotation);
      }
      i += 1;
    }
  }
  
  protected AnnotationMap _collectRelevantAnnotations(Annotation[] paramArrayOfAnnotation)
  {
    AnnotationMap localAnnotationMap = new AnnotationMap();
    if (paramArrayOfAnnotation != null)
    {
      int j = paramArrayOfAnnotation.length;
      int i = 0;
      while (i < j)
      {
        Annotation localAnnotation = paramArrayOfAnnotation[i];
        if (_annotationIntrospector.isHandled(localAnnotation)) {
          localAnnotationMap.add(localAnnotation);
        }
        i += 1;
      }
    }
    return localAnnotationMap;
  }
  
  protected AnnotationMap[] _collectRelevantAnnotations(Annotation[][] paramArrayOfAnnotation)
  {
    int j = paramArrayOfAnnotation.length;
    AnnotationMap[] arrayOfAnnotationMap = new AnnotationMap[j];
    int i = 0;
    while (i < j)
    {
      arrayOfAnnotationMap[i] = _collectRelevantAnnotations(paramArrayOfAnnotation[i]);
      i += 1;
    }
    return arrayOfAnnotationMap;
  }
  
  protected AnnotatedConstructor _constructConstructor(Constructor<?> paramConstructor, boolean paramBoolean)
  {
    if (_annotationIntrospector == null) {
      return new AnnotatedConstructor(paramConstructor, _emptyAnnotationMap(), _emptyAnnotationMaps(paramConstructor.getParameterTypes().length));
    }
    AnnotationMap localAnnotationMap = _collectRelevantAnnotations(paramConstructor.getDeclaredAnnotations());
    if (paramBoolean) {}
    for (AnnotationMap[] arrayOfAnnotationMap = null;; arrayOfAnnotationMap = _collectRelevantAnnotations(paramConstructor.getParameterAnnotations())) {
      return new AnnotatedConstructor(paramConstructor, localAnnotationMap, arrayOfAnnotationMap);
    }
  }
  
  protected AnnotatedMethod _constructCreatorMethod(Method paramMethod)
  {
    if (_annotationIntrospector == null) {
      return new AnnotatedMethod(paramMethod, _emptyAnnotationMap(), _emptyAnnotationMaps(paramMethod.getParameterTypes().length));
    }
    return new AnnotatedMethod(paramMethod, _collectRelevantAnnotations(paramMethod.getDeclaredAnnotations()), _collectRelevantAnnotations(paramMethod.getParameterAnnotations()));
  }
  
  protected AnnotatedField _constructField(Field paramField)
  {
    if (_annotationIntrospector == null) {
      return new AnnotatedField(paramField, _emptyAnnotationMap());
    }
    return new AnnotatedField(paramField, _collectRelevantAnnotations(paramField.getDeclaredAnnotations()));
  }
  
  protected AnnotatedMethod _constructMethod(Method paramMethod)
  {
    if (_annotationIntrospector == null) {
      return new AnnotatedMethod(paramMethod, _emptyAnnotationMap(), null);
    }
    return new AnnotatedMethod(paramMethod, _collectRelevantAnnotations(paramMethod.getDeclaredAnnotations()), null);
  }
  
  protected boolean _isIncludableMethod(Method paramMethod, MethodFilter paramMethodFilter)
  {
    if ((paramMethodFilter != null) && (!paramMethodFilter.includeMethod(paramMethod))) {}
    while ((paramMethod.isSynthetic()) || (paramMethod.isBridge())) {
      return false;
    }
    return true;
  }
  
  public Iterable<AnnotatedField> fields()
  {
    if (_fields == null) {
      return Collections.emptyList();
    }
    return _fields;
  }
  
  public AnnotatedMethod findMethod(String paramString, Class<?>[] paramArrayOfClass)
  {
    return _memberMethods.find(paramString, paramArrayOfClass);
  }
  
  public Class<?> getAnnotated()
  {
    return _class;
  }
  
  public <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    if (_classAnnotations == null) {
      return null;
    }
    return _classAnnotations.get(paramClass);
  }
  
  public Annotations getAnnotations()
  {
    return _classAnnotations;
  }
  
  public List<AnnotatedConstructor> getConstructors()
  {
    if (_constructors == null) {
      return Collections.emptyList();
    }
    return _constructors;
  }
  
  public AnnotatedConstructor getDefaultConstructor()
  {
    return _defaultConstructor;
  }
  
  public int getFieldCount()
  {
    if (_fields == null) {
      return 0;
    }
    return _fields.size();
  }
  
  public Type getGenericType()
  {
    return _class;
  }
  
  public int getMemberMethodCount()
  {
    return _memberMethods.size();
  }
  
  public int getModifiers()
  {
    return _class.getModifiers();
  }
  
  public String getName()
  {
    return _class.getName();
  }
  
  public Class<?> getRawType()
  {
    return _class;
  }
  
  public List<AnnotatedMethod> getStaticMethods()
  {
    if (_creatorMethods == null) {
      return Collections.emptyList();
    }
    return _creatorMethods;
  }
  
  public boolean hasAnnotations()
  {
    return _classAnnotations.size() > 0;
  }
  
  public Iterable<AnnotatedField> ignoredFields()
  {
    if (_ignoredFields == null) {
      return Collections.emptyList();
    }
    return _ignoredFields;
  }
  
  public Iterable<AnnotatedMethod> ignoredMemberMethods()
  {
    if (_ignoredMethods == null) {
      return Collections.emptyList();
    }
    return _ignoredMethods;
  }
  
  public Iterable<AnnotatedMethod> memberMethods()
  {
    return _memberMethods;
  }
  
  protected void resolveClassAnnotations()
  {
    _classAnnotations = new AnnotationMap();
    if (_primaryMixIn != null) {
      _addClassMixIns(_classAnnotations, _class, _primaryMixIn);
    }
    Object localObject1 = _class.getDeclaredAnnotations();
    int j = localObject1.length;
    int i = 0;
    Object localObject2;
    while (i < j)
    {
      localObject2 = localObject1[i];
      if (_annotationIntrospector.isHandled((Annotation)localObject2)) {
        _classAnnotations.addIfNotPresent((Annotation)localObject2);
      }
      i += 1;
    }
    localObject1 = _superTypes.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Class)((Iterator)localObject1).next();
      _addClassMixIns(_classAnnotations, (Class)localObject2);
      localObject2 = ((Class)localObject2).getDeclaredAnnotations();
      j = localObject2.length;
      i = 0;
      while (i < j)
      {
        Annotation localAnnotation = localObject2[i];
        if (_annotationIntrospector.isHandled(localAnnotation)) {
          _classAnnotations.addIfNotPresent(localAnnotation);
        }
        i += 1;
      }
    }
    _addClassMixIns(_classAnnotations, Object.class);
  }
  
  public void resolveCreators(boolean paramBoolean)
  {
    _constructors = null;
    Object localObject = _class.getDeclaredConstructors();
    int j = localObject.length;
    int i = 0;
    Constructor localConstructor;
    if (i < j)
    {
      localConstructor = localObject[i];
      switch (localConstructor.getParameterTypes().length)
      {
      default: 
        if (paramBoolean)
        {
          if (_constructors == null) {
            _constructors = new ArrayList();
          }
          _constructors.add(_constructConstructor(localConstructor, false));
        }
        break;
      }
      for (;;)
      {
        i += 1;
        break;
        _defaultConstructor = _constructConstructor(localConstructor, true);
      }
    }
    if ((_primaryMixIn != null) && ((_defaultConstructor != null) || (_constructors != null))) {
      _addConstructorMixIns(_primaryMixIn);
    }
    if (_annotationIntrospector != null)
    {
      if ((_defaultConstructor != null) && (_annotationIntrospector.isIgnorableConstructor(_defaultConstructor))) {
        _defaultConstructor = null;
      }
      if (_constructors != null)
      {
        i = _constructors.size();
        for (;;)
        {
          j = i - 1;
          if (j < 0) {
            break;
          }
          i = j;
          if (_annotationIntrospector.isIgnorableConstructor((AnnotatedConstructor)_constructors.get(j)))
          {
            _constructors.remove(j);
            i = j;
          }
        }
      }
    }
    _creatorMethods = null;
    if (paramBoolean)
    {
      localObject = _class.getDeclaredMethods();
      j = localObject.length;
      i = 0;
      if (i < j)
      {
        localConstructor = localObject[i];
        if (!Modifier.isStatic(localConstructor.getModifiers())) {}
        for (;;)
        {
          i += 1;
          break;
          if (localConstructor.getParameterTypes().length >= 1)
          {
            if (_creatorMethods == null) {
              _creatorMethods = new ArrayList();
            }
            _creatorMethods.add(_constructCreatorMethod(localConstructor));
          }
        }
      }
      if ((_primaryMixIn != null) && (_creatorMethods != null)) {
        _addFactoryMixIns(_primaryMixIn);
      }
      if ((_annotationIntrospector != null) && (_creatorMethods != null))
      {
        i = _creatorMethods.size();
        for (;;)
        {
          j = i - 1;
          if (j < 0) {
            break;
          }
          i = j;
          if (_annotationIntrospector.isIgnorableMethod((AnnotatedMethod)_creatorMethods.get(j)))
          {
            _creatorMethods.remove(j);
            i = j;
          }
        }
      }
    }
  }
  
  public void resolveFields(boolean paramBoolean)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    _addFields(localLinkedHashMap, _class);
    if (_annotationIntrospector != null)
    {
      Iterator localIterator = localLinkedHashMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        AnnotatedField localAnnotatedField = (AnnotatedField)((Map.Entry)localIterator.next()).getValue();
        if (_annotationIntrospector.isIgnorableField(localAnnotatedField))
        {
          localIterator.remove();
          if (paramBoolean) {
            _ignoredFields = ArrayBuilders.addToList(_ignoredFields, localAnnotatedField);
          }
        }
      }
    }
    if (localLinkedHashMap.isEmpty())
    {
      _fields = Collections.emptyList();
      return;
    }
    _fields = new ArrayList(localLinkedHashMap.size());
    _fields.addAll(localLinkedHashMap.values());
  }
  
  public void resolveMemberMethods(MethodFilter paramMethodFilter, boolean paramBoolean)
  {
    _memberMethods = new AnnotatedMethodMap();
    Object localObject2 = new AnnotatedMethodMap();
    _addMemberMethods(_class, paramMethodFilter, _memberMethods, _primaryMixIn, (AnnotatedMethodMap)localObject2);
    Iterator localIterator = _superTypes.iterator();
    Object localObject1;
    if (localIterator.hasNext())
    {
      Class localClass = (Class)localIterator.next();
      if (_mixInResolver == null) {}
      for (localObject1 = null;; localObject1 = _mixInResolver.findMixInClassFor(localClass))
      {
        _addMemberMethods(localClass, paramMethodFilter, _memberMethods, (Class)localObject1, (AnnotatedMethodMap)localObject2);
        break;
      }
    }
    if (_mixInResolver != null)
    {
      localObject1 = _mixInResolver.findMixInClassFor(Object.class);
      if (localObject1 != null) {
        _addMethodMixIns(paramMethodFilter, _memberMethods, (Class)localObject1, (AnnotatedMethodMap)localObject2);
      }
    }
    if (_annotationIntrospector != null)
    {
      if (!((AnnotatedMethodMap)localObject2).isEmpty())
      {
        paramMethodFilter = ((AnnotatedMethodMap)localObject2).iterator();
        while (paramMethodFilter.hasNext())
        {
          localObject1 = (AnnotatedMethod)paramMethodFilter.next();
          try
          {
            localObject2 = Object.class.getDeclaredMethod(((AnnotatedMethod)localObject1).getName(), ((AnnotatedMethod)localObject1).getParameterClasses());
            if (localObject2 != null)
            {
              localObject2 = _constructMethod((Method)localObject2);
              _addMixOvers(((AnnotatedMethod)localObject1).getAnnotated(), (AnnotatedMethod)localObject2, false);
              _memberMethods.add((AnnotatedMethod)localObject2);
            }
          }
          catch (Exception localException) {}
        }
      }
      paramMethodFilter = _memberMethods.iterator();
      while (paramMethodFilter.hasNext())
      {
        AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)paramMethodFilter.next();
        if (_annotationIntrospector.isIgnorableMethod(localAnnotatedMethod))
        {
          paramMethodFilter.remove();
          if (paramBoolean) {
            _ignoredMethods = ArrayBuilders.addToList(_ignoredMethods, localAnnotatedMethod);
          }
        }
      }
    }
  }
  
  public String toString()
  {
    return "[AnnotedClass " + _class.getName() + "]";
  }
}
