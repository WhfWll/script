package cn.domob.android.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AnimationSet;
import android.widget.ImageButton;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.VideoView;
import cn.domob.android.b.a;
import cn.domob.android.i.d;
import cn.domob.android.i.f;

public class DomobFeedsAdView
  extends u
  implements DomobInterstitialAdListener
{
  private static f r = new f(DomobFeedsAdView.class.getSimpleName());
  private DomobFeedsAdListener s;
  private Handler t = new Handler(Looper.getMainLooper());
  
  public DomobFeedsAdView(Context paramContext, String paramString1, String paramString2)
  {
    super(paramContext, paramString1, paramString2, "320x240");
    b = DomobAdView.a.f.ordinal();
    a(this, null);
    setLayoutParams(new ViewGroup.LayoutParams(-1, 0));
    setBackgroundColor(-16777216);
    t();
  }
  
  private void c(final Context paramContext)
  {
    try
    {
      q = true;
      a.b = paramContext;
      ((Activity)c).runOnUiThread(new Runnable()
      {
        public void run()
        {
          j.c localC = a.B().d();
          int i = (int)localC.w();
          if (localC.u())
          {
            int j = (int)(a.t(paramContext) * 36.0F);
            int k = (int)(a.t(paramContext) * 36.0F);
            final ImageButton localImageButton = new ImageButton(paramContext);
            localImageButton.setVisibility(8);
            localImageButton.setBackgroundDrawable(d.b(paramContext, "domob_close.png"));
            RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(j, k);
            localLayoutParams.addRule(11);
            addView(localImageButton, localLayoutParams);
            localImageButton.setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymous2View)
              {
                close();
              }
            });
            DomobFeedsAdView.a(DomobFeedsAdView.this).postDelayed(new Runnable()
            {
              public void run()
              {
                localImageButton.setVisibility(0);
              }
            }, i * 1000);
          }
          getLayoutParams().height = DomobFeedsAdView.this.j;
          if (localC.x()) {
            new Handler().postDelayed(new Runnable()
            {
              public void run()
              {
                if (a()) {
                  o();
                }
              }
            }, i * 1000);
          }
          a.a(System.currentTimeMillis());
          localC = a.B().d();
          float f = localC.y();
          if (localC.z()) {
            DomobFeedsAdView.a(DomobFeedsAdView.this).postDelayed(new Runnable()
            {
              public void run()
              {
                close();
              }
            }, (f * 1000.0F));
          }
          n();
        }
      });
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  private void t()
  {
    addView(new VideoView(c));
  }
  
  public void close()
  {
    if (p)
    {
      getLayoutParamsheight = 0;
      invalidate();
      p();
    }
  }
  
  public void closeFeedsAd()
  {
    close();
  }
  
  public boolean isFeedsAdReady()
  {
    return m();
  }
  
  public void loadFeedsAd()
  {
    if (!isFeedsAdReady()) {
      l();
    }
    while (r()) {
      return;
    }
    r.d(f.b(), "the last ad didn't show, so please show it before request the next ad");
  }
  
  public void onDomobAdClicked(DomobAdView paramDomobAdView)
  {
    if (s != null) {
      s.onFeedsAdClicked(this);
    }
  }
  
  public void onInterstitialAdClicked(DomobInterstitialAd paramDomobInterstitialAd) {}
  
  public void onInterstitialAdDismiss()
  {
    if (s != null) {
      s.onFeedsAdDismiss();
    }
  }
  
  public void onInterstitialAdFailed(DomobAdManager.ErrorCode paramErrorCode)
  {
    if (s != null) {
      s.onFeedsAdFailed(paramErrorCode);
    }
  }
  
  public void onInterstitialAdLeaveApplication()
  {
    if (s != null) {
      s.onFeedsAdLeaveApplication();
    }
  }
  
  public void onInterstitialAdPresent()
  {
    if (s != null) {
      s.onFeedsAdPresent();
    }
  }
  
  public void onInterstitialAdReady()
  {
    if (s != null) {
      s.onFeedsAdReady();
    }
  }
  
  public void onLandingPageClose()
  {
    if (s != null) {
      s.onLandingPageClose();
    }
  }
  
  public void onLandingPageOpen()
  {
    if (s != null) {
      s.onLandingPageOpen();
    }
  }
  
  public void setFeedsAdListener(DomobFeedsAdListener paramDomobFeedsAdListener)
  {
    s = paramDomobFeedsAdListener;
  }
  
  public void setKeyword(String paramString)
  {
    super.setKeyword(paramString);
  }
  
  public void setUserBirthdayStr(String paramString)
  {
    super.setUserBirthdayStr(paramString);
  }
  
  public void setUserGender(String paramString)
  {
    super.setUserGender(paramString);
  }
  
  public void setUserPostcode(String paramString)
  {
    super.setUserPostcode(paramString);
  }
  
  public void showAd(final n paramN, AnimationSet[] paramArrayOfAnimationSet)
  {
    g = paramN;
    paramN = paramN.b();
    ((Activity)c).runOnUiThread(new Runnable()
    {
      public void run()
      {
        removeAllViews();
        RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(i, j);
        localLayoutParams.addRule(13);
        addView(paramN, localLayoutParams);
        if (o != null) {
          o.onDomobAdReturned(DomobFeedsAdView.this);
        }
      }
    });
    a.D();
  }
  
  public void showFeedsAd(Context paramContext)
  {
    if (!r())
    {
      r.b("Show Feeds View.");
      c(paramContext);
      return;
    }
    r.d(this, "Feeds ad is not ready or ad is showing");
  }
}
