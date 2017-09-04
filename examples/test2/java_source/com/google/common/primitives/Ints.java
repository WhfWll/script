package com.google.common.primitives;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

@GwtCompatible(emulated=true)
public final class Ints
{
  public static final int BYTES = 4;
  
  static
  {
    JniLib.a(Ints.class, 919);
  }
  
  private Ints() {}
  
  public static List<Integer> asList(int... paramVarArgs)
  {
    if (paramVarArgs.length == 0) {
      return Collections.emptyList();
    }
    return new IntArrayAsList(paramVarArgs);
  }
  
  public static native int checkedCast(long paramLong);
  
  public static native int compare(int paramInt1, int paramInt2);
  
  public static int[] concat(int[]... paramVarArgs)
  {
    int j = 0;
    int k = paramVarArgs.length;
    int i = 0;
    while (i < k)
    {
      j += paramVarArgs[i].length;
      i += 1;
    }
    int[] arrayOfInt1 = new int[j];
    j = 0;
    k = paramVarArgs.length;
    i = 0;
    while (i < k)
    {
      int[] arrayOfInt2 = paramVarArgs[i];
      System.arraycopy(arrayOfInt2, 0, arrayOfInt1, j, arrayOfInt2.length);
      j += arrayOfInt2.length;
      i += 1;
    }
    return arrayOfInt1;
  }
  
  public static native boolean contains(int[] paramArrayOfInt, int paramInt);
  
  private static native int[] copyOf(int[] paramArrayOfInt, int paramInt);
  
  public static native int[] ensureCapacity(int[] paramArrayOfInt, int paramInt1, int paramInt2);
  
  @GwtIncompatible("doesn't work")
  public static native int fromByteArray(byte[] paramArrayOfByte);
  
  @GwtIncompatible("doesn't work")
  public static native int fromBytes(byte paramByte1, byte paramByte2, byte paramByte3, byte paramByte4);
  
  public static native int hashCode(int paramInt);
  
  public static native int indexOf(int[] paramArrayOfInt, int paramInt);
  
  private static native int indexOf(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3);
  
  public static native int indexOf(int[] paramArrayOfInt1, int[] paramArrayOfInt2);
  
  public static String join(String paramString, int... paramVarArgs)
  {
    Preconditions.checkNotNull(paramString);
    if (paramVarArgs.length == 0) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder(paramVarArgs.length * 5);
    localStringBuilder.append(paramVarArgs[0]);
    int i = 1;
    while (i < paramVarArgs.length)
    {
      localStringBuilder.append(paramString).append(paramVarArgs[i]);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static native int lastIndexOf(int[] paramArrayOfInt, int paramInt);
  
  private static native int lastIndexOf(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3);
  
  public static native Comparator<int[]> lexicographicalComparator();
  
  public static int max(int... paramVarArgs)
  {
    if (paramVarArgs.length > 0) {}
    int j;
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      j = paramVarArgs[0];
      int i = 1;
      while (i < paramVarArgs.length)
      {
        int k = j;
        if (paramVarArgs[i] > j) {
          k = paramVarArgs[i];
        }
        i += 1;
        j = k;
      }
    }
    return j;
  }
  
  public static int min(int... paramVarArgs)
  {
    if (paramVarArgs.length > 0) {}
    int j;
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      j = paramVarArgs[0];
      int i = 1;
      while (i < paramVarArgs.length)
      {
        int k = j;
        if (paramVarArgs[i] < j) {
          k = paramVarArgs[i];
        }
        i += 1;
        j = k;
      }
    }
    return j;
  }
  
  public static native int saturatedCast(long paramLong);
  
  public static native int[] toArray(Collection<Integer> paramCollection);
  
  @GwtIncompatible("doesn't work")
  public static native byte[] toByteArray(int paramInt);
  
  @GwtCompatible
  private static class IntArrayAsList
    extends AbstractList<Integer>
    implements RandomAccess, Serializable
  {
    private static final long serialVersionUID = 0L;
    final int[] array;
    final int end;
    final int start;
    
    static
    {
      JniLib.a(IntArrayAsList.class, 918);
    }
    
    IntArrayAsList(int[] paramArrayOfInt)
    {
      this(paramArrayOfInt, 0, paramArrayOfInt.length);
    }
    
    IntArrayAsList(int[] paramArrayOfInt, int paramInt1, int paramInt2)
    {
      array = paramArrayOfInt;
      start = paramInt1;
      end = paramInt2;
    }
    
    public native boolean contains(Object paramObject);
    
    public native boolean equals(Object paramObject);
    
    public native Integer get(int paramInt);
    
    public native int hashCode();
    
    public native int indexOf(Object paramObject);
    
    public native boolean isEmpty();
    
    public native int lastIndexOf(Object paramObject);
    
    public native Integer set(int paramInt, Integer paramInteger);
    
    public native int size();
    
    public native List<Integer> subList(int paramInt1, int paramInt2);
    
    native int[] toIntArray();
    
    public native String toString();
  }
  
  private static enum LexicographicalComparator
    implements Comparator<int[]>
  {
    INSTANCE;
    
    private LexicographicalComparator() {}
    
    public int compare(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
    {
      int j = Math.min(paramArrayOfInt1.length, paramArrayOfInt2.length);
      int i = 0;
      while (i < j)
      {
        int k = Ints.compare(paramArrayOfInt1[i], paramArrayOfInt2[i]);
        if (k != 0) {
          return k;
        }
        i += 1;
      }
      return paramArrayOfInt1.length - paramArrayOfInt2.length;
    }
  }
}
