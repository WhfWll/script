import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import com.arrownock.push.PushService;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public class be
{
  private static be jdField_a_of_type_Be = null;
  private static final String jdField_a_of_type_JavaLangString = be.class.getName();
  private static final boolean jdField_a_of_type_Boolean = cm.b.booleanValue();
  private Context jdField_a_of_type_AndroidContentContext = null;
  private String b = null;
  
  private be(Context paramContext)
  {
    jdField_a_of_type_AndroidContentContext = paramContext;
    a();
  }
  
  /* Error */
  private int a(String paramString1, String paramString2, List<NameValuePair> paramList)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 7
    //   3: iconst_0
    //   4: istore 6
    //   6: new 56	java/net/URL
    //   9: dup
    //   10: aload_1
    //   11: invokespecial 59	java/net/URL:<init>	(Ljava/lang/String;)V
    //   14: invokevirtual 63	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   17: checkcast 65	java/net/HttpURLConnection
    //   20: astore_1
    //   21: iload 7
    //   23: istore 5
    //   25: aload_0
    //   26: invokespecial 67	be:a	()Z
    //   29: ifeq +55 -> 84
    //   32: iload 7
    //   34: istore 5
    //   36: getstatic 33	be:jdField_a_of_type_Boolean	Z
    //   39: ifeq +45 -> 84
    //   42: iload 7
    //   44: istore 5
    //   46: aload_1
    //   47: checkcast 69	javax/net/ssl/HttpsURLConnection
    //   50: new 71	cn
    //   53: dup
    //   54: invokespecial 72	cn:<init>	()V
    //   57: invokevirtual 76	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   60: iload 7
    //   62: istore 5
    //   64: aload_1
    //   65: checkcast 69	javax/net/ssl/HttpsURLConnection
    //   68: ldc 78
    //   70: ldc 80
    //   72: ldc 82
    //   74: ldc 84
    //   76: ldc 86
    //   78: invokestatic 91	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   81: invokevirtual 95	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   84: iload 7
    //   86: istore 5
    //   88: aload_1
    //   89: aload_2
    //   90: invokevirtual 98	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   93: iload 7
    //   95: istore 5
    //   97: aload_1
    //   98: iconst_1
    //   99: invokevirtual 102	java/net/HttpURLConnection:setDoInput	(Z)V
    //   102: iload 7
    //   104: istore 5
    //   106: aload_1
    //   107: iconst_1
    //   108: invokevirtual 105	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   111: iload 6
    //   113: istore 4
    //   115: iload 7
    //   117: istore 5
    //   119: aload_1
    //   120: invokevirtual 109	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   123: astore_2
    //   124: iload 6
    //   126: istore 4
    //   128: iload 7
    //   130: istore 5
    //   132: new 111	java/io/BufferedWriter
    //   135: dup
    //   136: new 113	java/io/OutputStreamWriter
    //   139: dup
    //   140: aload_2
    //   141: ldc 115
    //   143: invokespecial 118	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   146: invokespecial 121	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   149: astore 8
    //   151: iload 6
    //   153: istore 4
    //   155: iload 7
    //   157: istore 5
    //   159: aload 8
    //   161: aload_3
    //   162: invokestatic 124	be:a	(Ljava/util/List;)Ljava/lang/String;
    //   165: invokevirtual 127	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   168: iload 6
    //   170: istore 4
    //   172: iload 7
    //   174: istore 5
    //   176: aload 8
    //   178: invokevirtual 130	java/io/BufferedWriter:close	()V
    //   181: iload 6
    //   183: istore 4
    //   185: iload 7
    //   187: istore 5
    //   189: aload_2
    //   190: invokevirtual 133	java/io/OutputStream:close	()V
    //   193: iload 6
    //   195: istore 4
    //   197: iload 7
    //   199: istore 5
    //   201: aload_1
    //   202: invokevirtual 137	java/net/HttpURLConnection:getResponseCode	()I
    //   205: istore 6
    //   207: iload 6
    //   209: istore 4
    //   211: iload 6
    //   213: istore 5
    //   215: ldc -117
    //   217: new 141	java/lang/StringBuilder
    //   220: dup
    //   221: ldc -113
    //   223: invokespecial 144	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   226: iload 6
    //   228: invokevirtual 148	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   231: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   234: invokestatic 157	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   237: pop
    //   238: iload 6
    //   240: istore 4
    //   242: aload_1
    //   243: ifnull +134 -> 377
    //   246: aload_1
    //   247: invokevirtual 160	java/net/HttpURLConnection:disconnect	()V
    //   250: iload 4
    //   252: istore 5
    //   254: iload 5
    //   256: ireturn
    //   257: astore_2
    //   258: iload 4
    //   260: istore 5
    //   262: ldc -117
    //   264: new 141	java/lang/StringBuilder
    //   267: dup
    //   268: ldc -94
    //   270: invokespecial 144	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   273: aload_2
    //   274: invokevirtual 165	java/io/IOException:getMessage	()Ljava/lang/String;
    //   277: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   280: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   283: invokestatic 171	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   286: pop
    //   287: iload 4
    //   289: istore 5
    //   291: aload_2
    //   292: invokevirtual 174	java/io/IOException:printStackTrace	()V
    //   295: goto -53 -> 242
    //   298: astore_2
    //   299: iconst_0
    //   300: istore 4
    //   302: aconst_null
    //   303: astore_1
    //   304: ldc -117
    //   306: new 141	java/lang/StringBuilder
    //   309: dup
    //   310: ldc -94
    //   312: invokespecial 144	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   315: aload_2
    //   316: invokevirtual 175	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   319: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   325: invokestatic 171	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   328: pop
    //   329: aload_2
    //   330: invokevirtual 176	java/lang/Exception:printStackTrace	()V
    //   333: iload 4
    //   335: istore 5
    //   337: aload_1
    //   338: ifnull -84 -> 254
    //   341: aload_1
    //   342: invokevirtual 160	java/net/HttpURLConnection:disconnect	()V
    //   345: iload 4
    //   347: ireturn
    //   348: astore_2
    //   349: aconst_null
    //   350: astore_1
    //   351: aload_1
    //   352: ifnull +7 -> 359
    //   355: aload_1
    //   356: invokevirtual 160	java/net/HttpURLConnection:disconnect	()V
    //   359: aload_2
    //   360: athrow
    //   361: astore_2
    //   362: goto -11 -> 351
    //   365: astore_2
    //   366: goto -15 -> 351
    //   369: astore_2
    //   370: iload 5
    //   372: istore 4
    //   374: goto -70 -> 304
    //   377: iload 4
    //   379: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	380	0	this	be
    //   0	380	1	paramString1	String
    //   0	380	2	paramString2	String
    //   0	380	3	paramList	List<NameValuePair>
    //   113	265	4	i	int
    //   23	348	5	j	int
    //   4	235	6	k	int
    //   1	197	7	m	int
    //   149	28	8	localBufferedWriter	java.io.BufferedWriter
    // Exception table:
    //   from	to	target	type
    //   119	124	257	java/io/IOException
    //   132	151	257	java/io/IOException
    //   159	168	257	java/io/IOException
    //   176	181	257	java/io/IOException
    //   189	193	257	java/io/IOException
    //   201	207	257	java/io/IOException
    //   215	238	257	java/io/IOException
    //   6	21	298	java/lang/Exception
    //   6	21	348	finally
    //   25	32	361	finally
    //   36	42	361	finally
    //   46	60	361	finally
    //   64	84	361	finally
    //   88	93	361	finally
    //   97	102	361	finally
    //   106	111	361	finally
    //   119	124	361	finally
    //   132	151	361	finally
    //   159	168	361	finally
    //   176	181	361	finally
    //   189	193	361	finally
    //   201	207	361	finally
    //   215	238	361	finally
    //   262	287	361	finally
    //   291	295	361	finally
    //   304	333	365	finally
    //   25	32	369	java/lang/Exception
    //   36	42	369	java/lang/Exception
    //   46	60	369	java/lang/Exception
    //   64	84	369	java/lang/Exception
    //   88	93	369	java/lang/Exception
    //   97	102	369	java/lang/Exception
    //   106	111	369	java/lang/Exception
    //   119	124	369	java/lang/Exception
    //   132	151	369	java/lang/Exception
    //   159	168	369	java/lang/Exception
    //   176	181	369	java/lang/Exception
    //   189	193	369	java/lang/Exception
    //   201	207	369	java/lang/Exception
    //   215	238	369	java/lang/Exception
    //   262	287	369	java/lang/Exception
    //   291	295	369	java/lang/Exception
  }
  
  public static be a(Context paramContext, String paramString)
  {
    if (jdField_a_of_type_Be == null) {
      jdField_a_of_type_Be = new be(paramContext);
    }
    jdField_a_of_type_Beb = paramString;
    return jdField_a_of_type_Be;
  }
  
  /* Error */
  private static String a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: new 141	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 189	java/lang/StringBuilder:<init>	()V
    //   7: astore_1
    //   8: new 199	java/io/BufferedReader
    //   11: dup
    //   12: new 201	java/io/InputStreamReader
    //   15: dup
    //   16: aload_0
    //   17: invokespecial 204	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   20: invokespecial 207	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   23: astore_0
    //   24: aload_0
    //   25: invokevirtual 210	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   28: astore_2
    //   29: aload_2
    //   30: ifnull +29 -> 59
    //   33: aload_1
    //   34: aload_2
    //   35: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: pop
    //   39: aload_1
    //   40: ldc -44
    //   42: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: pop
    //   46: goto -22 -> 24
    //   49: astore_2
    //   50: aload_0
    //   51: invokevirtual 213	java/io/BufferedReader:close	()V
    //   54: aload_1
    //   55: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: areturn
    //   59: aload_0
    //   60: invokevirtual 213	java/io/BufferedReader:close	()V
    //   63: goto -9 -> 54
    //   66: astore_0
    //   67: goto -13 -> 54
    //   70: astore_1
    //   71: aload_0
    //   72: invokevirtual 213	java/io/BufferedReader:close	()V
    //   75: aload_1
    //   76: athrow
    //   77: astore_0
    //   78: goto -24 -> 54
    //   81: astore_0
    //   82: goto -7 -> 75
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	paramInputStream	java.io.InputStream
    //   7	48	1	localStringBuilder	StringBuilder
    //   70	6	1	localObject	Object
    //   28	7	2	str	String
    //   49	1	2	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   24	29	49	java/io/IOException
    //   33	46	49	java/io/IOException
    //   59	63	66	java/io/IOException
    //   24	29	70	finally
    //   33	46	70	finally
    //   50	54	77	java/io/IOException
    //   71	75	81	java/io/IOException
  }
  
  private static String a(List<NameValuePair> paramList)
    throws UnsupportedEncodingException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramList = paramList.iterator();
    int i = 1;
    if (paramList.hasNext())
    {
      NameValuePair localNameValuePair = (NameValuePair)paramList.next();
      int j = i;
      if (localNameValuePair.getValue() != null)
      {
        if (i == 0) {
          break label103;
        }
        i = 0;
      }
      for (;;)
      {
        localStringBuilder.append(URLEncoder.encode(localNameValuePair.getName(), "UTF-8"));
        localStringBuilder.append("=");
        localStringBuilder.append(URLEncoder.encode(localNameValuePair.getValue(), "UTF-8"));
        j = i;
        i = j;
        break;
        label103:
        localStringBuilder.append("&");
      }
    }
    return localStringBuilder.toString();
  }
  
  private List<NameValuePair> a()
  {
    int m = 0;
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      int k;
      try
      {
        localArrayList.add(new BasicNameValuePair("android_id", Settings.Secure.getString(jdField_a_of_type_AndroidContentContext.getContentResolver(), "android_id")));
        Object localObject = (TelephonyManager)jdField_a_of_type_AndroidContentContext.getSystemService("phone");
        localArrayList.add(new BasicNameValuePair("network_operator", ((TelephonyManager)localObject).getNetworkOperator()));
        localArrayList.add(new BasicNameValuePair("phone_type", String.valueOf(((TelephonyManager)localObject).getPhoneType())));
        localArrayList.add(new BasicNameValuePair("phone_id", ((TelephonyManager)localObject).getDeviceId()));
        localArrayList.add(new BasicNameValuePair("sim_operator", ((TelephonyManager)localObject).getSimOperator()));
        localArrayList.add(new BasicNameValuePair("network_type", String.valueOf(((TelephonyManager)localObject).getNetworkType())));
        localArrayList.add(new BasicNameValuePair("line1_number", ((TelephonyManager)localObject).getLine1Number()));
        localArrayList.add(new BasicNameValuePair("board", Build.BOARD));
        localArrayList.add(new BasicNameValuePair("bootloader", Build.BOOTLOADER));
        localArrayList.add(new BasicNameValuePair("brand", Build.BRAND));
        localArrayList.add(new BasicNameValuePair("cpu_abi", Build.CPU_ABI));
        localArrayList.add(new BasicNameValuePair("cpu_abi2", Build.CPU_ABI2));
        localArrayList.add(new BasicNameValuePair("device", Build.DEVICE));
        localArrayList.add(new BasicNameValuePair("display", Build.DISPLAY));
        localArrayList.add(new BasicNameValuePair("fingerprint", Build.FINGERPRINT));
        localArrayList.add(new BasicNameValuePair("hardware", Build.HARDWARE));
        localArrayList.add(new BasicNameValuePair("build_id", Build.ID));
        localArrayList.add(new BasicNameValuePair("manufacturer", Build.MANUFACTURER));
        localArrayList.add(new BasicNameValuePair("model", Build.MODEL));
        localArrayList.add(new BasicNameValuePair("product", Build.PRODUCT));
        localArrayList.add(new BasicNameValuePair("tags", Build.TAGS));
        localArrayList.add(new BasicNameValuePair("type", Build.TYPE));
        localArrayList.add(new BasicNameValuePair("sdk_version", String.valueOf(Build.VERSION.SDK_INT)));
        localArrayList.add(new BasicNameValuePair("release_version", Build.VERSION.RELEASE));
        localObject = jdField_a_of_type_AndroidContentContext.getApplicationContext().getResources().getDisplayMetrics();
        localArrayList.add(new BasicNameValuePair("screen_width", String.valueOf(widthPixels)));
        localArrayList.add(new BasicNameValuePair("screen_height", String.valueOf(heightPixels)));
        localObject = d();
        int i;
        String str1;
        if (localObject != null)
        {
          localObject = ((String)localObject).split("\n");
          int n = localObject.length;
          i = 0;
          j = 0;
          if (i < n)
          {
            str1 = localObject[i];
            k = j;
            if (str1 == null) {
              break label986;
            }
            k = j;
            if (str1.indexOf(":") <= 0) {
              break label986;
            }
            String str2 = str1.substring(0, str1.indexOf(":")).trim();
            if ("Processor".equals(str2))
            {
              str1 = str1.substring(str1.indexOf(":") + 1);
              k = j;
              if (str1 == null) {
                break label986;
              }
              localArrayList.add(new BasicNameValuePair("cpu_name", str1.trim()));
              k = j;
              break label986;
            }
            k = j;
            if (!"processor".equals(str2)) {
              break label986;
            }
            k = j + 1;
            break label986;
          }
          if (j > 0) {
            localArrayList.add(new BasicNameValuePair("cpu_cores", String.valueOf(j)));
          }
        }
        localObject = e();
        if (localObject != null)
        {
          localObject = ((String)localObject).split("\n");
          j = localObject.length;
          i = m;
          if (i < j)
          {
            str1 = localObject[i];
            if ((str1 == null) || (str1.indexOf(":") <= 0) || (!"MemTotal".equals(str1.substring(0, str1.indexOf(":")).trim()))) {
              continue;
            }
            str1 = str1.substring(str1.indexOf(":") + 1);
            if (str1 == null) {
              continue;
            }
            localObject = str1;
            if (str1.indexOf("kB") > 0) {
              localObject = str1.substring(0, str1.indexOf("kB"));
            }
            localArrayList.add(new BasicNameValuePair("mem_total", ((String)localObject).trim()));
          }
        }
        return localArrayList;
        i += 1;
        continue;
        i += 1;
      }
      catch (Exception localException)
      {
        return null;
      }
      label986:
      int j = k;
    }
  }
  
  private boolean a()
  {
    return jdField_a_of_type_AndroidContentContext.getSharedPreferences(PushService.LOG_TAG, 0).getBoolean("secureConnection", true);
  }
  
  /* Error */
  private String c()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 42	be:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   4: ldc_w 277
    //   7: invokevirtual 281	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   10: checkcast 283	android/telephony/TelephonyManager
    //   13: invokevirtual 304	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   16: astore_2
    //   17: getstatic 515	android/os/Build:SERIAL	Ljava/lang/String;
    //   20: astore_3
    //   21: aload_0
    //   22: getfield 42	be:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   25: invokevirtual 262	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   28: ldc_w 256
    //   31: invokestatic 268	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   34: astore 4
    //   36: aload_2
    //   37: ifnull +300 -> 337
    //   40: aload_2
    //   41: ldc_w 517
    //   44: invokevirtual 459	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   47: ifne +290 -> 337
    //   50: ldc 84
    //   52: aload_2
    //   53: invokevirtual 454	java/lang/String:trim	()Ljava/lang/String;
    //   56: invokevirtual 459	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   59: ifeq +173 -> 232
    //   62: goto +275 -> 337
    //   65: aload_3
    //   66: ifnull +277 -> 343
    //   69: aload_3
    //   70: invokevirtual 454	java/lang/String:trim	()Ljava/lang/String;
    //   73: ldc_w 519
    //   76: invokevirtual 459	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   79: ifeq +174 -> 253
    //   82: goto +261 -> 343
    //   85: aload 4
    //   87: ifnull +262 -> 349
    //   90: ldc 84
    //   92: aload 4
    //   94: invokevirtual 454	java/lang/String:trim	()Ljava/lang/String;
    //   97: invokevirtual 459	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   100: ifeq +174 -> 274
    //   103: goto +246 -> 349
    //   106: ldc 84
    //   108: aload_2
    //   109: invokevirtual 459	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   112: ifeq +22 -> 134
    //   115: ldc 84
    //   117: aload_3
    //   118: invokevirtual 459	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   121: ifeq +13 -> 134
    //   124: ldc 84
    //   126: aload 4
    //   128: invokevirtual 459	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   131: ifne +201 -> 332
    //   134: new 141	java/lang/StringBuilder
    //   137: dup
    //   138: invokespecial 189	java/lang/StringBuilder:<init>	()V
    //   141: aload_2
    //   142: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: aload_3
    //   146: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: aload 4
    //   151: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   157: astore_2
    //   158: aload_2
    //   159: astore_3
    //   160: aload_2
    //   161: ifnonnull +10 -> 171
    //   164: invokestatic 525	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   167: invokevirtual 526	java/util/UUID:toString	()Ljava/lang/String;
    //   170: astore_3
    //   171: ldc_w 528
    //   174: invokestatic 534	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   177: aload_3
    //   178: invokevirtual 538	java/lang/String:getBytes	()[B
    //   181: invokevirtual 542	java/security/MessageDigest:digest	([B)[B
    //   184: astore_2
    //   185: new 544	java/lang/StringBuffer
    //   188: dup
    //   189: invokespecial 545	java/lang/StringBuffer:<init>	()V
    //   192: astore_3
    //   193: iconst_0
    //   194: istore_1
    //   195: iload_1
    //   196: aload_2
    //   197: arraylength
    //   198: if_icmpge +107 -> 305
    //   201: aload_3
    //   202: aload_2
    //   203: iload_1
    //   204: baload
    //   205: sipush 255
    //   208: iand
    //   209: sipush 256
    //   212: ior
    //   213: invokestatic 550	java/lang/Integer:toHexString	(I)Ljava/lang/String;
    //   216: iconst_1
    //   217: iconst_3
    //   218: invokevirtual 451	java/lang/String:substring	(II)Ljava/lang/String;
    //   221: invokevirtual 553	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   224: pop
    //   225: iload_1
    //   226: iconst_1
    //   227: iadd
    //   228: istore_1
    //   229: goto -34 -> 195
    //   232: new 141	java/lang/StringBuilder
    //   235: dup
    //   236: ldc_w 555
    //   239: invokespecial 144	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   242: aload_2
    //   243: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   249: astore_2
    //   250: goto -185 -> 65
    //   253: new 141	java/lang/StringBuilder
    //   256: dup
    //   257: ldc_w 557
    //   260: invokespecial 144	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   263: aload_3
    //   264: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   270: astore_3
    //   271: goto -186 -> 85
    //   274: new 141	java/lang/StringBuilder
    //   277: dup
    //   278: ldc_w 559
    //   281: invokespecial 144	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   284: aload 4
    //   286: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   289: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   292: astore 4
    //   294: goto -188 -> 106
    //   297: astore_2
    //   298: aload_2
    //   299: invokevirtual 176	java/lang/Exception:printStackTrace	()V
    //   302: ldc 84
    //   304: areturn
    //   305: aload_3
    //   306: invokevirtual 560	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   309: astore_2
    //   310: new 141	java/lang/StringBuilder
    //   313: dup
    //   314: ldc_w 562
    //   317: invokespecial 144	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   320: aload_2
    //   321: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   324: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   327: areturn
    //   328: astore_2
    //   329: ldc 84
    //   331: areturn
    //   332: aconst_null
    //   333: astore_2
    //   334: goto -176 -> 158
    //   337: ldc 84
    //   339: astore_2
    //   340: goto -275 -> 65
    //   343: ldc 84
    //   345: astore_3
    //   346: goto -261 -> 85
    //   349: ldc 84
    //   351: astore 4
    //   353: goto -247 -> 106
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	356	0	this	be
    //   194	35	1	i	int
    //   16	234	2	localObject1	Object
    //   297	2	2	localException	Exception
    //   309	12	2	str1	String
    //   328	1	2	localNoSuchAlgorithmException	java.security.NoSuchAlgorithmException
    //   333	7	2	str2	String
    //   20	326	3	localObject2	Object
    //   34	318	4	str3	String
    // Exception table:
    //   from	to	target	type
    //   0	36	297	java/lang/Exception
    //   40	62	297	java/lang/Exception
    //   69	82	297	java/lang/Exception
    //   90	103	297	java/lang/Exception
    //   106	134	297	java/lang/Exception
    //   134	158	297	java/lang/Exception
    //   232	250	297	java/lang/Exception
    //   253	271	297	java/lang/Exception
    //   274	294	297	java/lang/Exception
    //   171	193	328	java/security/NoSuchAlgorithmException
    //   195	225	328	java/security/NoSuchAlgorithmException
    //   305	310	328	java/security/NoSuchAlgorithmException
  }
  
  private static String d()
  {
    try
    {
      String str = a(Runtime.getRuntime().exec("cat /proc/cpuinfo").getInputStream());
      return str;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  private static String e()
  {
    try
    {
      String str = a(Runtime.getRuntime().exec("cat /proc/meminfo").getInputStream());
      return str;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public final String a()
  {
    String str2 = jdField_a_of_type_AndroidContentContext.getSharedPreferences(jdField_a_of_type_JavaLangString, 0).getString("com.arrownock.internal.device.DEVICE_ID", "");
    String str1 = str2;
    if (str2.length() == 0)
    {
      str2 = c();
      str1 = str2;
      if (!"".equals(str2))
      {
        jdField_a_of_type_AndroidContentContext.getSharedPreferences(jdField_a_of_type_JavaLangString, 0).edit().putString("com.arrownock.internal.device.DEVICE_ID", str2).commit();
        str1 = str2;
      }
    }
    return str1;
  }
  
  public final void a()
  {
    if (b != null) {}
    for (;;)
    {
      try
      {
        localSharedPreferences = jdField_a_of_type_AndroidContentContext.getSharedPreferences(jdField_a_of_type_JavaLangString, 0);
        boolean bool = localSharedPreferences.getBoolean("com.arrownock.internal.device.IS_REPORTED", false);
        localBoolean3 = Boolean.valueOf(bool);
        localBoolean1 = localBoolean3;
      }
      catch (Exception localException2)
      {
        SharedPreferences localSharedPreferences;
        Boolean localBoolean3;
        Boolean localBoolean1;
        Boolean localBoolean2;
        Log.w("DeviceManager", localException2.getMessage());
        continue;
      }
      try
      {
        if (localBoolean3.booleanValue())
        {
          float f = Float.parseFloat(localSharedPreferences.getString("com.arrownock.internal.device.SDK_VERSION", "0"));
          localBoolean1 = localBoolean3;
          if (Float.parseFloat("2.25.3") > f) {
            localBoolean1 = Boolean.valueOf(false);
          }
        }
      }
      catch (Exception localException1)
      {
        localBoolean2 = Boolean.valueOf(false);
      }
    }
    if (!localBoolean1.booleanValue()) {
      new Thread(new bf(this, localSharedPreferences)).start();
    }
    a(false);
  }
  
  public final void a(boolean paramBoolean)
  {
    if (b != null)
    {
      Long localLong = Long.valueOf(jdField_a_of_type_AndroidContentContext.getSharedPreferences(jdField_a_of_type_JavaLangString, 0).getLong("com.arrownock.internal.device.LAST_LOCATION_REPORT", -1L));
      long l = Calendar.getInstance().getTimeInMillis();
      if ((!paramBoolean) && (localLong.longValue() >= 0L) && (Long.valueOf(l).longValue() - localLong.longValue() < 86400000L)) {}
    }
    try
    {
      new az().a(jdField_a_of_type_AndroidContentContext, new bd(this));
      return;
    }
    catch (Exception localException)
    {
      Log.w("DeviceManager", localException.getMessage());
    }
  }
}
