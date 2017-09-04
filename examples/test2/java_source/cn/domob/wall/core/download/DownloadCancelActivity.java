package cn.domob.wall.core.download;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import cn.domob.wall.core.h.d;
import java.util.Hashtable;

public class DownloadCancelActivity
  extends Activity
{
  public static final String ACTIVITY_TYPE = "ActivityType";
  public static final String NOTICE_MESSAGE = "msg";
  public static final int TYPE_DOWNLOADER = 2;
  public static final int TYPE_INSTALL_RECEIVER = 1;
  public static final int TYPE_NONE = 0;
  public static final int TYPE_NOTICE = 3;
  public static final int TYPE_SHOW_WEBVIEW = 5;
  public static final int TYPE_UPLOAD_PIC = 4;
  public static final String WEBVIEW_URL_NAME = "webview_url";
  private static d a = new d(DownloadCancelActivity.class.getSimpleName());
  private Context b = this;
  private String c = "";
  
  public DownloadCancelActivity() {}
  
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
            paramAnonymousDialogInterface = (b)b.a.get(DownloadCancelActivity.a(DownloadCancelActivity.this));
            if (paramAnonymousDialogInterface != null)
            {
              paramAnonymousDialogInterface.b();
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
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  public void onCreate(Bundle paramBundle)
  {
    int i = getIntent().getIntExtra("ActivityType", 0);
    a.b("intent activity type " + i);
    switch (i)
    {
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
    }
    super.onCreate(paramBundle);
    b();
  }
}
