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
public final class Chars
{
  public static final int BYTES = 2;
  
  static
  {
    JniLib.a(Chars.class, 913);
  }
  
  private Chars() {}
  
  public static List<Character> asList(char... paramVarArgs)
  {
    if (paramVarArgs.length == 0) {
      return Collections.emptyList();
    }
    return new CharArrayAsList(paramVarArgs);
  }
  
  public static native char checkedCast(long paramLong);
  
  public static native int compare(char paramChar1, char paramChar2);
  
  public static char[] concat(char[]... paramVarArgs)
  {
    int j = 0;
    int k = paramVarArgs.length;
    int i = 0;
    while (i < k)
    {
      j += paramVarArgs[i].length;
      i += 1;
    }
    char[] arrayOfChar1 = new char[j];
    j = 0;
    k = paramVarArgs.length;
    i = 0;
    while (i < k)
    {
      char[] arrayOfChar2 = paramVarArgs[i];
      System.arraycopy(arrayOfChar2, 0, arrayOfChar1, j, arrayOfChar2.length);
      j += arrayOfChar2.length;
      i += 1;
    }
    return arrayOfChar1;
  }
  
  public static native boolean contains(char[] paramArrayOfChar, char paramChar);
  
  private static native char[] copyOf(char[] paramArrayOfChar, int paramInt);
  
  public static native char[] ensureCapacity(char[] paramArrayOfChar, int paramInt1, int paramInt2);
  
  @GwtIncompatible("doesn't work")
  public static native char fromByteArray(byte[] paramArrayOfByte);
  
  @GwtIncompatible("doesn't work")
  public static native char fromBytes(byte paramByte1, byte paramByte2);
  
  public static native int hashCode(char paramChar);
  
  public static native int indexOf(char[] paramArrayOfChar, char paramChar);
  
  private static native int indexOf(char[] paramArrayOfChar, char paramChar, int paramInt1, int paramInt2);
  
  public static native int indexOf(char[] paramArrayOfChar1, char[] paramArrayOfChar2);
  
  public static String join(String paramString, char... paramVarArgs)
  {
    Preconditions.checkNotNull(paramString);
    int j = paramVarArgs.length;
    if (j == 0) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString.length() * (j - 1) + j);
    localStringBuilder.append(paramVarArgs[0]);
    int i = 1;
    while (i < j)
    {
      localStringBuilder.append(paramString).append(paramVarArgs[i]);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static native int lastIndexOf(char[] paramArrayOfChar, char paramChar);
  
  private static native int lastIndexOf(char[] paramArrayOfChar, char paramChar, int paramInt1, int paramInt2);
  
  public static native Comparator<char[]> lexicographicalComparator();
  
  public static char max(char... paramVarArgs)
  {
    if (paramVarArgs.length > 0) {}
    char c1;
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      c1 = paramVarArgs[0];
      int i = 1;
      while (i < paramVarArgs.length)
      {
        char c2 = c1;
        if (paramVarArgs[i] > c1) {
          c2 = paramVarArgs[i];
        }
        i += 1;
        c1 = c2;
      }
    }
    return c1;
  }
  
  public static char min(char... paramVarArgs)
  {
    if (paramVarArgs.length > 0) {}
    char c1;
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      c1 = paramVarArgs[0];
      int i = 1;
      while (i < paramVarArgs.length)
      {
        char c2 = c1;
        if (paramVarArgs[i] < c1) {
          c2 = paramVarArgs[i];
        }
        i += 1;
        c1 = c2;
      }
    }
    return c1;
  }
  
  public static native char saturatedCast(long paramLong);
  
  public static native char[] toArray(Collection<Character> paramCollection);
  
  @GwtIncompatible("doesn't work")
  public static native byte[] toByteArray(char paramChar);
  
  @GwtCompatible
  private static class CharArrayAsList
    extends AbstractList<Character>
    implements RandomAccess, Serializable
  {
    private static final long serialVersionUID = 0L;
    final char[] array;
    final int end;
    final int start;
    
    static
    {
      JniLib.a(CharArrayAsList.class, 912);
    }
    
    CharArrayAsList(char[] paramArrayOfChar)
    {
      this(paramArrayOfChar, 0, paramArrayOfChar.length);
    }
    
    CharArrayAsList(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    {
      array = paramArrayOfChar;
      start = paramInt1;
      end = paramInt2;
    }
    
    public native boolean contains(Object paramObject);
    
    public native boolean equals(Object paramObject);
    
    public native Character get(int paramInt);
    
    public native int hashCode();
    
    public native int indexOf(Object paramObject);
    
    public native boolean isEmpty();
    
    public native int lastIndexOf(Object paramObject);
    
    public native Character set(int paramInt, Character paramCharacter);
    
    public native int size();
    
    public native List<Character> subList(int paramInt1, int paramInt2);
    
    native char[] toCharArray();
    
    public native String toString();
  }
  
  private static enum LexicographicalComparator
    implements Comparator<char[]>
  {
    INSTANCE;
    
    private LexicographicalComparator() {}
    
    public int compare(char[] paramArrayOfChar1, char[] paramArrayOfChar2)
    {
      int j = Math.min(paramArrayOfChar1.length, paramArrayOfChar2.length);
      int i = 0;
      while (i < j)
      {
        int k = Chars.compare(paramArrayOfChar1[i], paramArrayOfChar2[i]);
        if (k != 0) {
          return k;
        }
        i += 1;
      }
      return paramArrayOfChar1.length - paramArrayOfChar2.length;
    }
  }
}
