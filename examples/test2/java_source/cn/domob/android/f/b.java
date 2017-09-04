package cn.domob.android.f;

import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import cn.domob.android.i.c;
import cn.domob.android.i.f;
import cn.domob.android.i.h;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class b
{
  private static final int B = 4096;
  private static final String C = "ctwap";
  public static final String a = "sid";
  private static f c = new f(b.class.getSimpleName());
  private static boolean d = false;
  private static HashMap<String, Integer> e = new HashMap();
  private static final int f = 2;
  private static final String k = "connection";
  private static final String l = "time";
  private static final long m = -1L;
  private static a w;
  private byte[] A;
  protected URL b;
  private boolean g = false;
  private String h;
  private a i;
  private boolean j = false;
  private HttpURLConnection n;
  private Context o;
  private String p;
  private String q;
  private HashMap<String, String> r;
  private Proxy s;
  private String t;
  private int u;
  private b v;
  private String x;
  private int y;
  private String z;
  
  public b(Context paramContext)
  {
    this(paramContext, null, null, null, "POST", null, 20000);
  }
  
  public b(Context paramContext, String paramString1, String paramString2, HashMap<String, String> paramHashMap, String paramString3, String paramString4, int paramInt)
  {
    o = paramContext;
    q = paramString2;
    r = paramHashMap;
    p = paramString3;
    t = paramString4;
    u = paramInt;
    h = paramString1;
    if ((o != null) || (p == null)) {
      p = "GET";
    }
    try
    {
      q();
      return;
    }
    catch (Exception paramContext)
    {
      c.b("get error when dealing with apn");
      c.a(paramContext);
      return;
    }
    catch (Error paramContext)
    {
      c.b("get error when dealing with apn");
      c.a(paramContext);
    }
  }
  
  public static void a(a paramA)
  {
    w = paramA;
  }
  
  private final void a(String paramString, int paramInt)
  {
    c.b(this, "setProxy -- proxy:" + paramString + "| port:" + paramInt);
    s = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(paramString, paramInt));
  }
  
  protected static boolean a(Context paramContext)
  {
    try
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (paramContext != null)
      {
        boolean bool = paramContext.isConnected();
        if (bool) {
          return true;
        }
      }
      return false;
    }
    catch (Exception paramContext)
    {
      c.a(paramContext);
    }
    return false;
  }
  
  private void f(String paramString)
  {
    h = i(paramString);
    if (v != null) {
      v.a(h);
    }
    c.d(String.format("try to use the new domain(%s) to connect again", new Object[] { h }));
    h();
  }
  
  private String g(String paramString)
  {
    if (v != null)
    {
      String[] arrayOfString = v.b();
      if ((arrayOfString != null) && (arrayOfString.length > 0))
      {
        int i2 = 0;
        int i1 = 0;
        if (i2 < arrayOfString.length - 1) {
          if ((i1 != 0) || ((!h.e(arrayOfString[i2])) && (paramString.equals(arrayOfString[i2])))) {
            if (e.get(arrayOfString[(i2 + 1)]) != null)
            {
              i1 = ((Integer)e.get(arrayOfString[(i2 + 1)])).intValue();
              label101:
              if (i1 >= 2) {
                break label187;
              }
            }
          }
        }
        for (String str = arrayOfString[(i2 + 1)];; str = null)
        {
          if ((str == null) && (arrayOfString[(arrayOfString.length - 1)] != null) && (arrayOfString[(arrayOfString.length - 1)].equals(paramString)))
          {
            d = true;
            t();
            v.a(v.c());
            c.d("all domains have been masked");
          }
          return str;
          i1 = 0;
          break label101;
          label187:
          i1 = 1;
          for (;;)
          {
            i2 += 1;
            break;
          }
        }
      }
    }
    return null;
  }
  
  private String h(String paramString)
  {
    String str2 = "";
    String str1 = str2;
    if (!h.e(paramString))
    {
      int i1 = paramString.indexOf(".");
      str1 = str2;
      if (i1 >= 0)
      {
        str1 = str2;
        if (i1 < paramString.length() - 1) {
          str1 = paramString.substring(i1 + 1);
        }
      }
    }
    return str1;
  }
  
  private String i(String paramString)
  {
    String str;
    do
    {
      str = h.a(5);
    } while (!str.matches(".*\\d.*"));
    return "http://" + str + "." + paramString;
  }
  
  private boolean j(String paramString)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (!h.e(paramString)) {}
    try
    {
      paramString = new JSONObject(new JSONTokener(paramString));
      localObject1 = localObject2;
      if (paramString != null) {
        localObject1 = paramString.optString("sid", null);
      }
      if (o == null) {
        c.e("Context is null, but it is a parameter of the method isNetworkAvailable");
      }
      if ((h.e((String)localObject1)) && (a(o))) {
        return true;
      }
    }
    catch (JSONException paramString)
    {
      for (;;)
      {
        c.a(paramString);
        paramString = null;
      }
    }
    return false;
  }
  
  private void q()
  {
    if (o == null) {}
    for (;;)
    {
      return;
      Object localObject3 = null;
      Object localObject1 = null;
      try
      {
        Cursor localCursor = c.t(o);
        if (localCursor != null)
        {
          localObject1 = localCursor;
          localObject3 = localCursor;
          if (localCursor.getCount() > 0)
          {
            localObject1 = localCursor;
            localObject3 = localCursor;
            localCursor.moveToFirst();
            localObject1 = localCursor;
            localObject3 = localCursor;
            String str1 = localCursor.getString(localCursor.getColumnIndexOrThrow("proxy"));
            localObject1 = localCursor;
            localObject3 = localCursor;
            int i1 = localCursor.getInt(localCursor.getColumnIndexOrThrow("port"));
            localObject1 = localCursor;
            localObject3 = localCursor;
            String str2 = localCursor.getString(localCursor.getColumnIndexOrThrow("apn"));
            localObject1 = localCursor;
            localObject3 = localCursor;
            c.b(this, "Current apnType is " + str2);
            localObject1 = localCursor;
            localObject3 = localCursor;
            c.b(this, "proxy:" + str1 + "| port:" + i1);
            if (str1 != null)
            {
              localObject1 = localCursor;
              localObject3 = localCursor;
              if ((!str1.trim().equals("")) && (i1 != 0))
              {
                localObject1 = localCursor;
                localObject3 = localCursor;
                if (!str2.equalsIgnoreCase("ctwap"))
                {
                  localObject1 = localCursor;
                  localObject3 = localCursor;
                  c.b(this, "ad request use proxy");
                  localObject1 = localCursor;
                  localObject3 = localCursor;
                  a(str1, i1);
                }
              }
            }
          }
        }
        return;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        localObject3 = localObject1;
        c.e(this, "获取APN失败。");
        localObject3 = localObject1;
        c.a(localIllegalArgumentException);
        return;
      }
      finally
      {
        if (localObject3 != null) {
          localObject3.close();
        }
      }
    }
  }
  
  private void r()
  {
    String str = h(h);
    if (e.containsKey(str)) {}
    for (int i1 = ((Integer)e.get(str)).intValue();; i1 = 0)
    {
      HashMap localHashMap = e;
      i1 += 1;
      localHashMap.put(str, new Integer(i1));
      if (i1 < 2) {
        break label90;
      }
      str = g(str);
      if (h.e(str)) {
        break;
      }
      f(str);
      return;
    }
    j = true;
    return;
    label90:
    f(str);
  }
  
  private a s()
  {
    if (i == null) {
      i = new a(o, "connection");
    }
    return i;
  }
  
  private void t()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("time", new Long(System.currentTimeMillis()));
    s().a(localHashMap);
  }
  
  public String a()
  {
    return x;
  }
  
  public void a(int paramInt)
  {
    u = paramInt;
  }
  
  public void a(b paramB)
  {
    v = paramB;
  }
  
  public void a(String paramString)
  {
    x = paramString;
  }
  
  public void a(HashMap<String, String> paramHashMap)
  {
    r = paramHashMap;
  }
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void b()
  {
    c.a(this, "Do HTTP connection.");
    h();
  }
  
  public void b(Context paramContext)
  {
    o = paramContext;
  }
  
  public void b(String paramString)
  {
    h = paramString;
  }
  
  /* Error */
  public void c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aconst_null
    //   7: astore_2
    //   8: aconst_null
    //   9: astore_3
    //   10: aload_0
    //   11: getfield 120	cn/domob/android/f/b:h	Ljava/lang/String;
    //   14: ifnull +449 -> 463
    //   17: aload_0
    //   18: getfield 120	cn/domob/android/f/b:h	Ljava/lang/String;
    //   21: invokevirtual 253	java/lang/String:length	()I
    //   24: ifeq +439 -> 463
    //   27: aload_0
    //   28: getfield 114	cn/domob/android/f/b:p	Ljava/lang/String;
    //   31: ldc 122
    //   33: invokevirtual 226	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   36: ifeq +409 -> 445
    //   39: aload_0
    //   40: getfield 116	cn/domob/android/f/b:t	Ljava/lang/String;
    //   43: ifnull +402 -> 445
    //   46: aload_0
    //   47: getfield 120	cn/domob/android/f/b:h	Ljava/lang/String;
    //   50: ldc_w 393
    //   53: invokevirtual 250	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   56: iconst_m1
    //   57: if_icmpne +304 -> 361
    //   60: aload_0
    //   61: new 395	java/net/URL
    //   64: dup
    //   65: new 139	java/lang/StringBuilder
    //   68: dup
    //   69: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   72: aload_0
    //   73: getfield 120	cn/domob/android/f/b:h	Ljava/lang/String;
    //   76: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: ldc_w 393
    //   82: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: aload_0
    //   86: getfield 116	cn/domob/android/f/b:t	Ljava/lang/String;
    //   89: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   95: invokespecial 396	java/net/URL:<init>	(Ljava/lang/String;)V
    //   98: putfield 398	cn/domob/android/f/b:b	Ljava/net/URL;
    //   101: aload_0
    //   102: getfield 398	cn/domob/android/f/b:b	Ljava/net/URL;
    //   105: ifnull +926 -> 1031
    //   108: getstatic 82	cn/domob/android/f/b:c	Lcn/domob/android/i/f;
    //   111: new 139	java/lang/StringBuilder
    //   114: dup
    //   115: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   118: ldc_w 400
    //   121: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: aload_0
    //   125: getfield 398	cn/domob/android/f/b:b	Ljava/net/URL;
    //   128: invokevirtual 401	java/net/URL:toString	()Ljava/lang/String;
    //   131: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: invokevirtual 128	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   140: iconst_1
    //   141: invokestatic 406	java/net/HttpURLConnection:setFollowRedirects	(Z)V
    //   144: aload_0
    //   145: getfield 174	cn/domob/android/f/b:s	Ljava/net/Proxy;
    //   148: ifnull +327 -> 475
    //   151: aload_0
    //   152: aload_0
    //   153: getfield 398	cn/domob/android/f/b:b	Ljava/net/URL;
    //   156: aload_0
    //   157: getfield 174	cn/domob/android/f/b:s	Ljava/net/Proxy;
    //   160: invokevirtual 410	java/net/URL:openConnection	(Ljava/net/Proxy;)Ljava/net/URLConnection;
    //   163: checkcast 403	java/net/HttpURLConnection
    //   166: putfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   169: aload_0
    //   170: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   173: ifnull +858 -> 1031
    //   176: aload_0
    //   177: getfield 110	cn/domob/android/f/b:q	Ljava/lang/String;
    //   180: ifnull +27 -> 207
    //   183: aload_0
    //   184: getfield 110	cn/domob/android/f/b:q	Ljava/lang/String;
    //   187: invokevirtual 253	java/lang/String:length	()I
    //   190: ifeq +17 -> 207
    //   193: aload_0
    //   194: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   197: ldc_w 414
    //   200: aload_0
    //   201: getfield 110	cn/domob/android/f/b:q	Ljava/lang/String;
    //   204: invokevirtual 418	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   207: aload_0
    //   208: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   211: iconst_0
    //   212: invokevirtual 421	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   215: aload_0
    //   216: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   219: aload_0
    //   220: getfield 118	cn/domob/android/f/b:u	I
    //   223: invokevirtual 424	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   226: aload_0
    //   227: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   230: aload_0
    //   231: getfield 118	cn/domob/android/f/b:u	I
    //   234: invokevirtual 427	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   237: aload_0
    //   238: getfield 112	cn/domob/android/f/b:r	Ljava/util/HashMap;
    //   241: ifnull +274 -> 515
    //   244: aload_0
    //   245: getfield 112	cn/domob/android/f/b:r	Ljava/util/HashMap;
    //   248: invokevirtual 431	java/util/HashMap:keySet	()Ljava/util/Set;
    //   251: invokeinterface 437 1 0
    //   256: astore_2
    //   257: aload_2
    //   258: invokeinterface 442 1 0
    //   263: ifeq +252 -> 515
    //   266: aload_2
    //   267: invokeinterface 446 1 0
    //   272: checkcast 206	java/lang/String
    //   275: astore 6
    //   277: aload_0
    //   278: getfield 112	cn/domob/android/f/b:r	Ljava/util/HashMap;
    //   281: aload 6
    //   283: invokevirtual 230	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   286: checkcast 206	java/lang/String
    //   289: astore 7
    //   291: aload 7
    //   293: ifnull -36 -> 257
    //   296: aload_0
    //   297: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   300: aload 6
    //   302: aload 7
    //   304: invokevirtual 449	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   307: goto -50 -> 257
    //   310: astore 4
    //   312: aconst_null
    //   313: astore_2
    //   314: aload_2
    //   315: astore 5
    //   317: aload_3
    //   318: astore 6
    //   320: getstatic 82	cn/domob/android/f/b:c	Lcn/domob/android/i/f;
    //   323: aload_0
    //   324: ldc_w 451
    //   327: invokevirtual 338	cn/domob/android/i/f:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   330: aload_2
    //   331: astore 5
    //   333: aload_3
    //   334: astore 6
    //   336: getstatic 82	cn/domob/android/f/b:c	Lcn/domob/android/i/f;
    //   339: aload 4
    //   341: invokevirtual 131	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   344: aload_3
    //   345: ifnull +7 -> 352
    //   348: aload_3
    //   349: invokevirtual 454	java/io/BufferedInputStream:close	()V
    //   352: aload_2
    //   353: ifnull +7 -> 360
    //   356: aload_2
    //   357: invokevirtual 457	java/io/ByteArrayOutputStream:close	()V
    //   360: return
    //   361: aload_0
    //   362: new 395	java/net/URL
    //   365: dup
    //   366: new 139	java/lang/StringBuilder
    //   369: dup
    //   370: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   373: aload_0
    //   374: getfield 120	cn/domob/android/f/b:h	Ljava/lang/String;
    //   377: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   380: ldc_w 459
    //   383: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   386: aload_0
    //   387: getfield 116	cn/domob/android/f/b:t	Ljava/lang/String;
    //   390: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   393: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   396: invokespecial 396	java/net/URL:<init>	(Ljava/lang/String;)V
    //   399: putfield 398	cn/domob/android/f/b:b	Ljava/net/URL;
    //   402: goto -301 -> 101
    //   405: astore 6
    //   407: getstatic 82	cn/domob/android/f/b:c	Lcn/domob/android/i/f;
    //   410: new 139	java/lang/StringBuilder
    //   413: dup
    //   414: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   417: ldc_w 461
    //   420: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   423: aload_0
    //   424: getfield 120	cn/domob/android/f/b:h	Ljava/lang/String;
    //   427: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   430: ldc_w 463
    //   433: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   436: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   439: invokevirtual 284	cn/domob/android/i/f:e	(Ljava/lang/String;)V
    //   442: goto -341 -> 101
    //   445: aload_0
    //   446: new 395	java/net/URL
    //   449: dup
    //   450: aload_0
    //   451: getfield 120	cn/domob/android/f/b:h	Ljava/lang/String;
    //   454: invokespecial 396	java/net/URL:<init>	(Ljava/lang/String;)V
    //   457: putfield 398	cn/domob/android/f/b:b	Ljava/net/URL;
    //   460: goto -359 -> 101
    //   463: getstatic 82	cn/domob/android/f/b:c	Lcn/domob/android/i/f;
    //   466: ldc_w 465
    //   469: invokevirtual 284	cn/domob/android/i/f:e	(Ljava/lang/String;)V
    //   472: goto -371 -> 101
    //   475: aload_0
    //   476: aload_0
    //   477: getfield 398	cn/domob/android/f/b:b	Ljava/net/URL;
    //   480: invokevirtual 468	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   483: checkcast 403	java/net/HttpURLConnection
    //   486: putfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   489: goto -320 -> 169
    //   492: astore_3
    //   493: aconst_null
    //   494: astore_2
    //   495: aload_2
    //   496: ifnull +7 -> 503
    //   499: aload_2
    //   500: invokevirtual 454	java/io/BufferedInputStream:close	()V
    //   503: aload 4
    //   505: ifnull +8 -> 513
    //   508: aload 4
    //   510: invokevirtual 457	java/io/ByteArrayOutputStream:close	()V
    //   513: aload_3
    //   514: athrow
    //   515: aload_0
    //   516: getfield 114	cn/domob/android/f/b:p	Ljava/lang/String;
    //   519: ldc 94
    //   521: invokevirtual 226	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   524: ifeq +205 -> 729
    //   527: aload_0
    //   528: getfield 116	cn/domob/android/f/b:t	Ljava/lang/String;
    //   531: ifnull +198 -> 729
    //   534: getstatic 82	cn/domob/android/f/b:c	Lcn/domob/android/i/f;
    //   537: ldc_w 470
    //   540: invokevirtual 128	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   543: aload_0
    //   544: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   547: ldc 94
    //   549: invokevirtual 473	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   552: aload_0
    //   553: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   556: iconst_1
    //   557: invokevirtual 476	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   560: aload_0
    //   561: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   564: ldc_w 478
    //   567: ldc_w 480
    //   570: invokevirtual 418	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   573: aload_0
    //   574: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   577: ldc_w 482
    //   580: aload_0
    //   581: getfield 116	cn/domob/android/f/b:t	Ljava/lang/String;
    //   584: invokevirtual 253	java/lang/String:length	()I
    //   587: invokestatic 485	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   590: invokevirtual 418	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   593: aload_0
    //   594: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   597: invokevirtual 489	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   600: astore_2
    //   601: new 491	java/io/BufferedWriter
    //   604: dup
    //   605: new 493	java/io/OutputStreamWriter
    //   608: dup
    //   609: aload_2
    //   610: invokespecial 496	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   613: sipush 4096
    //   616: invokespecial 499	java/io/BufferedWriter:<init>	(Ljava/io/Writer;I)V
    //   619: astore 6
    //   621: aload 6
    //   623: ifnull +26 -> 649
    //   626: aload 6
    //   628: aload_0
    //   629: getfield 116	cn/domob/android/f/b:t	Ljava/lang/String;
    //   632: invokevirtual 502	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   635: aload 6
    //   637: invokevirtual 505	java/io/BufferedWriter:flush	()V
    //   640: aload 6
    //   642: invokevirtual 506	java/io/BufferedWriter:close	()V
    //   645: aload_2
    //   646: invokevirtual 509	java/io/OutputStream:close	()V
    //   649: aload_0
    //   650: aload_0
    //   651: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   654: invokevirtual 512	java/net/HttpURLConnection:getResponseCode	()I
    //   657: putfield 514	cn/domob/android/f/b:y	I
    //   660: aload_0
    //   661: getfield 514	cn/domob/android/f/b:y	I
    //   664: sipush 301
    //   667: if_icmpeq +13 -> 680
    //   670: aload_0
    //   671: getfield 514	cn/domob/android/f/b:y	I
    //   674: sipush 302
    //   677: if_icmpne +71 -> 748
    //   680: aload_0
    //   681: new 395	java/net/URL
    //   684: dup
    //   685: aload_0
    //   686: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   689: ldc_w 516
    //   692: invokevirtual 519	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   695: invokespecial 396	java/net/URL:<init>	(Ljava/lang/String;)V
    //   698: invokevirtual 468	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   701: checkcast 403	java/net/HttpURLConnection
    //   704: putfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   707: aload_0
    //   708: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   711: iconst_0
    //   712: invokevirtual 421	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   715: aload_0
    //   716: aload_0
    //   717: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   720: invokevirtual 512	java/net/HttpURLConnection:getResponseCode	()I
    //   723: putfield 514	cn/domob/android/f/b:y	I
    //   726: goto -66 -> 660
    //   729: getstatic 82	cn/domob/android/f/b:c	Lcn/domob/android/i/f;
    //   732: ldc_w 521
    //   735: invokevirtual 128	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   738: aload_0
    //   739: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   742: invokevirtual 524	java/net/HttpURLConnection:connect	()V
    //   745: goto -96 -> 649
    //   748: aload_0
    //   749: getfield 514	cn/domob/android/f/b:y	I
    //   752: sipush 200
    //   755: if_icmplt +268 -> 1023
    //   758: aload_0
    //   759: getfield 514	cn/domob/android/f/b:y	I
    //   762: sipush 304
    //   765: if_icmpgt +258 -> 1023
    //   768: getstatic 82	cn/domob/android/f/b:c	Lcn/domob/android/i/f;
    //   771: new 139	java/lang/StringBuilder
    //   774: dup
    //   775: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   778: ldc_w 526
    //   781: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   784: aload_0
    //   785: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   788: invokevirtual 530	java/net/HttpURLConnection:getURL	()Ljava/net/URL;
    //   791: invokevirtual 533	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   794: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   797: invokevirtual 128	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   800: new 453	java/io/BufferedInputStream
    //   803: dup
    //   804: aload_0
    //   805: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   808: invokevirtual 537	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   811: sipush 4096
    //   814: invokespecial 540	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   817: astore_2
    //   818: sipush 4096
    //   821: newarray byte
    //   823: astore_3
    //   824: new 456	java/io/ByteArrayOutputStream
    //   827: dup
    //   828: sipush 4096
    //   831: invokespecial 541	java/io/ByteArrayOutputStream:<init>	(I)V
    //   834: astore 5
    //   836: aload_2
    //   837: aload_3
    //   838: invokevirtual 545	java/io/BufferedInputStream:read	([B)I
    //   841: istore_1
    //   842: iload_1
    //   843: iconst_m1
    //   844: if_icmpeq +14 -> 858
    //   847: aload 5
    //   849: aload_3
    //   850: iconst_0
    //   851: iload_1
    //   852: invokevirtual 548	java/io/ByteArrayOutputStream:write	([BII)V
    //   855: goto -19 -> 836
    //   858: aload_0
    //   859: aload 5
    //   861: invokevirtual 552	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   864: putfield 554	cn/domob/android/f/b:A	[B
    //   867: aload_0
    //   868: new 206	java/lang/String
    //   871: dup
    //   872: aload_0
    //   873: getfield 554	cn/domob/android/f/b:A	[B
    //   876: ldc_w 556
    //   879: invokespecial 559	java/lang/String:<init>	([BLjava/lang/String;)V
    //   882: putfield 561	cn/domob/android/f/b:z	Ljava/lang/String;
    //   885: aload_2
    //   886: astore_3
    //   887: aload 5
    //   889: astore_2
    //   890: aload_2
    //   891: astore 5
    //   893: aload_3
    //   894: astore 6
    //   896: aload_0
    //   897: getfield 412	cn/domob/android/f/b:n	Ljava/net/HttpURLConnection;
    //   900: invokevirtual 564	java/net/HttpURLConnection:disconnect	()V
    //   903: aload_3
    //   904: ifnull +7 -> 911
    //   907: aload_3
    //   908: invokevirtual 454	java/io/BufferedInputStream:close	()V
    //   911: aload_2
    //   912: ifnull -552 -> 360
    //   915: aload_2
    //   916: invokevirtual 457	java/io/ByteArrayOutputStream:close	()V
    //   919: return
    //   920: astore_2
    //   921: getstatic 82	cn/domob/android/f/b:c	Lcn/domob/android/i/f;
    //   924: aload_2
    //   925: invokevirtual 131	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   928: return
    //   929: astore_3
    //   930: getstatic 82	cn/domob/android/f/b:c	Lcn/domob/android/i/f;
    //   933: aload_3
    //   934: invokevirtual 131	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   937: goto -26 -> 911
    //   940: astore_3
    //   941: getstatic 82	cn/domob/android/f/b:c	Lcn/domob/android/i/f;
    //   944: aload_3
    //   945: invokevirtual 131	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   948: goto -596 -> 352
    //   951: astore_2
    //   952: getstatic 82	cn/domob/android/f/b:c	Lcn/domob/android/i/f;
    //   955: aload_2
    //   956: invokevirtual 131	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   959: return
    //   960: astore_2
    //   961: getstatic 82	cn/domob/android/f/b:c	Lcn/domob/android/i/f;
    //   964: aload_2
    //   965: invokevirtual 131	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   968: goto -465 -> 503
    //   971: astore_2
    //   972: getstatic 82	cn/domob/android/f/b:c	Lcn/domob/android/i/f;
    //   975: aload_2
    //   976: invokevirtual 131	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   979: goto -466 -> 513
    //   982: astore_3
    //   983: goto -488 -> 495
    //   986: astore_3
    //   987: aload 5
    //   989: astore 4
    //   991: goto -496 -> 495
    //   994: astore_3
    //   995: aload 6
    //   997: astore_2
    //   998: aload 5
    //   1000: astore 4
    //   1002: goto -507 -> 495
    //   1005: astore 4
    //   1007: aconst_null
    //   1008: astore 5
    //   1010: aload_2
    //   1011: astore_3
    //   1012: aload 5
    //   1014: astore_2
    //   1015: goto -701 -> 314
    //   1018: astore 4
    //   1020: goto -706 -> 314
    //   1023: aconst_null
    //   1024: astore_2
    //   1025: aload 5
    //   1027: astore_3
    //   1028: goto -138 -> 890
    //   1031: aconst_null
    //   1032: astore_3
    //   1033: goto -130 -> 903
    //   1036: astore 4
    //   1038: aload_2
    //   1039: astore_3
    //   1040: aload 5
    //   1042: astore_2
    //   1043: goto -729 -> 314
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1046	0	this	b
    //   841	11	1	i1	int
    //   7	909	2	localObject1	Object
    //   920	5	2	localIOException1	java.io.IOException
    //   951	5	2	localIOException2	java.io.IOException
    //   960	5	2	localIOException3	java.io.IOException
    //   971	5	2	localIOException4	java.io.IOException
    //   997	46	2	localObject2	Object
    //   9	340	3	localObject3	Object
    //   492	22	3	localObject4	Object
    //   823	85	3	localObject5	Object
    //   929	5	3	localIOException5	java.io.IOException
    //   940	5	3	localIOException6	java.io.IOException
    //   982	1	3	localObject6	Object
    //   986	1	3	localObject7	Object
    //   994	1	3	localObject8	Object
    //   1011	29	3	localObject9	Object
    //   1	1	4	localObject10	Object
    //   310	199	4	localException1	Exception
    //   989	12	4	localObject11	Object
    //   1005	1	4	localException2	Exception
    //   1018	1	4	localException3	Exception
    //   1036	1	4	localException4	Exception
    //   4	1037	5	localObject12	Object
    //   275	60	6	localObject13	Object
    //   405	1	6	localMalformedURLException	java.net.MalformedURLException
    //   619	377	6	localObject14	Object
    //   289	14	7	str	String
    // Exception table:
    //   from	to	target	type
    //   101	169	310	java/lang/Exception
    //   169	207	310	java/lang/Exception
    //   207	257	310	java/lang/Exception
    //   257	291	310	java/lang/Exception
    //   296	307	310	java/lang/Exception
    //   475	489	310	java/lang/Exception
    //   515	621	310	java/lang/Exception
    //   626	649	310	java/lang/Exception
    //   649	660	310	java/lang/Exception
    //   660	680	310	java/lang/Exception
    //   680	726	310	java/lang/Exception
    //   729	745	310	java/lang/Exception
    //   748	818	310	java/lang/Exception
    //   10	101	405	java/net/MalformedURLException
    //   361	402	405	java/net/MalformedURLException
    //   445	460	405	java/net/MalformedURLException
    //   463	472	405	java/net/MalformedURLException
    //   101	169	492	finally
    //   169	207	492	finally
    //   207	257	492	finally
    //   257	291	492	finally
    //   296	307	492	finally
    //   475	489	492	finally
    //   515	621	492	finally
    //   626	649	492	finally
    //   649	660	492	finally
    //   660	680	492	finally
    //   680	726	492	finally
    //   729	745	492	finally
    //   748	818	492	finally
    //   915	919	920	java/io/IOException
    //   907	911	929	java/io/IOException
    //   348	352	940	java/io/IOException
    //   356	360	951	java/io/IOException
    //   499	503	960	java/io/IOException
    //   508	513	971	java/io/IOException
    //   818	836	982	finally
    //   836	842	986	finally
    //   847	855	986	finally
    //   858	885	986	finally
    //   320	330	994	finally
    //   336	344	994	finally
    //   896	903	994	finally
    //   818	836	1005	java/lang/Exception
    //   896	903	1018	java/lang/Exception
    //   836	842	1036	java/lang/Exception
    //   847	855	1036	java/lang/Exception
    //   858	885	1036	java/lang/Exception
  }
  
  public void c(String paramString)
  {
    p = paramString;
  }
  
  public void d(String paramString)
  {
    q = paramString;
  }
  
  public byte[] d()
  {
    return A;
  }
  
  public String e()
  {
    return z;
  }
  
  public void e(String paramString)
  {
    t = paramString;
  }
  
  public int f()
  {
    return y;
  }
  
  public String g()
  {
    return t;
  }
  
  public String h()
  {
    c();
    j = false;
    long l1;
    if ((g) && (v != null) && (j(e())))
    {
      c.d(h + " has been masked!");
      if (d)
      {
        l1 = s().a("time", -1L);
        if ((l1 > 0L) && (86400000L + l1 < System.currentTimeMillis()))
        {
          e = new HashMap();
          d = false;
          r();
        }
      }
    }
    for (;;)
    {
      if ((j) && (w != null))
      {
        c.b(this, "Call test listener");
        w.a(this);
      }
      return z;
      if (l1 == -1L) {
        t();
      }
      j = true;
      continue;
      r();
      continue;
      j = true;
    }
  }
  
  public boolean i()
  {
    return g;
  }
  
  public String j()
  {
    return h;
  }
  
  public Context k()
  {
    return o;
  }
  
  public String l()
  {
    return p;
  }
  
  public String m()
  {
    return q;
  }
  
  public HashMap<String, String> n()
  {
    return r;
  }
  
  public String o()
  {
    return t;
  }
  
  public int p()
  {
    return u;
  }
  
  static abstract interface a
  {
    public abstract void a(b paramB);
  }
  
  public static abstract interface b
  {
    public abstract String a();
    
    public abstract void a(String paramString);
    
    public abstract String[] b();
    
    public abstract String c();
  }
}
