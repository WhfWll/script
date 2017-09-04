package com.bontai.mobiads.ads.tour;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bangcle.andjni.JniLib;
import com.bontai.mobiads.ads.ADDialog;

public class TourMainView
  extends RelativeLayout
{
  private Context context;
  protected Handler handler = new Handler()
  {
    static
    {
      JniLib.a(1.class, 291);
    }
    
    public native void handleMessage(Message paramAnonymousMessage);
  };
  private ImageView loadingIV;
  private WebView mWebView;
  private ADDialog tourMainDialog;
  
  static
  {
    JniLib.a(TourMainView.class, 297);
  }
  
  public TourMainView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TourMainView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    context = paramContext;
  }
  
  @SuppressLint({"NewApi"})
  public native void dealMainpage(View paramView);
  
  public native void jumpTourMainView();
  
  public class xWebChromeClient
    extends WebChromeClient
  {
    static
    {
      JniLib.a(xWebChromeClient.class, 296);
    }
    
    public xWebChromeClient() {}
    
    public native void onProgressChanged(WebView paramWebView, int paramInt);
    
    public native void onReceivedTitle(WebView paramWebView, String paramString);
  }
}
