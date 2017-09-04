package com.tencent.mm.sdk.diffdev;

public abstract interface OAuthListener
{
  public abstract void onAuthFinish(OAuthErrCode paramOAuthErrCode, String paramString);
  
  public abstract void onAuthGotQrcode(String paramString, byte[] paramArrayOfByte);
  
  public abstract void onQrcodeScanned();
}
