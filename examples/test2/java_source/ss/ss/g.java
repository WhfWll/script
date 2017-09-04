package ss.ss;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class g<T>
{
  private final Class<?> a;
  private final String b;
  private final Class[] c;
  
  public g(Class<?> paramClass, String paramString, Class... paramVarArgs)
  {
    a = paramClass;
    b = paramString;
    c = paramVarArgs;
  }
  
  private Method a(Class<?> paramClass)
  {
    if (b != null)
    {
      paramClass = a(paramClass, b, c);
      if ((paramClass == null) || (a == null) || (a.isAssignableFrom(paramClass.getReturnType()))) {}
    }
    else
    {
      return null;
    }
    return paramClass;
  }
  
  private static Method a(Class<?> paramClass, String paramString, Class[] paramArrayOfClass)
  {
    try
    {
      paramClass = paramClass.getMethod(paramString, paramArrayOfClass);
      int i;
      return paramClass;
    }
    catch (NoSuchMethodException paramClass)
    {
      try
      {
        i = paramClass.getModifiers();
        if ((i & 0x1) != 0) {
          return paramClass;
        }
        return null;
      }
      catch (NoSuchMethodException paramString)
      {
        return paramClass;
      }
      paramClass = paramClass;
      return null;
    }
  }
  
  public Object a(T paramT, Object... paramVarArgs)
    throws InvocationTargetException
  {
    Method localMethod = a(paramT.getClass());
    if (localMethod == null) {
      return null;
    }
    try
    {
      paramT = localMethod.invoke(paramT, paramVarArgs);
      return paramT;
    }
    catch (IllegalAccessException paramT) {}
    return null;
  }
  
  public boolean a(T paramT)
  {
    return a(paramT.getClass()) != null;
  }
  
  public Object b(T paramT, Object... paramVarArgs)
  {
    try
    {
      paramT = a(paramT, paramVarArgs);
      return paramT;
    }
    catch (InvocationTargetException paramT)
    {
      paramT = paramT.getTargetException();
      if ((paramT instanceof RuntimeException)) {
        throw ((RuntimeException)paramT);
      }
      paramVarArgs = new AssertionError("Unexpected exception");
      paramVarArgs.initCause(paramT);
      throw paramVarArgs;
    }
  }
  
  public Object c(T paramT, Object... paramVarArgs)
    throws InvocationTargetException
  {
    Method localMethod = a(paramT.getClass());
    if (localMethod == null) {
      throw new AssertionError("Method " + b + " not supported for object " + paramT);
    }
    try
    {
      paramT = localMethod.invoke(paramT, paramVarArgs);
      return paramT;
    }
    catch (IllegalAccessException paramT)
    {
      paramVarArgs = new AssertionError("Unexpectedly could not call: " + localMethod);
      paramVarArgs.initCause(paramT);
      throw paramVarArgs;
    }
  }
  
  public Object d(T paramT, Object... paramVarArgs)
  {
    try
    {
      paramT = c(paramT, paramVarArgs);
      return paramT;
    }
    catch (InvocationTargetException paramT)
    {
      paramT = paramT.getTargetException();
      if ((paramT instanceof RuntimeException)) {
        throw ((RuntimeException)paramT);
      }
      paramVarArgs = new AssertionError("Unexpected exception");
      paramVarArgs.initCause(paramT);
      throw paramVarArgs;
    }
  }
}
