package cn.domob.android.ads;

import android.content.Context;

public abstract interface m
{
  public abstract void close();
  
  public abstract void onDomobAdClicked();
  
  public abstract void onDomobAdFailed(DomobAdManager.ErrorCode paramErrorCode);
  
  public abstract void onDomobAdOverlayDismissed();
  
  public abstract void onDomobAdOverlayPresented();
  
  public abstract Context onDomobAdRequiresCurrentContext();
  
  public abstract void onDomobAdReturned(n paramN);
  
  public abstract void onDomobLeaveApplication();
  
  public abstract void onProcessActionType(String paramString);
  
  public abstract void setCreativeRect(int paramInt1, int paramInt2);
}
