package cn.domob.wall.core.a;

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
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.TranslateAnimation;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
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
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.h.d;
import cn.domob.wall.core.h.e;
import cn.domob.wall.core.h.f;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

public class b
{
  private static final String A = "a_banner.png";
  private static final String B = "a_exit.png";
  private static final String C = "a_exit_on.png";
  private static final String D = "a_loading.png";
  private static final String E = "a_next_off.png";
  private static final String F = "a_next.png";
  private static final String G = "a_next_on.png";
  private static final String H = "a_out.png";
  private static final String I = "a_out_on.png";
  private static final String J = "a_preview_off.png";
  private static final String K = "a_preview.png";
  private static final String L = "a_preview_on.png";
  private static final String M = "a_refresh.png";
  private static final String N = "a_refresh_on.png";
  private static final int O = 35;
  private static final int P = 35;
  private static final int Q = 45;
  private static final int R = 500;
  private static final String[] S = { ".mp4", ".3gp", ".asf", ".avi", ".m4u", ".m4v", ".mov", ".mp4", ".mpe", ".mpeg", ".mpg", ".mpg4" };
  private static d b = new d(b.class.getSimpleName());
  private static final String x = "close";
  private static final String y = "inapp";
  private static final String z = "url";
  AdInfo a;
  private WebView c;
  private String d = null;
  private Context e = null;
  private String f;
  private Dialog g = null;
  private a h;
  private Handler i = new Handler();
  private RelativeLayout j;
  private float k = 1.0F;
  private View l;
  private ImageButton m;
  private ImageButton n;
  private ImageButton o;
  private ImageButton p;
  private ImageButton q;
  private ImageView r;
  private RotateAnimation s;
  private Animation t;
  private Animation u;
  private boolean v = false;
  private boolean w = false;
  
  public b(Context paramContext, String paramString1, String paramString2, a paramA, AdInfo paramAdInfo)
  {
    a = paramAdInfo;
    b.a(this, "Initialize LandingPageBuilder");
    e = paramContext;
    k = e.s(e);
    c = new WebView(e);
    d = paramString1;
    f = paramString2;
    h = paramA;
    try
    {
      l = d();
      e();
      return;
    }
    catch (Exception paramContext)
    {
      b.a(paramContext);
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
      b.a(paramContext);
      b.e("Failed to load source file:" + paramString);
    }
    return null;
  }
  
