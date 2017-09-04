package cn.dbox.core.h;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.util.Log;
import cn.dbox.core.c;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;

public class f
{
  private static d a = new d(f.class.getSimpleName());
  private static final String b = "DES";
  private static final String c = "com.android.browser";
  private static final String d = "com.google.android.browser";
  private static final String e = "com.android.browser.BrowserActivity";
  private static final char[] f = { 100, 111, 109, 111, 98 };
  private static final String g = "cn.domob.ui.main.DViewManager";
  private static final String h = "showWall";
  
  public f() {}
  
  public static Intent a(Context paramContext, Uri paramUri)
  {
    if ((paramContext != null) && (paramUri != null))
    {
      if (!e.a(paramContext, "com.android.browser")) {
        break label52;
      }
      paramUri = new Intent("android.intent.action.VIEW", paramUri);
      paramUri.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
    }
    for (;;)
    {
      if (paramContext.getPackageManager().resolveActivity(paramUri, 65536) == null)
      {
        return null;
        label52:
        if (e.a(paramContext, "com.google.android.browser"))
        {
          paramUri = new Intent("android.intent.action.VIEW", paramUri);
          paramUri.setClassName("com.google.android.browser", "com.android.browser.BrowserActivity");
        }
      }
      else
      {
        return paramUri;
      }
      paramUri = null;
    }
  }
  
