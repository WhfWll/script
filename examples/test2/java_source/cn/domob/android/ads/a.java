package cn.domob.android.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import cn.domob.android.f.c;
import cn.domob.android.f.g;
import cn.domob.android.i.f;

public abstract class a
  extends WebView
{
  public static final int c = -1;
  private static f d = new f(a.class.getSimpleName());
  private static final int o = 20;
  public a a;
  public b b;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private int j;
  private boolean k = false;
  private boolean l = false;
  private boolean m = false;
  private boolean n = false;
  private String p;
  private g q;
  
  public a(Context paramContext, int paramInt)
  {
    super(paramContext);
    c();
    getSettings().setJavaScriptEnabled(true);
    getSettings().setPluginState(WebSettings.PluginState.ON);
    getSettings().setCacheMode(-1);
    getSettings().setGeolocationEnabled(true);
    getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
    j = 20;
    if (paramInt != -1)
    {
      d.a("Init WebView with custom background color.");
      setBackgroundColor(paramInt);
    }
    setWebViewClient(new WebViewClient()
    {
      public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
        a.b().a("onPageFinished");
        if (a.a(a.this))
        {
          a.b(a.this);
          return;
        }
        a.a(a.this, true);
        a.c(a.this);
      }
      
      public void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
      {
        super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
        a.b().a("onPageStarted");
      }
      
      public void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
      {
        super.onReceivedError(paramAnonymousWebView, paramAnonymousInt, paramAnonymousString1, paramAnonymousString2);
        a.b().a("onReceivedError");
        a.b(a.this, true);
        a.b(a.this);
      }
      
      public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        a.b().b("WebView url:%s", paramAnonymousString);
        if (a != null) {
          a.a((a)paramAnonymousWebView, paramAnonymousString);
        }
        return true;
      }
    });
    setWebChromeClient(new WebChromeClient()
    {
      public void onGeolocationPermissionsShowPrompt(String paramAnonymousString, GeolocationPermissions.Callback paramAnonymousCallback)
      {
        super.onGeolocationPermissionsShowPrompt(paramAnonymousString, paramAnonymousCallback);
        paramAnonymousCallback.invoke(paramAnonymousString, true, false);
      }
    });
  }
  
  /* Error */
  private String b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 146	java/lang/Object:getClass	()Ljava/lang/Class;
    //   4: invokevirtual 150	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   7: new 152	java/lang/StringBuilder
    //   10: dup
    //   11: invokespecial 154	java/lang/StringBuilder:<init>	()V
    //   14: ldc -100
    //   16: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: aload_1
    //   20: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   26: invokevirtual 169	java/lang/ClassLoader:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   29: astore 4
    //   31: aload 4
    //   33: ifnonnull +19 -> 52
    //   36: ldc -85
    //   38: astore_1
    //   39: aload_1
    //   40: areturn
    //   41: astore_1
    //   42: getstatic 64	cn/domob/android/ads/a:d	Lcn/domob/android/i/f;
    //   45: aload_1
    //   46: invokevirtual 174	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   49: ldc -85
    //   51: areturn
    //   52: new 152	java/lang/StringBuilder
    //   55: dup
    //   56: invokespecial 154	java/lang/StringBuilder:<init>	()V
    //   59: aload_0
    //   60: invokevirtual 178	cn/domob/android/ads/a:getContext	()Landroid/content/Context;
    //   63: invokevirtual 184	android/content/Context:getFilesDir	()Ljava/io/File;
    //   66: invokevirtual 189	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   69: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: getstatic 192	java/io/File:separator	Ljava/lang/String;
    //   75: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: aload_1
    //   79: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: astore_3
    //   86: new 186	java/io/File
    //   89: dup
    //   90: aload_3
    //   91: invokespecial 193	java/io/File:<init>	(Ljava/lang/String;)V
    //   94: astore_1
    //   95: new 195	java/io/FileOutputStream
    //   98: dup
    //   99: aload_1
    //   100: invokespecial 198	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   103: astore 5
    //   105: sipush 8192
    //   108: newarray byte
    //   110: astore_1
    //   111: aload 4
    //   113: aload_1
    //   114: invokevirtual 204	java/io/InputStream:read	([B)I
    //   117: istore_2
    //   118: iload_2
    //   119: iconst_m1
    //   120: if_icmpeq +64 -> 184
    //   123: aload 5
    //   125: aload_1
    //   126: iconst_0
    //   127: iload_2
    //   128: invokevirtual 208	java/io/FileOutputStream:write	([BII)V
    //   131: goto -20 -> 111
    //   134: astore_1
    //   135: ldc -85
    //   137: astore_3
    //   138: aload_3
    //   139: astore_1
    //   140: aload 4
    //   142: ifnull -103 -> 39
    //   145: aload_3
    //   146: astore_1
    //   147: aload 5
    //   149: ifnull -110 -> 39
    //   152: aload 4
    //   154: invokevirtual 211	java/io/InputStream:close	()V
    //   157: aload 5
    //   159: invokevirtual 212	java/io/FileOutputStream:close	()V
    //   162: ldc -85
    //   164: areturn
    //   165: astore_1
    //   166: ldc -85
    //   168: areturn
    //   169: astore_1
    //   170: getstatic 64	cn/domob/android/ads/a:d	Lcn/domob/android/i/f;
    //   173: aload_1
    //   174: invokevirtual 174	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   177: ldc -85
    //   179: areturn
    //   180: astore_1
    //   181: ldc -85
    //   183: areturn
    //   184: aload_3
    //   185: astore_1
    //   186: aload 4
    //   188: ifnull -149 -> 39
    //   191: aload_3
    //   192: astore_1
    //   193: aload 5
    //   195: ifnull -156 -> 39
    //   198: aload 4
    //   200: invokevirtual 211	java/io/InputStream:close	()V
    //   203: aload 5
    //   205: invokevirtual 212	java/io/FileOutputStream:close	()V
    //   208: aload_3
    //   209: areturn
    //   210: astore_1
    //   211: aload_3
    //   212: areturn
    //   213: astore_1
    //   214: aload 4
    //   216: ifnull +18 -> 234
    //   219: aload 5
    //   221: ifnull +13 -> 234
    //   224: aload 4
    //   226: invokevirtual 211	java/io/InputStream:close	()V
    //   229: aload 5
    //   231: invokevirtual 212	java/io/FileOutputStream:close	()V
    //   234: aload_1
    //   235: athrow
    //   236: astore_3
    //   237: goto -3 -> 234
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	240	0	this	a
    //   0	240	1	paramString	String
    //   117	11	2	i1	int
    //   85	127	3	str	String
    //   236	1	3	localIOException	java.io.IOException
    //   29	196	4	localInputStream	java.io.InputStream
    //   103	127	5	localFileOutputStream	java.io.FileOutputStream
    // Exception table:
    //   from	to	target	type
    //   0	31	41	java/lang/Exception
    //   111	118	134	java/io/IOException
    //   123	131	134	java/io/IOException
    //   152	162	165	java/io/IOException
    //   52	86	169	java/lang/Exception
    //   95	105	180	java/io/FileNotFoundException
    //   198	208	210	java/io/IOException
    //   111	118	213	finally
    //   123	131	213	finally
    //   224	234	236	java/io/IOException
  }
  
  private void c()
  {
    setHorizontalScrollBarEnabled(false);
    setHorizontalScrollbarOverlay(false);
    setVerticalScrollBarEnabled(false);
    setVerticalScrollbarOverlay(false);
    getSettings().setSupportZoom(false);
  }
  
  private void d()
  {
    if ((b != null) && (!n))
    {
      n = true;
      d.a("WebView finish callback.");
      b.a(this);
    }
  }
  
  private void e()
  {
    if ((b != null) && (!n))
    {
      n = true;
      d.a("WebView failed callback.");
      b.b(this);
    }
  }
  
  private void f()
  {
    if ((b != null) && (!n))
    {
      n = true;
      d.a("WebView timeout callback.");
      b.c(this);
    }
  }
  
  public String a(String paramString, String[] paramArrayOfString)
  {
    String str = paramString;
    if (paramArrayOfString != null)
    {
      str = paramString;
      if (paramArrayOfString.length != 0)
      {
        int i2 = paramArrayOfString.length;
        int i1 = 0;
        for (;;)
        {
          str = paramString;
          if (i1 >= i2) {
            break;
          }
          str = paramArrayOfString[i1];
          d.a("Insert js file :" + str);
          str = "file://" + b(str);
          d.a("JS file path :" + str);
          paramString = "<script src=\"" + str + "\"></script>" + paramString;
          i1 += 1;
        }
      }
    }
    return str;
  }
  
  public void a()
  {
    if ((e != null) || (f != null) || (g != null) || (h != null) || (i != null))
    {
      getSettings().setUseWideViewPort(true);
      super.loadDataWithBaseURL(e, f, g, h, i);
    }
  }
  
  public void a(int paramInt)
  {
    d.a("WebView's timeout is set as :" + paramInt);
    j = paramInt;
  }
  
  public void a(a paramA)
  {
    a = paramA;
  }
  
  public void a(b paramB)
  {
    b = paramB;
  }
  
  public void a(final String paramString)
  {
    if (paramString != null) {}
    try
    {
      paramString = "javascript:" + paramString;
      d.b(String.format("BaseWebView instance executes js: %s", new Object[] { paramString }));
      ((Activity)getContext()).runOnUiThread(new Runnable()
      {
        public void run()
        {
          loadUrl(paramString);
        }
      });
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    d.a(String.format("Load WebView with url = %s and data = %s.", new Object[] { paramString1, paramString2 }));
    new c().start();
    int i1;
    if (!cn.domob.android.i.h.e(paramString1))
    {
      i1 = 1;
      if (cn.domob.android.i.h.e(paramString2)) {
        break label74;
      }
    }
    label74:
    for (int i2 = 1;; i2 = 0)
    {
      if ((i1 == 0) || (i2 != 0)) {
        break label80;
      }
      loadUrl(paramString1);
      return;
      i1 = 0;
      break;
    }
    label80:
    if ((i1 == 0) && (i2 != 0))
    {
      loadData(paramString2, "text/html", "UTF-8");
      return;
    }
    if ((i1 != 0) && (i2 != 0))
    {
      loadDataWithBaseURL(paramString1 + "/", paramString2, "text/html", "UTF-8", null);
      return;
    }
    d.e(String.format("Error happened when loading WebView with URL = %s and data = %s", new Object[] { paramString1, paramString2 }));
  }
  
  public void a(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public void loadData(String paramString1, String paramString2, String paramString3)
  {
    loadDataWithBaseURL(null, paramString1, paramString2, paramString3, null);
  }
  
  public void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    if (!cn.domob.android.i.h.e(paramString2))
    {
      paramString2 = a(paramString2, null);
      e = paramString1;
      f = paramString2;
      g = paramString3;
      h = paramString4;
      i = paramString5;
      super.loadDataWithBaseURL(paramString1, paramString2, paramString3, paramString4, paramString5);
      return;
    }
    d.e("Data is null or empty while calling 'loadDataWithBaseURL'.");
  }
  
  public void loadUrl(String paramString)
  {
    p = paramString;
    try
    {
      if (paramString.startsWith("javascript:"))
      {
        super.loadUrl(paramString);
        return;
      }
      d.a(String.format("loadUrl() is called with url = %s.", new Object[] { paramString }));
      q = new g()
      {
        public void a(final String paramAnonymousString1, String paramAnonymousString2)
        {
          int i = a.h(a.this).a().d();
          a.b().a("WebView data downloading status code = " + i);
          if ((i >= 200) && (i < 400))
          {
            a.b().a("Download HTML data:" + paramAnonymousString1);
            ((Activity)getContext()).runOnUiThread(new Runnable()
            {
              public void run()
              {
                loadDataWithBaseURL(a.i(a.this), paramAnonymousString1, "text/html", "UTF-8", null);
              }
            });
          }
        }
      };
      c.a().a(getContext(), paramString, null, q);
      return;
    }
    catch (Exception paramString) {}
  }
  
  public static abstract interface a
  {
    public abstract void a(a paramA, String paramString);
  }
  
  public static abstract interface b
  {
    public abstract void a(a paramA);
    
    public abstract void b(a paramA);
    
    public abstract void c(a paramA);
  }
  
  class c
    extends Thread
  {
    private int b = 0;
    
    c() {}
    
    public void run()
    {
      while ((b < a.d(a.this)) && (!a.e(a.this))) {
        try
        {
          Thread.sleep(1000L);
          b += 1;
        }
        catch (InterruptedException localInterruptedException)
        {
          a.b().a(localInterruptedException);
        }
      }
      if ((b == a.d(a.this)) && (!a.e(a.this)) && (!a.a(a.this)))
      {
        a.b().e("WebView 加载超时");
        a.b(a.this, true);
        a.f(a.this);
        if (a.g(a.this)) {
          ((Activity)getContext()).runOnUiThread(new Runnable()
          {
            public void run()
            {
              try
              {
                stopLoading();
                return;
              }
              catch (Exception localException)
              {
                a.b().a(localException);
              }
            }
          });
        }
      }
    }
  }
}
