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
public final class Doubles
{
  static
  {
    JniLib.a(Doubles.class, 915);
  }
  
  private Doubles() {}
  
  public static List<Double> asList(double... paramVarArgs)
  {
    if (paramVarArgs.length == 0) {
      return Collections.emptyList();
    }
    return new DoubleArrayAsList(paramVarArgs);
  }
  
  public static native int compare(double paramDouble1, double paramDouble2);
  
  public static double[] concat(double[]... paramVarArgs)
  {
    int j = 0;
    int k = paramVarArgs.length;
    int i = 0;
    while (i < k)
    {
      j += paramVarArgs[i].length;
      i += 1;
    }
    double[] arrayOfDouble1 = new double[j];
    j = 0;
    k = paramVarArgs.length;
    i = 0;
    while (i < k)
    {
      double[] arrayOfDouble2 = paramVarArgs[i];
      System.arraycopy(arrayOfDouble2, 0, arrayOfDouble1, j, arrayOfDouble2.length);
      j += arrayOfDouble2.length;
      i += 1;
    }
    return arrayOfDouble1;
  }
  
  public static native boolean contains(double[] paramArrayOfDouble, double paramDouble);
  
  private static native double[] copyOf(double[] paramArrayOfDouble, int paramInt);
  
  public static native double[] ensureCapacity(double[] paramArrayOfDouble, int paramInt1, int paramInt2);
  
  public static native int hashCode(double paramDouble);
  
  public static native int indexOf(double[] paramArrayOfDouble, double paramDouble);
  
  private static native int indexOf(double[] paramArrayOfDouble, double paramDouble, int paramInt1, int paramInt2);
  
  public static native int indexOf(double[] paramArrayOfDouble1, double[] paramArrayOfDouble2);
  
  public static String join(String paramString, double... paramVarArgs)
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
  
  public static native int lastIndexOf(double[] paramArrayOfDouble, double paramDouble);
  
  private static native int lastIndexOf(double[] paramArrayOfDouble, double paramDouble, int paramInt1, int paramInt2);
  
  public static native Comparator<double[]> lexicographicalComparator();
  
  public static double max(double... paramVarArgs)
  {
    if (paramVarArgs.length > 0) {}
    double d;
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      d = paramVarArgs[0];
      int i = 1;
      while (i < paramVarArgs.length)
      {
        d = Math.max(d, paramVarArgs[i]);
        i += 1;
      }
    }
    return d;
  }
  
  public static double min(double... paramVarArgs)
  {
    if (paramVarArgs.length > 0) {}
    double d;
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      d = paramVarArgs[0];
      int i = 1;
      while (i < paramVarArgs.length)
      {
        d = Math.min(d, paramVarArgs[i]);
        i += 1;
      }
    }
    return d;
  }
  
  public static native double[] toArray(Collection<Double> paramCollection);
  
  @GwtCompatible
  private static class DoubleArrayAsList
    extends AbstractList<Double>
    implements RandomAccess, Serializable
  {
    private static final long serialVersionUID = 0L;
    final double[] array;
    final int end;
    final int start;
    
    static
    {
      JniLib.a(DoubleArrayAsList.class, 914);
    }
    
    DoubleArrayAsList(double[] paramArrayOfDouble)
    {
      this(paramArrayOfDouble, 0, paramArrayOfDouble.length);
    }
    
    DoubleArrayAsList(double[] paramArrayOfDouble, int paramInt1, int paramInt2)
    {
      array = paramArrayOfDouble;
      start = paramInt1;
      end = paramInt2;
    }
    
    public native boolean contains(Object paramObject);
    
    public native boolean equals(Object paramObject);
    
    public native Double get(int paramInt);
    
    public native int hashCode();
    
    public native int indexOf(Object paramObject);
    
    public native boolean isEmpty();
    
    public native int lastIndexOf(Object paramObject);
    
    public native Double set(int paramInt, Double paramDouble);
    
    public native int size();
    
    public native List<Double> subList(int paramInt1, int paramInt2);
    
    native double[] toDoubleArray();
    
    public native String toString();
  }
  
  private static enum LexicographicalComparator
    implements Comparator<double[]>
  {
    INSTANCE;
    
    private LexicographicalComparator() {}
    
    public int compare(double[] paramArrayOfDouble1, double[] paramArrayOfDouble2)
    {
      int j = Math.min(paramArrayOfDouble1.length, paramArrayOfDouble2.length);
      int i = 0;
      while (i < j)
      {
        int k = Doubles.compare(paramArrayOfDouble1[i], paramArrayOfDouble2[i]);
        if (k != 0) {
          return k;
        }
        i += 1;
      }
      return paramArrayOfDouble1.length - paramArrayOfDouble2.length;
    }
  }
}
