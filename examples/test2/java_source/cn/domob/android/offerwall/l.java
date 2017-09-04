package cn.domob.android.offerwall;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.AssetManager;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;

public class l
{
  private static m a = new m(l.class.getSimpleName());
  
  public l() {}
  
  public static Drawable a(Context paramContext, String paramString)
  {
    try
    {
      paramContext = new BitmapDrawable(BitmapFactory.decodeStream(paramContext.getAssets().open(paramString)));
      return paramContext;
    }
    catch (IOException paramContext)
    {
      a.a(paramContext);
      a.e("Failed to load source file:" + paramString);
    }
    return null;
  }
  
  public static String a()
  {
    try
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append(Integer.valueOf("020000".substring(0, 2))).append(".").append(Integer.valueOf("020000".substring(2, 4))).append(".").append(Integer.valueOf("020000".substring(4, 6)));
      localObject = ((StringBuilder)localObject).toString();
      return localObject;
    }
    catch (Exception localException)
    {
      a.a(localException);
    }
    return "020000";
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
  
  public static HashMap<String, String> a(String paramString)
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
    StringBuilder localStringBuilder = new StringBuilder("DomobSDK 缺少权限：\n");
    if ((-1 == paramContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE")) && (f.a(3, false)))
    {
      Log.e("DomobSDK", "you must have android.permission.WRITE_EXTERNAL_STORAGE permission !");
      localStringBuilder.append("android.permission.WRITE_EXTERNAL_STORAGE \n");
    }
    for (int i = 1;; i = 0)
    {
      if (-1 == paramContext.checkCallingOrSelfPermission("android.permission.INTERNET"))
      {
        Log.e("DomobSDK", "you must have android.permission.INTERNET permission !");
        localStringBuilder.append("android.permission.INTERNET \n");
        i = 1;
      }
      if (-1 == paramContext.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE"))
      {
        Log.e("DomobSDK", "you must have android.permission.READ_PHONE_STATE permission !");
        localStringBuilder.append("android.permission.READ_PHONE_STATE \n");
        i = 1;
      }
      if (-1 == paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE"))
      {
        Log.e("DomobSDK", "you must have android.permission.ACCESS_NETWORK_STATE permission !");
        localStringBuilder.append("android.permission.ACCESS_NETWORK_STATE \n");
        i = 1;
      }
      if (-1 == paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION"))
      {
        Log.e("DomobSDK", "you must have android.permission.ACCESS_COARSE_LOCATION permission !");
        localStringBuilder.append("android.permission.ACCESS_COARSE_LOCATION \n");
        i = 1;
      }
      if (i != 0) {
        a(paramContext, "DomobSDK", localStringBuilder.toString());
      }
      return i == 0;
    }
  }
  
  public static String b()
  {
    try
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("20120809".substring(0, 4)).append("-").append("20120809".substring(4, 6)).append("-").append("20120809".substring(6, 8));
      localObject = ((StringBuilder)localObject).toString();
      return localObject;
    }
    catch (Exception localException)
    {
      a.a(localException);
    }
    return "20120809";
  }
  
  public static String b(Context paramContext, String paramString)
  {
    String str2 = Build.MODEL;
    String str1 = "1.5";
    if (Build.VERSION.RELEASE.length() > 0) {
      str1 = Build.VERSION.RELEASE;
    }
    paramContext = String.format("<script>var SDK_VERSION = '%s'; var DEVICE = '%s'; var OS = '%s'; var OS_VERSION = '%s'; var CARRIER = '%s'; var NETWORK = '%s';</script>", new Object[] { "020000", str2, "android", str1, f.q(paramContext), f.o(paramContext) });
    return paramContext + paramString;
  }
  
  public static String b(String paramString)
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
  
  /* Error */
  public static String c(String paramString)
  {
    // Byte code:
    //   0: new 338	java/io/FileInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 339	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   8: astore_2
    //   9: aload_2
    //   10: astore_0
    //   11: sipush 1024
    //   14: newarray byte
    //   16: astore_3
    //   17: aload_2
    //   18: astore_0
    //   19: ldc_w 312
    //   22: invokestatic 318	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   25: astore 4
    //   27: aload_2
    //   28: astore_0
    //   29: aload_2
    //   30: aload_3
    //   31: invokevirtual 345	java/io/InputStream:read	([B)I
    //   34: istore_1
    //   35: iload_1
    //   36: ifle +63 -> 99
    //   39: aload_2
    //   40: astore_0
    //   41: aload 4
    //   43: aload_3
    //   44: iconst_0
    //   45: iload_1
    //   46: invokevirtual 348	java/security/MessageDigest:update	([BII)V
    //   49: goto -22 -> 27
    //   52: astore_3
    //   53: aload_2
    //   54: astore_0
    //   55: getstatic 24	cn/domob/android/offerwall/l:a	Lcn/domob/android/offerwall/m;
    //   58: ldc -60
    //   60: new 58	java/lang/StringBuilder
    //   63: dup
    //   64: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   67: ldc_w 350
    //   70: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: aload_3
    //   74: invokevirtual 353	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   77: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   83: invokevirtual 356	cn/domob/android/offerwall/m:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   86: aload_2
    //   87: ifnull +7 -> 94
    //   90: aload_2
    //   91: invokevirtual 359	java/io/InputStream:close	()V
    //   94: ldc -60
    //   96: astore_3
    //   97: aload_3
    //   98: areturn
    //   99: aload_2
    //   100: astore_0
    //   101: aload 4
    //   103: invokevirtual 333	java/security/MessageDigest:digest	()[B
    //   106: ldc -60
    //   108: invokestatic 335	cn/domob/android/offerwall/l:a	([BLjava/lang/String;)Ljava/lang/String;
    //   111: astore_3
    //   112: aload_3
    //   113: astore_0
    //   114: aload_0
    //   115: astore_3
    //   116: aload_2
    //   117: ifnull -20 -> 97
    //   120: aload_2
    //   121: invokevirtual 359	java/io/InputStream:close	()V
    //   124: aload_0
    //   125: areturn
    //   126: astore_2
    //   127: getstatic 24	cn/domob/android/offerwall/l:a	Lcn/domob/android/offerwall/m;
    //   130: aload_2
    //   131: invokevirtual 56	cn/domob/android/offerwall/m:a	(Ljava/lang/Throwable;)V
    //   134: aload_0
    //   135: areturn
    //   136: astore_0
    //   137: getstatic 24	cn/domob/android/offerwall/l:a	Lcn/domob/android/offerwall/m;
    //   140: aload_0
    //   141: invokevirtual 56	cn/domob/android/offerwall/m:a	(Ljava/lang/Throwable;)V
    //   144: goto -50 -> 94
    //   147: astore_2
    //   148: aconst_null
    //   149: astore_0
    //   150: aload_0
    //   151: ifnull +7 -> 158
    //   154: aload_0
    //   155: invokevirtual 359	java/io/InputStream:close	()V
    //   158: aload_2
    //   159: athrow
    //   160: astore_0
    //   161: getstatic 24	cn/domob/android/offerwall/l:a	Lcn/domob/android/offerwall/m;
    //   164: aload_0
    //   165: invokevirtual 56	cn/domob/android/offerwall/m:a	(Ljava/lang/Throwable;)V
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
    //   126	5	2	localIOException	IOException
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
  
  public static boolean d(String paramString)
  {
    return Pattern.compile("[0-9]*").matcher(paramString).matches();
  }
  
  public static boolean e(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
}
