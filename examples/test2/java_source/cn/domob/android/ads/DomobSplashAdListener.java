package cn.domob.android.ads;

public abstract interface DomobSplashAdListener
{
  public abstract void onSplashDismiss();
  
  public abstract void onSplashLoadFailed();
  
  public abstract void onSplashPresent();
}
