package cn.dbox.core.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.webkit.DownloadListener;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.MediaController;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.Toast;
import android.widget.VideoView;
import cn.dbox.core.bean.a;
import cn.dbox.core.h.e;
import cn.dbox.core.h.f;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

public class c
  extends RelativeLayout
{
  private static final String A = "url";
  private static final String B = "a_banner.png";
  private static final String C = "a_exit.png";
  private static final String D = "a_exit_on.png";
  private static final String E = "a_loading.png";
  private static final String F = "a_next_off.png";
  private static final String G = "a_next.png";
  private static final String H = "a_next_on.png";
  private static final String I = "a_out.png";
  private static final String J = "a_out_on.png";
  private static final String K = "a_preview_off.png";
  private static final String L = "a_preview.png";
  private static final String M = "a_preview_on.png";
  private static final String N = "a_refresh.png";
  private static final String O = "a_refresh_on.png";
  private static final int P = 35;
  private static final int Q = 35;
  private static final int R = 45;
  private static final String[] S = { ".mp4", ".3gp", ".asf", ".avi", ".m4u", ".m4v", ".mov", ".mp4", ".mpe", ".mpeg", ".mpg", ".mpg4" };
  private static cn.dbox.core.h.d f = new cn.dbox.core.h.d(c.class.getSimpleName());
  private static final String y = "close";
  private static final String z = "inapp";
  private boolean T = true;
  e a;
  a b;
  String c;
  cn.dbox.core.bean.d d;
  WebView e;
  private WebView g;
  private String h = null;
  private Context i = null;
  private String j;
  private b k;
  private c l;
  private a m;
  private RelativeLayout n;
  private float o = 1.0F;
  private View p;
  private ImageButton q;
  private ImageButton r;
  private ImageButton s;
  private ImageButton t;
  private ImageButton u;
  private ImageView v;
  private RotateAnimation w;
  private boolean x = false;
  
  public c(Context paramContext, String paramString1, String paramString2, a paramA, cn.dbox.core.bean.d paramD, boolean paramBoolean)
  {
    super(paramContext);
    d = paramD;
    T = paramBoolean;
    f.a(this, "Initialize LandingPageBuilder");
    i = paramContext;
    o = e.s(i);
    g = new WebView(i);
    h = paramString1;
    j = paramString2;
    m = paramA;
    try
    {
      p = e();
      f();
      a();
      return;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        f.a(paramContext);
      }
    }
  }
  
  public c(Context paramContext, String paramString1, String paramString2, b paramB, a paramA, boolean paramBoolean)
  {
    super(paramContext);
    b = paramA;
    T = paramBoolean;
    f.a(this, "Initialize LandingPageBuilder");
    i = paramContext;
    o = e.s(i);
    g = new WebView(i);
    h = paramString1;
    j = paramString2;
    k = paramB;
    try
    {
      p = e();
      f();
      a();
      return;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        f.a(paramContext);
      }
    }
  }
  
  public c(Context paramContext, String paramString1, String paramString2, c paramC, String paramString3, boolean paramBoolean)
  {
    super(paramContext);
    c = paramString3;
    T = paramBoolean;
    f.a(this, "Initialize LandingPageBuilder");
    i = paramContext;
    o = e.s(i);
    g = new WebView(i);
    h = paramString1;
    j = paramString2;
    l = paramC;
    try
    {
      p = e();
      f();
      a();
      return;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        f.a(paramContext);
      }
    }
  }
  
  private Drawable a(Context paramContext, String paramString)
  {
    try
    {
      paramContext = new BitmapDrawable(BitmapFactory.decodeStream(getClass().getClassLoader().getResourceAsStream("assets/" + paramString)));
      return paramContext;
    }
    catch (Exception paramContext)
    {
      f.a(paramContext);
      f.e("Failed to load source file:" + paramString);
    }
    return null;
  }
  
  private LinearLayout a(String paramString, ImageButton paramImageButton)
  {
    LinearLayout localLinearLayout = new LinearLayout(i);
    paramImageButton.setBackgroundDrawable(a(i, paramString));
    paramImageButton.setLayoutParams(new RelativeLayout.LayoutParams((int)(o * 35.0F), (int)(o * 35.0F)));
    localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 1.0F));
    localLinearLayout.setGravity(17);
    localLinearLayout.addView(paramImageButton);
    return localLinearLayout;
  }
  
  private View e()
    throws IOException
  {
    LinearLayout localLinearLayout = new LinearLayout(i);
    localLinearLayout.setOrientation(0);
    localLinearLayout.setGravity(17);
    localLinearLayout.setBackgroundDrawable(a(i, "a_banner.png"));
    localLinearLayout.addView(i());
    localLinearLayout.addView(k());
    localLinearLayout.addView(o());
    localLinearLayout.addView(m());
    if (T) {
      localLinearLayout.addView(h());
    }
    return localLinearLayout;
  }
  
  private void f()
    throws IOException
  {
    v = new ImageView(i);
    v.setBackgroundDrawable(new BitmapDrawable(BitmapFactory.decodeStream(getClass().getClassLoader().getResourceAsStream("assets/a_loading.png"))));
    v.setVisibility(8);
    w = new RotateAnimation(0.0F, 360.0F, 1, 0.5F, 1, 0.5F);
    w.setDuration(1000L);
    w.setInterpolator(new LinearInterpolator());
    w.setRepeatCount(-1);
  }
  
  private WebView g()
  {
    r();
    g.setVisibility(0);
    g.getSettings().setJavaScriptEnabled(true);
    g.getSettings().setPluginState(WebSettings.PluginState.ON);
    g.getSettings().setGeolocationEnabled(true);
    g.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
    g.getSettings().setUseWideViewPort(true);
    g.getSettings().setLoadWithOverviewMode(true);
    g.getSettings().setDomStorageEnabled(true);
    g.setDownloadListener(new DownloadListener()
    {
      public void onDownloadStart(String paramAnonymousString1, final String paramAnonymousString2, String paramAnonymousString3, String paramAnonymousString4, long paramAnonymousLong)
      {
        paramAnonymousString2 = paramAnonymousString1.substring(paramAnonymousString1.lastIndexOf("."));
        c.c().a(c.this, paramAnonymousString1 + "----on Download start:" + paramAnonymousString2);
        if (Arrays.asList(c.d()).contains(paramAnonymousString2))
        {
          paramAnonymousString2 = null;
          if ((c.a(c.this) instanceof Activity)) {
            paramAnonymousString2 = (Activity)c.a(c.this);
          }
          if ((paramAnonymousString2 == null) || (!paramAnonymousString2.isFinishing()))
          {
            c.a(c.this, true);
            c.b(c.this);
            Toast.makeText(c.a(c.this), "Loading video...", 0).show();
            paramAnonymousString2 = new Dialog(c.a(c.this), 16973831);
            paramAnonymousString2.setOnDismissListener(new DialogInterface.OnDismissListener()
            {
              public void onDismiss(DialogInterface paramAnonymous2DialogInterface)
              {
                c.c().b(c.this, "Video dialog dismissed.");
                c.a(c.this, false);
                c.c(c.this);
                if (c.d(c.this) == null) {
                  b();
                }
              }
            });
            paramAnonymousString3 = new VideoView(c.a(c.this));
            paramAnonymousString3.setVideoURI(Uri.parse(paramAnonymousString1));
            paramAnonymousString1 = new MediaController(c.a(c.this));
            paramAnonymousString1.setMediaPlayer(paramAnonymousString3);
            paramAnonymousString1.setAnchorView(paramAnonymousString3);
            paramAnonymousString3.setMediaController(paramAnonymousString1);
            paramAnonymousString3.setOnErrorListener(new MediaPlayer.OnErrorListener()
            {
              public boolean onError(MediaPlayer paramAnonymous2MediaPlayer, int paramAnonymous2Int1, int paramAnonymous2Int2)
              {
                c.c().e(c.this, "Video play error.");
                return false;
              }
            });
            paramAnonymousString3.setOnCompletionListener(new MediaPlayer.OnCompletionListener()
            {
              public void onCompletion(MediaPlayer paramAnonymous2MediaPlayer)
              {
                paramAnonymousString2.dismiss();
              }
            });
            paramAnonymousString1 = new RelativeLayout(c.a(c.this));
            paramAnonymousString1.setBackgroundColor(-16777216);
            paramAnonymousString1.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            paramAnonymousString4 = new RelativeLayout.LayoutParams(-1, -1);
            paramAnonymousString4.addRule(13);
            paramAnonymousString1.addView(paramAnonymousString3, paramAnonymousString4);
            paramAnonymousString2.setContentView(paramAnonymousString1);
            paramAnonymousString2.show();
            paramAnonymousString3.start();
            paramAnonymousString3.requestFocus();
          }
        }
        do
        {
          return;
          c.c().b("should not alert a dialog now");
          return;
          if (c.e(c.this) != null) {
            c.e(c.this).a(paramAnonymousString1, c.d(c.this), b);
          }
          if (c.f(c.this) != null) {
            c.f(c.this).a(paramAnonymousString1, c.d(c.this), c);
          }
        } while (c.g(c.this) == null);
        c.g(c.this).a(paramAnonymousString1, c.d(c.this), d);
      }
    });
    g.setWebViewClient(new d());
    g.setWebChromeClient(new WebChromeClient()
    {
      public void onGeolocationPermissionsShowPrompt(String paramAnonymousString, GeolocationPermissions.Callback paramAnonymousCallback)
      {
        super.onGeolocationPermissionsShowPrompt(paramAnonymousString, paramAnonymousCallback);
        paramAnonymousCallback.invoke(paramAnonymousString, true, false);
      }
      
      public void onProgressChanged(WebView paramAnonymousWebView, int paramAnonymousInt)
      {
        c.h(c.this);
        super.onProgressChanged(paramAnonymousWebView, paramAnonymousInt);
      }
      
      public void onReceivedTitle(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        super.onReceivedTitle(paramAnonymousWebView, paramAnonymousString);
        if (a != null) {
          a.a(paramAnonymousString);
        }
      }
    });
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(12);
    g.setLayoutParams(localLayoutParams);
    g.loadUrl(h);
    return g;
  }
  
  private LinearLayout h()
  {
    u = new ImageButton(i);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams((int)(o * 35.0F), (int)(o * 35.0F));
    u.setLayoutParams(localLayoutParams);
    u.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        b();
      }
    });
    u.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (paramAnonymousMotionEvent.getAction() == 0) {
          c.j(c.this).setBackgroundDrawable(c.a(c.this, c.a(c.this), "a_exit_on.png"));
        }
        for (;;)
        {
          return false;
          if (paramAnonymousMotionEvent.getAction() == 1) {
            c.j(c.this).setBackgroundDrawable(c.a(c.this, c.a(c.this), "a_exit.png"));
          }
        }
      }
    });
    return a("a_exit.png", u);
  }
  
  private LinearLayout i()
  {
    q = new ImageButton(i);
    Object localObject = new LinearLayout.LayoutParams((int)(o * 35.0F), (int)(o * 35.0F));
    q.setLayoutParams((ViewGroup.LayoutParams)localObject);
    if (g.canGoBack()) {}
    for (localObject = "a_preview.png";; localObject = "a_preview_off.png")
    {
      q.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          c.k(c.this);
        }
      });
      q.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          if (c.i(c.this).canGoBack())
          {
            if (paramAnonymousMotionEvent.getAction() != 0) {
              break label48;
            }
            c.l(c.this).setBackgroundDrawable(c.a(c.this, c.a(c.this), "a_preview_on.png"));
          }
          for (;;)
          {
            return false;
            label48:
            if (paramAnonymousMotionEvent.getAction() == 1) {
              c.l(c.this).setBackgroundDrawable(c.a(c.this, c.a(c.this), "a_preview.png"));
            }
          }
        }
      });
      return a((String)localObject, q);
    }
  }
  
  private void j()
  {
    if (g == null) {}
    while (!g.canGoBack()) {
      return;
    }
    g.goBack();
    q();
  }
  
  private LinearLayout k()
  {
    r = new ImageButton(i);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams((int)(o * 35.0F), (int)(o * 35.0F));
    r.setLayoutParams(localLayoutParams);
    r.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        c.m(c.this);
      }
    });
    r.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (c.i(c.this).canGoForward())
        {
          if (paramAnonymousMotionEvent.getAction() != 0) {
            break label48;
          }
          c.n(c.this).setBackgroundDrawable(c.a(c.this, c.a(c.this), "a_next_on.png"));
        }
        for (;;)
        {
          return false;
          label48:
          if (paramAnonymousMotionEvent.getAction() == 1) {
            c.n(c.this).setBackgroundDrawable(c.a(c.this, c.a(c.this), "a_next.png"));
          }
        }
      }
    });
    return a("a_next_off.png", r);
  }
  
  private void l()
  {
    if (g == null) {}
    while (!g.canGoForward()) {
      return;
    }
    g.goForward();
    q();
  }
  
  private LinearLayout m()
  {
    s = new ImageButton(i);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams((int)(o * 35.0F), (int)(o * 35.0F));
    s.setLayoutParams(localLayoutParams);
    s.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        try
        {
          c.o(c.this);
          return;
        }
        catch (Exception paramAnonymousView)
        {
          c.c().e(this, "intent " + c.p(c.this) + " error");
        }
      }
    });
    s.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (paramAnonymousMotionEvent.getAction() == 0) {
          c.q(c.this).setBackgroundDrawable(c.a(c.this, c.a(c.this), "a_out_on.png"));
        }
        for (;;)
        {
          return false;
          if (paramAnonymousMotionEvent.getAction() == 1) {
            c.q(c.this).setBackgroundDrawable(c.a(c.this, c.a(c.this), "a_out.png"));
          }
        }
      }
    });
    return a("a_out.png", s);
  }
  
  private void n()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(h));
    i.startActivity(localIntent);
  }
  
  private LinearLayout o()
  {
    t = new ImageButton(i);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams((int)(o * 35.0F), (int)(o * 35.0F));
    t.setLayoutParams(localLayoutParams);
    t.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        try
        {
          c.r(c.this);
          return;
        }
        catch (Exception paramAnonymousView)
        {
          c.c().e(this, "intent " + c.p(c.this) + " error");
        }
      }
    });
    t.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (paramAnonymousMotionEvent.getAction() == 0) {
          c.s(c.this).setBackgroundDrawable(c.a(c.this, c.a(c.this), "a_refresh_on.png"));
        }
        for (;;)
        {
          return false;
          if (paramAnonymousMotionEvent.getAction() == 1) {
            c.s(c.this).setBackgroundDrawable(c.a(c.this, c.a(c.this), "a_refresh.png"));
          }
        }
      }
    });
    return a("a_refresh.png", t);
  }
  
  private void p()
  {
    if (g == null) {
      return;
    }
    g.reload();
  }
  
  private void q()
  {
    if (g.canGoBack()) {
      q.setBackgroundDrawable(a(i, "a_preview.png"));
    }
    while (g.canGoForward())
    {
      r.setBackgroundDrawable(a(i, "a_next.png"));
      return;
      q.setBackgroundDrawable(a(i, "a_preview_off.png"));
    }
    r.setBackgroundDrawable(a(i, "a_next_off.png"));
  }
  
  private void r()
  {
    int i2 = 1;
    int i1;
    if (v != null)
    {
      i1 = 1;
      if (v == null) {
        break label49;
      }
    }
    for (;;)
    {
      if ((i1 & i2) != 0)
      {
        v.setVisibility(0);
        v.startAnimation(w);
      }
      return;
      i1 = 0;
      break;
      label49:
      i2 = 0;
    }
  }
  
  private void s()
  {
    int i3 = 1;
    int i1;
    int i2;
    if (v != null)
    {
      i1 = 1;
      if (v == null) {
        break label57;
      }
      i2 = 1;
      label20:
      if (x) {
        break label62;
      }
    }
    for (;;)
    {
      if ((i1 & i2 & i3) != 0)
      {
        v.clearAnimation();
        v.setVisibility(8);
      }
      return;
      i1 = 0;
      break;
      label57:
      i2 = 0;
      break label20;
      label62:
      i3 = 0;
    }
  }
  
  public void a()
  {
    n = new RelativeLayout(i);
    n.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    e = g();
    n.addView(e);
    g.getLayoutParams()).bottomMargin = ((int)(o * 45.0F));
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, (int)(o * 45.0F));
    localLayoutParams.addRule(12);
    n.addView(p, localLayoutParams);
    setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    addView(n);
  }
  
  public void a(e paramE)
  {
    a = paramE;
  }
  
  public void a(String paramString)
  {
    if ((g != null) && (paramString != null)) {
      g.loadUrl(paramString);
    }
  }
  
  public void b()
  {
    if (a != null) {
      a.a();
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(cn.dbox.core.bean.d paramD);
    
    public abstract void a(String paramString, WebView paramWebView, cn.dbox.core.bean.d paramD);
    
    public abstract void a(String paramString1, String paramString2, cn.dbox.core.bean.d paramD);
    
    public abstract void b(cn.dbox.core.bean.d paramD);
    
    public abstract void c(cn.dbox.core.bean.d paramD);
    
    public abstract void d(cn.dbox.core.bean.d paramD);
  }
  
  public static abstract interface b
  {
    public abstract void a(String paramString, WebView paramWebView, a paramA);
    
    public abstract void a(String paramString1, String paramString2, a paramA);
    
    public abstract void c(a paramA);
    
    public abstract void d(a paramA);
    
    public abstract void e(a paramA);
    
    public abstract void f(a paramA);
  }
  
  public static abstract interface c
  {
    public abstract void a(String paramString);
    
    public abstract void a(String paramString1, WebView paramWebView, String paramString2);
    
    public abstract void a(String paramString1, String paramString2, String paramString3);
    
    public abstract void b(String paramString);
    
    public abstract void c(String paramString);
    
    public abstract void d(String paramString);
  }
  
  class d
    extends WebViewClient
  {
    d() {}
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      super.onPageFinished(paramWebView, paramString);
      c.c().a("onPageFinished with URL:" + paramString);
      if (a != null) {
        a.b();
      }
      if (c.e(c.this) != null) {
        c.e(c.this).c(b);
      }
      if (c.f(c.this) != null) {
        c.f(c.this).a(c);
      }
      if (c.g(c.this) != null) {
        c.g(c.this).a(d);
      }
      c.c(c.this);
      c.h(c.this);
    }
    
    public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      super.onPageStarted(paramWebView, paramString, paramBitmap);
      c.c().a("onPageStarted with URL:" + paramString);
      c.b(c.this);
      c.h(c.this);
    }
    
    public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
    {
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
      if (c.e(c.this) != null) {
        c.e(c.this).d(b);
      }
      if (c.f(c.this) != null) {
        c.f(c.this).b(c);
      }
      if (c.g(c.this) != null) {
        c.g(c.this).b(d);
      }
      c.c().e(c.this, String.format("WebView ReceivedError, errorCode=%d, description=%s, failingUrl=%s", new Object[] { Integer.valueOf(paramInt), paramString1, paramString2 }));
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      c.c().a("Override URL loading in landing page:" + paramString);
      if (paramString.startsWith(f.a()))
      {
        Object localObject2 = Uri.parse(paramString);
        Object localObject1 = ((Uri)localObject2).getHost();
        if (((String)localObject1).equals("close"))
        {
          b();
          return true;
        }
        if (((String)localObject1).equals("inapp")) {
          localObject1 = null;
        }
        try
        {
          localObject2 = ((Uri)localObject2).getQueryParameter("url");
          localObject1 = localObject2;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            c.c().e("Error happened during loading Landing Page.");
            c.c().a(localException);
          }
        }
        c.c().a("Load landing page with URL:" + (String)localObject1);
        paramWebView.loadUrl((String)localObject1);
      }
      for (;;)
      {
        if (c.e(c.this) != null) {
          c.e(c.this).a(paramString, c.i(c.this), b);
        }
        if (c.f(c.this) != null) {
          c.f(c.this).a(paramString, c.i(c.this), c);
        }
        if (c.g(c.this) == null) {
          break;
        }
        c.g(c.this).a(paramString, c.i(c.this), d);
        return true;
        if (paramString.startsWith("http")) {
          paramWebView.loadUrl(paramString);
        }
      }
    }
  }
  
  public static abstract interface e
  {
    public abstract void a();
    
    public abstract void a(String paramString);
    
    public abstract void b();
  }
}
