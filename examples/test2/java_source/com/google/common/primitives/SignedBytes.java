package com.google.common.primitives;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Comparator;

@GwtCompatible
public final class SignedBytes
{
  static
  {
    JniLib.a(SignedBytes.class, 925);
  }
  
  private SignedBytes() {}
  
  public static native byte checkedCast(long paramLong);
  
  public static native int compare(byte paramByte1, byte paramByte2);
  
  public static String join(String paramString, byte... paramVarArgs)
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
  
  public static native Comparator<byte[]> lexicographicalComparator();
  
  public static byte max(byte... paramVarArgs)
  {
    if (paramVarArgs.length > 0) {}
    byte b1;
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      b1 = paramVarArgs[0];
      int i = 1;
      while (i < paramVarArgs.length)
      {
        byte b2 = b1;
        if (paramVarArgs[i] > b1) {
          b2 = paramVarArgs[i];
        }
        i += 1;
        b1 = b2;
      }
    }
    return b1;
  }
  
  public static byte min(byte... paramVarArgs)
  {
    if (paramVarArgs.length > 0) {}
    byte b1;
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      b1 = paramVarArgs[0];
      int i = 1;
      while (i < paramVarArgs.length)
      {
        byte b2 = b1;
        if (paramVarArgs[i] < b1) {
          b2 = paramVarArgs[i];
        }
        i += 1;
        b1 = b2;
      }
    }
    return b1;
  }
  
  public static native byte saturatedCast(long paramLong);
  
  private static enum LexicographicalComparator
    implements Comparator<byte[]>
  {
    INSTANCE;
    
    private LexicographicalComparator() {}
    
    public int compare(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    {
      int j = Math.min(paramArrayOfByte1.length, paramArrayOfByte2.length);
      int i = 0;
      while (i < j)
      {
        int k = SignedBytes.compare(paramArrayOfByte1[i], paramArrayOfByte2[i]);
        if (k != 0) {
          return k;
        }
        i += 1;
      }
      return paramArrayOfByte1.length - paramArrayOfByte2.length;
    }
  }
}
