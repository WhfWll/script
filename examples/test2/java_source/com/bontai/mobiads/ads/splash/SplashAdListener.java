package com.bontai.mobiads.ads.splash;

import com.bontai.mobiads.ads.entity.AdDomain;

public abstract interface SplashAdListener
{
  public abstract void onSplashDismiss();
  
  public abstract void onSplashJumpDetail(AdDomain paramAdDomain);
  
  public abstract void onSplashLoadFailed();
  
  public abstract void onSplashPresent();
}