  private LinearLayout a(String paramString, ImageButton paramImageButton)
  {
    LinearLayout localLinearLayout = new LinearLayout(e);
    paramImageButton.setBackgroundDrawable(a(e, paramString));
    paramImageButton.setLayoutParams(new LinearLayout.LayoutParams((int)(k * 35.0F), (int)(k * 35.0F)));
    localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 1.0F));
    localLinearLayout.setGravity(17);
    localLinearLayout.addView(paramImageButton);
    return localLinearLayout;
  }
  
  private boolean a(int paramInt1, int paramInt2)
  {
    int i1 = Integer.toBinaryString(paramInt2).length() - 1;
    return (paramInt1 >>> i1) % 2 == (paramInt2 >>> i1) % 2;
  }
  
  private View d()
    throws IOException
  {
    LinearLayout localLinearLayout = new LinearLayout(e);
    localLinearLayout.setOrientation(0);
    localLinearLayout.setGravity(17);
    localLinearLayout.setBackgroundDrawable(a(e, "a_banner.png"));
    localLinearLayout.addView(j());
    localLinearLayout.addView(l());
    localLinearLayout.addView(p());
    localLinearLayout.addView(n());
    localLinearLayout.addView(h());
    return localLinearLayout;
  }
  
  private void e()
    throws IOException
  {
    r = new ImageView(e);
    r.setBackgroundDrawable(new BitmapDrawable(BitmapFactory.decodeStream(getClass().getClassLoader().getResourceAsStream("assets/a_loading.png"))));
    r.setVisibility(8);
    s = new RotateAnimation(0.0F, 360.0F, 1, 0.5F, 1, 0.5F);
    s.setDuration(1000L);
    s.setInterpolator(new LinearInterpolator());
    s.setRepeatCount(-1);
  }
  
  private boolean f()
  {
    if ((e instanceof Activity)) {
      return a(e).getWindow().getAttributes().flags, 1024);
    }
    return false;
  }
  
  private WebView g()
  {
    s();
    c.setVisibility(0);
    c.getSettings().setJavaScriptEnabled(true);
    c.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
    c.getSettings().setUseWideViewPort(true);
    c.setDownloadListener(new DownloadListener()
    {
      public void onDownloadStart(String paramAnonymousString1, final String paramAnonymousString2, String paramAnonymousString3, String paramAnonymousString4, long paramAnonymousLong)
      {
        paramAnonymousString2 = paramAnonymousString1.substring(paramAnonymousString1.lastIndexOf("."));
        b.b().a(b.this, paramAnonymousString1 + "----on Download start:" + paramAnonymousString2);
        if (Arrays.asList(b.c()).contains(paramAnonymousString2))
        {
          paramAnonymousString2 = null;
          if ((b.e(b.this) instanceof Activity)) {
            paramAnonymousString2 = (Activity)b.e(b.this);
          }
          if ((paramAnonymousString2 == null) || (!paramAnonymousString2.isFinishing()))
          {
            b.a(b.this, true);
            b.f(b.this);
            Toast.makeText(b.e(b.this), "Loading video...", 0).show();
            paramAnonymousString2 = new Dialog(b.e(b.this), 16973831);
            paramAnonymousString2.setOnDismissListener(new DialogInterface.OnDismissListener()
            {
              public void onDismiss(DialogInterface paramAnonymous2DialogInterface)
              {
                b.b().b(b.this, "Video dialog dismissed.");
                b.a(b.this, false);
                b.g(b.this);
                if (b.h(b.this) == null) {
                  b.i(b.this);
                }
              }
            });
            paramAnonymousString3 = new VideoView(b.e(b.this));
            paramAnonymousString3.setVideoURI(Uri.parse(paramAnonymousString1));
            paramAnonymousString1 = new MediaController(b.e(b.this));
            paramAnonymousString1.setMediaPlayer(paramAnonymousString3);
            paramAnonymousString1.setAnchorView(paramAnonymousString3);
            paramAnonymousString3.setMediaController(paramAnonymousString1);
            paramAnonymousString3.setOnErrorListener(new MediaPlayer.OnErrorListener()
            {
              public boolean onError(MediaPlayer paramAnonymous2MediaPlayer, int paramAnonymous2Int1, int paramAnonymous2Int2)
              {
                b.b().e(b.this, "Video play error.");
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
            paramAnonymousString1 = new RelativeLayout(b.e(b.this));
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
        while (b.c(b.this) == null)
        {
          return;
          b.b().b("should not alert a dialog now");
          return;
        }
        b.c(b.this).a(paramAnonymousString1, b.h(b.this), a);
      }
    });
    c.setWebViewClient(new b());
    c.setWebChromeClient(new WebChromeClient()
    {
      public void onProgressChanged(WebView paramAnonymousWebView, int paramAnonymousInt)
      {
        b.j(b.this);
        super.onProgressChanged(paramAnonymousWebView, paramAnonymousInt);
      }
    });
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(12);
    c.setLayoutParams(localLayoutParams);
    c.loadUrl(d);
    return c;
  }
  
  private LinearLayout h()
  {
    q = new ImageButton(e);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams((int)(k * 35.0F), (int)(k * 35.0F));
    q.setLayoutParams(localLayoutParams);
    q.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        b.i(b.this);
      }
    });
    q.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (paramAnonymousMotionEvent.getAction() == 0) {
          b.k(b.this).setBackgroundDrawable(b.a(b.this, b.e(b.this), "a_exit_on.png"));
        }
        for (;;)
        {
          return false;
          if (paramAnonymousMotionEvent.getAction() == 1) {
            b.k(b.this).setBackgroundDrawable(b.a(b.this, b.e(b.this), "a_exit.png"));
          }
        }
      }
    });
    return a("a_exit.png", q);
  }
  
  private void i()
  {
    u = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, 1.0F);
    u.setDuration(500L);
    j.startAnimation(u);
    i.postDelayed(new Runnable()
    {
      public void run()
      {
        b.l(b.this).dismiss();
      }
    }, 500L);
  }
  
  private LinearLayout j()
  {
    m = new ImageButton(e);
    Object localObject = new LinearLayout.LayoutParams((int)(k * 35.0F), (int)(k * 35.0F));
    m.setLayoutParams((ViewGroup.LayoutParams)localObject);
    if (c.canGoBack()) {}
    for (localObject = "a_preview.png";; localObject = "a_preview_off.png")
    {
      m.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          b.m(b.this);
        }
      });
      m.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          if (b.a(b.this).canGoBack())
          {
            if (paramAnonymousMotionEvent.getAction() != 0) {
              break label48;
            }
            b.n(b.this).setBackgroundDrawable(b.a(b.this, b.e(b.this), "a_preview_on.png"));
          }
          for (;;)
          {
            return false;
            label48:
            if (paramAnonymousMotionEvent.getAction() == 1) {
              b.n(b.this).setBackgroundDrawable(b.a(b.this, b.e(b.this), "a_preview.png"));
            }
          }
        }
      });
      return a((String)localObject, m);
    }
  }
  
  private void k()
  {
    if (c == null) {}
    while (!c.canGoBack()) {
      return;
    }
    c.goBack();
    r();
  }
  
  private LinearLayout l()
  {
    n = new ImageButton(e);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams((int)(k * 35.0F), (int)(k * 35.0F));
    n.setLayoutParams(localLayoutParams);
    n.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        b.o(b.this);
      }
    });
    n.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (b.a(b.this).canGoForward())
        {
          if (paramAnonymousMotionEvent.getAction() != 0) {
            break label48;
          }
          b.p(b.this).setBackgroundDrawable(b.a(b.this, b.e(b.this), "a_next_on.png"));
        }
        for (;;)
        {
          return false;
          label48:
          if (paramAnonymousMotionEvent.getAction() == 1) {
            b.p(b.this).setBackgroundDrawable(b.a(b.this, b.e(b.this), "a_next.png"));
          }
        }
      }
    });
    return a("a_next_off.png", n);
  }
  
  private void m()
  {
    if (c == null) {}
    while (!c.canGoForward()) {
      return;
    }
    c.goForward();
    r();
  }
  
  private LinearLayout n()
  {
    o = new ImageButton(e);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams((int)(k * 35.0F), (int)(k * 35.0F));
    o.setLayoutParams(localLayoutParams);
    o.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        try
        {
          b.q(b.this);
          return;
        }
        catch (Exception paramAnonymousView)
        {
          b.b().e(this, "intent " + b.r(b.this) + " error");
        }
      }
    });
    o.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (paramAnonymousMotionEvent.getAction() == 0) {
          b.s(b.this).setBackgroundDrawable(b.a(b.this, b.e(b.this), "a_out_on.png"));
        }
        for (;;)
        {
          return false;
          if (paramAnonymousMotionEvent.getAction() == 1) {
            b.s(b.this).setBackgroundDrawable(b.a(b.this, b.e(b.this), "a_out.png"));
          }
        }
      }
    });
    return a("a_out.png", o);
  }
  
  private void o()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(d));
    e.startActivity(localIntent);
  }
  
  private LinearLayout p()
  {
    p = new ImageButton(e);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams((int)(k * 35.0F), (int)(k * 35.0F));
    p.setLayoutParams(localLayoutParams);
    p.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        try
        {
          b.t(b.this);
          return;
        }
        catch (Exception paramAnonymousView)
        {
          b.b().e(this, "intent " + b.r(b.this) + " error");
        }
      }
    });
    p.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (paramAnonymousMotionEvent.getAction() == 0) {
          b.u(b.this).setBackgroundDrawable(b.a(b.this, b.e(b.this), "a_refresh_on.png"));
        }
        for (;;)
        {
          return false;
          if (paramAnonymousMotionEvent.getAction() == 1) {
            b.u(b.this).setBackgroundDrawable(b.a(b.this, b.e(b.this), "a_refresh.png"));
          }
        }
      }
    });
    return a("a_refresh.png", p);
  }
  
  private void q()
  {
    if (c == null) {
      return;
    }
    c.reload();
  }
  
  private void r()
  {
    if (c.canGoBack()) {
      m.setBackgroundDrawable(a(e, "a_preview.png"));
    }
    while (c.canGoForward())
    {
      n.setBackgroundDrawable(a(e, "a_next.png"));
      return;
      m.setBackgroundDrawable(a(e, "a_preview_off.png"));
    }
    n.setBackgroundDrawable(a(e, "a_next_off.png"));
  }
  
  private void s()
  {
    int i2 = 1;
    int i1;
    if (r != null)
    {
      i1 = 1;
      if (r == null) {
        break label49;
      }
    }
    for (;;)
    {
      if ((i1 & i2) != 0)
      {
        r.setVisibility(0);
        r.startAnimation(s);
      }
      return;
      i1 = 0;
      break;
      label49:
      i2 = 0;
    }
  }
  
  private void t()
  {
    int i3 = 1;
    int i1;
    int i2;
    if (r != null)
    {
      i1 = 1;
      if (r == null) {
        break label57;
      }
      i2 = 1;
      label20:
      if (w) {
        break label62;
      }
    }
    for (;;)
    {
      if ((i1 & i2 & i3) != 0)
      {
        r.clearAnimation();
        r.setVisibility(8);
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
  
  public Dialog a()
    throws Exception
  {
    b.a(this, "Start to build FS/RFS landingpage");
    j = new RelativeLayout(e);
    j.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    j.addView(g());
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13);
    j.addView(r, localLayoutParams);
    if (f())
    {
      g = new Dialog(e, 16973841);
      c.getLayoutParams()).bottomMargin = ((int)(k * 45.0F));
      localLayoutParams = new RelativeLayout.LayoutParams(-1, (int)(k * 45.0F));
      localLayoutParams.addRule(12);
      j.addView(l, localLayoutParams);
    }
    for (;;)
    {
      t = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
      t.setDuration(500L);
      j.startAnimation(t);
      g.getWindow().getAttributes().dimAmount = 0.5F;
      g.getWindow().setFlags(2, 2);
      g.setContentView(j);
      g.setOnDismissListener(new DialogInterface.OnDismissListener()
      {
        public void onDismiss(DialogInterface paramAnonymousDialogInterface)
        {
          b.b(b.this).removeView(b.a(b.this));
          if (b.c(b.this) != null) {
            b.c(b.this).l(a);
          }
          if ((!b.d(b.this)) && (b.c(b.this) != null)) {
            b.c(b.this).k(a);
          }
        }
      });
      return g;
      g = new Dialog(e, 16973840);
      c.getLayoutParams()).bottomMargin = ((int)(k * 45.0F));
      localLayoutParams = new RelativeLayout.LayoutParams(-1, (int)(k * 45.0F));
      localLayoutParams.addRule(12);
      j.addView(l, localLayoutParams);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString, WebView paramWebView, AdInfo paramAdInfo);
    
    public abstract void a(String paramString1, String paramString2, AdInfo paramAdInfo);
    
    public abstract void i(AdInfo paramAdInfo);
    
    public abstract void j(AdInfo paramAdInfo);
    
    public abstract void k(AdInfo paramAdInfo);
    
    public abstract void l(AdInfo paramAdInfo);
  }
  
  class b
    extends WebViewClient
  {
    b() {}
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      super.onPageFinished(paramWebView, paramString);
      b.b().a("onPageFinished with URL:" + paramString);
      b.b(b.this, true);
      if (b.c(b.this) != null) {
        b.c(b.this).i(a);
      }
      b.g(b.this);
      b.j(b.this);
    }
    
    public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      super.onPageStarted(paramWebView, paramString, paramBitmap);
      b.b().a("onPageStarted with URL:" + paramString);
      b.f(b.this);
      b.j(b.this);
    }
    
    public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
    {
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
      if (b.c(b.this) != null) {
        b.c(b.this).j(a);
      }
      b.b().e(b.this, String.format("WebView ReceivedError, errorCode=%d, description=%s, failingUrl=%s", new Object[] { Integer.valueOf(paramInt), paramString1, paramString2 }));
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      b.b().a("Override URL loading in landing page:" + paramString);
      Object localObject2;
      Object localObject1;
      if (paramString.startsWith(f.a()))
      {
        localObject2 = Uri.parse(paramString);
        localObject1 = ((Uri)localObject2).getHost();
        if (((String)localObject1).equals("close")) {
          b.i(b.this);
        }
      }
      for (;;)
      {
        return true;
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
            b.b().e("Error happened during loading Landing Page.");
            b.b().a(localException);
          }
        }
        b.b().a("Load landing page with URL:" + (String)localObject1);
        paramWebView.loadUrl((String)localObject1);
        while (b.c(b.this) != null)
        {
          b.c(b.this).a(paramString, b.a(b.this), a);
          return true;
          if (paramString.startsWith("http")) {
            paramWebView.loadUrl(paramString);
          }
        }
      }
    }
  }
}
