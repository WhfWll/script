package com.google.common.base;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import javax.annotation.Nullable;

@GwtCompatible
public final class Preconditions
{
  static
  {
    JniLib.a(Preconditions.class, 351);
  }
  
  private Preconditions() {}
  
  private static native String badElementIndex(int paramInt1, int paramInt2, String paramString);
  
  private static native String badPositionIndex(int paramInt1, int paramInt2, String paramString);
  
  private static native String badPositionIndexes(int paramInt1, int paramInt2, int paramInt3);
  
  public static native void checkArgument(boolean paramBoolean);
  
  public static native void checkArgument(boolean paramBoolean, @Nullable Object paramObject);
  
  public static void checkArgument(boolean paramBoolean, @Nullable String paramString, @Nullable Object... paramVarArgs)
  {
    if (!paramBoolean) {
      throw new IllegalArgumentException(format(paramString, paramVarArgs));
    }
  }
  
  public static native int checkElementIndex(int paramInt1, int paramInt2);
  
  public static native int checkElementIndex(int paramInt1, int paramInt2, @Nullable String paramString);
  
  public static native <T> T checkNotNull(T paramT);
  
  public static native <T> T checkNotNull(T paramT, @Nullable Object paramObject);
  
  public static <T> T checkNotNull(T paramT, @Nullable String paramString, @Nullable Object... paramVarArgs)
  {
    if (paramT == null) {
      throw new NullPointerException(format(paramString, paramVarArgs));
    }
    return paramT;
  }
  
  public static native int checkPositionIndex(int paramInt1, int paramInt2);
  
  public static native int checkPositionIndex(int paramInt1, int paramInt2, @Nullable String paramString);
  
  public static native void checkPositionIndexes(int paramInt1, int paramInt2, int paramInt3);
  
  public static native void checkState(boolean paramBoolean);
  
  public static native void checkState(boolean paramBoolean, @Nullable Object paramObject);
  
  public static void checkState(boolean paramBoolean, @Nullable String paramString, @Nullable Object... paramVarArgs)
  {
    if (!paramBoolean) {
      throw new IllegalStateException(format(paramString, paramVarArgs));
    }
  }
  
  @VisibleForTesting
  static String format(String paramString, @Nullable Object... paramVarArgs)
  {
    paramString = String.valueOf(paramString);
    StringBuilder localStringBuilder = new StringBuilder(paramString.length() + paramVarArgs.length * 16);
    int j = 0;
    int i = 0;
    for (;;)
    {
      int k;
      if (i < paramVarArgs.length)
      {
        k = paramString.indexOf("%s", j);
        if (k != -1) {}
      }
      else
      {
        localStringBuilder.append(paramString.substring(j));
        if (i >= paramVarArgs.length) {
          break label159;
        }
        localStringBuilder.append(" [");
        localStringBuilder.append(paramVarArgs[i]);
        i += 1;
        while (i < paramVarArgs.length)
        {
          localStringBuilder.append(", ");
          localStringBuilder.append(paramVarArgs[i]);
          i += 1;
        }
      }
      localStringBuilder.append(paramString.substring(j, k));
      localStringBuilder.append(paramVarArgs[i]);
      j = k + 2;
      i += 1;
    }
    localStringBuilder.append(']');
    label159:
    return localStringBuilder.toString();
  }
}
