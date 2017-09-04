package com.google.common.primitives;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

@GwtCompatible
public final class Bytes
{
  static
  {
    JniLib.a(Bytes.class, 911);
  }
  
  private Bytes() {}
  
  public static List<Byte> asList(byte... paramVarArgs)
  {
    if (paramVarArgs.length == 0) {
      return Collections.emptyList();
    }
    return new ByteArrayAsList(paramVarArgs);
  }
  
  public static byte[] concat(byte[]... paramVarArgs)
  {
    int j = 0;
    int k = paramVarArgs.length;
    int i = 0;
    while (i < k)
    {
      j += paramVarArgs[i].length;
      i += 1;
    }
    byte[] arrayOfByte1 = new byte[j];
    j = 0;
    k = paramVarArgs.length;
    i = 0;
    while (i < k)
    {
      byte[] arrayOfByte2 = paramVarArgs[i];
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, j, arrayOfByte2.length);
      j += arrayOfByte2.length;
      i += 1;
    }
    return arrayOfByte1;
  }
  
  public static native boolean contains(byte[] paramArrayOfByte, byte paramByte);
  
  private static native byte[] copyOf(byte[] paramArrayOfByte, int paramInt);
  
  public static native byte[] ensureCapacity(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  public static native int hashCode(byte paramByte);
  
  public static native int indexOf(byte[] paramArrayOfByte, byte paramByte);
  
  private static native int indexOf(byte[] paramArrayOfByte, byte paramByte, int paramInt1, int paramInt2);
  
  public static native int indexOf(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2);
  
  public static native int lastIndexOf(byte[] paramArrayOfByte, byte paramByte);
  
  private static native int lastIndexOf(byte[] paramArrayOfByte, byte paramByte, int paramInt1, int paramInt2);
  
  public static native byte[] toArray(Collection<Byte> paramCollection);
  
  @GwtCompatible
  private static class ByteArrayAsList
    extends AbstractList<Byte>
    implements RandomAccess, Serializable
  {
    private static final long serialVersionUID = 0L;
    final byte[] array;
    final int end;
    final int start;
    
    static
    {
      JniLib.a(ByteArrayAsList.class, 910);
    }
    
    ByteArrayAsList(byte[] paramArrayOfByte)
    {
      this(paramArrayOfByte, 0, paramArrayOfByte.length);
    }
    
    ByteArrayAsList(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      array = paramArrayOfByte;
      start = paramInt1;
      end = paramInt2;
    }
    
    public native boolean contains(Object paramObject);
    
    public native boolean equals(Object paramObject);
    
    public native Byte get(int paramInt);
    
    public native int hashCode();
    
    public native int indexOf(Object paramObject);
    
    public native boolean isEmpty();
    
    public native int lastIndexOf(Object paramObject);
    
    public native Byte set(int paramInt, Byte paramByte);
    
    public native int size();
    
    public native List<Byte> subList(int paramInt1, int paramInt2);
    
    native byte[] toByteArray();
    
    public native String toString();
  }
}
