package com.google.common.primitives;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Comparator;
import sun.misc.Unsafe;

public final class UnsignedBytes
{
  static
  {
    JniLib.a(UnsignedBytes.class, 928);
  }
  
  private UnsignedBytes() {}
  
  public static native byte checkedCast(long paramLong);
  
  public static native int compare(byte paramByte1, byte paramByte2);
  
  public static String join(String paramString, byte... paramVarArgs)
  {
    Preconditions.checkNotNull(paramString);
    if (paramVarArgs.length == 0) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder(paramVarArgs.length * 5);
    localStringBuilder.append(toInt(paramVarArgs[0]));
    int i = 1;
    while (i < paramVarArgs.length)
    {
      localStringBuilder.append(paramString).append(toInt(paramVarArgs[i]));
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static native Comparator<byte[]> lexicographicalComparator();
  
  @VisibleForTesting
  static native Comparator<byte[]> lexicographicalComparatorJavaImpl();
  
  public static byte max(byte... paramVarArgs)
  {
    if (paramVarArgs.length > 0) {}
    int j;
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      j = toInt(paramVarArgs[0]);
      int i = 1;
      while (i < paramVarArgs.length)
      {
        int m = toInt(paramVarArgs[i]);
        int k = j;
        if (m > j) {
          k = m;
        }
        i += 1;
        j = k;
      }
    }
    return (byte)j;
  }
  
  public static byte min(byte... paramVarArgs)
  {
    if (paramVarArgs.length > 0) {}
    int j;
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      j = toInt(paramVarArgs[0]);
      int i = 1;
      while (i < paramVarArgs.length)
      {
        int m = toInt(paramVarArgs[i]);
        int k = j;
        if (m < j) {
          k = m;
        }
        i += 1;
        j = k;
      }
    }
    return (byte)j;
  }
  
  public static native byte saturatedCast(long paramLong);
  
  public static native int toInt(byte paramByte);
  
  @VisibleForTesting
  static class LexicographicalComparatorHolder
  {
    static final Comparator<byte[]> BEST_COMPARATOR = getBestComparator();
    static final String UNSAFE_COMPARATOR_NAME;
    
    static
    {
      JniLib.a(LexicographicalComparatorHolder.class, 927);
      UNSAFE_COMPARATOR_NAME = LexicographicalComparatorHolder.class.getName() + "$UnsafeComparator";
    }
    
    LexicographicalComparatorHolder() {}
    
    static native Comparator<byte[]> getBestComparator();
    
    static enum PureJavaComparator
      implements Comparator<byte[]>
    {
      INSTANCE;
      
      private PureJavaComparator() {}
      
      public int compare(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
      {
        int j = Math.min(paramArrayOfByte1.length, paramArrayOfByte2.length);
        int i = 0;
        while (i < j)
        {
          int k = UnsignedBytes.compare(paramArrayOfByte1[i], paramArrayOfByte2[i]);
          if (k != 0) {
            return k;
          }
          i += 1;
        }
        return paramArrayOfByte1.length - paramArrayOfByte2.length;
      }
    }
    
    static enum UnsafeComparator
      implements Comparator<byte[]>
    {
      static final int BYTE_ARRAY_BASE_OFFSET;
      static final boolean littleEndian;
      static final Unsafe theUnsafe;
      
      static
      {
        $VALUES = new UnsafeComparator[] { INSTANCE };
        littleEndian = ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN);
        theUnsafe = (Unsafe)AccessController.doPrivileged(new PrivilegedAction()
        {
          static
          {
            JniLib.a(1.class, 926);
          }
          
          public native Object run();
        });
        BYTE_ARRAY_BASE_OFFSET = theUnsafe.arrayBaseOffset([B.class);
        if (theUnsafe.arrayIndexScale([B.class) != 1) {
          throw new AssertionError();
        }
      }
      
      private UnsafeComparator() {}
      
      static boolean lessThanUnsigned(long paramLong1, long paramLong2)
      {
        return paramLong1 - Long.MIN_VALUE < Long.MIN_VALUE + paramLong2;
      }
      
      public int compare(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
      {
        int j = Math.min(paramArrayOfByte1.length, paramArrayOfByte2.length);
        int k = j / 8;
        int i = 0;
        while (i < k * 8)
        {
          long l1 = theUnsafe.getLong(paramArrayOfByte1, BYTE_ARRAY_BASE_OFFSET + i);
          long l2 = theUnsafe.getLong(paramArrayOfByte2, BYTE_ARRAY_BASE_OFFSET + i);
          long l3 = l1 ^ l2;
          if (l3 != 0L)
          {
            if (!littleEndian)
            {
              if (lessThanUnsigned(l1, l2)) {
                return -1;
              }
              return 1;
            }
            j = 0;
            k = (int)l3;
            i = k;
            if (k == 0)
            {
              i = (int)(l3 >>> 32);
              j = 32;
            }
            k = i << 16;
            if (k == 0) {
              j += 16;
            }
            for (;;)
            {
              k = j;
              if (i << 8 == 0) {
                k = j + 8;
              }
              return (int)((l1 >>> k & 0xFF) - (l2 >>> k & 0xFF));
              i = k;
            }
          }
          i += 8;
        }
        i = k * 8;
        while (i < j)
        {
          k = UnsignedBytes.compare(paramArrayOfByte1[i], paramArrayOfByte2[i]);
          if (k != 0) {
            return k;
          }
          i += 1;
        }
        return paramArrayOfByte1.length - paramArrayOfByte2.length;
      }
    }
  }
}
