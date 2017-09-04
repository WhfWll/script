package cn.domob.android.ads;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import cn.domob.android.c.a;
import cn.domob.android.i.f;
import java.util.Hashtable;

public class DomobActivity
  extends Activity
{
  public static final String ACTIVITY_TYPE = "DomobActivityType";
  public static final String NOTICE_MESSAGE = "msg";
  public static final int TYPE_DOWNLOADER = 2;
  public static final int TYPE_INSTALL_RECEIVER = 1;
  public static final int TYPE_NONE = 0;
  public static final int TYPE_NOTICE = 3;
  public static final int TYPE_SHOW_WEBVIEW = 5;
  public static final int TYPE_UPLOAD_PIC = 4;
  public static final String WEBVIEW_URL_NAME = "webview_url";
  private static f a = new f(DomobActivity.class.getSimpleName());
  private Context b = this;
  private String c = "";
  private cn.domob.android.ads.a.b d = null;
  
  public DomobActivity() {}
  
  private void a()
  {
    if (getIntent().getExtras() != null)
    {
      Object localObject = getIntent();
      String str = ((Intent)localObject).getStringExtra("appName");
      c = ((Intent)localObject).getStringExtra("appId");
      localObject = ((Intent)localObject).getStringExtra("actType");
      if ((localObject != null) && (((String)localObject).equals("typeCancel"))) {
        new AlertDialog.Builder(b).setTitle("取消").setMessage(str + "正在下载是否取消?").setNegativeButton("取消下载", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramAnonymousDialogInterface = (a)a.a.get(DomobActivity.a(DomobActivity.this));
            if (paramAnonymousDialogInterface != null)
            {
              paramAnonymousDialogInterface.a(true);
              paramAnonymousDialogInterface = paramAnonymousDialogInterface.a();
              if (paramAnonymousDialogInterface != null) {
                paramAnonymousDialogInterface.b();
              }
            }
            finish();
          }
        }).setPositiveButton("继续下载", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            finish();
          }
        }).show();
      }
    }
  }
  
  private void b()
  {
    if (getIntent().getExtras() != null)
    {
      String str = getIntent().getStringExtra("msg");
      new AlertDialog.Builder(b).setMessage(str).setNegativeButton("确定", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          finish();
        }
      }).show();
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    try
    {
      d.a(paramInt1, paramInt2, paramIntent);
      return;
    }
    catch (Exception paramIntent)
    {
      a.a(paramIntent);
      return;
    }
    catch (Error paramIntent)
    {
      a.a(paramIntent);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    int i = getIntent().getIntExtra("DomobActivityType", 0);
    a.b("intent activity type " + i);
    d = new cn.domob.android.ads.a.b(this);
    switch (i)
    {
    case 4: 
    default: 
      finish();
      return;
    case 2: 
      super.onCreate(paramBundle);
      a();
      return;
    case 1: 
      setTheme(16973835);
      super.onCreate(paramBundle);
      return;
    case 3: 
      super.onCreate(paramBundle);
      b();
      return;
    }
    super.onCreate(paramBundle);
    d.a();
  }
}
