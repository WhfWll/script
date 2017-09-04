package com.sdu.didi.openapi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.TextView;
import android.widget.Toast;
import com.sdu.didi.openapi.gK.b;
import com.sdu.didi.openapi.gK.c;
import com.sdu.didi.openapi.ss.e;
import com.sdu.didi.openapi.utils.Utils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class DiDiWebActivity
  extends Activity
{
  private e a;
  private WebView b;
  private com.sdu.didi.openapi.ss.g c;
  private b d;
  private a e;
  private ArrayList<AsyncTask> f;
  private View g;
  private TextView h;
  
  public DiDiWebActivity() {}
  
  private void a()
  {
    if (e == null)
    {
      e = new a();
      if (!Utils.b()) {
        break label57;
      }
      e.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
    for (;;)
    {
      f.add(e);
      super.onStart();
      return;
      label57:
      e.execute(new Void[0]);
    }
  }
  
  private void b()
  {
    b = ((WebView)findViewById(a.a("didi_webview")));
    if ((Build.VERSION.SDK_INT > 10) && (Build.VERSION.SDK_INT < 17)) {
      b.removeJavascriptInterface("searchBoxJavaBridge_");
    }
    g = findViewById(a.a("didi_toolbar_back"));
    h = ((TextView)findViewById(a.a("didi_webview_title")));
    View localView = findViewById(a.a("didi_toolbar_close"));
    g.setOnClickListener(new f(this, localView));
    localView.setOnClickListener(new g(this));
    c = new com.sdu.didi.openapi.ss.g(b);
    f = new ArrayList();
    c.a(f);
    b.setWebChromeClient(new h(this));
    b.setWebViewClient(new i(this));
    b.setDownloadListener(new j(this));
  }
  
  @Deprecated
  public static void registerApp(Context paramContext, String paramString1, String paramString2)
  {
    DIOpenSDK.registerApp(paramContext, paramString1, paramString2);
  }
  
  @Deprecated
  public static void setMapSdkType(DIOpenSDK.MapLocationType paramMapLocationType)
  {
    DIOpenSDK.setMapSdkType(paramMapLocationType);
  }
  
  @Deprecated
  public static void showDDPage(Context paramContext, HashMap<String, String> paramHashMap)
  {
    DIOpenSDK.showDDPage(paramContext, paramHashMap);
  }
  
  public void onBackPressed()
  {
    if (g != null)
    {
      g.performClick();
      return;
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = new e(this);
    setContentView(a.c("activity_di_di_web"));
    b();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if ((f != null) && (!f.isEmpty()))
    {
      Iterator localIterator = f.iterator();
      while (localIterator.hasNext()) {
        ((AsyncTask)localIterator.next()).cancel(true);
      }
    }
    if (b != null)
    {
      ((ViewGroup)b.getParent()).removeView(b);
      b.destroy();
    }
  }
  
  protected void onPause()
  {
    if (Build.VERSION.SDK_INT >= 11) {
      b.onPause();
    }
    super.onPause();
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if ((paramArrayOfInt == null) || (paramArrayOfInt.length == 0)) {}
    while (paramInt != 10010) {
      return;
    }
    int j = paramArrayOfInt.length;
    int i = 0;
    paramInt = 0;
    for (;;)
    {
      if (i < j) {
        if (paramArrayOfInt[i] != -1) {
          break label66;
        }
      }
      label66:
      for (paramInt = 1; paramInt != 0; paramInt = 0)
      {
        if (paramInt == 0) {
          break label80;
        }
        Toast.makeText(this, "请给予程序必要的权限", 1).show();
        finish();
        return;
      }
      i += 1;
    }
    label80:
    a();
  }
  
  protected void onResume()
  {
    if (Build.VERSION.SDK_INT >= 11) {
      b.onResume();
    }
    super.onResume();
  }
  
  protected void onStart()
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      ArrayList localArrayList = new ArrayList();
      int i = checkSelfPermission("android.permission.ACCESS_FINE_LOCATION");
      int j = checkSelfPermission("android.permission.READ_PHONE_STATE");
      int k = checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE");
      if (i == -1) {
        localArrayList.add("android.permission.ACCESS_FINE_LOCATION");
      }
      if (j == -1) {
        localArrayList.add("android.permission.READ_PHONE_STATE");
      }
      if (k == -1) {
        localArrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
      }
      if (!localArrayList.isEmpty()) {
        requestPermissions((String[])localArrayList.toArray(new String[localArrayList.size()]), 10010);
      }
    }
    for (;;)
    {
      super.onStart();
      return;
      a();
      continue;
      a();
    }
  }
  
  class a
    extends AsyncTask<Void, Void, String>
  {
    com.sdu.didi.openapi.pK.a a;
    
    a() {}
    
    protected String a(Void... paramVarArgs)
    {
      if ((isCancelled()) && (a != null))
      {
        a.dismiss();
        return "";
      }
      paramVarArgs = (HashMap)getIntent().getSerializableExtra("params");
      if ((paramVarArgs != null) && (paramVarArgs.containsKey("special_url")))
      {
        localObject1 = Uri.parse((String)paramVarArgs.get("special_url")).buildUpon();
        paramVarArgs = paramVarArgs.entrySet().iterator();
        while (paramVarArgs.hasNext())
        {
          localObject2 = (Map.Entry)paramVarArgs.next();
          ((Uri.Builder)localObject1).appendQueryParameter((String)((Map.Entry)localObject2).getKey(), (String)((Map.Entry)localObject2).getValue());
        }
        return ((Uri.Builder)localObject1).build().toString();
      }
      DiDiWebActivity.a(DiDiWebActivity.this, l.a().b(DiDiWebActivity.this));
      if (!DiDiWebActivity.d(DiDiWebActivity.this).c()) {
        return Uri.parse("http://static.udache.com/gulfstream/webapp/pages/sdk/error.html").buildUpon().appendQueryParameter("errorcode", "1001").toString();
      }
      paramVarArgs.put("openid", DiDiWebActivity.d(DiDiWebActivity.this).d());
      Object localObject1 = com.sdu.didi.openapi.ss.a.a().a("http://open.xiaojukeji.com/gulfstream/develop/v1/permit/pGetConfig", paramVarArgs);
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        return "";
      }
      Object localObject2 = new c();
      ((c)localObject2).a((String)localObject1);
      localObject1 = ((c)localObject2).d();
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        localObject1 = Uri.parse((String)localObject1).buildUpon();
        ((Uri.Builder)localObject1).appendQueryParameter("openid", DiDiWebActivity.d(DiDiWebActivity.this).d());
        ((Uri.Builder)localObject1).appendQueryParameter("channel", DiDiWebActivity.d(DiDiWebActivity.this).e());
        localObject2 = Utils.getTimestamp();
        ((Uri.Builder)localObject1).appendQueryParameter("timestamp", (String)localObject2);
        ((Uri.Builder)localObject1).appendQueryParameter("sign", DIOpenSDK.a().getSDKSign(new StringBuilder().append(DiDiWebActivity.d(DiDiWebActivity.this).d()).append(DIOpenSDK.getSecrectStr(getBaseContext())).append(DiDiWebActivity.d(DiDiWebActivity.this).e()).toString()) + (String)localObject2);
        if (paramVarArgs != null)
        {
          paramVarArgs = paramVarArgs.entrySet().iterator();
          while (paramVarArgs.hasNext())
          {
            localObject2 = (Map.Entry)paramVarArgs.next();
            ((Uri.Builder)localObject1).appendQueryParameter((String)((Map.Entry)localObject2).getKey(), (String)((Map.Entry)localObject2).getValue());
          }
        }
        return ((Uri.Builder)localObject1).build().toString();
      }
      return "";
    }
    
    protected void a(String paramString)
    {
      if ((a != null) && (a.isShowing())) {
        a.dismiss();
      }
      WebView localWebView = DiDiWebActivity.a(DiDiWebActivity.this);
      String str = paramString;
      if (TextUtils.isEmpty(paramString)) {
        str = Uri.parse("http://static.udache.com/gulfstream/webapp/pages/sdk/error.html").buildUpon().appendQueryParameter("errorcode", "1001").toString();
      }
      localWebView.loadUrl(str);
    }
    
    protected void onPreExecute()
    {
      a = new com.sdu.didi.openapi.pK.a(DiDiWebActivity.this);
      a.setTitle("正在载入滴滴出行");
      a.setCancelable(false);
      a.show();
    }
  }
}
