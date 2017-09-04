package com.tencent.mm.sdk.a.a;

import com.tencent.mm.a.a;

public final class b
{
  public static byte[] a(String paramString1, int paramInt, String paramString2)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramString1 != null) {
      localStringBuffer.append(paramString1);
    }
    localStringBuffer.append(paramInt);
    localStringBuffer.append(paramString2);
    localStringBuffer.append("mMcShCsTr");
    return a.c(localStringBuffer.toString().substring(1, 9).getBytes()).getBytes();
  }
}
