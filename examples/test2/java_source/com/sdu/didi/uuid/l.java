package com.sdu.didi.uuid;

import android.app.Activity;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.zip.Deflater;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class l
{
  private static l b;
  private static Activity c;
  private final long a = 5000L;
  private int[] d = { 231, 260, 251 };
  private int[] e = { 193, 240, 232 };
  private Handler f = new m(this, Looper.getMainLooper());
  
  private l(Activity paramActivity)
  {
    c = paramActivity;
  }
  
  public static l a(Activity paramActivity)
  {
    try
    {
      if (b == null) {
        b = new l(paramActivity);
      }
      paramActivity = b;
      return paramActivity;
    }
    finally {}
  }
  
  private void a(a paramA)
  {
    String str = g();
    if (str == null)
    {
      paramA.a();
      return;
    }
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
      localGZIPOutputStream.write(str.getBytes("UTF-8"));
      localGZIPOutputStream.finish();
      localGZIPOutputStream.close();
      paramA.a(Base64.encodeToString(localByteArrayOutputStream.toByteArray(), 0));
      return;
    }
    catch (Exception localException)
    {
      paramA.a();
    }
  }
  
  private void a(JSONObject paramJSONObject, String paramString1, String paramString2)
    throws JSONException
  {
    if (!TextUtils.isEmpty(paramString2)) {
      paramJSONObject.putOpt(paramString1, paramString2);
    }
  }
  
  private void a(byte[] paramArrayOfByte)
  {
    String str1 = Environment.getExternalStorageDirectory().getAbsolutePath();
    if (TextUtils.isEmpty(str1)) {}
    do
    {
      return;
      localObject1 = SigLib.getParam2(c, e);
    } while (TextUtils.isEmpty((CharSequence)localObject1));
    Object localObject2 = str1 + File.separator + (String)localObject1;
    Object localObject1 = SigLib.getParam1(c, e);
    String str2 = (String)localObject2 + File.separator + (String)localObject1;
    localObject1 = null;
    if (!TextUtils.isEmpty((CharSequence)localObject2))
    {
      localObject2 = new File((String)localObject2);
      if ((localObject2 == null) && (((File)localObject2).exists()))
      {
        localObject1 = localObject2;
        if (((File)localObject2).isDirectory()) {}
      }
      else
      {
        ((File)localObject2).mkdirs();
        localObject1 = localObject2;
      }
    }
    if ((localObject1 != null) && (((File)localObject1).exists())) {
      n.a(str2, paramArrayOfByte);
    }
    localObject2 = SigLib.getParam2(c, d);
    localObject2 = str1 + File.separator + (String)localObject2;
    str2 = SigLib.getParam1(c, d);
    str2 = (String)localObject2 + File.separator + str2;
    if (!TextUtils.isEmpty((CharSequence)localObject2))
    {
      localObject2 = new File((String)localObject2);
      if ((localObject2 == null) && (((File)localObject2).exists()))
      {
        localObject1 = localObject2;
        if (((File)localObject2).isDirectory()) {}
      }
      else
      {
        ((File)localObject2).mkdirs();
        localObject1 = localObject2;
      }
    }
    if ((localObject1 != null) && (((File)localObject1).exists())) {
      n.a(str2, paramArrayOfByte);
    }
    localObject1 = SigLib.getParam(c, e);
    if (TextUtils.isEmpty((CharSequence)localObject1)) {}
    for (localObject1 = str1;; localObject1 = str1 + File.separator + (String)localObject1)
    {
      n.a((String)localObject1 + File.separator + SigLib.getParam(c, d), paramArrayOfByte);
      return;
    }
  }
  
  /* Error */
  private String[] b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 175	com/sdu/didi/uuid/l:d	()Ljava/lang/String;
    //   6: astore_1
    //   7: aload_1
    //   8: invokestatic 111	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   11: ifne +96 -> 107
    //   14: aload_1
    //   15: invokestatic 177	com/sdu/didi/uuid/n:a	(Ljava/lang/String;)[B
    //   18: astore_1
    //   19: aload_1
    //   20: invokestatic 180	com/sdu/didi/uuid/n:a	([B)Ljava/lang/Object;
    //   23: astore_3
    //   24: aload_3
    //   25: ifnull +74 -> 99
    //   28: aload_3
    //   29: instanceof 182
    //   32: ifeq +67 -> 99
    //   35: aload_3
    //   36: checkcast 182	com/sdu/didi/uuid/ed
    //   39: getfield 184	com/sdu/didi/uuid/ed:a	Ljava/lang/String;
    //   42: astore_2
    //   43: aload_3
    //   44: checkcast 182	com/sdu/didi/uuid/ed
    //   47: getfield 186	com/sdu/didi/uuid/ed:b	Ljava/lang/String;
    //   50: astore 4
    //   52: aload_3
    //   53: checkcast 182	com/sdu/didi/uuid/ed
    //   56: getfield 188	com/sdu/didi/uuid/ed:c	Ljava/lang/String;
    //   59: astore 4
    //   61: aload_3
    //   62: checkcast 182	com/sdu/didi/uuid/ed
    //   65: getfield 190	com/sdu/didi/uuid/ed:d	Ljava/lang/String;
    //   68: astore_3
    //   69: aload_0
    //   70: invokespecial 193	com/sdu/didi/uuid/l:e	()I
    //   73: iconst_1
    //   74: if_icmpne +8 -> 82
    //   77: aload_0
    //   78: aload_1
    //   79: invokespecial 195	com/sdu/didi/uuid/l:a	([B)V
    //   82: iconst_2
    //   83: anewarray 72	java/lang/String
    //   86: dup
    //   87: iconst_0
    //   88: aload_2
    //   89: aastore
    //   90: dup
    //   91: iconst_1
    //   92: aload_3
    //   93: aastore
    //   94: astore_1
    //   95: aload_0
    //   96: monitorexit
    //   97: aload_1
    //   98: areturn
    //   99: aload_0
    //   100: invokespecial 197	com/sdu/didi/uuid/l:c	()[Ljava/lang/String;
    //   103: astore_1
    //   104: goto -9 -> 95
    //   107: aload_0
    //   108: invokespecial 197	com/sdu/didi/uuid/l:c	()[Ljava/lang/String;
    //   111: astore_1
    //   112: goto -17 -> 95
    //   115: astore_1
    //   116: aload_0
    //   117: monitorexit
    //   118: aload_1
    //   119: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	120	0	this	l
    //   6	106	1	localObject1	Object
    //   115	4	1	localObject2	Object
    //   42	47	2	str1	String
    //   23	70	3	localObject3	Object
    //   50	10	4	str2	String
    // Exception table:
    //   from	to	target	type
    //   2	24	115	finally
    //   28	82	115	finally
    //   99	104	115	finally
    //   107	112	115	finally
  }
  
  private String[] c()
  {
    String str1 = n.n(c);
    Object localObject2 = n.b(c);
    String str2 = n.a(c);
    Object localObject1 = new ed();
    a = str1;
    b = ((String)localObject2);
    c = str2;
    d = n.o(c);
    localObject2 = n.a(localObject1);
    localObject1 = d;
    a((byte[])localObject2);
    return new String[] { str1, localObject1 };
  }
  
  private String d()
  {
    String str = Environment.getExternalStorageDirectory().getAbsolutePath();
    if (TextUtils.isEmpty(str))
    {
      localObject1 = null;
      return localObject1;
    }
    Object localObject1 = SigLib.getParam2(c, e);
    if (TextUtils.isEmpty((CharSequence)localObject1)) {
      return null;
    }
    localObject1 = str + File.separator + (String)localObject1;
    Object localObject2 = SigLib.getParam1(c, e);
    Object localObject3 = (String)localObject1 + File.separator + (String)localObject2;
    if (!TextUtils.isEmpty((CharSequence)localObject1))
    {
      localObject2 = new File((String)localObject1);
      if ((localObject2 == null) && (((File)localObject2).exists()))
      {
        localObject1 = localObject2;
        if (((File)localObject2).isDirectory()) {}
      }
      else
      {
        ((File)localObject2).mkdirs();
      }
    }
    for (localObject1 = localObject2;; localObject1 = null)
    {
      if ((localObject1 != null) && (((File)localObject1).exists())) {}
      for (localObject2 = new File((String)localObject3);; localObject2 = null)
      {
        Object localObject4;
        if ((localObject2 == null) || (!((File)localObject2).exists()))
        {
          localObject3 = SigLib.getParam2(c, d);
          localObject3 = str + File.separator + (String)localObject3;
          localObject4 = SigLib.getParam1(c, d);
          localObject4 = (String)localObject3 + File.separator + (String)localObject4;
          if (!TextUtils.isEmpty((CharSequence)localObject3))
          {
            localObject3 = new File((String)localObject3);
            if ((localObject3 == null) && (((File)localObject3).exists()))
            {
              localObject1 = localObject3;
              if (((File)localObject3).isDirectory()) {}
            }
            else
            {
              ((File)localObject3).mkdirs();
              localObject1 = localObject3;
            }
          }
          localObject3 = localObject4;
          if (localObject1 != null)
          {
            localObject3 = localObject4;
            if (((File)localObject1).exists()) {
              localObject1 = new File((String)localObject4);
            }
          }
        }
        for (;;)
        {
          if ((localObject1 == null) || (!((File)localObject1).exists()))
          {
            localObject1 = SigLib.getParam(c, e);
            if (TextUtils.isEmpty((CharSequence)localObject1)) {}
            for (localObject1 = str;; localObject1 = str + File.separator + (String)localObject1)
            {
              localObject1 = (String)localObject1 + File.separator + SigLib.getParam(c, d);
              localObject2 = new File((String)localObject1);
              if ((localObject2 != null) && (((File)localObject2).exists())) {
                break;
              }
              return null;
            }
          }
          return localObject4;
          localObject1 = localObject2;
          localObject4 = localObject3;
        }
      }
    }
  }
  
  private int e()
  {
    int i = -1;
    Object localObject1 = Environment.getExternalStorageDirectory().getAbsolutePath();
    if (TextUtils.isEmpty((CharSequence)localObject1)) {}
    do
    {
      return i;
      localObject2 = SigLib.getParam2(c, e);
    } while (TextUtils.isEmpty((CharSequence)localObject2));
    Object localObject2 = (String)localObject1 + File.separator + (String)localObject2;
    String str = SigLib.getParam1(c, e);
    localObject2 = new File((String)localObject2 + File.separator + str);
    int j = 0;
    i = j;
    if (localObject2 != null)
    {
      i = j;
      if (((File)localObject2).exists())
      {
        i = j;
        if (((File)localObject2).isFile()) {
          i = 1;
        }
      }
    }
    localObject2 = SigLib.getParam2(c, d);
    localObject2 = (String)localObject1 + File.separator + (String)localObject2;
    str = SigLib.getParam1(c, d);
    localObject2 = new File((String)localObject2 + File.separator + str);
    j = i;
    if (localObject2 != null)
    {
      j = i;
      if (((File)localObject2).exists())
      {
        j = i;
        if (((File)localObject2).isFile()) {
          j = i + 1;
        }
      }
    }
    localObject2 = SigLib.getParam(c, e);
    if (TextUtils.isEmpty((CharSequence)localObject2)) {}
    for (;;)
    {
      localObject1 = new File((String)localObject1 + File.separator + SigLib.getParam(c, d));
      i = j;
      if (localObject1 == null) {
        break;
      }
      i = j;
      if (!((File)localObject1).exists()) {
        break;
      }
      i = j;
      if (!((File)localObject1).isFile()) {
        break;
      }
      return j + 1;
      localObject1 = (String)localObject1 + File.separator + (String)localObject2;
    }
  }
  
  private JSONObject f()
  {
    JSONObject localJSONObject = new JSONObject();
    Object localObject = b();
    if (localObject != null) {}
    try
    {
      a(localJSONObject, "suuid", localObject[0]);
      a(localJSONObject, "gqid", localObject[1]);
      a(localJSONObject, "imei", n.b(c));
      a(localJSONObject, "imsi", n.c(c));
      a(localJSONObject, "mac", n.d(c));
      a(localJSONObject, "model", n.a());
      localJSONObject.putOpt("version", n.b() + "");
      a(localJSONObject, "brand", n.c());
      localObject = n.i(c);
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        localJSONObject.putOpt("SimOperatorName", localObject);
        a(localJSONObject, "mobile_ip", n.d());
      }
      a(localJSONObject, "net", n.h(c));
      if (n.g(c))
      {
        a(localJSONObject, "wifi_name", n.j(c));
        a(localJSONObject, "wifi_ip", n.k(c));
        a(localJSONObject, "wifi_mac", n.e(c));
      }
      a(localJSONObject, "wifi_mac", n.e(c));
      a(localJSONObject, "CGI", n.m(c));
      localJSONObject.putOpt("root", Boolean.valueOf(n.g()));
      localJSONObject.putOpt("app_version", n.f(c) + "");
      localJSONObject.putOpt("app_install_time", n.l(c) + "");
      localJSONObject.putOpt("app_type", c.getPackageName());
      a.a(c).a(localJSONObject);
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return localJSONObject;
  }
  
  private String g()
  {
    try
    {
      Object localObject = new JSONArray();
      JSONObject localJSONObject1 = f();
      JSONObject localJSONObject2 = new JSONObject();
      localJSONObject2.putOpt("sig", SigLib.getSig(c, localJSONObject1.toString()));
      ((JSONArray)localObject).put(localJSONObject1);
      ((JSONArray)localObject).put(localJSONObject2);
      localObject = ((JSONArray)localObject).toString();
      return localObject;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public String a()
  {
    a.a(c).a();
    try
    {
      Thread.sleep(5000L);
      localObject = g();
      if (localObject == null) {
        return "";
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      Object localObject;
      for (;;)
      {
        localInterruptedException.printStackTrace();
      }
      Deflater localDeflater = new Deflater(9);
      try
      {
        localObject = ((String)localObject).getBytes("UTF-8");
        byte[] arrayOfByte = new byte[localObject.length];
        localDeflater.setInput((byte[])localObject);
        localDeflater.finish();
        int i = localDeflater.deflate(arrayOfByte);
        localDeflater.end();
        a.a(c).b();
        return Base64.encodeToString(arrayOfByte, 0, i, 0);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
    }
    return "";
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(String paramString);
  }
}
