package com.bontai.mobiads.ads.splash;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.bangcle.andjni.JniLib;
import com.bontai.mobiads.ads.entity.AdDomain;

public class SplashDetailAd
{
  private SplashDetailAdView splashDetailAdView;
  
  static
  {
    JniLib.a(SplashDetailAd.class, 273);
  }
  
  public SplashDetailAd(Activity paramActivity, AdDomain paramAdDomain)
  {
    splashDetailAdView = new SplashDetailAdView(paramActivity, paramAdDomain);
  }
  
  public native void setSplashAdListener(SplashAdListener paramSplashAdListener);
  
  public native void splash(Context paramContext, View paramView);
}
