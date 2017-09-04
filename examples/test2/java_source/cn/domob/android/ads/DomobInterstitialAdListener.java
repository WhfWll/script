package cn.domob.android.ads;

public abstract interface DomobInterstitialAdListener
{
  public abstract void onInterstitialAdClicked(DomobInterstitialAd paramDomobInterstitialAd);
  
  public abstract void onInterstitialAdDismiss();
  
  public abstract void onInterstitialAdFailed(DomobAdManager.ErrorCode paramErrorCode);
  
  public abstract void onInterstitialAdLeaveApplication();
  
  public abstract void onInterstitialAdPresent();
  
  public abstract void onInterstitialAdReady();
  
  public abstract void onLandingPageClose();
  
  public abstract void onLandingPageOpen();
}
