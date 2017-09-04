package cn.domob.android.ads;

import android.content.Context;

public abstract interface DomobAdEventListener
{
  public abstract void onDomobAdClicked(DomobAdView paramDomobAdView);
  
  public abstract void onDomobAdFailed(DomobAdView paramDomobAdView, DomobAdManager.ErrorCode paramErrorCode);
  
  public abstract void onDomobAdOverlayDismissed(DomobAdView paramDomobAdView);
  
  public abstract void onDomobAdOverlayPresented(DomobAdView paramDomobAdView);
  
  public abstract Context onDomobAdRequiresCurrentContext();
  
  public abstract void onDomobAdReturned(DomobAdView paramDomobAdView);
  
  public abstract void onDomobLeaveApplication(DomobAdView paramDomobAdView);
}
