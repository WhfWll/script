package cn.domob.android.ads;

public abstract interface DomobAdListener
{
  public abstract void onFailedToReceiveFreshAd(DomobAdView paramDomobAdView);
  
  public abstract void onLandingPageClose();
  
  public abstract void onLandingPageOpening();
  
  public abstract void onReceivedFreshAd(DomobAdView paramDomobAdView);
}