  public static Bitmap a(Bitmap paramBitmap)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    float f6;
    float f3;
    float f4;
    float f2;
    float f1;
    float f5;
    if (i <= j)
    {
      f6 = i / 2;
      f3 = i;
      f4 = i;
      f2 = i;
      f1 = i;
      j = i;
      f5 = 0.0F;
    }
    for (;;)
    {
      Bitmap localBitmap = Bitmap.createBitmap(j, i, Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap);
      Paint localPaint = new Paint();
      Rect localRect1 = new Rect((int)f5, (int)0.0F, (int)f4, (int)f3);
      Rect localRect2 = new Rect((int)0.0F, (int)0.0F, (int)f2, (int)f1);
      RectF localRectF = new RectF(localRect2);
      localPaint.setAntiAlias(true);
      localCanvas.drawARGB(0, 0, 0, 0);
      localPaint.setColor(-12434878);
      localCanvas.drawRoundRect(localRectF, f6, f6, localPaint);
      localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
      localCanvas.drawBitmap(paramBitmap, localRect1, localRect2, localPaint);
      return localBitmap;
      f6 = j / 2;
      f5 = (i - j) / 2;
      f4 = i - f5;
      f3 = j;
      f2 = j;
      f1 = j;
      i = j;
    }
  }
  
  public static String a()
  {
    return new String(f);
  }
  
  public static String a(String paramString1, String paramString2)
  {
    try
    {
      Object localObject = paramString1.getBytes("UTF-8");
      paramString1 = new byte[16];
      System.arraycopy(localObject, 0, paramString1, 0, Math.min(localObject.length, 16));
      paramString2 = paramString2.getBytes("UTF-8");
      paramString1 = new SecretKeySpec(paramString1, "AES");
      localObject = Cipher.getInstance("AES/ECB/PKCS7Padding");
      ((Cipher)localObject).init(1, paramString1);
      paramString1 = new String(a.b(((Cipher)localObject).doFinal(paramString2), 2));
      return paramString1;
    }
    catch (Exception paramString1) {}
    return "";
  }
  
  public static String a(HashMap<String, String> paramHashMap)
  {
    Object localObject;
    StringBuilder localStringBuilder;
    try
    {
      localObject = new ArrayList();
      localStringBuilder = new StringBuilder();
      Iterator localIterator = paramHashMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        ((List)localObject).add(new BasicNameValuePair(str, (String)paramHashMap.get(str)));
      }
      paramHashMap = new BufferedReader(new InputStreamReader(new UrlEncodedFormEntity((List)localObject, "UTF-8").getContent()));
    }
    catch (Exception paramHashMap)
    {
      a.a(paramHashMap);
      return null;
    }
    for (;;)
    {
      localObject = paramHashMap.readLine();
      if (localObject == null) {
        break;
      }
      localStringBuilder.append((String)localObject);
    }
    paramHashMap = localStringBuilder.toString();
    return paramHashMap;
  }
  
  private static String a(byte[] paramArrayOfByte, String paramString)
  {
    paramString = new StringBuilder();
    int j = paramArrayOfByte.length;
    int i = 0;
    if (i < j)
    {
      String str = Integer.toHexString(paramArrayOfByte[i] & 0xFF);
      if (str.length() == 1) {
        paramString.append("0").append(str);
      }
      for (;;)
      {
        i += 1;
        break;
        paramString.append(str);
      }
    }
    return paramString.toString();
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    new AlertDialog.Builder(paramContext).setTitle(paramString1).setMessage(paramString2).setNegativeButton("确定", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        ((Activity)a).finish();
      }
    }).show();
  }
  
  public static boolean a(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder("DrwSDK 缺少权限：\n");
    if ((-1 == paramContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE")) && (e.a(3, false)))
    {
      Log.e("DrwSDK", "you must have android.permission.WRITE_EXTERNAL_STORAGE permission !");
      localStringBuilder.append("android.permission.WRITE_EXTERNAL_STORAGE \n");
    }
    for (int i = 1;; i = 0)
    {
      if (-1 == paramContext.checkCallingOrSelfPermission("android.permission.INTERNET"))
      {
        Log.e("DrwSDK", "you must have android.permission.INTERNET permission !");
        localStringBuilder.append("android.permission.INTERNET \n");
        i = 1;
      }
      if (-1 == paramContext.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE"))
      {
        Log.e("DrwSDK", "you must have android.permission.READ_PHONE_STATE permission !");
        localStringBuilder.append("android.permission.READ_PHONE_STATE \n");
        i = 1;
      }
      if (-1 == paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE"))
      {
        Log.e("DrwSDK", "you must have android.permission.ACCESS_NETWORK_STATE permission !");
        localStringBuilder.append("android.permission.ACCESS_NETWORK_STATE \n");
        i = 1;
      }
      try
      {
        if (-1 == paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION"))
        {
          Log.e("DrwSDK", "you must have android.permission.ACCESS_COARSE_LOCATION permission !");
          localStringBuilder.append("android.permission.ACCESS_COARSE_LOCATION \n");
          i = 1;
        }
        if (i != 0) {
          a(paramContext, "DrwSDK", localStringBuilder.toString());
        }
        if (i == 0) {
          return true;
        }
      }
      catch (Exception paramContext)
      {
        a.a(paramContext);
        Log.e("SDK", "checking android.permission.ACCESS_COARSE_LOCATION throws exception");
        return false;
      }
      return false;
    }
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    boolean bool = false;
    try
    {
      int i = paramContext.checkCallingOrSelfPermission(paramString);
      if (i == 0) {
        bool = true;
      }
      return bool;
    }
    catch (Exception paramContext)
    {
      a.a(paramContext);
    }
    return false;
  }
  
  public static boolean a(c paramC)
  {
    try
    {
      if (e())
      {
        if ((paramC.d() == null) || (paramC.c() == null))
        {
          Log.e("", "not set adwall ppid and ipb");
          return false;
        }
      }
      else
      {
        Log.e("", "local has not adwall sdk");
        return false;
      }
    }
    catch (Exception paramC)
    {
      a.a(paramC);
      return false;
    }
    catch (Error paramC)
    {
      a.a(paramC);
      return false;
    }
    return true;
  }
  
  public static boolean a(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public static Drawable b(Context paramContext, String paramString)
    throws Exception
  {
    a.b(" load source file:" + paramString);
    try
    {
      paramContext = new BitmapDrawable(BitmapFactory.decodeFile(paramString));
      return paramContext;
    }
    catch (OutOfMemoryError paramContext)
    {
      System.gc();
      a.d("out of memory");
      return null;
    }
    catch (Exception paramContext)
    {
      a.a(paramContext);
      a.e("Failed to load source file:" + paramString);
    }
    return null;
  }
  
  public static String b()
  {
    try
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append(Integer.valueOf("000900".substring(0, 2))).append(".").append(Integer.valueOf("000900".substring(2, 4))).append(".").append(Integer.valueOf("000900".substring(4, 6)));
      localObject = ((StringBuilder)localObject).toString();
      return localObject;
    }
    catch (Exception localException)
    {
      a.a(localException);
    }
    return "000900";
  }
  
  public static String b(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = new DESKeySpec(paramString1.getBytes());
      paramString1 = SecretKeyFactory.getInstance("DES").generateSecret(paramString1);
      Cipher localCipher = Cipher.getInstance("DES");
      localCipher.init(1, paramString1, new IvParameterSpec("12345678".getBytes()));
      paramString1 = a.a(localCipher.doFinal(paramString2.getBytes()), 2);
      return paramString1;
    }
    catch (Exception paramString1)
    {
      a.b("des encode error");
    }
    return null;
  }
  
  public static HashMap<String, String> b(String paramString)
  {
    HashMap localHashMap = new HashMap();
    String[] arrayOfString1;
    int j;
    int i;
    if (paramString != null)
    {
      arrayOfString1 = paramString.split("&");
      j = arrayOfString1.length;
      i = 0;
    }
    for (;;)
    {
      if (i < j)
      {
        String[] arrayOfString2 = arrayOfString1[i].split("=");
        try
        {
          if (arrayOfString2.length == 2) {
            localHashMap.put(URLDecoder.decode(arrayOfString2[0], "UTF-8"), URLDecoder.decode(arrayOfString2[1], "UTF-8"));
          } else {
            localHashMap.put(URLDecoder.decode(arrayOfString2[0], "UTF-8"), "");
          }
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          a.a(localUnsupportedEncodingException);
          a.e("URL decode params String error:" + paramString);
        }
      }
      return localHashMap;
      i += 1;
    }
  }
  
  public static boolean b(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE") == 0)
    {
      a.c("access wifi state is enabled");
      return true;
    }
    return false;
  }
  
  public static String c()
  {
    try
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("20140918".substring(0, 4)).append("-").append("20140918".substring(4, 6)).append("-").append("20140918".substring(6, 8));
      localObject = ((StringBuilder)localObject).toString();
      return localObject;
    }
    catch (Exception localException)
    {
      a.a(localException);
    }
    return "20140918";
  }
  
  public static String c(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return "";
    }
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      localMessageDigest.update(paramString.getBytes("UTF-8"));
      paramString = a(localMessageDigest.digest(), "");
      return paramString;
    }
    catch (Exception paramString)
    {
      a.a(paramString);
    }
    return "";
  }
  
  public static boolean c(Context paramContext)
  {
    return ((WifiManager)paramContext.getSystemService("wifi")).getWifiState() == 3;
  }
  
  public static boolean c(Context paramContext, String paramString)
  {
    if ((paramString != null) && (!paramString.equals(""))) {
      return e.a(paramContext, paramString);
    }
    return false;
  }
  
  public static String d()
  {
    return new SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.CHINESE).format(new Date());
  }
  
  /* Error */
  public static String d(String paramString)
  {
    // Byte code:
    //   0: new 564	java/io/FileInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 565	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   8: astore_2
    //   9: aload_2
    //   10: astore_0
    //   11: sipush 1024
    //   14: newarray byte
    //   16: astore_3
    //   17: aload_2
    //   18: astore_0
    //   19: ldc_w 510
    //   22: invokestatic 515	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   25: astore 4
    //   27: aload_2
    //   28: astore_0
    //   29: aload_2
    //   30: aload_3
    //   31: invokevirtual 571	java/io/InputStream:read	([B)I
    //   34: istore_1
    //   35: iload_1
    //   36: ifle +63 -> 99
    //   39: aload_2
    //   40: astore_0
    //   41: aload 4
    //   43: aload_3
    //   44: iconst_0
    //   45: iload_1
    //   46: invokevirtual 574	java/security/MessageDigest:update	([BII)V
    //   49: goto -22 -> 27
    //   52: astore_3
    //   53: aload_2
    //   54: astore_0
    //   55: getstatic 45	cn/dbox/core/h/f:a	Lcn/dbox/core/h/d;
    //   58: ldc -40
    //   60: new 222	java/lang/StringBuilder
    //   63: dup
    //   64: invokespecial 223	java/lang/StringBuilder:<init>	()V
    //   67: ldc_w 576
    //   70: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: aload_3
    //   74: invokevirtual 579	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   77: invokevirtual 291	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   83: invokevirtual 582	cn/dbox/core/h/d:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   86: aload_2
    //   87: ifnull +7 -> 94
    //   90: aload_2
    //   91: invokevirtual 585	java/io/InputStream:close	()V
    //   94: ldc -40
    //   96: astore_3
    //   97: aload_3
    //   98: areturn
    //   99: aload_2
    //   100: astore_0
    //   101: aload 4
    //   103: invokevirtual 524	java/security/MessageDigest:digest	()[B
    //   106: ldc -40
    //   108: invokestatic 526	cn/dbox/core/h/f:a	([BLjava/lang/String;)Ljava/lang/String;
    //   111: astore_3
    //   112: aload_3
    //   113: astore_0
    //   114: aload_0
    //   115: astore_3
    //   116: aload_2
    //   117: ifnull -20 -> 97
    //   120: aload_2
    //   121: invokevirtual 585	java/io/InputStream:close	()V
    //   124: aload_0
    //   125: areturn
    //   126: astore_2
    //   127: getstatic 45	cn/dbox/core/h/f:a	Lcn/dbox/core/h/d;
    //   130: aload_2
    //   131: invokevirtual 263	cn/dbox/core/h/d:a	(Ljava/lang/Throwable;)V
    //   134: aload_0
    //   135: areturn
    //   136: astore_0
    //   137: getstatic 45	cn/dbox/core/h/f:a	Lcn/dbox/core/h/d;
    //   140: aload_0
    //   141: invokevirtual 263	cn/dbox/core/h/d:a	(Ljava/lang/Throwable;)V
    //   144: goto -50 -> 94
    //   147: astore_2
    //   148: aconst_null
    //   149: astore_0
    //   150: aload_0
    //   151: ifnull +7 -> 158
    //   154: aload_0
    //   155: invokevirtual 585	java/io/InputStream:close	()V
    //   158: aload_2
    //   159: athrow
    //   160: astore_0
    //   161: getstatic 45	cn/dbox/core/h/f:a	Lcn/dbox/core/h/d;
    //   164: aload_0
    //   165: invokevirtual 263	cn/dbox/core/h/d:a	(Ljava/lang/Throwable;)V
    //   168: goto -10 -> 158
    //   171: astore_2
    //   172: goto -22 -> 150
    //   175: astore_3
    //   176: aconst_null
    //   177: astore_2
    //   178: goto -125 -> 53
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	181	0	paramString	String
    //   34	12	1	i	int
    //   8	113	2	localFileInputStream	java.io.FileInputStream
    //   126	5	2	localIOException	java.io.IOException
    //   147	12	2	localObject1	Object
    //   171	1	2	localObject2	Object
    //   177	1	2	localObject3	Object
    //   16	28	3	arrayOfByte	byte[]
    //   52	22	3	localException1	Exception
    //   96	20	3	str	String
    //   175	1	3	localException2	Exception
    //   25	77	4	localMessageDigest	MessageDigest
    // Exception table:
    //   from	to	target	type
    //   11	17	52	java/lang/Exception
    //   19	27	52	java/lang/Exception
    //   29	35	52	java/lang/Exception
    //   41	49	52	java/lang/Exception
    //   101	112	52	java/lang/Exception
    //   120	124	126	java/io/IOException
    //   90	94	136	java/io/IOException
    //   0	9	147	finally
    //   154	158	160	java/io/IOException
    //   11	17	171	finally
    //   19	27	171	finally
    //   29	35	171	finally
    //   41	49	171	finally
    //   55	86	171	finally
    //   101	112	171	finally
    //   0	9	175	java/lang/Exception
  }
  
  public static boolean d(Context paramContext)
  {
    if (paramContext != null)
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (paramContext == null) {}
    }
    for (boolean bool = paramContext.isAvailable();; bool = false)
    {
      if (bool)
      {
        a.b("Check your network connection is normal");
        return bool;
      }
      a.b("Check the network connection is abnormal");
      return bool;
    }
  }
  
  public static boolean e()
  {
    return h("cn.domob.ui.main.DViewManager");
  }
  
  public static boolean e(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return Pattern.compile("[0-9]*").matcher(paramString).matches();
  }
  
  public static String f(String paramString)
  {
    return String.format(paramString, new Object[] { new String(f) });
  }
  
  public static boolean g(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public static boolean h(String paramString)
  {
    try
    {
      Class.forName(paramString);
      return true;
    }
    catch (ClassNotFoundException paramString) {}
    return false;
  }
}
