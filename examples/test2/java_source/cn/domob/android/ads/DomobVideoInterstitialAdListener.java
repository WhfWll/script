package cn.domob.android.ads;

public abstract interface DomobVideoInterstitialAdListener
{
  public abstract void onLandingPageClose();
  
  public abstract void onLandingPageOpen();
  
  public abstract void onVideoInterstitialAdClicked();
  
  public abstract void onVideoInterstitialAdDismiss();
  
  public abstract void onVideoInterstitialAdFailed(DomobAdManager.ErrorCode paramErrorCode);
  
  public abstract void onVideoInterstitialAdLeaveApplication();
  
  public abstract void onVideoInterstitialAdPresent();
  
  public abstract void onVideoInterstitialAdReady();
}
