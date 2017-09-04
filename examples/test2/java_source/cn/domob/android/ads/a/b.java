package cn.domob.android.ads.a;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.Toast;
import cn.domob.android.ads.a.a;
import cn.domob.android.ads.c.c;
import cn.domob.android.i.d;
import cn.domob.android.i.f;
import cn.domob.android.i.h;
import java.io.File;
import java.util.HashMap;

public class b
{
  private static final String a = "cb";
  private static final String b = "cb";
  private static final String c = "picture";
  private static final String d = "submit";
  private static final String e = "local";
  private static final String f = "url";
  private static final String g = "name";
  private static final int h = 0;
  private static final int i = 1;
  private static final String j = "src";
  private static final int k = 0;
  private static final int l = 1;
  private static final int m = 2;
  private static f n = new f(b.class.getSimpleName());
  private static final int p = 2345;
  private static final int q = 2346;
  private static String r = Environment.getExternalStorageDirectory() + "/DCIM/camera/";
  private static final String s = "activity_view_id";
  private Activity o = null;
  private e t = null;
  private String u = "";
  private String v = "";
  private final int w = 60;
  private final int x = 60;
  private Handler y = null;
  private Uri z;
  
  public b(Activity paramActivity)
  {
    o = paramActivity;
    t = a(o);
  }
  
