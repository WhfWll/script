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
public final class Booleans
{
  static
  {
    JniLib.a(Booleans.class, 909);
  }
  
  private Booleans() {}
  
  public static List<Boolean> asList(boolean... paramVarArgs)
  {
    if (paramVarArgs.length == 0) {
      return Collections.emptyList();
    }
    return new BooleanArrayAsList(paramVarArgs);
  }
  
  public static native int compare(boolean paramBoolean1, boolean paramBoolean2);
  
  public static boolean[] concat(boolean[]... paramVarArgs)
  {
    int j = 0;
    int k = paramVarArgs.length;
    int i = 0;
    while (i < k)
    {
      j += paramVarArgs[i].length;
      i += 1;
    }
    boolean[] arrayOfBoolean1 = new boolean[j];
    j = 0;
    k = paramVarArgs.length;
    i = 0;
    while (i < k)
    {
      boolean[] arrayOfBoolean2 = paramVarArgs[i];
      System.arraycopy(arrayOfBoolean2, 0, arrayOfBoolean1, j, arrayOfBoolean2.length);
      j += arrayOfBoolean2.length;
      i += 1;
    }
    return arrayOfBoolean1;
  }
  
  public static native boolean contains(boolean[] paramArrayOfBoolean, boolean paramBoolean);
  
  private static native boolean[] copyOf(boolean[] paramArrayOfBoolean, int paramInt);
  
  public static native boolean[] ensureCapacity(boolean[] paramArrayOfBoolean, int paramInt1, int paramInt2);
  
  public static native int hashCode(boolean paramBoolean);
  
  public static native int indexOf(boolean[] paramArrayOfBoolean, boolean paramBoolean);
  
  private static native int indexOf(boolean[] paramArrayOfBoolean, boolean paramBoolean, int paramInt1, int paramInt2);
  
  public static native int indexOf(boolean[] paramArrayOfBoolean1, boolean[] paramArrayOfBoolean2);
  
  public static String join(String paramString, boolean... paramVarArgs)
  {
    Preconditions.checkNotNull(paramString);
    if (paramVarArgs.length == 0) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder(paramVarArgs.length * 7);
    localStringBuilder.append(paramVarArgs[0]);
    int i = 1;
    while (i < paramVarArgs.length)
    {
      localStringBuilder.append(paramString).append(paramVarArgs[i]);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static native int lastIndexOf(boolean[] paramArrayOfBoolean, boolean paramBoolean);
  
  private static native int lastIndexOf(boolean[] paramArrayOfBoolean, boolean paramBoolean, int paramInt1, int paramInt2);
  
  public static native Comparator<boolean[]> lexicographicalComparator();
  
  public static native boolean[] toArray(Collection<Boolean> paramCollection);
  
  @GwtCompatible
  private static class BooleanArrayAsList
    extends AbstractList<Boolean>
    implements RandomAccess, Serializable
  {
    private static final long serialVersionUID = 0L;
    final boolean[] array;
    final int end;
    final int start;
    
    static
    {
      JniLib.a(BooleanArrayAsList.class, 908);
    }
    
    BooleanArrayAsList(boolean[] paramArrayOfBoolean)
    {
      this(paramArrayOfBoolean, 0, paramArrayOfBoolean.length);
    }
    
    BooleanArrayAsList(boolean[] paramArrayOfBoolean, int paramInt1, int paramInt2)
    {
      array = paramArrayOfBoolean;
      start = paramInt1;
      end = paramInt2;
    }
    
    public native boolean contains(Object paramObject);
    
    public native boolean equals(Object paramObject);
    
    public native Boolean get(int paramInt);
    
    public native int hashCode();
    
    public native int indexOf(Object paramObject);
    
    public native boolean isEmpty();
    
    public native int lastIndexOf(Object paramObject);
    
    public native Boolean set(int paramInt, Boolean paramBoolean);
    
    public native int size();
    
    public native List<Boolean> subList(int paramInt1, int paramInt2);
    
    native boolean[] toBooleanArray();
    
    public native String toString();
  }
  
  private static enum LexicographicalComparator
    implements Comparator<boolean[]>
  {
    INSTANCE;
    
    private LexicographicalComparator() {}
    
    public int compare(boolean[] paramArrayOfBoolean1, boolean[] paramArrayOfBoolean2)
    {
      int j = Math.min(paramArrayOfBoolean1.length, paramArrayOfBoolean2.length);
      int i = 0;
      while (i < j)
      {
        int k = Booleans.compare(paramArrayOfBoolean1[i], paramArrayOfBoolean2[i]);
        if (k != 0) {
          return k;
        }
        i += 1;
      }
      return paramArrayOfBoolean1.length - paramArrayOfBoolean2.length;
    }
  }
}
