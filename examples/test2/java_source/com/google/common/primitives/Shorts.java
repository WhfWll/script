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
public final class Shorts
{
  public static final int BYTES = 2;
  
  static
  {
    JniLib.a(Shorts.class, 924);
  }
  
  private Shorts() {}
  
  public static List<Short> asList(short... paramVarArgs)
  {
    if (paramVarArgs.length == 0) {
      return Collections.emptyList();
    }
    return new ShortArrayAsList(paramVarArgs);
  }
  
  public static native short checkedCast(long paramLong);
  
  public static native int compare(short paramShort1, short paramShort2);
  
  public static short[] concat(short[]... paramVarArgs)
  {
    int j = 0;
    int k = paramVarArgs.length;
    int i = 0;
    while (i < k)
    {
      j += paramVarArgs[i].length;
      i += 1;
    }
    short[] arrayOfShort1 = new short[j];
    j = 0;
    k = paramVarArgs.length;
    i = 0;
    while (i < k)
    {
      short[] arrayOfShort2 = paramVarArgs[i];
      System.arraycopy(arrayOfShort2, 0, arrayOfShort1, j, arrayOfShort2.length);
      j += arrayOfShort2.length;
      i += 1;
    }
    return arrayOfShort1;
  }
  
  public static native boolean contains(short[] paramArrayOfShort, short paramShort);
  
  private static native short[] copyOf(short[] paramArrayOfShort, int paramInt);
  
  public static native short[] ensureCapacity(short[] paramArrayOfShort, int paramInt1, int paramInt2);
  
  @GwtIncompatible("doesn't work")
  public static native short fromByteArray(byte[] paramArrayOfByte);
  
  @GwtIncompatible("doesn't work")
  public static native short fromBytes(byte paramByte1, byte paramByte2);
  
  public static native int hashCode(short paramShort);
  
  public static native int indexOf(short[] paramArrayOfShort, short paramShort);
  
  private static native int indexOf(short[] paramArrayOfShort, short paramShort, int paramInt1, int paramInt2);
  
  public static native int indexOf(short[] paramArrayOfShort1, short[] paramArrayOfShort2);
  
  public static String join(String paramString, short... paramVarArgs)
  {
    Preconditions.checkNotNull(paramString);
    if (paramVarArgs.length == 0) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder(paramVarArgs.length * 6);
    localStringBuilder.append(paramVarArgs[0]);
    int i = 1;
    while (i < paramVarArgs.length)
    {
      localStringBuilder.append(paramString).append(paramVarArgs[i]);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static native int lastIndexOf(short[] paramArrayOfShort, short paramShort);
  
  private static native int lastIndexOf(short[] paramArrayOfShort, short paramShort, int paramInt1, int paramInt2);
  
  public static native Comparator<short[]> lexicographicalComparator();
  
  public static short max(short... paramVarArgs)
  {
    if (paramVarArgs.length > 0) {}
    short s1;
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      s1 = paramVarArgs[0];
      int i = 1;
      while (i < paramVarArgs.length)
      {
        short s2 = s1;
        if (paramVarArgs[i] > s1) {
          s2 = paramVarArgs[i];
        }
        i += 1;
        s1 = s2;
      }
    }
    return s1;
  }
  
  public static short min(short... paramVarArgs)
  {
    if (paramVarArgs.length > 0) {}
    short s1;
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      s1 = paramVarArgs[0];
      int i = 1;
      while (i < paramVarArgs.length)
      {
        short s2 = s1;
        if (paramVarArgs[i] < s1) {
          s2 = paramVarArgs[i];
        }
        i += 1;
        s1 = s2;
      }
    }
    return s1;
  }
  
  public static native short saturatedCast(long paramLong);
  
  public static native short[] toArray(Collection<Short> paramCollection);
  
  @GwtIncompatible("doesn't work")
  public static native byte[] toByteArray(short paramShort);
  
  private static enum LexicographicalComparator
    implements Comparator<short[]>
  {
    INSTANCE;
    
    private LexicographicalComparator() {}
    
    public int compare(short[] paramArrayOfShort1, short[] paramArrayOfShort2)
    {
      int j = Math.min(paramArrayOfShort1.length, paramArrayOfShort2.length);
      int i = 0;
      while (i < j)
      {
        int k = Shorts.compare(paramArrayOfShort1[i], paramArrayOfShort2[i]);
        if (k != 0) {
          return k;
        }
        i += 1;
      }
      return paramArrayOfShort1.length - paramArrayOfShort2.length;
    }
  }
  
  @GwtCompatible
  private static class ShortArrayAsList
    extends AbstractList<Short>
    implements RandomAccess, Serializable
  {
    private static final long serialVersionUID = 0L;
    final short[] array;
    final int end;
    final int start;
    
    static
    {
      JniLib.a(ShortArrayAsList.class, 923);
    }
    
    ShortArrayAsList(short[] paramArrayOfShort)
    {
      this(paramArrayOfShort, 0, paramArrayOfShort.length);
    }
    
    ShortArrayAsList(short[] paramArrayOfShort, int paramInt1, int paramInt2)
    {
      array = paramArrayOfShort;
      start = paramInt1;
      end = paramInt2;
    }
    
    public native boolean contains(Object paramObject);
    
    public native boolean equals(Object paramObject);
    
    public native Short get(int paramInt);
    
    public native int hashCode();
    
    public native int indexOf(Object paramObject);
    
    public native boolean isEmpty();
    
    public native int lastIndexOf(Object paramObject);
    
    public native Short set(int paramInt, Short paramShort);
    
    public native int size();
    
    public native List<Short> subList(int paramInt1, int paramInt2);
    
    native short[] toShortArray();
    
    public native String toString();
  }
}