  private RelativeLayout a(e paramE)
  {
    paramE = new RelativeLayout(o);
    paramE.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    ImageButton localImageButton = new ImageButton(o);
    localImageButton.setBackgroundDrawable(d.b(o, "domob_close.png"));
    localImageButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        b.e(b.this).finish();
      }
    });
    float f1 = cn.domob.android.b.a.t(o);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams((int)(60.0F * f1), (int)(f1 * 60.0F));
    localLayoutParams.addRule(11);
    localLayoutParams.addRule(10);
    localImageButton.setLayoutParams(localLayoutParams);
    paramE.addView(t);
    paramE.addView(localImageButton);
    return paramE;
  }
  
  private e a(Activity paramActivity)
  {
    paramActivity = new e(paramActivity, "activity_view_id", -1);
    paramActivity.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    return paramActivity;
  }
  
  private String a(Uri paramUri)
  {
    try
    {
      n.b("select uri is " + paramUri.toString());
      Cursor localCursor = o.managedQuery(paramUri, new String[] { "_data" }, null, null, null);
      if (localCursor == null)
      {
        paramUri = paramUri.toString();
        if ((paramUri != null) && (paramUri.startsWith("file://")) && ((paramUri.endsWith(".jpg")) || (paramUri.toString().endsWith(".JPG")))) {
          return paramUri.replaceFirst("file://", "");
        }
      }
      else
      {
        int i1 = localCursor.getColumnIndexOrThrow("_data");
        localCursor.moveToFirst();
        paramUri = localCursor.getString(i1);
        return paramUri;
      }
    }
    catch (Exception paramUri)
    {
      paramUri = paramUri;
      n.a(paramUri);
      return "";
    }
    finally {}
    return "";
  }
  
  private void a(Uri paramUri, int paramInt)
  {
    if (o.getIntent().getExtras() != null) {
      u = ((String)h.a(paramUri.getEncodedQuery()).get("cb"));
    }
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      new AlertDialog.Builder(o).setTitle("选择方式").setMessage("选择上传图片的方式").setNegativeButton("从已有相册中选择", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          b.c(b.this);
        }
      }).setPositiveButton("照相获得图片", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          b.b(b.this);
        }
      }).show();
      return;
    case 1: 
      c();
      return;
    }
    e();
  }
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    paramString1 = new b(paramString1, paramString2, paramString3, paramString4);
    y = new c(o, paramString4);
    paramString1.start();
  }
  
  private boolean c()
  {
    PackageManager localPackageManager = o.getPackageManager();
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    File localFile = new File(r);
    if (!localFile.exists()) {
      localFile.mkdir();
    }
    v = d();
    localIntent.putExtra("output", Uri.fromFile(new File(v)));
    if (localPackageManager.resolveActivity(localIntent, 65536) != null)
    {
      o.startActivityForResult(localIntent, 2345);
      return true;
    }
    return false;
  }
  
  private static String d()
  {
    return r + "up" + h.a() + ".jpg";
  }
  
  private boolean e()
  {
    PackageManager localPackageManager = o.getPackageManager();
    Intent localIntent = new Intent("android.intent.action.GET_CONTENT");
    localIntent.setType("image/*");
    if (localPackageManager.resolveActivity(localIntent, 65536) != null)
    {
      o.startActivityForResult(localIntent, 2346);
      return true;
    }
    return false;
  }
  
  public void a()
  {
    Bundle localBundle = o.getIntent().getExtras();
    Object localObject = "";
    if (localBundle != null) {
      localObject = o.getIntent().getStringExtra("webview_url");
    }
    t.loadUrl((String)localObject);
    t.a(new a());
    localObject = a(t);
    o.setContentView((View)localObject);
  }
  
  public void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
    case 2345: 
      do
      {
        return;
        n.b("update the pic taken");
        n.a("photo saving path=" + v);
      } while (!new File(v).exists());
      paramIntent = "javascript:" + u + "(true,'file://" + v + "')";
      n.a("excute js " + paramIntent);
      t.loadUrl(paramIntent);
      return;
    }
    n.b("update the pic selected");
    if (paramIntent == null)
    {
      n.b("album select url is null");
      return;
    }
    z = paramIntent.getData();
    paramIntent = a(z);
    if ((paramIntent == null) || (paramIntent.equals("")))
    {
      Toast.makeText(o, "上传格式有误,请尝试重新选择上传图片", 1).show();
      return;
    }
    if (new File(paramIntent).length() >= 3145728L)
    {
      n.d("the size of upload pic is larger than 3M");
      Toast.makeText(o, "上传图片尺寸不能大于3M,请尝试重新选择上传图片", 1).show();
      return;
    }
    paramIntent = "javascript:" + u + "(true,'file://" + paramIntent + "')";
    n.a("excute js " + paramIntent);
    t.loadUrl(paramIntent);
  }
  
  class a
    implements a.a
  {
    a() {}
    
    public void a(cn.domob.android.ads.a paramA, String paramString)
    {
      b.b().b("Activity WebView 拦截到 URL：" + paramString);
      paramA = Uri.parse(paramString);
      paramString = paramA.getHost();
      if (paramString.equals("picture"))
      {
        int i = Integer.parseInt((String)h.a(paramA.getEncodedQuery()).get("src"));
        b.a(b.this, paramA, i);
        return;
      }
      if (paramString.equals("submit"))
      {
        Object localObject = h.a(paramA.getEncodedQuery());
        paramA = (String)((HashMap)localObject).get("name");
        paramString = (String)((HashMap)localObject).get("local");
        String str = (String)((HashMap)localObject).get("url");
        localObject = (String)((HashMap)localObject).get("cb");
        b.a(b.this, paramA, paramString, str, (String)localObject);
        return;
      }
      b.b().e("Handle unknown action : " + paramString + " in activity");
    }
  }
  
  class b
    extends Thread
  {
    private String b;
    private String c;
    
    b(String paramString1, String paramString2, String paramString3, String paramString4)
    {
      b = paramString2;
      c = paramString3;
    }
    
    public void run()
    {
      try
      {
        if ((b == null) || (b.length() == 0))
        {
          b.b().a("local path is null");
          return;
        }
        String str = b;
        Bitmap localBitmap = BitmapFactory.decodeFile(str);
        long l = new File(str).length();
        b.b().a("The size of pic taken =" + l);
        if (c.a(localBitmap, l, c))
        {
          b.a(b.this).sendEmptyMessage(0);
          return;
        }
      }
      catch (Exception localException)
      {
        if (b.a(b.this) != null) {
          b.a(b.this).sendEmptyMessage(1);
        }
        b.b().a(localException);
        return;
        b.a(b.this).sendEmptyMessage(1);
        return;
      }
      catch (Error localError)
      {
        if (b.a(b.this) != null) {
          b.a(b.this).sendEmptyMessage(1);
        }
        b.b().a(localError);
      }
    }
  }
  
  class c
    extends Handler
  {
    private String b = "";
    
    c(Context paramContext, String paramString)
    {
      b = paramString;
    }
    
    private void a(String paramString, boolean paramBoolean)
    {
      paramString = "javascript:" + paramString + "('" + paramBoolean + "')";
      b.b().a("excute js " + paramString);
      if (b.d(b.this) != null) {
        b.d(b.this).loadUrl(paramString);
      }
    }
    
    public void handleMessage(Message paramMessage)
    {
      super.handleMessage(paramMessage);
      switch (what)
      {
      default: 
        return;
      case 1: 
        a(b, false);
        b.b().b("upload picture failed");
        return;
      }
      a(b, true);
      b.b().b("upload picture successful");
    }
  }
}
