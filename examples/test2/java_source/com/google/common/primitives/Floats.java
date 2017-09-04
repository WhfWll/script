package com.google.common.primitives;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

@GwtCompatible
public final class Floats
{
  static
  {
    JniLib.a(Floats.class, 917);
  }
  
  private Floats() {}
  
  public static List<Float> asList(float... paramVarArgs)
  {
    if (paramVarArgs.length == 0) {
      return Collections.emptyList();
    }
    return new FloatArrayAsList(paramVarArgs);
  }
  
  public static native int compare(float paramFloat1, float paramFloat2);
  
  public static float[] concat(float[]... paramVarArgs)
  {
    int j = 0;
    int k = paramVarArgs.length;
    int i = 0;
    while (i < k)
    {
      j += paramVarArgs[i].length;
      i += 1;
    }
    float[] arrayOfFloat1 = new float[j];
    j = 0;
    k = paramVarArgs.length;
    i = 0;
    while (i < k)
    {
      float[] arrayOfFloat2 = paramVarArgs[i];
      System.arraycopy(arrayOfFloat2, 0, arrayOfFloat1, j, arrayOfFloat2.length);
      j += arrayOfFloat2.length;
      i += 1;
    }
    return arrayOfFloat1;
  }
  
  public static native boolean contains(float[] paramArrayOfFloat, float paramFloat);
  
  private static native float[] copyOf(float[] paramArrayOfFloat, int paramInt);
  
  public static native float[] ensureCapacity(float[] paramArrayOfFloat, int paramInt1, int paramInt2);
  
  public static native int hashCode(float paramFloat);
  
  public static native int indexOf(float[] paramArrayOfFloat, float paramFloat);
  
  private static native int indexOf(float[] paramArrayOfFloat, float paramFloat, int paramInt1, int paramInt2);
  
  public static native int indexOf(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2);
  
  public static String join(String paramString, float... paramVarArgs)
  {
    Preconditions.checkNotNull(paramString);
    if (paramVarArgs.length == 0) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder(paramVarArgs.length * 12);
    localStringBuilder.append(paramVarArgs[0]);
    int i = 1;
    while (i < paramVarArgs.length)
    {
      localStringBuilder.append(paramString).append(paramVarArgs[i]);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static native int lastIndexOf(float[] paramArrayOfFloat, float paramFloat);
  
  private static native int lastIndexOf(float[] paramArrayOfFloat, float paramFloat, int paramInt1, int paramInt2);
  
  public static native Comparator<float[]> lexicographicalComparator();
  
  public static float max(float... paramVarArgs)
  {
    if (paramVarArgs.length > 0) {}
    float f;
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      f = paramVarArgs[0];
      int i = 1;
      while (i < paramVarArgs.length)
      {
        f = Math.max(f, paramVarArgs[i]);
        i += 1;
      }
    }
    return f;
  }
  
  public static float min(float... paramVarArgs)
  {
    if (paramVarArgs.length > 0) {}
    float f;
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      f = paramVarArgs[0];
      int i = 1;
      while (i < paramVarArgs.length)
      {
        f = Math.min(f, paramVarArgs[i]);
        i += 1;
      }
    }
    return f;
  }
  
  public static native float[] toArray(Collection<Float> paramCollection);
  
  @GwtCompatible
  private static class FloatArrayAsList
    extends AbstractList<Float>
    implements RandomAccess, Serializable
  {
    private static final long serialVersionUID = 0L;
    final float[] array;
    final int end;
    final int start;
    
    static
    {
      JniLib.a(FloatArrayAsList.class, 916);
    }
    
    FloatArrayAsList(float[] paramArrayOfFloat)
    {
      this(paramArrayOfFloat, 0, paramArrayOfFloat.length);
    }
    
    FloatArrayAsList(float[] paramArrayOfFloat, int paramInt1, int paramInt2)
    {
      array = paramArrayOfFloat;
      start = paramInt1;
      end = paramInt2;
    }
    
    public native boolean contains(Object paramObject);
    
    public native boolean equals(Object paramObject);
    
    public native Float get(int paramInt);
    
    public native int hashCode();
    
    public native int indexOf(Object paramObject);
    
    public native boolean isEmpty();
    
    public native int lastIndexOf(Object paramObject);
    
    public native Float set(int paramInt, Float paramFloat);
    
    public native int size();
    
    public native List<Float> subList(int paramInt1, int paramInt2);
    
    native float[] toFloatArray();
    
    public native String toString();
  }
  
  private static enum LexicographicalComparator
    implements Comparator<float[]>
  {
    INSTANCE;
    
    private LexicographicalComparator() {}
    
    public int compare(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
    {
      int j = Math.min(paramArrayOfFloat1.length, paramArrayOfFloat2.length);
      int i = 0;
      while (i < j)
      {
        int k = Floats.compare(paramArrayOfFloat1[i], paramArrayOfFloat2[i]);
        if (k != 0) {
          return k;
        }
        i += 1;
      }
      return paramArrayOfFloat1.length - paramArrayOfFloat2.length;
    }
  }
}
