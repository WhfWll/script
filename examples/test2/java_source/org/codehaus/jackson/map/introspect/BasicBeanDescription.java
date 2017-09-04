package org.codehaus.jackson.map.introspect;

import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.AnnotationIntrospector.ReferenceProperty;
import org.codehaus.jackson.map.BeanDescription;
import org.codehaus.jackson.map.MapperConfig;
import org.codehaus.jackson.map.PropertyNamingStrategy;
import org.codehaus.jackson.map.annotate.JsonSerialize.Inclusion;
import org.codehaus.jackson.map.type.TypeBindings;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.type.JavaType;

public class BasicBeanDescription
  extends BeanDescription
{
  protected final AnnotationIntrospector _annotationIntrospector;
  protected TypeBindings _bindings;
  protected final AnnotatedClass _classInfo;
  protected final MapperConfig<?> _config;
  
  public BasicBeanDescription(MapperConfig<?> paramMapperConfig, JavaType paramJavaType, AnnotatedClass paramAnnotatedClass)
  {
    super(paramJavaType);
    _config = paramMapperConfig;
    _annotationIntrospector = paramMapperConfig.getAnnotationIntrospector();
    _classInfo = paramAnnotatedClass;
  }
  
  public static String descFor(AnnotatedElement paramAnnotatedElement)
  {
    if ((paramAnnotatedElement instanceof Class)) {
      return "class " + ((Class)paramAnnotatedElement).getName();
    }
    if ((paramAnnotatedElement instanceof Method))
    {
      paramAnnotatedElement = (Method)paramAnnotatedElement;
      return "method " + paramAnnotatedElement.getName() + " (from class " + paramAnnotatedElement.getDeclaringClass().getName() + ")";
    }
    if ((paramAnnotatedElement instanceof Constructor))
    {
      paramAnnotatedElement = (Constructor)paramAnnotatedElement;
      return "constructor() (from class " + paramAnnotatedElement.getDeclaringClass().getName() + ")";
    }
    return "unknown type [" + paramAnnotatedElement.getClass() + "]";
  }
  
  public static String manglePropertyName(String paramString)
  {
    int j = paramString.length();
    if (j == 0)
    {
      paramString = null;
      return paramString;
    }
    Object localObject1 = null;
    int i = 0;
    for (;;)
    {
      char c2;
      if (i < j)
      {
        char c1 = paramString.charAt(i);
        c2 = Character.toLowerCase(c1);
        if (c1 != c2) {}
      }
      else
      {
        if (localObject1 == null) {
          break;
        }
        return localObject1.toString();
      }
      Object localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new StringBuilder(paramString);
      }
      ((StringBuilder)localObject2).setCharAt(i, c2);
      i += 1;
      localObject1 = localObject2;
    }
  }
  
  public LinkedHashMap<String, AnnotatedField> _findPropertyFields(VisibilityChecker<?> paramVisibilityChecker, Collection<String> paramCollection, boolean paramBoolean)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    PropertyNamingStrategy localPropertyNamingStrategy = _config.getPropertyNamingStrategy();
    Iterator localIterator = _classInfo.fields().iterator();
    label69:
    label236:
    label279:
    while (localIterator.hasNext())
    {
      AnnotatedField localAnnotatedField = (AnnotatedField)localIterator.next();
      Object localObject2;
      Object localObject1;
      if (paramBoolean)
      {
        localObject2 = _annotationIntrospector.findSerializablePropertyName(localAnnotatedField);
        if (localObject2 == null) {
          break label236;
        }
        localObject1 = localObject2;
        if (((String)localObject2).length() == 0)
        {
          localObject2 = localAnnotatedField.getName();
          localObject1 = localObject2;
          if (localPropertyNamingStrategy != null) {
            localObject1 = localPropertyNamingStrategy.nameForField(_config, localAnnotatedField, (String)localObject2);
          }
        }
      }
      for (;;)
      {
        if ((paramCollection != null) && (paramCollection.contains(localObject1))) {
          break label279;
        }
        localObject2 = (AnnotatedField)localLinkedHashMap.put(localObject1, localAnnotatedField);
        if ((localObject2 == null) || (((AnnotatedField)localObject2).getDeclaringClass() != localAnnotatedField.getDeclaringClass())) {
          break;
        }
        paramVisibilityChecker = ((AnnotatedField)localObject2).getFullName();
        paramCollection = localAnnotatedField.getFullName();
        throw new IllegalArgumentException("Multiple fields representing property \"" + (String)localObject1 + "\": " + paramVisibilityChecker + " vs " + paramCollection);
        localObject2 = _annotationIntrospector.findDeserializablePropertyName(localAnnotatedField);
        break label69;
        if (!paramVisibilityChecker.isFieldVisible(localAnnotatedField)) {
          break;
        }
        localObject2 = localAnnotatedField.getName();
        localObject1 = localObject2;
        if (localPropertyNamingStrategy != null) {
          localObject1 = localPropertyNamingStrategy.nameForField(_config, localAnnotatedField, (String)localObject2);
        }
      }
    }
    return localLinkedHashMap;
  }
  
  public TypeBindings bindingsForBeanType()
  {
    if (_bindings == null) {
      _bindings = new TypeBindings(_config.getTypeFactory(), _type);
    }
    return _bindings;
  }
  
  public AnnotatedMethod findAnyGetter()
    throws IllegalArgumentException
  {
    Object localObject = null;
    Iterator localIterator = _classInfo.memberMethods().iterator();
    while (localIterator.hasNext())
    {
      AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)localIterator.next();
      if (_annotationIntrospector.hasAnyGetterAnnotation(localAnnotatedMethod))
      {
        if (localObject != null) {
          throw new IllegalArgumentException("Multiple methods with 'any-getter' annotation (" + localObject.getName() + "(), " + localAnnotatedMethod.getName() + ")");
        }
        if (!Map.class.isAssignableFrom(localAnnotatedMethod.getRawType())) {
          throw new IllegalArgumentException("Invalid 'any-getter' annotation on method " + localAnnotatedMethod.getName() + "(): return type is not instance of java.util.Map");
        }
        localObject = localAnnotatedMethod;
      }
    }
    return localObject;
  }
  
  public AnnotatedMethod findAnySetter()
    throws IllegalArgumentException
  {
    Object localObject = null;
    Iterator localIterator = _classInfo.memberMethods().iterator();
    while (localIterator.hasNext())
    {
      AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)localIterator.next();
      if (_annotationIntrospector.hasAnySetterAnnotation(localAnnotatedMethod))
      {
        if (localObject != null) {
          throw new IllegalArgumentException("Multiple methods with 'any-setter' annotation (" + ((AnnotatedMethod)localObject).getName() + "(), " + localAnnotatedMethod.getName() + ")");
        }
        int i = localAnnotatedMethod.getParameterCount();
        if (i != 2) {
          throw new IllegalArgumentException("Invalid 'any-setter' annotation on method " + localAnnotatedMethod.getName() + "(): takes " + i + " parameters, should take 2");
        }
        localObject = localAnnotatedMethod.getParameterClass(0);
        if ((localObject != String.class) && (localObject != Object.class)) {
          throw new IllegalArgumentException("Invalid 'any-setter' annotation on method " + localAnnotatedMethod.getName() + "(): first argument not of type String or Object, but " + ((Class)localObject).getName());
        }
        localObject = localAnnotatedMethod;
      }
    }
    return localObject;
  }
  
  public Map<String, AnnotatedMember> findBackReferenceProperties()
  {
    Object localObject1 = null;
    Iterator localIterator = _classInfo.memberMethods().iterator();
    Object localObject3;
    AnnotationIntrospector.ReferenceProperty localReferenceProperty;
    Object localObject2;
    while (localIterator.hasNext())
    {
      localObject3 = (AnnotatedMethod)localIterator.next();
      if (((AnnotatedMethod)localObject3).getParameterCount() == 1)
      {
        localReferenceProperty = _annotationIntrospector.findReferenceType((AnnotatedMember)localObject3);
        if ((localReferenceProperty != null) && (localReferenceProperty.isBackReference()))
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new HashMap();
          }
          localObject1 = localObject2;
          if (((HashMap)localObject2).put(localReferenceProperty.getName(), localObject3) != null) {
            throw new IllegalArgumentException("Multiple back-reference properties with name '" + localReferenceProperty.getName() + "'");
          }
        }
      }
    }
    localIterator = _classInfo.fields().iterator();
    while (localIterator.hasNext())
    {
      localObject3 = (AnnotatedField)localIterator.next();
      localReferenceProperty = _annotationIntrospector.findReferenceType((AnnotatedMember)localObject3);
      if ((localReferenceProperty != null) && (localReferenceProperty.isBackReference()))
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new HashMap();
        }
        localObject1 = localObject2;
        if (((HashMap)localObject2).put(localReferenceProperty.getName(), localObject3) != null) {
          throw new IllegalArgumentException("Multiple back-reference properties with name '" + localReferenceProperty.getName() + "'");
        }
      }
    }
    return localObject1;
  }
  
  public List<String> findCreatorPropertyNames()
  {
    Object localObject1 = null;
    int i = 0;
    while (i < 2)
    {
      if (i == 0) {}
      for (localObject2 = getConstructors();; localObject2 = getFactoryMethods())
      {
        Iterator localIterator = ((List)localObject2).iterator();
        AnnotatedWithParams localAnnotatedWithParams;
        int k;
        String str;
        do
        {
          do
          {
            if (!localIterator.hasNext()) {
              break;
            }
            localAnnotatedWithParams = (AnnotatedWithParams)localIterator.next();
            k = localAnnotatedWithParams.getParameterCount();
          } while (k < 1);
          str = _annotationIntrospector.findPropertyNameForParam(localAnnotatedWithParams.getParameter(0));
        } while (str == null);
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new ArrayList();
        }
        ((List)localObject2).add(str);
        int j = 1;
        for (;;)
        {
          localObject1 = localObject2;
          if (j >= k) {
            break;
          }
          ((List)localObject2).add(_annotationIntrospector.findPropertyNameForParam(localAnnotatedWithParams.getParameter(j)));
          j += 1;
        }
      }
      i += 1;
    }
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = Collections.emptyList();
    }
    return localObject2;
  }
  
  public Constructor<?> findDefaultConstructor()
  {
    AnnotatedConstructor localAnnotatedConstructor = _classInfo.getDefaultConstructor();
    if (localAnnotatedConstructor == null) {
      return null;
    }
    return localAnnotatedConstructor.getAnnotated();
  }
  
  public LinkedHashMap<String, AnnotatedField> findDeserializableFields(VisibilityChecker<?> paramVisibilityChecker, Collection<String> paramCollection)
  {
    return _findPropertyFields(paramVisibilityChecker, paramCollection, false);
  }
  
  public Method findFactoryMethod(Class<?>... paramVarArgs)
  {
    Iterator localIterator = _classInfo.getStaticMethods().iterator();
    while (localIterator.hasNext())
    {
      AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)localIterator.next();
      if (isFactoryMethod(localAnnotatedMethod))
      {
        Class localClass = localAnnotatedMethod.getParameterClass(0);
        int j = paramVarArgs.length;
        int i = 0;
        while (i < j)
        {
          if (localClass.isAssignableFrom(paramVarArgs[i])) {
            return localAnnotatedMethod.getAnnotated();
          }
          i += 1;
        }
      }
    }
    return null;
  }
  
  public LinkedHashMap<String, AnnotatedMethod> findGetters(VisibilityChecker<?> paramVisibilityChecker, Collection<String> paramCollection)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    PropertyNamingStrategy localPropertyNamingStrategy = _config.getPropertyNamingStrategy();
    Iterator localIterator = _classInfo.memberMethods().iterator();
    label137:
    label305:
    label326:
    while (localIterator.hasNext())
    {
      AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)localIterator.next();
      if (localAnnotatedMethod.getParameterCount() == 0)
      {
        Object localObject2 = _annotationIntrospector.findGettablePropertyName(localAnnotatedMethod);
        Object localObject1;
        if (localObject2 != null)
        {
          localObject1 = localObject2;
          if (((String)localObject2).length() == 0)
          {
            localObject1 = okNameForAnyGetter(localAnnotatedMethod, localAnnotatedMethod.getName());
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = localAnnotatedMethod.getName();
            }
            localObject1 = localObject2;
            if (localPropertyNamingStrategy != null) {
              localObject1 = localPropertyNamingStrategy.nameForGetterMethod(_config, localAnnotatedMethod, (String)localObject2);
            }
          }
          if ((paramCollection == null) || (!paramCollection.contains(localObject1)))
          {
            localObject2 = (AnnotatedMethod)localLinkedHashMap.put(localObject1, localAnnotatedMethod);
            if (localObject2 == null) {
              continue;
            }
            paramVisibilityChecker = ((AnnotatedMethod)localObject2).getFullName();
            paramCollection = localAnnotatedMethod.getFullName();
            throw new IllegalArgumentException("Conflicting getter definitions for property \"" + (String)localObject1 + "\": " + paramVisibilityChecker + " vs " + paramCollection);
          }
        }
        else
        {
          localObject1 = localAnnotatedMethod.getName();
          if (!((String)localObject1).startsWith("get")) {
            break label305;
          }
          if (!paramVisibilityChecker.isGetterVisible(localAnnotatedMethod)) {
            continue;
          }
        }
        for (localObject2 = okNameForGetter(localAnnotatedMethod, (String)localObject1);; localObject2 = okNameForIsGetter(localAnnotatedMethod, (String)localObject1))
        {
          if ((localObject2 == null) || (_annotationIntrospector.hasAnyGetterAnnotation(localAnnotatedMethod))) {
            break label326;
          }
          localObject1 = localObject2;
          if (localPropertyNamingStrategy == null) {
            break label137;
          }
          localObject1 = localPropertyNamingStrategy.nameForGetterMethod(_config, localAnnotatedMethod, (String)localObject2);
          break label137;
          break;
          if (!paramVisibilityChecker.isIsGetterVisible(localAnnotatedMethod)) {
            break;
          }
        }
      }
    }
    return localLinkedHashMap;
  }
  
  public AnnotatedMethod findJsonValueMethod()
  {
    Object localObject = null;
    Iterator localIterator = _classInfo.memberMethods().iterator();
    while (localIterator.hasNext())
    {
      AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)localIterator.next();
      if (_annotationIntrospector.hasAsValueAnnotation(localAnnotatedMethod))
      {
        if (localObject != null) {
          throw new IllegalArgumentException("Multiple methods with active 'as-value' annotation (" + localObject.getName() + "(), " + localAnnotatedMethod.getName() + ")");
        }
        if (!ClassUtil.hasGetterSignature(localAnnotatedMethod.getAnnotated())) {
          throw new IllegalArgumentException("Method " + localAnnotatedMethod.getName() + "() marked with an 'as-value' annotation, but does not have valid getter signature (non-static, takes no args, returns a value)");
        }
        localObject = localAnnotatedMethod;
      }
    }
    return localObject;
  }
  
  public AnnotatedMethod findMethod(String paramString, Class<?>[] paramArrayOfClass)
  {
    return _classInfo.findMethod(paramString, paramArrayOfClass);
  }
  
  public LinkedHashMap<String, AnnotatedField> findSerializableFields(VisibilityChecker<?> paramVisibilityChecker, Collection<String> paramCollection)
  {
    return _findPropertyFields(paramVisibilityChecker, paramCollection, true);
  }
  
  public JsonSerialize.Inclusion findSerializationInclusion(JsonSerialize.Inclusion paramInclusion)
  {
    return _annotationIntrospector.findSerializationInclusion(_classInfo, paramInclusion);
  }
  
  public LinkedHashMap<String, AnnotatedMethod> findSetters(VisibilityChecker<?> paramVisibilityChecker)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    PropertyNamingStrategy localPropertyNamingStrategy = _config.getPropertyNamingStrategy();
    Iterator localIterator = _classInfo.memberMethods().iterator();
    while (localIterator.hasNext())
    {
      AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)localIterator.next();
      if (localAnnotatedMethod.getParameterCount() == 1)
      {
        Object localObject2 = _annotationIntrospector.findSettablePropertyName(localAnnotatedMethod);
        Object localObject1;
        if (localObject2 != null)
        {
          localObject1 = localObject2;
          if (((String)localObject2).length() == 0)
          {
            localObject1 = okNameForSetter(localAnnotatedMethod);
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = localAnnotatedMethod.getName();
            }
            localObject1 = localObject2;
            if (localPropertyNamingStrategy != null) {
              localObject1 = localPropertyNamingStrategy.nameForSetterMethod(_config, localAnnotatedMethod, (String)localObject2);
            }
          }
        }
        for (;;)
        {
          localObject2 = (AnnotatedMethod)localLinkedHashMap.put(localObject1, localAnnotatedMethod);
          if (localObject2 == null) {
            break;
          }
          if (((AnnotatedMethod)localObject2).getDeclaringClass() != localAnnotatedMethod.getDeclaringClass()) {
            break label255;
          }
          paramVisibilityChecker = ((AnnotatedMethod)localObject2).getFullName();
          localObject2 = localAnnotatedMethod.getFullName();
          throw new IllegalArgumentException("Conflicting setter definitions for property \"" + (String)localObject1 + "\": " + paramVisibilityChecker + " vs " + (String)localObject2);
          if (!paramVisibilityChecker.isSetterVisible(localAnnotatedMethod)) {
            break;
          }
          localObject2 = okNameForSetter(localAnnotatedMethod);
          if (localObject2 == null) {
            break;
          }
          localObject1 = localObject2;
          if (localPropertyNamingStrategy != null) {
            localObject1 = localPropertyNamingStrategy.nameForSetterMethod(_config, localAnnotatedMethod, (String)localObject2);
          }
        }
        label255:
        localLinkedHashMap.put(localObject1, localObject2);
      }
    }
    return localLinkedHashMap;
  }
  
  public Constructor<?> findSingleArgConstructor(Class<?>... paramVarArgs)
  {
    Iterator localIterator = _classInfo.getConstructors().iterator();
    while (localIterator.hasNext())
    {
      AnnotatedConstructor localAnnotatedConstructor = (AnnotatedConstructor)localIterator.next();
      if (localAnnotatedConstructor.getParameterCount() == 1)
      {
        Class localClass = localAnnotatedConstructor.getParameterClass(0);
        int j = paramVarArgs.length;
        int i = 0;
        while (i < j)
        {
          if (paramVarArgs[i] == localClass) {
            return localAnnotatedConstructor.getAnnotated();
          }
          i += 1;
        }
      }
    }
    return null;
  }
  
  public Annotations getClassAnnotations()
  {
    return _classInfo.getAnnotations();
  }
  
  public AnnotatedClass getClassInfo()
  {
    return _classInfo;
  }
  
  public List<AnnotatedConstructor> getConstructors()
  {
    return _classInfo.getConstructors();
  }
  
  public List<AnnotatedMethod> getFactoryMethods()
  {
    Object localObject = _classInfo.getStaticMethods();
    if (((List)localObject).isEmpty()) {
      return localObject;
    }
    ArrayList localArrayList = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)((Iterator)localObject).next();
      if (isFactoryMethod(localAnnotatedMethod)) {
        localArrayList.add(localAnnotatedMethod);
      }
    }
    return localArrayList;
  }
  
  public boolean hasKnownClassAnnotations()
  {
    return _classInfo.hasAnnotations();
  }
  
  public Object instantiateBean(boolean paramBoolean)
  {
    Object localObject = _classInfo.getDefaultConstructor();
    if (localObject == null) {
      return null;
    }
    if (paramBoolean) {
      ((AnnotatedConstructor)localObject).fixAccess();
    }
    try
    {
      localObject = ((AnnotatedConstructor)localObject).getAnnotated().newInstance(new Object[0]);
      return localObject;
    }
    catch (Exception localException)
    {
      Throwable localThrowable;
      while (localException.getCause() != null) {
        localThrowable = localException.getCause();
      }
      if ((localThrowable instanceof Error)) {
        throw ((Error)localThrowable);
      }
      if ((localThrowable instanceof RuntimeException)) {
        throw ((RuntimeException)localThrowable);
      }
      throw new IllegalArgumentException("Failed to instantiate bean of type " + _classInfo.getAnnotated().getName() + ": (" + localThrowable.getClass().getName() + ") " + localThrowable.getMessage(), localThrowable);
    }
  }
  
  protected boolean isCglibGetCallbacks(AnnotatedMethod paramAnnotatedMethod)
  {
    paramAnnotatedMethod = paramAnnotatedMethod.getRawType();
    if ((paramAnnotatedMethod == null) || (!paramAnnotatedMethod.isArray())) {}
    do
    {
      do
      {
        return false;
        paramAnnotatedMethod = paramAnnotatedMethod.getComponentType().getPackage();
      } while (paramAnnotatedMethod == null);
      paramAnnotatedMethod = paramAnnotatedMethod.getName();
    } while ((!paramAnnotatedMethod.startsWith("net.sf.cglib")) && (!paramAnnotatedMethod.startsWith("org.hibernate.repackage.cglib")));
    return true;
  }
  
  protected boolean isFactoryMethod(AnnotatedMethod paramAnnotatedMethod)
  {
    Class localClass = paramAnnotatedMethod.getRawType();
    if (!getBeanClass().isAssignableFrom(localClass)) {}
    do
    {
      return false;
      if (_annotationIntrospector.hasCreatorAnnotation(paramAnnotatedMethod)) {
        return true;
      }
    } while (!"valueOf".equals(paramAnnotatedMethod.getName()));
    return true;
  }
  
  protected boolean isGroovyMetaClassGetter(AnnotatedMethod paramAnnotatedMethod)
  {
    paramAnnotatedMethod = paramAnnotatedMethod.getRawType();
    if ((paramAnnotatedMethod == null) || (paramAnnotatedMethod.isArray())) {}
    do
    {
      return false;
      paramAnnotatedMethod = paramAnnotatedMethod.getPackage();
    } while ((paramAnnotatedMethod == null) || (!paramAnnotatedMethod.getName().startsWith("groovy.lang")));
    return true;
  }
  
  protected boolean isGroovyMetaClassSetter(AnnotatedMethod paramAnnotatedMethod)
  {
    boolean bool2 = false;
    paramAnnotatedMethod = paramAnnotatedMethod.getParameterClass(0).getPackage();
    boolean bool1 = bool2;
    if (paramAnnotatedMethod != null)
    {
      bool1 = bool2;
      if (paramAnnotatedMethod.getName().startsWith("groovy.lang")) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  protected String mangleGetterName(Annotated paramAnnotated, String paramString)
  {
    return manglePropertyName(paramString);
  }
  
  protected String mangleSetterName(Annotated paramAnnotated, String paramString)
  {
    return manglePropertyName(paramString);
  }
  
  public String okNameForAnyGetter(AnnotatedMethod paramAnnotatedMethod, String paramString)
  {
    String str2 = okNameForIsGetter(paramAnnotatedMethod, paramString);
    String str1 = str2;
    if (str2 == null) {
      str1 = okNameForGetter(paramAnnotatedMethod, paramString);
    }
    return str1;
  }
  
  public String okNameForGetter(AnnotatedMethod paramAnnotatedMethod, String paramString)
  {
    if (paramString.startsWith("get"))
    {
      if (!"getCallbacks".equals(paramString)) {
        break label30;
      }
      if (!isCglibGetCallbacks(paramAnnotatedMethod)) {
        break label48;
      }
    }
    label30:
    while (("getMetaClass".equals(paramString)) && (isGroovyMetaClassGetter(paramAnnotatedMethod))) {
      return null;
    }
    label48:
    return mangleGetterName(paramAnnotatedMethod, paramString.substring(3));
  }
  
  public String okNameForIsGetter(AnnotatedMethod paramAnnotatedMethod, String paramString)
  {
    if (paramString.startsWith("is"))
    {
      Class localClass = paramAnnotatedMethod.getRawType();
      if ((localClass == Boolean.class) || (localClass == Boolean.TYPE)) {}
    }
    else
    {
      return null;
    }
    return mangleGetterName(paramAnnotatedMethod, paramString.substring(2));
  }
  
  public String okNameForSetter(AnnotatedMethod paramAnnotatedMethod)
  {
    String str = paramAnnotatedMethod.getName();
    if (str.startsWith("set"))
    {
      str = mangleSetterName(paramAnnotatedMethod, str.substring(3));
      if (str != null) {
        break label32;
      }
    }
    label32:
    while (("metaClass".equals(str)) && (isGroovyMetaClassSetter(paramAnnotatedMethod))) {
      return null;
    }
    return str;
  }
}
