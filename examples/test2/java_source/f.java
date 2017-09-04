import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.arrownock.exception.ArrownockException;
import com.arrownock.im.AnIM;
import com.arrownock.im.AnIMStatus;
import com.arrownock.im.callback.AnIMStatusUpdateCallbackData;
import com.arrownock.im.callback.IAnIMCallback;
import com.arrownock.im.callback.IAnIMGetClientIdCallback;
import com.arrownock.im.callback.IAnIMGetClientsStatusCallback;
import com.arrownock.im.callback.IAnIMGetTopicInfoCallback;
import com.arrownock.im.callback.IAnIMGetTopicListCallback;
import com.arrownock.im.callback.IAnIMHistoryCallback;
import com.arrownock.im.callback.IAnIMPushBindingCallback;
import com.arrownock.im.callback.IAnIMPushNotificationSettingsCallback;
import com.arrownock.im.callback.IAnIMTopicCallback;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import javax.net.ssl.HostnameVerifier;
import org.apache.http.NameValuePair;

public final class f
  implements ay
{
  private static final String jdField_a_of_type_JavaLangString = AnIM.class.getName();
  private static final Map<String, Boolean> jdField_a_of_type_JavaUtilMap;
  private static final HostnameVerifier jdField_a_of_type_JavaxNetSslHostnameVerifier = new cn();
  private Context jdField_a_of_type_AndroidContentContext = null;
  private at jdField_a_of_type_At = new at(this, (byte)0);
  private bi jdField_a_of_type_Bi = null;
  private IAnIMCallback jdField_a_of_type_ComArrownockImCallbackIAnIMCallback = null;
  private ji jdField_a_of_type_Ji = null;
  private boolean jdField_a_of_type_Boolean = false;
  private final char[] jdField_a_of_type_ArrayOfChar = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90 };
  private String jdField_b_of_type_JavaLangString = jdField_a_of_type_JavaLangString;
  private boolean jdField_b_of_type_Boolean = false;
  private String jdField_c_of_type_JavaLangString = null;
  private boolean jdField_c_of_type_Boolean = true;
  private String d = null;
  private String e = null;
  
  static
  {
    HashMap localHashMap = new HashMap();
    jdField_a_of_type_JavaUtilMap = localHashMap;
    localHashMap.put("31", Boolean.TRUE);
    jdField_a_of_type_JavaUtilMap.put("32", Boolean.TRUE);
    jdField_a_of_type_JavaUtilMap.put("33", Boolean.TRUE);
    jdField_a_of_type_JavaUtilMap.put("34", Boolean.TRUE);
    jdField_a_of_type_JavaUtilMap.put("35", Boolean.TRUE);
  }
  
  public f() {}
  
  private static long a(String paramString)
  {
    long l = 5381L;
    int j = paramString.length();
    int i = 0;
    while (i < j)
    {
      l = l + (l << 5) + paramString.charAt(i);
      i += 1;
    }
    return l;
  }
  
  /* Error */
  private com.arrownock.im.callback.AnIMGetClientsStatusCallbackData a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aconst_null
    //   3: astore 8
    //   5: aconst_null
    //   6: astore 7
    //   8: aload 7
    //   10: astore 6
    //   12: aload 8
    //   14: astore 5
    //   16: aload_0
    //   17: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   20: ifeq +387 -> 407
    //   23: aload 7
    //   25: astore 6
    //   27: aload 8
    //   29: astore 5
    //   31: new 164	java/net/URL
    //   34: dup
    //   35: new 166	java/lang/StringBuilder
    //   38: dup
    //   39: ldc -88
    //   41: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   44: aload_0
    //   45: aload_0
    //   46: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   49: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   52: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: ldc -76
    //   57: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: aload_1
    //   61: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   64: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: ldc -71
    //   69: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: aload_2
    //   73: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   82: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   85: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   88: astore_1
    //   89: aload_1
    //   90: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   93: getstatic 68	f:jdField_a_of_type_JavaxNetSslHostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   96: invokevirtual 199	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   99: aload_1
    //   100: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   103: ldc -55
    //   105: ldc -53
    //   107: ldc -51
    //   109: ldc -49
    //   111: ldc -47
    //   113: invokestatic 212	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   116: invokevirtual 216	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   119: aload_1
    //   120: astore 6
    //   122: aload_1
    //   123: astore 5
    //   125: aload_1
    //   126: invokevirtual 221	java/net/HttpURLConnection:connect	()V
    //   129: aload_1
    //   130: astore 6
    //   132: aload_1
    //   133: astore 5
    //   135: aload_1
    //   136: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   139: istore 4
    //   141: iload 4
    //   143: sipush 200
    //   146: if_icmpne +405 -> 551
    //   149: aload_1
    //   150: astore 6
    //   152: aload_1
    //   153: astore 5
    //   155: new 226	org/json/JSONObject
    //   158: dup
    //   159: new 228	java/io/BufferedInputStream
    //   162: dup
    //   163: aload_1
    //   164: invokevirtual 232	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   167: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   170: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   173: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   176: ldc -15
    //   178: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   181: astore_2
    //   182: aload_2
    //   183: ifnull +334 -> 517
    //   186: aload_1
    //   187: astore 6
    //   189: aload_1
    //   190: astore 5
    //   192: aload_2
    //   193: ldc -9
    //   195: invokevirtual 251	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   198: astore_2
    //   199: aload_1
    //   200: astore 6
    //   202: aload_1
    //   203: astore 5
    //   205: new 36	java/util/HashMap
    //   208: dup
    //   209: invokespecial 39	java/util/HashMap:<init>	()V
    //   212: astore 7
    //   214: aload_1
    //   215: astore 6
    //   217: aload_1
    //   218: astore 5
    //   220: iload_3
    //   221: aload_2
    //   222: invokevirtual 254	org/json/JSONArray:length	()I
    //   225: if_icmpge +259 -> 484
    //   228: aload_1
    //   229: astore 6
    //   231: aload_1
    //   232: astore 5
    //   234: aload_2
    //   235: iload_3
    //   236: invokevirtual 257	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   239: astore 8
    //   241: aload_1
    //   242: astore 6
    //   244: aload_1
    //   245: astore 5
    //   247: aload 8
    //   249: invokevirtual 261	org/json/JSONObject:keys	()Ljava/util/Iterator;
    //   252: astore 9
    //   254: aload_1
    //   255: astore 6
    //   257: aload_1
    //   258: astore 5
    //   260: aload 9
    //   262: invokeinterface 267 1 0
    //   267: ifeq +210 -> 477
    //   270: aload_1
    //   271: astore 6
    //   273: aload_1
    //   274: astore 5
    //   276: aload 9
    //   278: invokeinterface 271 1 0
    //   283: checkcast 142	java/lang/String
    //   286: astore 10
    //   288: aload_1
    //   289: astore 6
    //   291: aload_1
    //   292: astore 5
    //   294: aload 7
    //   296: aload 10
    //   298: aload 8
    //   300: aload 10
    //   302: invokevirtual 275	org/json/JSONObject:getBoolean	(Ljava/lang/String;)Z
    //   305: invokestatic 279	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   308: invokeinterface 55 3 0
    //   313: pop
    //   314: goto -60 -> 254
    //   317: astore_2
    //   318: aload_1
    //   319: astore 6
    //   321: aload_1
    //   322: astore 5
    //   324: new 281	com/arrownock/exception/ArrownockException
    //   327: dup
    //   328: aload_2
    //   329: invokevirtual 284	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   332: sipush 2111
    //   335: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   338: athrow
    //   339: astore_2
    //   340: aload_1
    //   341: astore 6
    //   343: aload_1
    //   344: astore 5
    //   346: new 281	com/arrownock/exception/ArrownockException
    //   349: dup
    //   350: aload_2
    //   351: invokevirtual 288	java/io/IOException:getMessage	()Ljava/lang/String;
    //   354: sipush 2111
    //   357: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   360: athrow
    //   361: astore_1
    //   362: aload 6
    //   364: astore 5
    //   366: aload_1
    //   367: instanceof 281
    //   370: ifeq +231 -> 601
    //   373: aload 6
    //   375: astore 5
    //   377: new 290	com/arrownock/im/callback/AnIMGetClientsStatusCallbackData
    //   380: dup
    //   381: iconst_1
    //   382: aload_1
    //   383: checkcast 281	com/arrownock/exception/ArrownockException
    //   386: aconst_null
    //   387: invokespecial 293	com/arrownock/im/callback/AnIMGetClientsStatusCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/util/Map;)V
    //   390: astore_1
    //   391: aload_1
    //   392: astore_2
    //   393: aload 6
    //   395: ifnull +10 -> 405
    //   398: aload 6
    //   400: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   403: aload_1
    //   404: astore_2
    //   405: aload_2
    //   406: areturn
    //   407: aload 7
    //   409: astore 6
    //   411: aload 8
    //   413: astore 5
    //   415: new 164	java/net/URL
    //   418: dup
    //   419: new 166	java/lang/StringBuilder
    //   422: dup
    //   423: ldc_w 298
    //   426: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   429: aload_0
    //   430: aload_0
    //   431: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   434: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   437: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   440: ldc -76
    //   442: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   445: aload_1
    //   446: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   449: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   452: ldc -71
    //   454: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   457: aload_2
    //   458: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   461: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   464: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   467: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   470: checkcast 218	java/net/HttpURLConnection
    //   473: astore_1
    //   474: goto -355 -> 119
    //   477: iload_3
    //   478: iconst_1
    //   479: iadd
    //   480: istore_3
    //   481: goto -267 -> 214
    //   484: aload_1
    //   485: astore 6
    //   487: aload_1
    //   488: astore 5
    //   490: new 290	com/arrownock/im/callback/AnIMGetClientsStatusCallbackData
    //   493: dup
    //   494: iconst_0
    //   495: aconst_null
    //   496: aload 7
    //   498: invokespecial 293	com/arrownock/im/callback/AnIMGetClientsStatusCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/util/Map;)V
    //   501: astore 7
    //   503: aload 7
    //   505: astore_2
    //   506: aload_1
    //   507: ifnull -102 -> 405
    //   510: aload_1
    //   511: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   514: aload 7
    //   516: areturn
    //   517: aload_1
    //   518: astore 6
    //   520: aload_1
    //   521: astore 5
    //   523: new 281	com/arrownock/exception/ArrownockException
    //   526: dup
    //   527: ldc_w 300
    //   530: sipush 2111
    //   533: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   536: athrow
    //   537: astore_2
    //   538: aload 5
    //   540: astore_1
    //   541: aload_1
    //   542: ifnull +7 -> 549
    //   545: aload_1
    //   546: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   549: aload_2
    //   550: athrow
    //   551: aload_1
    //   552: astore 6
    //   554: aload_1
    //   555: astore 5
    //   557: new 281	com/arrownock/exception/ArrownockException
    //   560: dup
    //   561: new 226	org/json/JSONObject
    //   564: dup
    //   565: new 228	java/io/BufferedInputStream
    //   568: dup
    //   569: aload_1
    //   570: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   573: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   576: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   579: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   582: ldc_w 305
    //   585: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   588: ldc_w 307
    //   591: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   594: sipush 2111
    //   597: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   600: athrow
    //   601: aload 6
    //   603: astore 5
    //   605: new 290	com/arrownock/im/callback/AnIMGetClientsStatusCallbackData
    //   608: dup
    //   609: iconst_1
    //   610: new 281	com/arrownock/exception/ArrownockException
    //   613: dup
    //   614: aload_1
    //   615: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   618: sipush 2111
    //   621: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   624: aconst_null
    //   625: invokespecial 293	com/arrownock/im/callback/AnIMGetClientsStatusCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/util/Map;)V
    //   628: astore_1
    //   629: goto -238 -> 391
    //   632: astore_2
    //   633: goto -92 -> 541
    //   636: astore_2
    //   637: aload_1
    //   638: astore 6
    //   640: aload_2
    //   641: astore_1
    //   642: goto -280 -> 362
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	645	0	this	f
    //   0	645	1	paramString1	String
    //   0	645	2	paramString2	String
    //   1	480	3	i	int
    //   139	8	4	j	int
    //   14	590	5	localObject1	Object
    //   10	629	6	localObject2	Object
    //   6	509	7	localObject3	Object
    //   3	409	8	localJSONObject	org.json.JSONObject
    //   252	25	9	localIterator	Iterator
    //   286	15	10	str	String
    // Exception table:
    //   from	to	target	type
    //   155	182	317	org/json/JSONException
    //   192	199	317	org/json/JSONException
    //   205	214	317	org/json/JSONException
    //   220	228	317	org/json/JSONException
    //   234	241	317	org/json/JSONException
    //   247	254	317	org/json/JSONException
    //   260	270	317	org/json/JSONException
    //   276	288	317	org/json/JSONException
    //   294	314	317	org/json/JSONException
    //   490	503	317	org/json/JSONException
    //   523	537	317	org/json/JSONException
    //   557	601	317	org/json/JSONException
    //   125	129	339	java/io/IOException
    //   135	141	339	java/io/IOException
    //   155	182	339	java/io/IOException
    //   192	199	339	java/io/IOException
    //   205	214	339	java/io/IOException
    //   220	228	339	java/io/IOException
    //   234	241	339	java/io/IOException
    //   247	254	339	java/io/IOException
    //   260	270	339	java/io/IOException
    //   276	288	339	java/io/IOException
    //   294	314	339	java/io/IOException
    //   324	339	339	java/io/IOException
    //   490	503	339	java/io/IOException
    //   523	537	339	java/io/IOException
    //   557	601	339	java/io/IOException
    //   16	23	361	java/lang/Exception
    //   31	89	361	java/lang/Exception
    //   125	129	361	java/lang/Exception
    //   135	141	361	java/lang/Exception
    //   155	182	361	java/lang/Exception
    //   192	199	361	java/lang/Exception
    //   205	214	361	java/lang/Exception
    //   220	228	361	java/lang/Exception
    //   234	241	361	java/lang/Exception
    //   247	254	361	java/lang/Exception
    //   260	270	361	java/lang/Exception
    //   276	288	361	java/lang/Exception
    //   294	314	361	java/lang/Exception
    //   324	339	361	java/lang/Exception
    //   346	361	361	java/lang/Exception
    //   415	474	361	java/lang/Exception
    //   490	503	361	java/lang/Exception
    //   523	537	361	java/lang/Exception
    //   557	601	361	java/lang/Exception
    //   16	23	537	finally
    //   31	89	537	finally
    //   125	129	537	finally
    //   135	141	537	finally
    //   155	182	537	finally
    //   192	199	537	finally
    //   205	214	537	finally
    //   220	228	537	finally
    //   234	241	537	finally
    //   247	254	537	finally
    //   260	270	537	finally
    //   276	288	537	finally
    //   294	314	537	finally
    //   324	339	537	finally
    //   346	361	537	finally
    //   366	373	537	finally
    //   377	391	537	finally
    //   415	474	537	finally
    //   490	503	537	finally
    //   523	537	537	finally
    //   557	601	537	finally
    //   605	629	537	finally
    //   89	119	632	finally
    //   89	119	636	java/lang/Exception
  }
  
  /* Error */
  private com.arrownock.im.callback.AnIMGetTopicInfoCallbackData a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   4: ifeq +232 -> 236
    //   7: new 164	java/net/URL
    //   10: dup
    //   11: new 166	java/lang/StringBuilder
    //   14: dup
    //   15: ldc -88
    //   17: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   20: aload_0
    //   21: aload_0
    //   22: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   25: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   28: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: ldc_w 318
    //   34: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: aload_1
    //   38: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   41: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: ldc_w 320
    //   47: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: aload_2
    //   51: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   60: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   63: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   66: astore_1
    //   67: aload_1
    //   68: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   71: getstatic 68	f:jdField_a_of_type_JavaxNetSslHostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   74: invokevirtual 199	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   77: aload_1
    //   78: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   81: ldc -55
    //   83: ldc -53
    //   85: ldc -51
    //   87: ldc -49
    //   89: ldc -47
    //   91: invokestatic 212	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   94: invokevirtual 216	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   97: aload_1
    //   98: astore 4
    //   100: aload_1
    //   101: invokevirtual 221	java/net/HttpURLConnection:connect	()V
    //   104: aload_1
    //   105: astore 4
    //   107: aload_1
    //   108: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   111: istore_3
    //   112: iload_3
    //   113: sipush 200
    //   116: if_icmpne +448 -> 564
    //   119: aload_1
    //   120: astore 4
    //   122: new 226	org/json/JSONObject
    //   125: dup
    //   126: new 228	java/io/BufferedInputStream
    //   129: dup
    //   130: aload_1
    //   131: invokevirtual 232	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   134: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   137: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   140: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   143: ldc -15
    //   145: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   148: astore 5
    //   150: aload 5
    //   152: ifnull +382 -> 534
    //   155: aload_1
    //   156: astore 4
    //   158: aload 5
    //   160: ldc_w 322
    //   163: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   166: astore 6
    //   168: aload 6
    //   170: ifnull +264 -> 434
    //   173: aload_1
    //   174: astore 4
    //   176: aload 6
    //   178: ldc_w 324
    //   181: invokevirtual 251	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   184: astore 7
    //   186: aload_1
    //   187: astore 4
    //   189: new 326	java/util/HashSet
    //   192: dup
    //   193: invokespecial 327	java/util/HashSet:<init>	()V
    //   196: astore 5
    //   198: iconst_0
    //   199: istore_3
    //   200: aload_1
    //   201: astore 4
    //   203: iload_3
    //   204: aload 7
    //   206: invokevirtual 254	org/json/JSONArray:length	()I
    //   209: if_icmpge +91 -> 300
    //   212: aload_1
    //   213: astore 4
    //   215: aload 5
    //   217: aload 7
    //   219: iload_3
    //   220: invokevirtual 330	org/json/JSONArray:getString	(I)Ljava/lang/String;
    //   223: invokeinterface 336 2 0
    //   228: pop
    //   229: iload_3
    //   230: iconst_1
    //   231: iadd
    //   232: istore_3
    //   233: goto -33 -> 200
    //   236: new 164	java/net/URL
    //   239: dup
    //   240: new 166	java/lang/StringBuilder
    //   243: dup
    //   244: ldc_w 298
    //   247: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   250: aload_0
    //   251: aload_0
    //   252: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   255: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   258: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: ldc_w 318
    //   264: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: aload_1
    //   268: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   271: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: ldc_w 320
    //   277: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   280: aload_2
    //   281: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   284: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   287: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   290: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   293: checkcast 218	java/net/HttpURLConnection
    //   296: astore_1
    //   297: goto -200 -> 97
    //   300: aload_1
    //   301: astore 4
    //   303: aload 6
    //   305: ldc_w 338
    //   308: aconst_null
    //   309: invokevirtual 342	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   312: astore 7
    //   314: aload_1
    //   315: astore 4
    //   317: aload 6
    //   319: ldc_w 344
    //   322: aconst_null
    //   323: invokevirtual 342	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   326: astore 8
    //   328: aload_1
    //   329: astore 4
    //   331: new 346	java/text/SimpleDateFormat
    //   334: dup
    //   335: ldc_w 348
    //   338: getstatic 354	java/util/Locale:US	Ljava/util/Locale;
    //   341: invokespecial 357	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   344: astore 9
    //   346: aload_1
    //   347: astore 4
    //   349: aload 6
    //   351: ldc_w 359
    //   354: aconst_null
    //   355: invokevirtual 342	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   358: astore 6
    //   360: aload_1
    //   361: astore 4
    //   363: new 361	com/arrownock/im/callback/AnIMGetTopicInfoCallbackData
    //   366: dup
    //   367: iconst_0
    //   368: aconst_null
    //   369: aload_2
    //   370: aload 7
    //   372: aload 8
    //   374: aload 5
    //   376: aload 9
    //   378: new 166	java/lang/StringBuilder
    //   381: dup
    //   382: invokespecial 362	java/lang/StringBuilder:<init>	()V
    //   385: aload 6
    //   387: iconst_0
    //   388: aload 6
    //   390: invokevirtual 146	java/lang/String:length	()I
    //   393: iconst_1
    //   394: isub
    //   395: invokevirtual 366	java/lang/String:substring	(II)Ljava/lang/String;
    //   398: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   401: ldc_w 368
    //   404: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   407: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   410: invokevirtual 372	java/text/SimpleDateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   413: invokespecial 375	com/arrownock/im/callback/AnIMGetTopicInfoCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Date;)V
    //   416: astore_2
    //   417: aload_2
    //   418: astore 4
    //   420: aload_1
    //   421: ifnull +10 -> 431
    //   424: aload_1
    //   425: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   428: aload_2
    //   429: astore 4
    //   431: aload 4
    //   433: areturn
    //   434: aload_1
    //   435: astore 4
    //   437: new 281	com/arrownock/exception/ArrownockException
    //   440: dup
    //   441: ldc_w 377
    //   444: sipush 2109
    //   447: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   450: athrow
    //   451: astore_2
    //   452: aload_1
    //   453: astore 4
    //   455: new 281	com/arrownock/exception/ArrownockException
    //   458: dup
    //   459: aload_2
    //   460: invokevirtual 284	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   463: sipush 2109
    //   466: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   469: athrow
    //   470: astore_2
    //   471: aload_1
    //   472: astore 4
    //   474: new 281	com/arrownock/exception/ArrownockException
    //   477: dup
    //   478: aload_2
    //   479: invokevirtual 288	java/io/IOException:getMessage	()Ljava/lang/String;
    //   482: sipush 2109
    //   485: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   488: athrow
    //   489: astore_2
    //   490: aload_1
    //   491: astore 4
    //   493: aload_2
    //   494: instanceof 281
    //   497: ifeq +114 -> 611
    //   500: aload_1
    //   501: astore 4
    //   503: new 361	com/arrownock/im/callback/AnIMGetTopicInfoCallbackData
    //   506: dup
    //   507: iconst_1
    //   508: aload_2
    //   509: checkcast 281	com/arrownock/exception/ArrownockException
    //   512: aconst_null
    //   513: aconst_null
    //   514: aconst_null
    //   515: aconst_null
    //   516: aconst_null
    //   517: invokespecial 375	com/arrownock/im/callback/AnIMGetTopicInfoCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Date;)V
    //   520: astore_2
    //   521: aload_2
    //   522: astore 4
    //   524: aload_1
    //   525: ifnull -94 -> 431
    //   528: aload_1
    //   529: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   532: aload_2
    //   533: areturn
    //   534: aload_1
    //   535: astore 4
    //   537: new 281	com/arrownock/exception/ArrownockException
    //   540: dup
    //   541: ldc_w 379
    //   544: sipush 2109
    //   547: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   550: athrow
    //   551: astore_1
    //   552: aload 4
    //   554: ifnull +8 -> 562
    //   557: aload 4
    //   559: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   562: aload_1
    //   563: athrow
    //   564: aload_1
    //   565: astore 4
    //   567: new 281	com/arrownock/exception/ArrownockException
    //   570: dup
    //   571: new 226	org/json/JSONObject
    //   574: dup
    //   575: new 228	java/io/BufferedInputStream
    //   578: dup
    //   579: aload_1
    //   580: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   583: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   586: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   589: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   592: ldc_w 305
    //   595: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   598: ldc_w 307
    //   601: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   604: sipush 2109
    //   607: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   610: athrow
    //   611: aload_1
    //   612: astore 4
    //   614: new 361	com/arrownock/im/callback/AnIMGetTopicInfoCallbackData
    //   617: dup
    //   618: iconst_1
    //   619: new 281	com/arrownock/exception/ArrownockException
    //   622: dup
    //   623: aload_2
    //   624: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   627: sipush 2109
    //   630: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   633: aconst_null
    //   634: aconst_null
    //   635: aconst_null
    //   636: aconst_null
    //   637: aconst_null
    //   638: invokespecial 375	com/arrownock/im/callback/AnIMGetTopicInfoCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Date;)V
    //   641: astore_2
    //   642: goto -121 -> 521
    //   645: astore_1
    //   646: aconst_null
    //   647: astore 4
    //   649: goto -97 -> 552
    //   652: astore_2
    //   653: aload_1
    //   654: astore 4
    //   656: aload_2
    //   657: astore_1
    //   658: goto -106 -> 552
    //   661: astore_2
    //   662: aconst_null
    //   663: astore_1
    //   664: goto -174 -> 490
    //   667: astore_2
    //   668: goto -178 -> 490
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	671	0	this	f
    //   0	671	1	paramString1	String
    //   0	671	2	paramString2	String
    //   111	122	3	i	int
    //   98	557	4	str1	String
    //   148	227	5	localObject1	Object
    //   166	223	6	localObject2	Object
    //   184	187	7	localObject3	Object
    //   326	47	8	str2	String
    //   344	33	9	localSimpleDateFormat	java.text.SimpleDateFormat
    // Exception table:
    //   from	to	target	type
    //   122	150	451	org/json/JSONException
    //   158	168	451	org/json/JSONException
    //   176	186	451	org/json/JSONException
    //   189	198	451	org/json/JSONException
    //   203	212	451	org/json/JSONException
    //   215	229	451	org/json/JSONException
    //   303	314	451	org/json/JSONException
    //   317	328	451	org/json/JSONException
    //   331	346	451	org/json/JSONException
    //   349	360	451	org/json/JSONException
    //   363	417	451	org/json/JSONException
    //   437	451	451	org/json/JSONException
    //   537	551	451	org/json/JSONException
    //   567	611	451	org/json/JSONException
    //   100	104	470	java/io/IOException
    //   107	112	470	java/io/IOException
    //   122	150	470	java/io/IOException
    //   158	168	470	java/io/IOException
    //   176	186	470	java/io/IOException
    //   189	198	470	java/io/IOException
    //   203	212	470	java/io/IOException
    //   215	229	470	java/io/IOException
    //   303	314	470	java/io/IOException
    //   317	328	470	java/io/IOException
    //   331	346	470	java/io/IOException
    //   349	360	470	java/io/IOException
    //   363	417	470	java/io/IOException
    //   437	451	470	java/io/IOException
    //   455	470	470	java/io/IOException
    //   537	551	470	java/io/IOException
    //   567	611	470	java/io/IOException
    //   100	104	489	java/lang/Exception
    //   107	112	489	java/lang/Exception
    //   122	150	489	java/lang/Exception
    //   158	168	489	java/lang/Exception
    //   176	186	489	java/lang/Exception
    //   189	198	489	java/lang/Exception
    //   203	212	489	java/lang/Exception
    //   215	229	489	java/lang/Exception
    //   303	314	489	java/lang/Exception
    //   317	328	489	java/lang/Exception
    //   331	346	489	java/lang/Exception
    //   349	360	489	java/lang/Exception
    //   363	417	489	java/lang/Exception
    //   437	451	489	java/lang/Exception
    //   455	470	489	java/lang/Exception
    //   474	489	489	java/lang/Exception
    //   537	551	489	java/lang/Exception
    //   567	611	489	java/lang/Exception
    //   100	104	551	finally
    //   107	112	551	finally
    //   122	150	551	finally
    //   158	168	551	finally
    //   176	186	551	finally
    //   189	198	551	finally
    //   203	212	551	finally
    //   215	229	551	finally
    //   303	314	551	finally
    //   317	328	551	finally
    //   331	346	551	finally
    //   349	360	551	finally
    //   363	417	551	finally
    //   437	451	551	finally
    //   455	470	551	finally
    //   474	489	551	finally
    //   493	500	551	finally
    //   503	521	551	finally
    //   537	551	551	finally
    //   567	611	551	finally
    //   614	642	551	finally
    //   0	67	645	finally
    //   236	297	645	finally
    //   67	97	652	finally
    //   0	67	661	java/lang/Exception
    //   236	297	661	java/lang/Exception
    //   67	97	667	java/lang/Exception
  }
  
  /* Error */
  private com.arrownock.im.callback.AnIMGetTopicListCallbackData a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 6
    //   6: aload 6
    //   8: astore 4
    //   10: aload 7
    //   12: astore 5
    //   14: aload_0
    //   15: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   18: ifeq +319 -> 337
    //   21: aload_2
    //   22: ifnonnull +245 -> 267
    //   25: aload 6
    //   27: astore 4
    //   29: aload 7
    //   31: astore 5
    //   33: new 164	java/net/URL
    //   36: dup
    //   37: new 166	java/lang/StringBuilder
    //   40: dup
    //   41: ldc -88
    //   43: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   46: aload_0
    //   47: aload_0
    //   48: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   51: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   54: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: ldc_w 385
    //   60: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: aload_1
    //   64: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   67: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   76: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   79: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   82: astore_1
    //   83: aload_1
    //   84: astore 4
    //   86: aload_1
    //   87: astore 5
    //   89: aload_1
    //   90: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   93: getstatic 68	f:jdField_a_of_type_JavaxNetSslHostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   96: invokevirtual 199	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   99: aload_1
    //   100: astore 4
    //   102: aload_1
    //   103: astore 5
    //   105: aload_1
    //   106: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   109: ldc -55
    //   111: ldc -53
    //   113: ldc -51
    //   115: ldc -49
    //   117: ldc -47
    //   119: invokestatic 212	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   122: invokevirtual 216	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   125: aload_1
    //   126: astore 4
    //   128: aload_1
    //   129: astore 5
    //   131: aload_1
    //   132: invokevirtual 221	java/net/HttpURLConnection:connect	()V
    //   135: aload_1
    //   136: astore 4
    //   138: aload_1
    //   139: astore 5
    //   141: aload_1
    //   142: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   145: istore_3
    //   146: iload_3
    //   147: sipush 200
    //   150: if_icmpne +473 -> 623
    //   153: aload_1
    //   154: astore 4
    //   156: aload_1
    //   157: astore 5
    //   159: new 226	org/json/JSONObject
    //   162: dup
    //   163: new 228	java/io/BufferedInputStream
    //   166: dup
    //   167: aload_1
    //   168: invokevirtual 232	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   171: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   174: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   177: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   180: ldc -15
    //   182: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   185: astore 6
    //   187: aload 6
    //   189: ifnull +321 -> 510
    //   192: aload_1
    //   193: astore 4
    //   195: aload_1
    //   196: astore 5
    //   198: aload 6
    //   200: ldc_w 387
    //   203: invokevirtual 251	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   206: astore 6
    //   208: aload_1
    //   209: astore 4
    //   211: aload_1
    //   212: astore 5
    //   214: new 389	java/util/ArrayList
    //   217: dup
    //   218: invokespecial 390	java/util/ArrayList:<init>	()V
    //   221: astore 7
    //   223: iconst_0
    //   224: istore_3
    //   225: aload_1
    //   226: astore 4
    //   228: aload_1
    //   229: astore 5
    //   231: iload_3
    //   232: aload 6
    //   234: invokevirtual 254	org/json/JSONArray:length	()I
    //   237: if_icmpge +237 -> 474
    //   240: aload_1
    //   241: astore 4
    //   243: aload_1
    //   244: astore 5
    //   246: aload 7
    //   248: aload 6
    //   250: iload_3
    //   251: invokevirtual 257	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   254: invokeinterface 393 2 0
    //   259: pop
    //   260: iload_3
    //   261: iconst_1
    //   262: iadd
    //   263: istore_3
    //   264: goto -39 -> 225
    //   267: aload 6
    //   269: astore 4
    //   271: aload 7
    //   273: astore 5
    //   275: new 164	java/net/URL
    //   278: dup
    //   279: new 166	java/lang/StringBuilder
    //   282: dup
    //   283: ldc -88
    //   285: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   288: aload_0
    //   289: aload_0
    //   290: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   293: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   296: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   299: ldc_w 385
    //   302: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   305: aload_1
    //   306: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   309: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   312: ldc -71
    //   314: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: aload_2
    //   318: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   321: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   324: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   327: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   330: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   333: astore_1
    //   334: goto -251 -> 83
    //   337: aload_2
    //   338: ifnonnull +65 -> 403
    //   341: aload 6
    //   343: astore 4
    //   345: aload 7
    //   347: astore 5
    //   349: new 164	java/net/URL
    //   352: dup
    //   353: new 166	java/lang/StringBuilder
    //   356: dup
    //   357: ldc_w 298
    //   360: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   363: aload_0
    //   364: aload_0
    //   365: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   368: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   371: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   374: ldc_w 385
    //   377: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   380: aload_1
    //   381: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   384: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   387: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   390: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   393: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   396: checkcast 218	java/net/HttpURLConnection
    //   399: astore_1
    //   400: goto -275 -> 125
    //   403: aload 6
    //   405: astore 4
    //   407: aload 7
    //   409: astore 5
    //   411: new 164	java/net/URL
    //   414: dup
    //   415: new 166	java/lang/StringBuilder
    //   418: dup
    //   419: ldc_w 298
    //   422: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   425: aload_0
    //   426: aload_0
    //   427: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   430: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   433: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   436: ldc_w 385
    //   439: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   442: aload_1
    //   443: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   446: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   449: ldc -71
    //   451: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   454: aload_2
    //   455: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   458: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   461: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   464: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   467: checkcast 218	java/net/HttpURLConnection
    //   470: astore_1
    //   471: goto -346 -> 125
    //   474: aload_1
    //   475: astore 4
    //   477: aload_1
    //   478: astore 5
    //   480: new 395	com/arrownock/im/callback/AnIMGetTopicListCallbackData
    //   483: dup
    //   484: iconst_0
    //   485: aconst_null
    //   486: aload 7
    //   488: aload_2
    //   489: invokespecial 398	com/arrownock/im/callback/AnIMGetTopicListCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/util/List;Ljava/lang/String;)V
    //   492: astore 6
    //   494: aload 6
    //   496: astore_2
    //   497: aload_1
    //   498: ifnull +10 -> 508
    //   501: aload_1
    //   502: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   505: aload 6
    //   507: astore_2
    //   508: aload_2
    //   509: areturn
    //   510: aload_1
    //   511: astore 4
    //   513: aload_1
    //   514: astore 5
    //   516: new 281	com/arrownock/exception/ArrownockException
    //   519: dup
    //   520: ldc_w 400
    //   523: sipush 2114
    //   526: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   529: athrow
    //   530: astore 6
    //   532: aload_1
    //   533: astore 4
    //   535: aload_1
    //   536: astore 5
    //   538: new 281	com/arrownock/exception/ArrownockException
    //   541: dup
    //   542: aload 6
    //   544: invokevirtual 284	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   547: sipush 2114
    //   550: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   553: athrow
    //   554: astore 6
    //   556: aload_1
    //   557: astore 4
    //   559: aload_1
    //   560: astore 5
    //   562: new 281	com/arrownock/exception/ArrownockException
    //   565: dup
    //   566: aload 6
    //   568: invokevirtual 288	java/io/IOException:getMessage	()Ljava/lang/String;
    //   571: sipush 2114
    //   574: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   577: athrow
    //   578: astore_1
    //   579: aload 4
    //   581: astore 5
    //   583: aload_1
    //   584: instanceof 281
    //   587: ifeq +99 -> 686
    //   590: aload 4
    //   592: astore 5
    //   594: new 395	com/arrownock/im/callback/AnIMGetTopicListCallbackData
    //   597: dup
    //   598: iconst_1
    //   599: aload_1
    //   600: checkcast 281	com/arrownock/exception/ArrownockException
    //   603: aconst_null
    //   604: aload_2
    //   605: invokespecial 398	com/arrownock/im/callback/AnIMGetTopicListCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/util/List;Ljava/lang/String;)V
    //   608: astore_1
    //   609: aload_1
    //   610: astore_2
    //   611: aload 4
    //   613: ifnull -105 -> 508
    //   616: aload 4
    //   618: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   621: aload_1
    //   622: areturn
    //   623: aload_1
    //   624: astore 4
    //   626: aload_1
    //   627: astore 5
    //   629: new 281	com/arrownock/exception/ArrownockException
    //   632: dup
    //   633: new 226	org/json/JSONObject
    //   636: dup
    //   637: new 228	java/io/BufferedInputStream
    //   640: dup
    //   641: aload_1
    //   642: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   645: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   648: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   651: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   654: ldc_w 305
    //   657: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   660: ldc_w 307
    //   663: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   666: sipush 2114
    //   669: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   672: athrow
    //   673: astore_1
    //   674: aload 5
    //   676: ifnull +8 -> 684
    //   679: aload 5
    //   681: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   684: aload_1
    //   685: athrow
    //   686: aload 4
    //   688: astore 5
    //   690: new 395	com/arrownock/im/callback/AnIMGetTopicListCallbackData
    //   693: dup
    //   694: iconst_1
    //   695: new 281	com/arrownock/exception/ArrownockException
    //   698: dup
    //   699: aload_1
    //   700: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   703: sipush 2114
    //   706: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   709: aconst_null
    //   710: aload_2
    //   711: invokespecial 398	com/arrownock/im/callback/AnIMGetTopicListCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/util/List;Ljava/lang/String;)V
    //   714: astore_1
    //   715: goto -106 -> 609
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	718	0	this	f
    //   0	718	1	paramString1	String
    //   0	718	2	paramString2	String
    //   145	119	3	i	int
    //   8	679	4	localObject1	Object
    //   12	677	5	localObject2	Object
    //   4	502	6	localObject3	Object
    //   530	13	6	localJSONException	org.json.JSONException
    //   554	13	6	localIOException	IOException
    //   1	486	7	localArrayList	java.util.ArrayList
    // Exception table:
    //   from	to	target	type
    //   159	187	530	org/json/JSONException
    //   198	208	530	org/json/JSONException
    //   214	223	530	org/json/JSONException
    //   231	240	530	org/json/JSONException
    //   246	260	530	org/json/JSONException
    //   480	494	530	org/json/JSONException
    //   516	530	530	org/json/JSONException
    //   629	673	530	org/json/JSONException
    //   131	135	554	java/io/IOException
    //   141	146	554	java/io/IOException
    //   159	187	554	java/io/IOException
    //   198	208	554	java/io/IOException
    //   214	223	554	java/io/IOException
    //   231	240	554	java/io/IOException
    //   246	260	554	java/io/IOException
    //   480	494	554	java/io/IOException
    //   516	530	554	java/io/IOException
    //   538	554	554	java/io/IOException
    //   629	673	554	java/io/IOException
    //   14	21	578	java/lang/Exception
    //   33	83	578	java/lang/Exception
    //   89	99	578	java/lang/Exception
    //   105	125	578	java/lang/Exception
    //   131	135	578	java/lang/Exception
    //   141	146	578	java/lang/Exception
    //   159	187	578	java/lang/Exception
    //   198	208	578	java/lang/Exception
    //   214	223	578	java/lang/Exception
    //   231	240	578	java/lang/Exception
    //   246	260	578	java/lang/Exception
    //   275	334	578	java/lang/Exception
    //   349	400	578	java/lang/Exception
    //   411	471	578	java/lang/Exception
    //   480	494	578	java/lang/Exception
    //   516	530	578	java/lang/Exception
    //   538	554	578	java/lang/Exception
    //   562	578	578	java/lang/Exception
    //   629	673	578	java/lang/Exception
    //   14	21	673	finally
    //   33	83	673	finally
    //   89	99	673	finally
    //   105	125	673	finally
    //   131	135	673	finally
    //   141	146	673	finally
    //   159	187	673	finally
    //   198	208	673	finally
    //   214	223	673	finally
    //   231	240	673	finally
    //   246	260	673	finally
    //   275	334	673	finally
    //   349	400	673	finally
    //   411	471	673	finally
    //   480	494	673	finally
    //   516	530	673	finally
    //   538	554	673	finally
    //   562	578	673	finally
    //   583	590	673	finally
    //   594	609	673	finally
    //   629	673	673	finally
    //   690	715	673	finally
  }
  
  private String a(Context paramContext)
  {
    String str = a(paramContext, "imAPI");
    paramContext = str;
    if ("".equals(str)) {
      paramContext = "10.1.215.152:3000";
    }
    return paramContext;
  }
  
  static String a(InputStream paramInputStream)
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream));
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      for (;;)
      {
        String str = localBufferedReader.readLine();
        if (str == null) {
          break;
        }
        localStringBuilder.append(str + "\n");
      }
      try
      {
        paramInputStream.close();
        throw localObject;
      }
      catch (IOException paramInputStream)
      {
        for (;;)
        {
          paramInputStream.printStackTrace();
        }
      }
    }
    catch (IOException localIOException)
    {
      localIOException = localIOException;
      localIOException.printStackTrace();
      try
      {
        paramInputStream.close();
        for (;;)
        {
          return localStringBuilder.toString();
          try
          {
            paramInputStream.close();
          }
          catch (IOException paramInputStream)
          {
            paramInputStream.printStackTrace();
          }
        }
      }
      catch (IOException paramInputStream)
      {
        for (;;)
        {
          paramInputStream.printStackTrace();
        }
      }
    }
    finally {}
  }
  
  public static String a(Set<String> paramSet, String paramString)
  {
    Object[] arrayOfObject = paramSet.toArray();
    paramSet = new StringBuffer();
    int j = arrayOfObject.length;
    if (j == 0) {
      return null;
    }
    Arrays.sort(arrayOfObject);
    paramSet.append(arrayOfObject[0]);
    int i = 1;
    while (i < j)
    {
      paramSet = paramSet.append(paramString).append(arrayOfObject[i]);
      i += 1;
    }
    return paramSet.toString();
  }
  
  /* Error */
  private com.arrownock.im.callback.AnIMGetClientsStatusCallbackData b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aconst_null
    //   3: astore 8
    //   5: aconst_null
    //   6: astore 7
    //   8: aload 7
    //   10: astore 6
    //   12: aload 8
    //   14: astore 5
    //   16: aload_0
    //   17: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   20: ifeq +388 -> 408
    //   23: aload 7
    //   25: astore 6
    //   27: aload 8
    //   29: astore 5
    //   31: new 164	java/net/URL
    //   34: dup
    //   35: new 166	java/lang/StringBuilder
    //   38: dup
    //   39: ldc -88
    //   41: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   44: aload_0
    //   45: aload_0
    //   46: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   49: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   52: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: ldc -76
    //   57: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: aload_1
    //   61: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   64: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: ldc_w 534
    //   70: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: aload_2
    //   74: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   83: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   86: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   89: astore_1
    //   90: aload_1
    //   91: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   94: getstatic 68	f:jdField_a_of_type_JavaxNetSslHostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   97: invokevirtual 199	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   100: aload_1
    //   101: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   104: ldc -55
    //   106: ldc -53
    //   108: ldc -51
    //   110: ldc -49
    //   112: ldc -47
    //   114: invokestatic 212	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   117: invokevirtual 216	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   120: aload_1
    //   121: astore 6
    //   123: aload_1
    //   124: astore 5
    //   126: aload_1
    //   127: invokevirtual 221	java/net/HttpURLConnection:connect	()V
    //   130: aload_1
    //   131: astore 6
    //   133: aload_1
    //   134: astore 5
    //   136: aload_1
    //   137: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   140: istore 4
    //   142: iload 4
    //   144: sipush 200
    //   147: if_icmpne +406 -> 553
    //   150: aload_1
    //   151: astore 6
    //   153: aload_1
    //   154: astore 5
    //   156: new 226	org/json/JSONObject
    //   159: dup
    //   160: new 228	java/io/BufferedInputStream
    //   163: dup
    //   164: aload_1
    //   165: invokevirtual 232	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   168: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   171: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   174: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   177: ldc -15
    //   179: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   182: astore_2
    //   183: aload_2
    //   184: ifnull +335 -> 519
    //   187: aload_1
    //   188: astore 6
    //   190: aload_1
    //   191: astore 5
    //   193: aload_2
    //   194: ldc -9
    //   196: invokevirtual 251	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   199: astore_2
    //   200: aload_1
    //   201: astore 6
    //   203: aload_1
    //   204: astore 5
    //   206: new 36	java/util/HashMap
    //   209: dup
    //   210: invokespecial 39	java/util/HashMap:<init>	()V
    //   213: astore 7
    //   215: aload_1
    //   216: astore 6
    //   218: aload_1
    //   219: astore 5
    //   221: iload_3
    //   222: aload_2
    //   223: invokevirtual 254	org/json/JSONArray:length	()I
    //   226: if_icmpge +260 -> 486
    //   229: aload_1
    //   230: astore 6
    //   232: aload_1
    //   233: astore 5
    //   235: aload_2
    //   236: iload_3
    //   237: invokevirtual 257	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   240: astore 8
    //   242: aload_1
    //   243: astore 6
    //   245: aload_1
    //   246: astore 5
    //   248: aload 8
    //   250: invokevirtual 261	org/json/JSONObject:keys	()Ljava/util/Iterator;
    //   253: astore 9
    //   255: aload_1
    //   256: astore 6
    //   258: aload_1
    //   259: astore 5
    //   261: aload 9
    //   263: invokeinterface 267 1 0
    //   268: ifeq +211 -> 479
    //   271: aload_1
    //   272: astore 6
    //   274: aload_1
    //   275: astore 5
    //   277: aload 9
    //   279: invokeinterface 271 1 0
    //   284: checkcast 142	java/lang/String
    //   287: astore 10
    //   289: aload_1
    //   290: astore 6
    //   292: aload_1
    //   293: astore 5
    //   295: aload 7
    //   297: aload 10
    //   299: aload 8
    //   301: aload 10
    //   303: invokevirtual 275	org/json/JSONObject:getBoolean	(Ljava/lang/String;)Z
    //   306: invokestatic 279	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   309: invokeinterface 55 3 0
    //   314: pop
    //   315: goto -60 -> 255
    //   318: astore_2
    //   319: aload_1
    //   320: astore 6
    //   322: aload_1
    //   323: astore 5
    //   325: new 281	com/arrownock/exception/ArrownockException
    //   328: dup
    //   329: aload_2
    //   330: invokevirtual 284	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   333: sipush 2111
    //   336: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   339: athrow
    //   340: astore_2
    //   341: aload_1
    //   342: astore 6
    //   344: aload_1
    //   345: astore 5
    //   347: new 281	com/arrownock/exception/ArrownockException
    //   350: dup
    //   351: aload_2
    //   352: invokevirtual 288	java/io/IOException:getMessage	()Ljava/lang/String;
    //   355: sipush 2111
    //   358: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   361: athrow
    //   362: astore_1
    //   363: aload 6
    //   365: astore 5
    //   367: aload_1
    //   368: instanceof 281
    //   371: ifeq +232 -> 603
    //   374: aload 6
    //   376: astore 5
    //   378: new 290	com/arrownock/im/callback/AnIMGetClientsStatusCallbackData
    //   381: dup
    //   382: iconst_1
    //   383: aload_1
    //   384: checkcast 281	com/arrownock/exception/ArrownockException
    //   387: aconst_null
    //   388: invokespecial 293	com/arrownock/im/callback/AnIMGetClientsStatusCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/util/Map;)V
    //   391: astore_1
    //   392: aload_1
    //   393: astore_2
    //   394: aload 6
    //   396: ifnull +10 -> 406
    //   399: aload 6
    //   401: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   404: aload_1
    //   405: astore_2
    //   406: aload_2
    //   407: areturn
    //   408: aload 7
    //   410: astore 6
    //   412: aload 8
    //   414: astore 5
    //   416: new 164	java/net/URL
    //   419: dup
    //   420: new 166	java/lang/StringBuilder
    //   423: dup
    //   424: ldc_w 298
    //   427: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   430: aload_0
    //   431: aload_0
    //   432: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   435: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   438: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   441: ldc -76
    //   443: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   446: aload_1
    //   447: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   450: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   453: ldc_w 534
    //   456: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   459: aload_2
    //   460: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   463: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   466: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   469: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   472: checkcast 218	java/net/HttpURLConnection
    //   475: astore_1
    //   476: goto -356 -> 120
    //   479: iload_3
    //   480: iconst_1
    //   481: iadd
    //   482: istore_3
    //   483: goto -268 -> 215
    //   486: aload_1
    //   487: astore 6
    //   489: aload_1
    //   490: astore 5
    //   492: new 290	com/arrownock/im/callback/AnIMGetClientsStatusCallbackData
    //   495: dup
    //   496: iconst_0
    //   497: aconst_null
    //   498: aload 7
    //   500: invokespecial 293	com/arrownock/im/callback/AnIMGetClientsStatusCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/util/Map;)V
    //   503: astore 7
    //   505: aload 7
    //   507: astore_2
    //   508: aload_1
    //   509: ifnull -103 -> 406
    //   512: aload_1
    //   513: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   516: aload 7
    //   518: areturn
    //   519: aload_1
    //   520: astore 6
    //   522: aload_1
    //   523: astore 5
    //   525: new 281	com/arrownock/exception/ArrownockException
    //   528: dup
    //   529: ldc_w 300
    //   532: sipush 2111
    //   535: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   538: athrow
    //   539: astore_2
    //   540: aload 5
    //   542: astore_1
    //   543: aload_1
    //   544: ifnull +7 -> 551
    //   547: aload_1
    //   548: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   551: aload_2
    //   552: athrow
    //   553: aload_1
    //   554: astore 6
    //   556: aload_1
    //   557: astore 5
    //   559: new 281	com/arrownock/exception/ArrownockException
    //   562: dup
    //   563: new 226	org/json/JSONObject
    //   566: dup
    //   567: new 228	java/io/BufferedInputStream
    //   570: dup
    //   571: aload_1
    //   572: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   575: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   578: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   581: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   584: ldc_w 305
    //   587: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   590: ldc_w 307
    //   593: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   596: sipush 2111
    //   599: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   602: athrow
    //   603: aload 6
    //   605: astore 5
    //   607: new 290	com/arrownock/im/callback/AnIMGetClientsStatusCallbackData
    //   610: dup
    //   611: iconst_1
    //   612: new 281	com/arrownock/exception/ArrownockException
    //   615: dup
    //   616: aload_1
    //   617: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   620: sipush 2111
    //   623: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   626: aconst_null
    //   627: invokespecial 293	com/arrownock/im/callback/AnIMGetClientsStatusCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/util/Map;)V
    //   630: astore_1
    //   631: goto -239 -> 392
    //   634: astore_2
    //   635: goto -92 -> 543
    //   638: astore_2
    //   639: aload_1
    //   640: astore 6
    //   642: aload_2
    //   643: astore_1
    //   644: goto -281 -> 363
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	647	0	this	f
    //   0	647	1	paramString1	String
    //   0	647	2	paramString2	String
    //   1	482	3	i	int
    //   140	8	4	j	int
    //   14	592	5	localObject1	Object
    //   10	631	6	localObject2	Object
    //   6	511	7	localObject3	Object
    //   3	410	8	localJSONObject	org.json.JSONObject
    //   253	25	9	localIterator	Iterator
    //   287	15	10	str	String
    // Exception table:
    //   from	to	target	type
    //   156	183	318	org/json/JSONException
    //   193	200	318	org/json/JSONException
    //   206	215	318	org/json/JSONException
    //   221	229	318	org/json/JSONException
    //   235	242	318	org/json/JSONException
    //   248	255	318	org/json/JSONException
    //   261	271	318	org/json/JSONException
    //   277	289	318	org/json/JSONException
    //   295	315	318	org/json/JSONException
    //   492	505	318	org/json/JSONException
    //   525	539	318	org/json/JSONException
    //   559	603	318	org/json/JSONException
    //   126	130	340	java/io/IOException
    //   136	142	340	java/io/IOException
    //   156	183	340	java/io/IOException
    //   193	200	340	java/io/IOException
    //   206	215	340	java/io/IOException
    //   221	229	340	java/io/IOException
    //   235	242	340	java/io/IOException
    //   248	255	340	java/io/IOException
    //   261	271	340	java/io/IOException
    //   277	289	340	java/io/IOException
    //   295	315	340	java/io/IOException
    //   325	340	340	java/io/IOException
    //   492	505	340	java/io/IOException
    //   525	539	340	java/io/IOException
    //   559	603	340	java/io/IOException
    //   16	23	362	java/lang/Exception
    //   31	90	362	java/lang/Exception
    //   126	130	362	java/lang/Exception
    //   136	142	362	java/lang/Exception
    //   156	183	362	java/lang/Exception
    //   193	200	362	java/lang/Exception
    //   206	215	362	java/lang/Exception
    //   221	229	362	java/lang/Exception
    //   235	242	362	java/lang/Exception
    //   248	255	362	java/lang/Exception
    //   261	271	362	java/lang/Exception
    //   277	289	362	java/lang/Exception
    //   295	315	362	java/lang/Exception
    //   325	340	362	java/lang/Exception
    //   347	362	362	java/lang/Exception
    //   416	476	362	java/lang/Exception
    //   492	505	362	java/lang/Exception
    //   525	539	362	java/lang/Exception
    //   559	603	362	java/lang/Exception
    //   16	23	539	finally
    //   31	90	539	finally
    //   126	130	539	finally
    //   136	142	539	finally
    //   156	183	539	finally
    //   193	200	539	finally
    //   206	215	539	finally
    //   221	229	539	finally
    //   235	242	539	finally
    //   248	255	539	finally
    //   261	271	539	finally
    //   277	289	539	finally
    //   295	315	539	finally
    //   325	340	539	finally
    //   347	362	539	finally
    //   367	374	539	finally
    //   378	392	539	finally
    //   416	476	539	finally
    //   492	505	539	finally
    //   525	539	539	finally
    //   559	603	539	finally
    //   607	631	539	finally
    //   90	120	634	finally
    //   90	120	638	java/lang/Exception
  }
  
  private String b(Context paramContext)
  {
    String str = a(paramContext, "imDS");
    paramContext = str;
    if ("".equals(str)) {
      paramContext = "10.1.215.152:1343";
    }
    return paramContext;
  }
  
  private static String b(List<NameValuePair> paramList)
    throws UnsupportedEncodingException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramList = paramList.iterator();
    int i = 1;
    if (paramList.hasNext())
    {
      NameValuePair localNameValuePair = (NameValuePair)paramList.next();
      if (i != 0) {
        i = 0;
      }
      for (;;)
      {
        localStringBuilder.append(URLEncoder.encode(localNameValuePair.getName(), "UTF-8"));
        localStringBuilder.append("=");
        localStringBuilder.append(URLEncoder.encode(localNameValuePair.getValue(), "UTF-8"));
        break;
        localStringBuilder.append("&");
      }
    }
    return localStringBuilder.toString();
  }
  
  private String c(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = MessageDigest.getInstance(paramString1);
      paramString1.update(paramString2.getBytes("UTF-8"));
      paramString1 = paramString1.digest();
      paramString2 = new StringBuffer();
      int i = 0;
      if (i < paramString1.length)
      {
        int k = paramString1[i];
        int j = k;
        if (k < 0) {
          j = Math.abs(k);
        }
        k = j / 36;
        if (k <= 0) {}
        for (char c1 = jdField_a_of_type_ArrayOfChar[j];; c1 = jdField_a_of_type_ArrayOfChar[((j + k) % 36)])
        {
          paramString2.append(c1);
          i += 1;
          break;
        }
      }
      return paramString2.toString();
    }
    catch (UnsupportedEncodingException paramString1)
    {
      return null;
    }
    catch (NoSuchAlgorithmException paramString1) {}
    return null;
  }
  
  /* Error */
  private String f()
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_0
    //   2: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   5: ldc_w 588
    //   8: invokevirtual 406	f:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   11: astore_3
    //   12: aload_3
    //   13: astore_2
    //   14: ldc -49
    //   16: aload_3
    //   17: invokevirtual 409	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   20: ifeq +348 -> 368
    //   23: aload_0
    //   24: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   27: ldc_w 590
    //   30: invokevirtual 596	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   33: checkcast 598	android/telephony/TelephonyManager
    //   36: invokevirtual 601	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   39: astore_2
    //   40: getstatic 606	android/os/Build:SERIAL	Ljava/lang/String;
    //   43: astore_3
    //   44: aload_0
    //   45: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   48: invokevirtual 610	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   51: ldc_w 612
    //   54: invokestatic 617	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   57: astore 4
    //   59: aload_2
    //   60: ifnull +328 -> 388
    //   63: aload_2
    //   64: ldc_w 619
    //   67: invokevirtual 409	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   70: ifne +318 -> 388
    //   73: ldc -49
    //   75: aload_2
    //   76: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   79: invokevirtual 409	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   82: ifeq +173 -> 255
    //   85: goto +303 -> 388
    //   88: aload_3
    //   89: ifnull +305 -> 394
    //   92: aload_3
    //   93: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   96: ldc_w 621
    //   99: invokevirtual 409	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   102: ifeq +174 -> 276
    //   105: goto +289 -> 394
    //   108: aload 4
    //   110: ifnull +290 -> 400
    //   113: ldc -49
    //   115: aload 4
    //   117: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   120: invokevirtual 409	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   123: ifeq +174 -> 297
    //   126: goto +274 -> 400
    //   129: ldc -49
    //   131: aload_2
    //   132: invokevirtual 409	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   135: ifeq +22 -> 157
    //   138: ldc -49
    //   140: aload_3
    //   141: invokevirtual 409	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   144: ifeq +13 -> 157
    //   147: ldc -49
    //   149: aload 4
    //   151: invokevirtual 409	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   154: ifne +171 -> 325
    //   157: new 166	java/lang/StringBuilder
    //   160: dup
    //   161: invokespecial 362	java/lang/StringBuilder:<init>	()V
    //   164: aload_2
    //   165: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: aload_3
    //   169: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: aload 4
    //   174: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   180: astore_2
    //   181: aload_2
    //   182: ifnonnull +203 -> 385
    //   185: invokestatic 627	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   188: invokevirtual 628	java/util/UUID:toString	()Ljava/lang/String;
    //   191: astore_2
    //   192: ldc_w 630
    //   195: invokestatic 565	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   198: aload_2
    //   199: invokevirtual 632	java/lang/String:getBytes	()[B
    //   202: invokevirtual 635	java/security/MessageDigest:digest	([B)[B
    //   205: astore_3
    //   206: new 449	java/lang/StringBuffer
    //   209: dup
    //   210: invokespecial 450	java/lang/StringBuffer:<init>	()V
    //   213: astore 4
    //   215: iconst_0
    //   216: istore_1
    //   217: iload_1
    //   218: aload_3
    //   219: arraylength
    //   220: if_icmpge +110 -> 330
    //   223: aload 4
    //   225: aload_3
    //   226: iload_1
    //   227: baload
    //   228: sipush 255
    //   231: iand
    //   232: sipush 256
    //   235: ior
    //   236: invokestatic 640	java/lang/Integer:toHexString	(I)Ljava/lang/String;
    //   239: iconst_1
    //   240: iconst_3
    //   241: invokevirtual 366	java/lang/String:substring	(II)Ljava/lang/String;
    //   244: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   247: pop
    //   248: iload_1
    //   249: iconst_1
    //   250: iadd
    //   251: istore_1
    //   252: goto -35 -> 217
    //   255: new 166	java/lang/StringBuilder
    //   258: dup
    //   259: ldc_w 642
    //   262: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   265: aload_2
    //   266: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   272: astore_2
    //   273: goto -185 -> 88
    //   276: new 166	java/lang/StringBuilder
    //   279: dup
    //   280: ldc_w 644
    //   283: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   286: aload_3
    //   287: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   293: astore_3
    //   294: goto -186 -> 108
    //   297: new 166	java/lang/StringBuilder
    //   300: dup
    //   301: ldc_w 646
    //   304: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   307: aload 4
    //   309: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   312: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   315: astore 4
    //   317: goto -188 -> 129
    //   320: astore_2
    //   321: aload_2
    //   322: invokevirtual 647	java/lang/Exception:printStackTrace	()V
    //   325: aconst_null
    //   326: astore_2
    //   327: goto -146 -> 181
    //   330: aload 4
    //   332: invokevirtual 463	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   335: astore_3
    //   336: aload_3
    //   337: astore_2
    //   338: new 166	java/lang/StringBuilder
    //   341: dup
    //   342: ldc_w 649
    //   345: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   348: aload_2
    //   349: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   352: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   355: astore_2
    //   356: aload_0
    //   357: aload_0
    //   358: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   361: ldc_w 588
    //   364: aload_2
    //   365: invokevirtual 652	f:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   368: aload_2
    //   369: areturn
    //   370: astore_3
    //   371: aload_2
    //   372: invokevirtual 632	java/lang/String:getBytes	()[B
    //   375: invokestatic 656	java/util/UUID:nameUUIDFromBytes	([B)Ljava/util/UUID;
    //   378: invokevirtual 628	java/util/UUID:toString	()Ljava/lang/String;
    //   381: astore_2
    //   382: goto -44 -> 338
    //   385: goto -193 -> 192
    //   388: ldc -49
    //   390: astore_2
    //   391: goto -303 -> 88
    //   394: ldc -49
    //   396: astore_3
    //   397: goto -289 -> 108
    //   400: ldc -49
    //   402: astore 4
    //   404: goto -275 -> 129
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	407	0	this	f
    //   216	36	1	i	int
    //   13	260	2	localObject1	Object
    //   320	2	2	localException	Exception
    //   326	65	2	localObject2	Object
    //   11	326	3	localObject3	Object
    //   370	1	3	localNoSuchAlgorithmException	NoSuchAlgorithmException
    //   396	1	3	str	String
    //   57	346	4	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   23	59	320	java/lang/Exception
    //   63	85	320	java/lang/Exception
    //   92	105	320	java/lang/Exception
    //   113	126	320	java/lang/Exception
    //   129	157	320	java/lang/Exception
    //   157	181	320	java/lang/Exception
    //   255	273	320	java/lang/Exception
    //   276	294	320	java/lang/Exception
    //   297	317	320	java/lang/Exception
    //   192	215	370	java/security/NoSuchAlgorithmException
    //   217	248	370	java/security/NoSuchAlgorithmException
    //   330	336	370	java/security/NoSuchAlgorithmException
  }
  
  public final AnIMStatus a()
  {
    if ((jdField_a_of_type_Ji != null) && (jdField_a_of_type_Ji.jdField_a_of_type_Ea.equals(ea.d))) {
      return AnIMStatus.ONLINE;
    }
    return AnIMStatus.OFFLINE;
  }
  
  /* Error */
  final com.arrownock.im.callback.AnIMGetSessionInfoCallbackData a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: aload_0
    //   4: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   7: aload_2
    //   8: invokevirtual 406	f:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   11: astore 5
    //   13: ldc -49
    //   15: aload 5
    //   17: invokevirtual 409	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   20: ifne +35 -> 55
    //   23: new 679	com/arrownock/im/callback/AnIMGetSessionInfoCallbackData
    //   26: dup
    //   27: iconst_0
    //   28: aconst_null
    //   29: aload_2
    //   30: new 326	java/util/HashSet
    //   33: dup
    //   34: aload 5
    //   36: ldc_w 681
    //   39: invokevirtual 685	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   42: invokestatic 689	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   45: invokespecial 692	java/util/HashSet:<init>	(Ljava/util/Collection;)V
    //   48: aconst_null
    //   49: invokespecial 695	com/arrownock/im/callback/AnIMGetSessionInfoCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;Ljava/util/Set;Ljava/util/Date;)V
    //   52: astore_2
    //   53: aload_2
    //   54: areturn
    //   55: aload_0
    //   56: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   59: ifeq +232 -> 291
    //   62: new 164	java/net/URL
    //   65: dup
    //   66: new 166	java/lang/StringBuilder
    //   69: dup
    //   70: ldc -88
    //   72: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   75: aload_0
    //   76: aload_0
    //   77: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   80: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   83: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: ldc_w 697
    //   89: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: aload_1
    //   93: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   96: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: ldc_w 320
    //   102: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: aload_2
    //   106: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   112: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   115: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   118: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   121: astore_1
    //   122: aload_1
    //   123: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   126: getstatic 68	f:jdField_a_of_type_JavaxNetSslHostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   129: invokevirtual 199	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   132: aload_1
    //   133: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   136: ldc -55
    //   138: ldc -53
    //   140: ldc -51
    //   142: ldc -49
    //   144: ldc -47
    //   146: invokestatic 212	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   149: invokevirtual 216	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   152: aload_1
    //   153: astore 5
    //   155: aload_1
    //   156: invokevirtual 221	java/net/HttpURLConnection:connect	()V
    //   159: aload_1
    //   160: astore 5
    //   162: aload_1
    //   163: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   166: istore 4
    //   168: iload 4
    //   170: sipush 200
    //   173: if_icmpne +373 -> 546
    //   176: aload_1
    //   177: astore 5
    //   179: new 226	org/json/JSONObject
    //   182: dup
    //   183: new 228	java/io/BufferedInputStream
    //   186: dup
    //   187: aload_1
    //   188: invokevirtual 232	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   191: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   194: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   197: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   200: ldc -15
    //   202: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   205: astore 6
    //   207: aload 6
    //   209: ifnull +307 -> 516
    //   212: aload_1
    //   213: astore 5
    //   215: aload 6
    //   217: ldc_w 699
    //   220: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   223: astore 6
    //   225: aload 6
    //   227: ifnull +180 -> 407
    //   230: aload_1
    //   231: astore 5
    //   233: aload 6
    //   235: ldc_w 324
    //   238: invokevirtual 251	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   241: astore 6
    //   243: aload_1
    //   244: astore 5
    //   246: new 326	java/util/HashSet
    //   249: dup
    //   250: invokespecial 327	java/util/HashSet:<init>	()V
    //   253: astore 7
    //   255: aload_1
    //   256: astore 5
    //   258: iload_3
    //   259: aload 6
    //   261: invokevirtual 254	org/json/JSONArray:length	()I
    //   264: if_icmpge +91 -> 355
    //   267: aload_1
    //   268: astore 5
    //   270: aload 7
    //   272: aload 6
    //   274: iload_3
    //   275: invokevirtual 330	org/json/JSONArray:getString	(I)Ljava/lang/String;
    //   278: invokeinterface 336 2 0
    //   283: pop
    //   284: iload_3
    //   285: iconst_1
    //   286: iadd
    //   287: istore_3
    //   288: goto -33 -> 255
    //   291: new 164	java/net/URL
    //   294: dup
    //   295: new 166	java/lang/StringBuilder
    //   298: dup
    //   299: ldc_w 298
    //   302: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   305: aload_0
    //   306: aload_0
    //   307: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   310: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   313: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: ldc_w 697
    //   319: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: aload_1
    //   323: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   326: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   329: ldc_w 320
    //   332: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   335: aload_2
    //   336: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   339: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   342: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   345: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   348: checkcast 218	java/net/HttpURLConnection
    //   351: astore_1
    //   352: goto -200 -> 152
    //   355: aload_1
    //   356: astore 5
    //   358: aload_0
    //   359: aload_0
    //   360: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   363: aload_2
    //   364: aload 7
    //   366: ldc_w 681
    //   369: invokestatic 701	f:a	(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;
    //   372: invokevirtual 652	f:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   375: aload_1
    //   376: astore 5
    //   378: new 679	com/arrownock/im/callback/AnIMGetSessionInfoCallbackData
    //   381: dup
    //   382: iconst_0
    //   383: aconst_null
    //   384: aload_2
    //   385: aload 7
    //   387: aconst_null
    //   388: invokespecial 695	com/arrownock/im/callback/AnIMGetSessionInfoCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;Ljava/util/Set;Ljava/util/Date;)V
    //   391: astore 6
    //   393: aload 6
    //   395: astore_2
    //   396: aload_1
    //   397: ifnull -344 -> 53
    //   400: aload_1
    //   401: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   404: aload 6
    //   406: areturn
    //   407: aload_1
    //   408: astore 5
    //   410: new 281	com/arrownock/exception/ArrownockException
    //   413: dup
    //   414: ldc_w 703
    //   417: sipush 2113
    //   420: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   423: athrow
    //   424: astore 6
    //   426: aload_1
    //   427: astore 5
    //   429: new 281	com/arrownock/exception/ArrownockException
    //   432: dup
    //   433: aload 6
    //   435: invokevirtual 284	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   438: sipush 2113
    //   441: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   444: athrow
    //   445: astore 6
    //   447: aload_1
    //   448: astore 5
    //   450: new 281	com/arrownock/exception/ArrownockException
    //   453: dup
    //   454: aload 6
    //   456: invokevirtual 288	java/io/IOException:getMessage	()Ljava/lang/String;
    //   459: sipush 2113
    //   462: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   465: athrow
    //   466: astore 6
    //   468: aload_1
    //   469: astore 5
    //   471: aload 6
    //   473: instanceof 281
    //   476: ifeq +117 -> 593
    //   479: aload_1
    //   480: astore 5
    //   482: new 679	com/arrownock/im/callback/AnIMGetSessionInfoCallbackData
    //   485: dup
    //   486: iconst_1
    //   487: aload 6
    //   489: checkcast 281	com/arrownock/exception/ArrownockException
    //   492: aload_2
    //   493: aconst_null
    //   494: aconst_null
    //   495: invokespecial 695	com/arrownock/im/callback/AnIMGetSessionInfoCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;Ljava/util/Set;Ljava/util/Date;)V
    //   498: astore_2
    //   499: aload_2
    //   500: astore 5
    //   502: aload 5
    //   504: astore_2
    //   505: aload_1
    //   506: ifnull -453 -> 53
    //   509: aload_1
    //   510: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   513: aload 5
    //   515: areturn
    //   516: aload_1
    //   517: astore 5
    //   519: new 281	com/arrownock/exception/ArrownockException
    //   522: dup
    //   523: ldc_w 705
    //   526: sipush 2113
    //   529: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   532: athrow
    //   533: astore_1
    //   534: aload 5
    //   536: ifnull +8 -> 544
    //   539: aload 5
    //   541: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   544: aload_1
    //   545: athrow
    //   546: aload_1
    //   547: astore 5
    //   549: new 281	com/arrownock/exception/ArrownockException
    //   552: dup
    //   553: new 226	org/json/JSONObject
    //   556: dup
    //   557: new 228	java/io/BufferedInputStream
    //   560: dup
    //   561: aload_1
    //   562: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   565: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   568: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   571: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   574: ldc_w 305
    //   577: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   580: ldc_w 307
    //   583: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   586: sipush 2113
    //   589: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   592: athrow
    //   593: aload_1
    //   594: astore 5
    //   596: new 679	com/arrownock/im/callback/AnIMGetSessionInfoCallbackData
    //   599: dup
    //   600: iconst_1
    //   601: new 281	com/arrownock/exception/ArrownockException
    //   604: dup
    //   605: aload 6
    //   607: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   610: sipush 2113
    //   613: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   616: aload_2
    //   617: aconst_null
    //   618: aconst_null
    //   619: invokespecial 695	com/arrownock/im/callback/AnIMGetSessionInfoCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;Ljava/util/Set;Ljava/util/Date;)V
    //   622: astore_2
    //   623: aload_2
    //   624: astore 5
    //   626: goto -124 -> 502
    //   629: astore_1
    //   630: aconst_null
    //   631: astore 5
    //   633: goto -99 -> 534
    //   636: astore_2
    //   637: aload_1
    //   638: astore 5
    //   640: aload_2
    //   641: astore_1
    //   642: goto -108 -> 534
    //   645: astore 6
    //   647: aconst_null
    //   648: astore_1
    //   649: goto -181 -> 468
    //   652: astore 6
    //   654: goto -186 -> 468
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	657	0	this	f
    //   0	657	1	paramString1	String
    //   0	657	2	paramString2	String
    //   1	287	3	i	int
    //   166	8	4	j	int
    //   11	628	5	str	String
    //   205	200	6	localObject	Object
    //   424	10	6	localJSONException	org.json.JSONException
    //   445	10	6	localIOException	IOException
    //   466	140	6	localException1	Exception
    //   645	1	6	localException2	Exception
    //   652	1	6	localException3	Exception
    //   253	133	7	localHashSet	java.util.HashSet
    // Exception table:
    //   from	to	target	type
    //   179	207	424	org/json/JSONException
    //   215	225	424	org/json/JSONException
    //   233	243	424	org/json/JSONException
    //   246	255	424	org/json/JSONException
    //   258	267	424	org/json/JSONException
    //   270	284	424	org/json/JSONException
    //   358	375	424	org/json/JSONException
    //   378	393	424	org/json/JSONException
    //   410	424	424	org/json/JSONException
    //   519	533	424	org/json/JSONException
    //   549	593	424	org/json/JSONException
    //   155	159	445	java/io/IOException
    //   162	168	445	java/io/IOException
    //   179	207	445	java/io/IOException
    //   215	225	445	java/io/IOException
    //   233	243	445	java/io/IOException
    //   246	255	445	java/io/IOException
    //   258	267	445	java/io/IOException
    //   270	284	445	java/io/IOException
    //   358	375	445	java/io/IOException
    //   378	393	445	java/io/IOException
    //   410	424	445	java/io/IOException
    //   429	445	445	java/io/IOException
    //   519	533	445	java/io/IOException
    //   549	593	445	java/io/IOException
    //   155	159	466	java/lang/Exception
    //   162	168	466	java/lang/Exception
    //   179	207	466	java/lang/Exception
    //   215	225	466	java/lang/Exception
    //   233	243	466	java/lang/Exception
    //   246	255	466	java/lang/Exception
    //   258	267	466	java/lang/Exception
    //   270	284	466	java/lang/Exception
    //   358	375	466	java/lang/Exception
    //   378	393	466	java/lang/Exception
    //   410	424	466	java/lang/Exception
    //   429	445	466	java/lang/Exception
    //   450	466	466	java/lang/Exception
    //   519	533	466	java/lang/Exception
    //   549	593	466	java/lang/Exception
    //   155	159	533	finally
    //   162	168	533	finally
    //   179	207	533	finally
    //   215	225	533	finally
    //   233	243	533	finally
    //   246	255	533	finally
    //   258	267	533	finally
    //   270	284	533	finally
    //   358	375	533	finally
    //   378	393	533	finally
    //   410	424	533	finally
    //   429	445	533	finally
    //   450	466	533	finally
    //   471	479	533	finally
    //   482	499	533	finally
    //   519	533	533	finally
    //   549	593	533	finally
    //   596	623	533	finally
    //   55	122	629	finally
    //   291	352	629	finally
    //   122	152	636	finally
    //   55	122	645	java/lang/Exception
    //   291	352	645	java/lang/Exception
    //   122	152	652	java/lang/Exception
  }
  
  /* Error */
  final cp<String, Integer> a(String paramString)
    throws ArrownockException
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_0
    //   2: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   5: ldc_w 708
    //   8: invokevirtual 406	f:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   11: astore 6
    //   13: aload_0
    //   14: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   17: aload_0
    //   18: getfield 74	f:jdField_b_of_type_JavaLangString	Ljava/lang/String;
    //   21: iconst_0
    //   22: invokevirtual 712	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   25: astore 7
    //   27: aload 7
    //   29: ldc_w 714
    //   32: sipush 1341
    //   35: invokeinterface 720 3 0
    //   40: istore_3
    //   41: aload 7
    //   43: ldc_w 722
    //   46: lconst_0
    //   47: invokeinterface 726 4 0
    //   52: lstore 4
    //   54: invokestatic 732	java/lang/System:currentTimeMillis	()J
    //   57: lload 4
    //   59: lcmp
    //   60: ifle +369 -> 429
    //   63: iconst_1
    //   64: istore_2
    //   65: iload_2
    //   66: ifeq +67 -> 133
    //   69: ldc -49
    //   71: astore 6
    //   73: aload_0
    //   74: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   77: aload_0
    //   78: getfield 74	f:jdField_b_of_type_JavaLangString	Ljava/lang/String;
    //   81: iconst_0
    //   82: invokevirtual 712	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   85: invokeinterface 736 1 0
    //   90: astore 7
    //   92: aload 7
    //   94: ldc_w 708
    //   97: invokeinterface 742 2 0
    //   102: pop
    //   103: aload 7
    //   105: ldc_w 714
    //   108: invokeinterface 742 2 0
    //   113: pop
    //   114: aload 7
    //   116: ldc_w 722
    //   119: invokeinterface 742 2 0
    //   124: pop
    //   125: aload 7
    //   127: invokeinterface 745 1 0
    //   132: pop
    //   133: ldc -49
    //   135: aload 6
    //   137: invokevirtual 409	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   140: ifne +7 -> 147
    //   143: iload_2
    //   144: ifeq +475 -> 619
    //   147: aconst_null
    //   148: astore 7
    //   150: aconst_null
    //   151: astore 8
    //   153: aload 7
    //   155: astore 6
    //   157: aload_0
    //   158: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   161: ifeq +273 -> 434
    //   164: aload 7
    //   166: astore 6
    //   168: new 164	java/net/URL
    //   171: dup
    //   172: new 166	java/lang/StringBuilder
    //   175: dup
    //   176: ldc -88
    //   178: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   181: aload_0
    //   182: aload_0
    //   183: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   186: invokespecial 747	f:b	(Landroid/content/Context;)Ljava/lang/String;
    //   189: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: ldc_w 749
    //   195: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: aload_1
    //   199: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   205: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   208: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   211: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   214: astore_1
    //   215: aload_1
    //   216: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   219: getstatic 68	f:jdField_a_of_type_JavaxNetSslHostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   222: invokevirtual 199	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   225: aload_1
    //   226: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   229: ldc -55
    //   231: ldc -53
    //   233: ldc -51
    //   235: ldc -49
    //   237: ldc -47
    //   239: invokestatic 212	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   242: invokevirtual 216	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   245: aload_1
    //   246: invokevirtual 221	java/net/HttpURLConnection:connect	()V
    //   249: aload_1
    //   250: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   253: sipush 200
    //   256: if_icmpne +245 -> 501
    //   259: new 226	org/json/JSONObject
    //   262: dup
    //   263: new 228	java/io/BufferedInputStream
    //   266: dup
    //   267: aload_1
    //   268: invokevirtual 232	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   271: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   274: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   277: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   280: astore 7
    //   282: aload 7
    //   284: ldc_w 751
    //   287: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   290: astore 6
    //   292: aload_0
    //   293: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   296: ifeq +193 -> 489
    //   299: aload 7
    //   301: ldc_w 753
    //   304: invokevirtual 756	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   307: istore_2
    //   308: aload 7
    //   310: ldc_w 758
    //   313: invokevirtual 760	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   316: lstore 4
    //   318: aload_1
    //   319: ifnull +7 -> 326
    //   322: aload_1
    //   323: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   326: iload_2
    //   327: istore_3
    //   328: aload 6
    //   330: astore_1
    //   331: aload 6
    //   333: ifnull +83 -> 416
    //   336: iload_2
    //   337: istore_3
    //   338: aload 6
    //   340: astore_1
    //   341: ldc -49
    //   343: aload 6
    //   345: invokevirtual 409	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   348: ifne +68 -> 416
    //   351: aload_0
    //   352: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   355: aload_0
    //   356: getfield 74	f:jdField_b_of_type_JavaLangString	Ljava/lang/String;
    //   359: iconst_0
    //   360: invokevirtual 712	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   363: invokeinterface 736 1 0
    //   368: astore_1
    //   369: aload_1
    //   370: ldc_w 708
    //   373: aload 6
    //   375: invokeinterface 764 3 0
    //   380: pop
    //   381: aload_1
    //   382: ldc_w 714
    //   385: iload_2
    //   386: invokeinterface 768 3 0
    //   391: pop
    //   392: aload_1
    //   393: ldc_w 722
    //   396: lload 4
    //   398: invokeinterface 772 4 0
    //   403: pop
    //   404: aload_1
    //   405: invokeinterface 745 1 0
    //   410: pop
    //   411: aload 6
    //   413: astore_1
    //   414: iload_2
    //   415: istore_3
    //   416: new 774	cp
    //   419: dup
    //   420: aload_1
    //   421: iload_3
    //   422: invokestatic 777	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   425: invokespecial 780	cp:<init>	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   428: areturn
    //   429: iconst_0
    //   430: istore_2
    //   431: goto -366 -> 65
    //   434: aload 7
    //   436: astore 6
    //   438: new 164	java/net/URL
    //   441: dup
    //   442: new 166	java/lang/StringBuilder
    //   445: dup
    //   446: ldc_w 298
    //   449: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   452: aload_0
    //   453: aload_0
    //   454: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   457: invokespecial 747	f:b	(Landroid/content/Context;)Ljava/lang/String;
    //   460: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   463: ldc_w 749
    //   466: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   469: aload_1
    //   470: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   473: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   476: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   479: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   482: checkcast 218	java/net/HttpURLConnection
    //   485: astore_1
    //   486: goto -241 -> 245
    //   489: aload 7
    //   491: ldc_w 782
    //   494: invokevirtual 756	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   497: istore_2
    //   498: goto -190 -> 308
    //   501: new 226	org/json/JSONObject
    //   504: dup
    //   505: new 228	java/io/BufferedInputStream
    //   508: dup
    //   509: aload_1
    //   510: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   513: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   516: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   519: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   522: astore 6
    //   524: new 281	com/arrownock/exception/ArrownockException
    //   527: dup
    //   528: new 166	java/lang/StringBuilder
    //   531: dup
    //   532: ldc_w 784
    //   535: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   538: aload 6
    //   540: invokevirtual 787	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   543: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   546: sipush 3101
    //   549: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   552: athrow
    //   553: astore 7
    //   555: aload_1
    //   556: astore 6
    //   558: new 281	com/arrownock/exception/ArrownockException
    //   561: dup
    //   562: aload 7
    //   564: sipush 3101
    //   567: invokespecial 790	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/Exception;I)V
    //   570: athrow
    //   571: astore_1
    //   572: aload 6
    //   574: ifnull +8 -> 582
    //   577: aload 6
    //   579: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   582: aload_1
    //   583: athrow
    //   584: astore 7
    //   586: aload_1
    //   587: astore 6
    //   589: aload 7
    //   591: astore_1
    //   592: goto -20 -> 572
    //   595: astore 7
    //   597: aload_1
    //   598: astore 6
    //   600: aload 7
    //   602: astore_1
    //   603: goto -31 -> 572
    //   606: astore 7
    //   608: aload 8
    //   610: astore_1
    //   611: goto -56 -> 555
    //   614: astore 7
    //   616: goto -61 -> 555
    //   619: aload 6
    //   621: astore_1
    //   622: goto -206 -> 416
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	625	0	this	f
    //   0	625	1	paramString	String
    //   64	434	2	i	int
    //   40	382	3	j	int
    //   52	345	4	l	long
    //   11	609	6	localObject1	Object
    //   25	465	7	localObject2	Object
    //   553	10	7	localException1	Exception
    //   584	6	7	localObject3	Object
    //   595	6	7	localObject4	Object
    //   606	1	7	localException2	Exception
    //   614	1	7	localException3	Exception
    //   151	458	8	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   245	308	553	java/lang/Exception
    //   308	318	553	java/lang/Exception
    //   489	498	553	java/lang/Exception
    //   501	553	553	java/lang/Exception
    //   157	164	571	finally
    //   168	215	571	finally
    //   438	486	571	finally
    //   558	571	571	finally
    //   215	245	584	finally
    //   245	308	595	finally
    //   308	318	595	finally
    //   489	498	595	finally
    //   501	553	595	finally
    //   157	164	606	java/lang/Exception
    //   168	215	606	java/lang/Exception
    //   438	486	606	java/lang/Exception
    //   215	245	614	java/lang/Exception
  }
  
  public final String a()
  {
    int i = new Random().nextInt(65535);
    long l = new Date().getTime();
    Object localObject = d;
    String str = Long.toString(a((String)localObject + l + (i + 1)));
    localObject = str;
    if (str.startsWith("-")) {
      localObject = str.replace("-", "");
    }
    return localObject;
  }
  
  public final String a(Context paramContext, String paramString)
  {
    return paramContext.getSharedPreferences(jdField_b_of_type_JavaLangString, 0).getString(paramString, "");
  }
  
  /* Error */
  final String a(String paramString1, String paramString2)
    throws ArrownockException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 95	f:d	Ljava/lang/String;
    //   4: ifnonnull +197 -> 201
    //   7: aconst_null
    //   8: astore 6
    //   10: aconst_null
    //   11: astore 5
    //   13: aload 5
    //   15: astore 4
    //   17: aload 6
    //   19: astore_3
    //   20: aload_0
    //   21: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   24: ifeq +182 -> 206
    //   27: aload 5
    //   29: astore 4
    //   31: aload 6
    //   33: astore_3
    //   34: new 164	java/net/URL
    //   37: dup
    //   38: new 166	java/lang/StringBuilder
    //   41: dup
    //   42: ldc -88
    //   44: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   47: aload_0
    //   48: aload_0
    //   49: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   52: invokespecial 747	f:b	(Landroid/content/Context;)Ljava/lang/String;
    //   55: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: ldc_w 830
    //   61: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: aload_1
    //   65: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: ldc_w 320
    //   71: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: aload_2
    //   75: ldc_w 515
    //   78: invokestatic 549	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   81: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: ldc_w 832
    //   87: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   93: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   96: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   99: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   102: astore_1
    //   103: aload_1
    //   104: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   107: getstatic 68	f:jdField_a_of_type_JavaxNetSslHostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   110: invokevirtual 199	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   113: aload_1
    //   114: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   117: ldc -55
    //   119: ldc -53
    //   121: ldc -51
    //   123: ldc -49
    //   125: ldc -47
    //   127: invokestatic 212	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   130: invokevirtual 216	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   133: aload_1
    //   134: astore 4
    //   136: aload_1
    //   137: astore_3
    //   138: aload_1
    //   139: invokevirtual 221	java/net/HttpURLConnection:connect	()V
    //   142: aload_1
    //   143: astore 4
    //   145: aload_1
    //   146: astore_3
    //   147: aload_1
    //   148: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   151: sipush 200
    //   154: if_icmpne +132 -> 286
    //   157: aload_1
    //   158: astore 4
    //   160: aload_1
    //   161: astore_3
    //   162: aload_0
    //   163: new 226	org/json/JSONObject
    //   166: dup
    //   167: new 228	java/io/BufferedInputStream
    //   170: dup
    //   171: aload_1
    //   172: invokevirtual 232	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   175: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   178: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   181: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   184: ldc_w 834
    //   187: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   190: putfield 95	f:d	Ljava/lang/String;
    //   193: aload_1
    //   194: ifnull +7 -> 201
    //   197: aload_1
    //   198: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   201: aload_0
    //   202: getfield 95	f:d	Ljava/lang/String;
    //   205: areturn
    //   206: aload 5
    //   208: astore 4
    //   210: aload 6
    //   212: astore_3
    //   213: new 164	java/net/URL
    //   216: dup
    //   217: new 166	java/lang/StringBuilder
    //   220: dup
    //   221: ldc_w 298
    //   224: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   227: aload_0
    //   228: aload_0
    //   229: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   232: invokespecial 747	f:b	(Landroid/content/Context;)Ljava/lang/String;
    //   235: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: ldc_w 830
    //   241: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: aload_1
    //   245: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   248: ldc_w 320
    //   251: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   254: aload_2
    //   255: ldc_w 515
    //   258: invokestatic 549	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   261: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: ldc_w 832
    //   267: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   273: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   276: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   279: checkcast 218	java/net/HttpURLConnection
    //   282: astore_1
    //   283: goto -150 -> 133
    //   286: aload_1
    //   287: astore 4
    //   289: aload_1
    //   290: astore_3
    //   291: new 226	org/json/JSONObject
    //   294: dup
    //   295: new 228	java/io/BufferedInputStream
    //   298: dup
    //   299: aload_1
    //   300: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   303: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   306: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   309: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   312: astore_2
    //   313: aload_1
    //   314: astore 4
    //   316: aload_1
    //   317: astore_3
    //   318: new 281	com/arrownock/exception/ArrownockException
    //   321: dup
    //   322: new 166	java/lang/StringBuilder
    //   325: dup
    //   326: ldc_w 836
    //   329: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   332: aload_2
    //   333: invokevirtual 787	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   336: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   339: sipush 2103
    //   342: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   345: athrow
    //   346: astore_1
    //   347: aload 4
    //   349: astore_3
    //   350: new 281	com/arrownock/exception/ArrownockException
    //   353: dup
    //   354: aload_1
    //   355: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   358: aload_1
    //   359: sipush 2103
    //   362: invokespecial 839	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;Ljava/lang/Exception;I)V
    //   365: athrow
    //   366: astore_2
    //   367: aload_3
    //   368: astore_1
    //   369: aload_1
    //   370: ifnull +7 -> 377
    //   373: aload_1
    //   374: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   377: aload_2
    //   378: athrow
    //   379: astore_2
    //   380: goto -11 -> 369
    //   383: astore_2
    //   384: aload_1
    //   385: astore_3
    //   386: aload_2
    //   387: astore_1
    //   388: goto -38 -> 350
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	391	0	this	f
    //   0	391	1	paramString1	String
    //   0	391	2	paramString2	String
    //   19	367	3	localObject1	Object
    //   15	333	4	localObject2	Object
    //   11	196	5	localObject3	Object
    //   8	203	6	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   20	27	346	java/lang/Exception
    //   34	103	346	java/lang/Exception
    //   138	142	346	java/lang/Exception
    //   147	157	346	java/lang/Exception
    //   162	193	346	java/lang/Exception
    //   213	283	346	java/lang/Exception
    //   291	313	346	java/lang/Exception
    //   318	346	346	java/lang/Exception
    //   20	27	366	finally
    //   34	103	366	finally
    //   138	142	366	finally
    //   147	157	366	finally
    //   162	193	366	finally
    //   213	283	366	finally
    //   291	313	366	finally
    //   318	346	366	finally
    //   350	366	366	finally
    //   103	133	379	finally
    //   103	133	383	java/lang/Exception
  }
  
  /* Error */
  final String a(String paramString1, String paramString2, String paramString3, String paramString4)
    throws ArrownockException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: aconst_null
    //   4: astore 8
    //   6: aload 8
    //   8: astore 7
    //   10: aload 9
    //   12: astore 6
    //   14: aload_0
    //   15: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   18: ifeq +424 -> 442
    //   21: aload 8
    //   23: astore 7
    //   25: aload 9
    //   27: astore 6
    //   29: new 164	java/net/URL
    //   32: dup
    //   33: new 166	java/lang/StringBuilder
    //   36: dup
    //   37: ldc -88
    //   39: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   42: aload_0
    //   43: aload_0
    //   44: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   47: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   50: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: ldc_w 842
    //   56: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: aload_1
    //   60: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   63: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   72: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   75: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   78: astore_1
    //   79: aload_1
    //   80: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   83: getstatic 68	f:jdField_a_of_type_JavaxNetSslHostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   86: invokevirtual 199	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   89: aload_1
    //   90: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   93: ldc -55
    //   95: ldc -53
    //   97: ldc -51
    //   99: ldc -49
    //   101: ldc -47
    //   103: invokestatic 212	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   106: invokevirtual 216	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   109: aload_1
    //   110: astore 7
    //   112: aload_1
    //   113: astore 6
    //   115: aload_1
    //   116: ldc_w 486
    //   119: invokevirtual 489	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   122: aload_1
    //   123: astore 7
    //   125: aload_1
    //   126: astore 6
    //   128: aload_1
    //   129: iconst_1
    //   130: invokevirtual 493	java/net/HttpURLConnection:setDoInput	(Z)V
    //   133: aload_1
    //   134: astore 7
    //   136: aload_1
    //   137: astore 6
    //   139: aload_1
    //   140: iconst_1
    //   141: invokevirtual 496	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   144: aload_1
    //   145: astore 7
    //   147: aload_1
    //   148: astore 6
    //   150: new 389	java/util/ArrayList
    //   153: dup
    //   154: invokespecial 390	java/util/ArrayList:<init>	()V
    //   157: astore 8
    //   159: aload_1
    //   160: astore 7
    //   162: aload_1
    //   163: astore 6
    //   165: aload 8
    //   167: new 498	org/apache/http/message/BasicNameValuePair
    //   170: dup
    //   171: ldc_w 338
    //   174: aload_2
    //   175: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   178: invokeinterface 393 2 0
    //   183: pop
    //   184: aload_1
    //   185: astore 7
    //   187: aload_1
    //   188: astore 6
    //   190: aload 8
    //   192: new 498	org/apache/http/message/BasicNameValuePair
    //   195: dup
    //   196: ldc_w 505
    //   199: aload_3
    //   200: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   203: invokeinterface 393 2 0
    //   208: pop
    //   209: aload 4
    //   211: ifnull +29 -> 240
    //   214: aload_1
    //   215: astore 7
    //   217: aload_1
    //   218: astore 6
    //   220: aload 8
    //   222: new 498	org/apache/http/message/BasicNameValuePair
    //   225: dup
    //   226: ldc_w 344
    //   229: aload 4
    //   231: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   234: invokeinterface 393 2 0
    //   239: pop
    //   240: aload_1
    //   241: astore 7
    //   243: aload_1
    //   244: astore 6
    //   246: aload_1
    //   247: invokevirtual 509	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   250: astore_2
    //   251: aload_1
    //   252: astore 7
    //   254: aload_1
    //   255: astore 6
    //   257: new 511	java/io/BufferedWriter
    //   260: dup
    //   261: new 513	java/io/OutputStreamWriter
    //   264: dup
    //   265: aload_2
    //   266: ldc_w 515
    //   269: invokespecial 518	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   272: invokespecial 521	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   275: astore_3
    //   276: aload_1
    //   277: astore 7
    //   279: aload_1
    //   280: astore 6
    //   282: aload_3
    //   283: aload 8
    //   285: invokestatic 441	f:b	(Ljava/util/List;)Ljava/lang/String;
    //   288: invokevirtual 524	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   291: aload_1
    //   292: astore 7
    //   294: aload_1
    //   295: astore 6
    //   297: aload_3
    //   298: invokevirtual 525	java/io/BufferedWriter:close	()V
    //   301: aload_1
    //   302: astore 7
    //   304: aload_1
    //   305: astore 6
    //   307: aload_2
    //   308: invokevirtual 528	java/io/OutputStream:close	()V
    //   311: aload_1
    //   312: astore 7
    //   314: aload_1
    //   315: astore 6
    //   317: aload_1
    //   318: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   321: istore 5
    //   323: iload 5
    //   325: sipush 200
    //   328: if_icmpne +295 -> 623
    //   331: aload_1
    //   332: astore 7
    //   334: aload_1
    //   335: astore 6
    //   337: new 226	org/json/JSONObject
    //   340: dup
    //   341: new 228	java/io/BufferedInputStream
    //   344: dup
    //   345: aload_1
    //   346: invokevirtual 232	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   349: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   352: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   355: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   358: ldc -15
    //   360: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   363: astore_2
    //   364: aload_2
    //   365: ifnull +238 -> 603
    //   368: aload_1
    //   369: astore 7
    //   371: aload_1
    //   372: astore 6
    //   374: aload_2
    //   375: ldc_w 322
    //   378: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   381: ifnull +222 -> 603
    //   384: aload_1
    //   385: astore 7
    //   387: aload_1
    //   388: astore 6
    //   390: aload_2
    //   391: ldc_w 322
    //   394: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   397: astore_2
    //   398: aload_2
    //   399: ifnull +105 -> 504
    //   402: aload_1
    //   403: astore 7
    //   405: aload_1
    //   406: astore 6
    //   408: aload_2
    //   409: ldc_w 844
    //   412: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   415: ifnull +89 -> 504
    //   418: aload_1
    //   419: astore 7
    //   421: aload_1
    //   422: astore 6
    //   424: aload_2
    //   425: ldc_w 844
    //   428: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   431: astore_2
    //   432: aload_1
    //   433: ifnull +7 -> 440
    //   436: aload_1
    //   437: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   440: aload_2
    //   441: areturn
    //   442: aload 8
    //   444: astore 7
    //   446: aload 9
    //   448: astore 6
    //   450: new 164	java/net/URL
    //   453: dup
    //   454: new 166	java/lang/StringBuilder
    //   457: dup
    //   458: ldc_w 298
    //   461: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   464: aload_0
    //   465: aload_0
    //   466: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   469: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   472: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   475: ldc_w 842
    //   478: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   481: aload_1
    //   482: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   485: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   488: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   491: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   494: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   497: checkcast 218	java/net/HttpURLConnection
    //   500: astore_1
    //   501: goto -392 -> 109
    //   504: aload_1
    //   505: astore 7
    //   507: aload_1
    //   508: astore 6
    //   510: new 281	com/arrownock/exception/ArrownockException
    //   513: dup
    //   514: ldc_w 846
    //   517: sipush 2104
    //   520: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   523: athrow
    //   524: astore_2
    //   525: aload_1
    //   526: astore 7
    //   528: aload_1
    //   529: astore 6
    //   531: new 281	com/arrownock/exception/ArrownockException
    //   534: dup
    //   535: aload_2
    //   536: invokevirtual 284	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   539: sipush 2104
    //   542: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   545: athrow
    //   546: astore_2
    //   547: aload_1
    //   548: astore 7
    //   550: aload_1
    //   551: astore 6
    //   553: new 281	com/arrownock/exception/ArrownockException
    //   556: dup
    //   557: aload_2
    //   558: invokevirtual 288	java/io/IOException:getMessage	()Ljava/lang/String;
    //   561: sipush 2104
    //   564: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   567: athrow
    //   568: astore_1
    //   569: aload 7
    //   571: astore 6
    //   573: aload_1
    //   574: instanceof 281
    //   577: ifeq +96 -> 673
    //   580: aload 7
    //   582: astore 6
    //   584: aload_1
    //   585: checkcast 281	com/arrownock/exception/ArrownockException
    //   588: athrow
    //   589: astore_2
    //   590: aload 6
    //   592: astore_1
    //   593: aload_1
    //   594: ifnull +7 -> 601
    //   597: aload_1
    //   598: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   601: aload_2
    //   602: athrow
    //   603: aload_1
    //   604: astore 7
    //   606: aload_1
    //   607: astore 6
    //   609: new 281	com/arrownock/exception/ArrownockException
    //   612: dup
    //   613: ldc_w 848
    //   616: sipush 2104
    //   619: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   622: athrow
    //   623: aload_1
    //   624: astore 7
    //   626: aload_1
    //   627: astore 6
    //   629: new 281	com/arrownock/exception/ArrownockException
    //   632: dup
    //   633: new 226	org/json/JSONObject
    //   636: dup
    //   637: new 228	java/io/BufferedInputStream
    //   640: dup
    //   641: aload_1
    //   642: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   645: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   648: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   651: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   654: ldc_w 305
    //   657: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   660: ldc_w 307
    //   663: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   666: sipush 2104
    //   669: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   672: athrow
    //   673: aload 7
    //   675: astore 6
    //   677: new 281	com/arrownock/exception/ArrownockException
    //   680: dup
    //   681: aload_1
    //   682: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   685: sipush 2104
    //   688: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   691: athrow
    //   692: astore_2
    //   693: goto -100 -> 593
    //   696: astore_2
    //   697: aload_1
    //   698: astore 7
    //   700: aload_2
    //   701: astore_1
    //   702: goto -133 -> 569
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	705	0	this	f
    //   0	705	1	paramString1	String
    //   0	705	2	paramString2	String
    //   0	705	3	paramString3	String
    //   0	705	4	paramString4	String
    //   321	8	5	i	int
    //   12	664	6	localObject1	Object
    //   8	691	7	localObject2	Object
    //   4	439	8	localArrayList	java.util.ArrayList
    //   1	446	9	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   337	364	524	org/json/JSONException
    //   374	384	524	org/json/JSONException
    //   390	398	524	org/json/JSONException
    //   408	418	524	org/json/JSONException
    //   424	432	524	org/json/JSONException
    //   510	524	524	org/json/JSONException
    //   609	623	524	org/json/JSONException
    //   629	673	524	org/json/JSONException
    //   150	159	546	java/io/IOException
    //   165	184	546	java/io/IOException
    //   190	209	546	java/io/IOException
    //   220	240	546	java/io/IOException
    //   246	251	546	java/io/IOException
    //   257	276	546	java/io/IOException
    //   282	291	546	java/io/IOException
    //   297	301	546	java/io/IOException
    //   307	311	546	java/io/IOException
    //   317	323	546	java/io/IOException
    //   337	364	546	java/io/IOException
    //   374	384	546	java/io/IOException
    //   390	398	546	java/io/IOException
    //   408	418	546	java/io/IOException
    //   424	432	546	java/io/IOException
    //   510	524	546	java/io/IOException
    //   531	546	546	java/io/IOException
    //   609	623	546	java/io/IOException
    //   629	673	546	java/io/IOException
    //   14	21	568	java/lang/Exception
    //   29	79	568	java/lang/Exception
    //   115	122	568	java/lang/Exception
    //   128	133	568	java/lang/Exception
    //   139	144	568	java/lang/Exception
    //   150	159	568	java/lang/Exception
    //   165	184	568	java/lang/Exception
    //   190	209	568	java/lang/Exception
    //   220	240	568	java/lang/Exception
    //   246	251	568	java/lang/Exception
    //   257	276	568	java/lang/Exception
    //   282	291	568	java/lang/Exception
    //   297	301	568	java/lang/Exception
    //   307	311	568	java/lang/Exception
    //   317	323	568	java/lang/Exception
    //   337	364	568	java/lang/Exception
    //   374	384	568	java/lang/Exception
    //   390	398	568	java/lang/Exception
    //   408	418	568	java/lang/Exception
    //   424	432	568	java/lang/Exception
    //   450	501	568	java/lang/Exception
    //   510	524	568	java/lang/Exception
    //   531	546	568	java/lang/Exception
    //   553	568	568	java/lang/Exception
    //   609	623	568	java/lang/Exception
    //   629	673	568	java/lang/Exception
    //   14	21	589	finally
    //   29	79	589	finally
    //   115	122	589	finally
    //   128	133	589	finally
    //   139	144	589	finally
    //   150	159	589	finally
    //   165	184	589	finally
    //   190	209	589	finally
    //   220	240	589	finally
    //   246	251	589	finally
    //   257	276	589	finally
    //   282	291	589	finally
    //   297	301	589	finally
    //   307	311	589	finally
    //   317	323	589	finally
    //   337	364	589	finally
    //   374	384	589	finally
    //   390	398	589	finally
    //   408	418	589	finally
    //   424	432	589	finally
    //   450	501	589	finally
    //   510	524	589	finally
    //   531	546	589	finally
    //   553	568	589	finally
    //   573	580	589	finally
    //   584	589	589	finally
    //   609	623	589	finally
    //   629	673	589	finally
    //   677	692	589	finally
    //   79	109	692	finally
    //   79	109	696	java/lang/Exception
  }
  
  public final String a(Set<String> paramSet)
  {
    return c("SHA1", a(paramSet, "-"));
  }
  
  public final void a(Context paramContext)
  {
    jdField_a_of_type_AndroidContentContext = paramContext;
  }
  
  public final void a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = paramContext.getSharedPreferences(jdField_a_of_type_JavaLangString, 0).edit();
    paramContext.putString("imAPI", paramString1);
    paramContext.putString("imDS", paramString2);
    paramContext.commit();
  }
  
  public final void a(bi paramBi)
  {
    jdField_a_of_type_Bi = paramBi;
  }
  
  public final void a(IAnIMCallback paramIAnIMCallback)
  {
    jdField_a_of_type_ComArrownockImCallbackIAnIMCallback = paramIAnIMCallback;
  }
  
  public final void a(String paramString)
  {
    jdField_c_of_type_JavaLangString = paramString;
  }
  
  final void a(String paramString1, int paramInt, String paramString2, String paramString3, String paramString4)
    throws ArrownockException
  {
    synchronized (jdField_b_of_type_JavaLangString)
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)jdField_a_of_type_AndroidContentContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo == null) {}
      for (boolean bool = false; !bool; bool = localNetworkInfo.isConnected())
      {
        if (jdField_a_of_type_ComArrownockImCallbackIAnIMCallback != null)
        {
          paramString1 = new AnIMStatusUpdateCallbackData(a(), new ArrownockException("Network is not available", 3102));
          jdField_a_of_type_ComArrownockImCallbackIAnIMCallback.statusUpdate(paramString1);
        }
        return;
      }
      if (jdField_a_of_type_Ji == null) {
        break label188;
      }
      if (jdField_a_of_type_Ji.jdField_a_of_type_Ea.equals(ea.d))
      {
        paramString1 = new AnIMStatusUpdateCallbackData(AnIMStatus.ONLINE, null);
        jdField_a_of_type_ComArrownockImCallbackIAnIMCallback.statusUpdate(paramString1);
        return;
      }
    }
    if (jdField_a_of_type_Ji.jdField_a_of_type_Ea.equals(ea.c)) {
      return;
    }
    jdField_b_of_type_Boolean = true;
    jdField_a_of_type_Ji.a();
    jdField_a_of_type_Ji = null;
    label188:
    if (jdField_c_of_type_Boolean) {
      jdField_a_of_type_Ji = new ji(paramString1, paramInt, "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUVWRENDQXp5Z0F3SUJBZ0lCQVRBTkJna3Foa2lHOXcwQkFRVUZBREJpTVFzd0NRWURWUVFHRXdKRFRqRVEKTUE0R0ExVUVDQXdIUW1WcGFtbHVaekVRTUE0R0ExVUVCd3dIUW1WcGFtbHVaekVTTUJBR0ExVUVDd3dKUVhKeQpiM2R1YjJOck1Sc3dHUVlEVlFRRERCSkJjbkp2ZDI1dlkyc2dRMjh1TEV4MFpDNHdIaGNOTVRZd05qQTFNVFUxCk5qTXdXaGNOTXpZd05UTXhNVFUxTmpNd1dqQmlNUXN3Q1FZRFZRUUdFd0pEVGpFUU1BNEdBMVVFQ0F3SFFtVnAKYW1sdVp6RVFNQTRHQTFVRUJ3d0hRbVZwYW1sdVp6RVNNQkFHQTFVRUN3d0pRWEp5YjNkdWIyTnJNUnN3R1FZRApWUVFEREJKQmNuSnZkMjV2WTJzZ1EyOHVMRXgwWkM0d2dnRWlNQTBHQ1NxR1NJYjNEUUVCQVFVQUE0SUJEd0F3CmdnRUtBb0lCQVFEVUhxemtra3VaeElQbFI4ZDdnZU4wQzlJQkpLZkJWY0ZNM1FsVzhCbC9sZW9BZHMreDBpbXUKb3VCY2p6czN4aWFUR1Z1dklKODRvbUxNbHMyeUlGNWt5NE5RM0R1citIU280eE1pMVNBRXpFcXJhZ2hXeGRFSQovZlVtUnFrWHFLUUhtQmVUVUdqaXZDVExEOUp4a0trR2lFVWFSNmhGdjJseWZuM3U4emFYeGRFOTRWMkg2VkhPCmg5Y1N3d2xIZHhjcXZ5Z2dTUVE1cERkS2UrNEcyckZZSWlqeVJ1elNrWkhjNndDZ1NwVVRpMUE3ckZGZkVPdUsKU1ZDZ3ZnSmtkbFZzUzlOWVp4WGx1RmJNd3Jtd3pqdUM0WEliamlQZExmd21ya25PQ2Y3VE9lYkNDbmo3WHVoZApiNnIxdWdqUC80Wmk2bTM2anEyeVFKZEVRcWVmMXpXZEFnTUJBQUdqZ2dFVE1JSUJEekFKQmdOVkhSTUVBakFBCk1Bc0dBMVVkRHdRRUF3SUY0REFSQmdsZ2hrZ0JodmhDQVFFRUJBTUNCa0F3SFFZRFZSME9CQllFRkVmTnAyZGIKS2JEbG5NTk5uWlZlckJHU09pVUNNSUdVQmdOVkhTTUVnWXd3Z1ltQUZOQ0JPcEw4TlcvYkhYc2tUc1FVdit0YworR3dYb1dha1pEQmlNUXN3Q1FZRFZRUUdFd0pEVGpFUU1BNEdBMVVFQ0F3SFFtVnBhbWx1WnpFUU1BNEdBMVVFCkJ3d0hRbVZwYW1sdVp6RVNNQkFHQTFVRUN3d0pRWEp5YjNkdWIyTnJNUnN3R1FZRFZRUUREQkpCY25KdmQyNXYKWTJzZ1EyOHVMRXgwWkM2Q0NRRFQzVTJldUp4dENqQXNCZ05WSFJFRUpUQWpnZ29xTGpFeU16QTJMbU51Z2c4cQpMbUZ5Y205M2JtOWpheTVqYjIySEJBb0M2MU13RFFZSktvWklodmNOQVFFRkJRQURnZ0VCQUVPaWFRekFleDZXCnUzVkIzTkw5Q2JpR2VqZVlxNStVVXpiMzFMaGlMSDdyeXU1M0F4dmtSS1VQRjNJdTRZcmhObk44MWxYL0w3dFoKLzJvQXZMV0V3Y0NVdVNnNENHYURnYlZycjVPd0ozK1pNNnhKb1NJQTZ3RzExQkNWa1l0NTJ0cnZuZ0VJU2FhMwppd3dZWmJPbldhL0ZVZHA3N093K1VCbExiZXRZSndqSXk2UlZrMGxJOHEyb24zMEd6VWZOSGF6blVpVU1sdWV4CkdjRGU5Q2srYTJqL1BGVjlkRWIyYkRvSW52NkdhSXd1V29KR094ZnJRUVRaUFdVTDZrM0JVMHdDVThKWTdQaXQKSGlIZ1dNLzVWRzhUdGU4Mm1XcjV4Rmk3NEkyUFZ3SDdUd3RUbEFOaGN0a0Z6VUROd0Iyem1nVWZxZklGWCtHMApETUQwT3h2bldicz0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=", "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURYekNDQWtlZ0F3SUJBZ0lCQVRBTkJna3Foa2lHOXcwQkFRVUZBREJpTVFzd0NRWURWUVFHRXdKRFRqRVEKTUE0R0ExVUVDQXdIUW1WcGFtbHVaekVRTUE0R0ExVUVCd3dIUW1WcGFtbHVaekVTTUJBR0ExVUVDd3dKUVhKeQpiM2R1YjJOck1Sc3dHUVlEVlFRRERCSkJjbkp2ZDI1dlkyc2dRMjh1TEV4MFpDNHdIaGNOTVRZd05qQTFNVFUxCk5qTXdXaGNOTXpZd05UTXhNVFUxTmpNd1dqQmlNUXN3Q1FZRFZRUUdFd0pEVGpFUU1BNEdBMVVFQ0F3SFFtVnAKYW1sdVp6RVFNQTRHQTFVRUJ3d0hRbVZwYW1sdVp6RVNNQkFHQTFVRUN3d0pRWEp5YjNkdWIyTnJNUnN3R1FZRApWUVFEREJKQmNuSnZkMjV2WTJzZ1EyOHVMRXgwWkM0d2dnRWlNQTBHQ1NxR1NJYjNEUUVCQVFVQUE0SUJEd0F3CmdnRUtBb0lCQVFERTREa1dWT1BmVlY2TjVkRktxaUtsaUNodUNreEQ4SDdLUTNyUm1ZdnY0K3NKdzFDUXBpU3cKOUpDQlJ6dDk5anM3VWdZK3htUnl1S0dNMWIrN3UwUERtT0xhNithTktZVEpRREZVaUE1Qlp2SWNHZFdKWjZJNwpjMk0zc1lzSU5uV1Q3Q0EySnV3TDR2V094eXB5UlhvQm8rWUFtYm12ZVlTcnpyK1VzT2JybENwSjdaOEhhRkowCm15VmFLL3FqQllqVzVWTFFiUHhNSGxrWURmbHYxdytwQUJNRDhLREtwSGc4Y1RmOGVoR1FPSHZ4NUtxMFNDU3UKZTlnNzkyV3hNOGdKWTZPRHJ3OW53d1QxUHVZZmJUNm5XU0kwY0VYZUZhK2pNVXVzaWJwSWhYdVRiNzR5ZmVyUwpjeE55WlE3TzNydEJFbThPVk15NzBFcmpjemlVU1NIM0FnTUJBQUdqSURBZU1Ba0dBMVVkRXdRQ01BQXdFUVlKCllJWklBWWI0UWdFQkJBUURBZ2VBTUEwR0NTcUdTSWIzRFFFQkJRVUFBNElCQVFBemYwQnphUWhGcklHUnUzTjgKZU4ycEhQMzZEK1o4OXQzcTVDWG5TbW9ERTBObUY0Yjc2T1dKU2YyOERoZHoycjBPS3pUOThjR3RlY25ZMHE4VApvTW5pZHdiK21DUFloQ09qTkpnbitwUjNIWGh0YjdwaSt4RkVieituOWNHT3kxWW02bTZidUdHSitaUHZ6Z2JOClA5N1BPdi92aVl0SUkxZmFVdzZaMDBSdmxqUlBqNFZJQjN2ZTNWa3NrOUpRSXJxRTVhUFhGNEwxTFpyV21jRkwKWlJURVMyUnpQZ2ZQZktJOTlyWVlJYnE0MVRQRDlFemhmdkJORyt0WmdnSG9uY0ROdnhYcE1USmZlOEZzUVNmeQphaFFXQ0lrcnE0YXZIWGlETmtqNlFocXJQT0tZRTR6K1VBY0VLSHpUQnZ2Z2ZKUTZ0TVJjUjcvMmNZTHMxZTNKCmlXdkYKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=", "LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFcEFJQkFBS0NBUUVBeE9BNUZsVGozMVZlamVYUlNxb2lwWWdvYmdwTVEvQit5a042MFptTDcrUHJDY05RCmtLWWtzUFNRZ1VjN2ZmWTdPMUlHUHNaa2NyaWhqTlcvdTd0RHc1amkydXZtalNtRXlVQXhWSWdPUVdieUhCblYKaVdlaU8zTmpON0dMQ0RaMWsrd2dOaWJzQytMMWpzY3Fja1Y2QWFQbUFKbTVyM21FcTg2L2xMRG02NVFxU2UyZgpCMmhTZEpzbFdpdjZvd1dJMXVWUzBHejhUQjVaR0EzNWI5Y1BxUUFUQS9DZ3lxUjRQSEUzL0hvUmtEaDc4ZVNxCnRFZ2tybnZZTy9kbHNUUElDV09qZzY4UFo4TUU5VDdtSDIwK3Axa2lOSEJGM2hXdm96RkxySW02U0lWN2syKysKTW4zcTBuTVRjbVVPenQ2N1FSSnZEbFRNdTlCSzQzTTRsRWtoOXdJREFRQUJBb0lCQVFDMTNWdGU0YlJPanBIMgpDcUkza3NyR2x1eWlHaWt4YVd2MmREZDBmNTdoVDIzRGF3VjFXY1R6SWppSzg3NWxNWnl0dzZ1NU9aTjQxazJGCng3NkNNUTc4RkxNYkFHZk5adGtlLzRtU1NNekNaZEtwV3NRRFZoUnJUc0FNcHBtRVVLcDBwdDlxcHJIT21TMjEKWXc0MjJTOUhiSnYvV2dKSnNydDM2bGpYaGtNS3dnY0I3Vk8yRnh5cWNyOUl5VW5uYkVCOWhEN3F2cm54VHNaTwpicWtMSW9ncnkyNjZOb3R0YmVhR3dMUW5XTG1NSFRjcFdIV0dibURaLzBjNUVkS1N3UmpHbllRN2c3TncrU2o3Cjd2NUpiYkc0UWNEK1BwUlh6bW9Hc29QUkVoMzlzNi8wQjVCUWQzNjdmM05oQ0hVa0QzNWFiMDJEVGdTdW13cW4KOXRTUUJPSmhBb0dCQVBqdmRNS1BibUZPV2hxdENVdlEwL1FSOStaS09XVGREZmdZZVdVZGVJUEg0bzVlelZoQwovOGVLVXp3d1FHdGduUk1reXNEbVRqR1ZnRTFjZUwxN1BxUU51VmxaeWZqbkVyK1MzVmFJVDE1M1VvRnJzTWtNCmJmbm45c1hVWlJQc0JqL3U2R3A4Q3dramRWMTBSMXEySDZjdjFWRnBobjFXTUVOM1JmL0E3VWtyQW9HQkFNcDIKakhWR3NWRVFpZFdJZXI2M3RxVzZHVjJrejBrNHFnT3RJcVZkS1p0dVNPMUZWRDVoblRLQzVUQ0ZGRkN5WlF5bwpUQWtaMnQwb2NSd01WSnY2cklNUGNnVXVwZXE1cTdaNE43MHdtUytDRUNtYTVROTlxY3l0OXlSWjYyR3NMSDlhCk5XaXZ2QW8yL2FYalYxYTF1Z0xCZHBkZHJzUElWc1JwYWM2b2w4eGxBb0dCQU0yN2dRRG03MittQkp1MVZGQi8KVnh5STJSdFBUcDNJZjZvQitCb1VRQ3lSUHZFdzhuNjJhSlB1QXhwa09tbEQ0SzBZcENUR2NldFN4a1dwWGZRagpia0xCUU9UU2F6UzFMRzU5bjBYTHcrU3JzdGxaT2pMK2ZjbWk1dlRhczJyQ2p1dTV0QVdGWE0yQnE1YS82ZFRUClhkZWJsYTRDQzI5OGtzaS9RMis2YjZFZkFvR0FXZ1FQT3UwdFZROTNXTnNQUjlCQ2dyaVZJbzl1SWUzeG1TVFgKTEpLWk55UDNoSmE0ZCt2S2luU3NGY0IxWWRPUEhldU5zdFl0K3ZwS0grQlRsZTREMlZsNnBsY3hLWVZYbFE4cQpLUkY4YWlUM3JxZlJnK3VwSFBtVDBqT3dkWUtwWGczcmhSbnREdFdZUExNeFY3b0FjODAwUHVSR0dZSHZJZkNFClBIKzB6Z2tDZ1lBSE5LS1RGTUxaZU9RTXBiNXYyYzNVdUNEaG1kQjczcGI4RTV1SnJidktIV09pc3kyVHcrRkEKL0E4WmJzMEp5UGFqZnhyODQ4ZFlFNU00OHlnSDVUc3gycFBsdXNOQjVnT054WlNLWkxRaGpKY3k5RUlQZEx6QwpGUWllblM4NXUwdTRDZ21DMG9JTnMrQnFFZE91eUhwUkdiRzV3Z285U3kya1pKaXJuZzZHOGc9PQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo=", paramString3, paramString2, jdField_a_of_type_At, "BKS", paramString4);
    }
    for (jdField_a_of_type_Ji.jdField_a_of_type_Boolean = false;; jdField_a_of_type_Ji.jdField_a_of_type_Boolean = false)
    {
      return;
      jdField_a_of_type_Ji = new ji(paramString1, paramInt, paramString3, paramString2, jdField_a_of_type_At, paramString4);
    }
  }
  
  @Deprecated
  public final void a(String paramString1, String paramString2)
  {
    Object localObject = jdField_a_of_type_AndroidContentContext.getSharedPreferences(jdField_a_of_type_JavaLangString, 0);
    String str = ((SharedPreferences)localObject).getString("imAPI", "");
    localObject = ((SharedPreferences)localObject).getString("imDS", "");
    jdField_b_of_type_JavaLangString = (jdField_a_of_type_JavaLangString + paramString2);
    b(jdField_a_of_type_AndroidContentContext, "imAPI", str);
    b(jdField_a_of_type_AndroidContentContext, "imDS", (String)localObject);
    new Thread(new g(this, paramString1, paramString2)).start();
  }
  
  public final void a(String paramString1, String paramString2, IAnIMGetClientIdCallback paramIAnIMGetClientIdCallback)
  {
    Object localObject = jdField_a_of_type_AndroidContentContext.getSharedPreferences(jdField_a_of_type_JavaLangString, 0);
    String str = ((SharedPreferences)localObject).getString("imAPI", "");
    localObject = ((SharedPreferences)localObject).getString("imDS", "");
    jdField_b_of_type_JavaLangString = (jdField_a_of_type_JavaLangString + paramString2);
    b(jdField_a_of_type_AndroidContentContext, "imAPI", str);
    b(jdField_a_of_type_AndroidContentContext, "imDS", (String)localObject);
    new Thread(new r(this, paramString1, paramString2, paramIAnIMGetClientIdCallback)).start();
  }
  
  public final void a(String paramString1, String paramString2, IAnIMGetClientsStatusCallback paramIAnIMGetClientsStatusCallback)
  {
    new Thread(new aa(this, paramString1, paramString2, paramIAnIMGetClientsStatusCallback)).start();
  }
  
  public final void a(String paramString1, String paramString2, IAnIMGetTopicInfoCallback paramIAnIMGetTopicInfoCallback)
  {
    new Thread(new v(this, paramString1, paramString2, paramIAnIMGetTopicInfoCallback)).start();
  }
  
  public final void a(String paramString1, String paramString2, IAnIMGetTopicListCallback paramIAnIMGetTopicListCallback)
  {
    new Thread(new af(this, paramString1, paramString2, paramIAnIMGetTopicListCallback)).start();
  }
  
  public final void a(String paramString1, String paramString2, IAnIMPushBindingCallback paramIAnIMPushBindingCallback)
  {
    new Thread(new s(this, paramString1, paramString2, paramIAnIMPushBindingCallback)).start();
  }
  
  public final void a(String paramString1, String paramString2, IAnIMTopicCallback paramIAnIMTopicCallback)
  {
    new Thread(new am(this, paramString1, paramString2, paramIAnIMTopicCallback)).start();
  }
  
  public final void a(String paramString1, String paramString2, String paramString3)
  {
    a(paramString1, paramString2, paramString3, 2);
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    if (a() == AnIMStatus.OFFLINE) {
      new Thread(new aq(this, paramString1)).start();
    }
    while (a() != AnIMStatus.ONLINE) {
      return;
    }
    new Thread(new ar(this, paramString1, paramString2, paramString3, paramInt)).start();
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, int paramInt, long paramLong, IAnIMHistoryCallback paramIAnIMHistoryCallback)
  {
    new Thread(new aj(this, paramString1, paramString2, paramString3, paramInt, paramLong, paramIAnIMHistoryCallback)).start();
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, int paramInt, long paramLong, boolean paramBoolean, IAnIMHistoryCallback paramIAnIMHistoryCallback)
  {
    new Thread(new x(this, paramString1, paramString2, paramString3, paramInt, paramLong, paramBoolean, paramIAnIMHistoryCallback)).start();
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, IAnIMTopicCallback paramIAnIMTopicCallback)
  {
    new Thread(new l(this, paramString1, paramString2, paramString3, paramIAnIMTopicCallback)).start();
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    new Thread(new ap(this, paramString4, paramString1, paramString2, paramString3)).start();
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, String paramString4, IAnIMTopicCallback paramIAnIMTopicCallback)
  {
    new Thread(new h(this, paramString1, paramString2, paramString3, paramString4, paramIAnIMTopicCallback)).start();
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    new Thread(new o(this, paramString1, paramString2, paramString3, paramString4, paramString5)).start();
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, IAnIMPushBindingCallback paramIAnIMPushBindingCallback)
  {
    new Thread(new p(this, paramString1, paramString2, paramString3, paramString4, paramString5, paramIAnIMPushBindingCallback)).start();
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, boolean paramBoolean)
  {
    new Thread(new t(this, paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7, paramBoolean)).start();
  }
  
  /* Error */
  final void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean)
    throws ArrownockException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 11
    //   3: aconst_null
    //   4: astore 9
    //   6: aload 9
    //   8: astore 10
    //   10: aload 11
    //   12: astore 8
    //   14: aload_0
    //   15: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   18: ifeq +785 -> 803
    //   21: aload 9
    //   23: astore 10
    //   25: aload 11
    //   27: astore 8
    //   29: new 164	java/net/URL
    //   32: dup
    //   33: new 166	java/lang/StringBuilder
    //   36: dup
    //   37: ldc -88
    //   39: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   42: aload_0
    //   43: aload_0
    //   44: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   47: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   50: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: ldc_w 1003
    //   56: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: aload_1
    //   60: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   63: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   72: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   75: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   78: astore 9
    //   80: aload 9
    //   82: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   85: getstatic 68	f:jdField_a_of_type_JavaxNetSslHostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   88: invokevirtual 199	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   91: aload 9
    //   93: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   96: ldc -55
    //   98: ldc -53
    //   100: ldc -51
    //   102: ldc -49
    //   104: ldc -47
    //   106: invokestatic 212	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   109: invokevirtual 216	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   112: aload 9
    //   114: astore 10
    //   116: aload 9
    //   118: astore 8
    //   120: aload 9
    //   122: ldc_w 486
    //   125: invokevirtual 489	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   128: aload 9
    //   130: astore 10
    //   132: aload 9
    //   134: astore 8
    //   136: aload 9
    //   138: iconst_1
    //   139: invokevirtual 493	java/net/HttpURLConnection:setDoInput	(Z)V
    //   142: aload 9
    //   144: astore 10
    //   146: aload 9
    //   148: astore 8
    //   150: aload 9
    //   152: iconst_1
    //   153: invokevirtual 496	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   156: aload 9
    //   158: astore 10
    //   160: aload 9
    //   162: astore 8
    //   164: new 346	java/text/SimpleDateFormat
    //   167: dup
    //   168: ldc_w 348
    //   171: getstatic 354	java/util/Locale:US	Ljava/util/Locale;
    //   174: invokespecial 357	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   177: new 800	java/util/Date
    //   180: dup
    //   181: invokespecial 801	java/util/Date:<init>	()V
    //   184: invokevirtual 1007	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   187: astore 12
    //   189: aload 9
    //   191: astore 10
    //   193: aload 9
    //   195: astore 8
    //   197: new 389	java/util/ArrayList
    //   200: dup
    //   201: invokespecial 390	java/util/ArrayList:<init>	()V
    //   204: astore 11
    //   206: aload 9
    //   208: astore 10
    //   210: aload 9
    //   212: astore 8
    //   214: aload 11
    //   216: new 498	org/apache/http/message/BasicNameValuePair
    //   219: dup
    //   220: ldc_w 1009
    //   223: ldc_w 1011
    //   226: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   229: invokeinterface 393 2 0
    //   234: pop
    //   235: aload 9
    //   237: astore 10
    //   239: aload 9
    //   241: astore 8
    //   243: aload 11
    //   245: new 498	org/apache/http/message/BasicNameValuePair
    //   248: dup
    //   249: ldc_w 1013
    //   252: aload 12
    //   254: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   257: invokeinterface 393 2 0
    //   262: pop
    //   263: aload 9
    //   265: astore 10
    //   267: aload 9
    //   269: astore 8
    //   271: aload 11
    //   273: new 498	org/apache/http/message/BasicNameValuePair
    //   276: dup
    //   277: ldc_w 505
    //   280: aload_2
    //   281: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   284: invokeinterface 393 2 0
    //   289: pop
    //   290: aload 9
    //   292: astore 10
    //   294: aload 9
    //   296: astore 8
    //   298: aload 11
    //   300: new 498	org/apache/http/message/BasicNameValuePair
    //   303: dup
    //   304: ldc_w 1015
    //   307: iload 6
    //   309: invokestatic 1018	java/lang/String:valueOf	(Z)Ljava/lang/String;
    //   312: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   315: invokeinterface 393 2 0
    //   320: pop
    //   321: iload 6
    //   323: ifeq +543 -> 866
    //   326: aload 9
    //   328: astore 10
    //   330: aload 9
    //   332: astore 8
    //   334: aload 11
    //   336: new 498	org/apache/http/message/BasicNameValuePair
    //   339: dup
    //   340: ldc_w 1020
    //   343: aload_3
    //   344: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   347: invokeinterface 393 2 0
    //   352: pop
    //   353: aload 9
    //   355: astore 10
    //   357: aload 9
    //   359: astore 8
    //   361: aload 11
    //   363: new 498	org/apache/http/message/BasicNameValuePair
    //   366: dup
    //   367: ldc_w 1022
    //   370: aload 4
    //   372: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   375: invokeinterface 393 2 0
    //   380: pop
    //   381: aload 9
    //   383: astore 10
    //   385: aload 9
    //   387: astore 8
    //   389: aload 11
    //   391: new 498	org/apache/http/message/BasicNameValuePair
    //   394: dup
    //   395: ldc_w 1024
    //   398: aload 5
    //   400: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   403: invokeinterface 393 2 0
    //   408: pop
    //   409: aload 9
    //   411: astore 10
    //   413: aload 9
    //   415: astore 8
    //   417: new 166	java/lang/StringBuilder
    //   420: dup
    //   421: ldc_w 1026
    //   424: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   427: aload 4
    //   429: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   432: ldc_w 1028
    //   435: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   438: aload_2
    //   439: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   442: ldc_w 1030
    //   445: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   448: aload 12
    //   450: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   453: ldc_w 1032
    //   456: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   459: aload 5
    //   461: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   464: ldc_w 1034
    //   467: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   470: aload_1
    //   471: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   474: ldc_w 1036
    //   477: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   480: aload_3
    //   481: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   484: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   487: astore_1
    //   488: aload 9
    //   490: astore 8
    //   492: new 1038	javax/crypto/spec/SecretKeySpec
    //   495: dup
    //   496: ldc_w 1040
    //   499: invokevirtual 632	java/lang/String:getBytes	()[B
    //   502: ldc_w 1042
    //   505: invokespecial 1045	javax/crypto/spec/SecretKeySpec:<init>	([BLjava/lang/String;)V
    //   508: astore_2
    //   509: aload 9
    //   511: astore 8
    //   513: ldc_w 1042
    //   516: invokestatic 1050	javax/crypto/Mac:getInstance	(Ljava/lang/String;)Ljavax/crypto/Mac;
    //   519: astore_3
    //   520: aload 9
    //   522: astore 8
    //   524: aload_3
    //   525: aload_2
    //   526: invokevirtual 1054	javax/crypto/Mac:init	(Ljava/security/Key;)V
    //   529: aload 9
    //   531: astore 8
    //   533: aload 11
    //   535: new 498	org/apache/http/message/BasicNameValuePair
    //   538: dup
    //   539: ldc_w 1056
    //   542: aload_3
    //   543: aload_1
    //   544: invokevirtual 632	java/lang/String:getBytes	()[B
    //   547: invokevirtual 1059	javax/crypto/Mac:doFinal	([B)[B
    //   550: iconst_2
    //   551: invokestatic 1065	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   554: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   557: invokeinterface 393 2 0
    //   562: pop
    //   563: aload 9
    //   565: astore 10
    //   567: aload 9
    //   569: astore 8
    //   571: aload 9
    //   573: invokevirtual 509	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   576: astore_1
    //   577: aload 9
    //   579: astore 10
    //   581: aload 9
    //   583: astore 8
    //   585: new 511	java/io/BufferedWriter
    //   588: dup
    //   589: new 513	java/io/OutputStreamWriter
    //   592: dup
    //   593: aload_1
    //   594: ldc_w 515
    //   597: invokespecial 518	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   600: invokespecial 521	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   603: astore_2
    //   604: aload 9
    //   606: astore 10
    //   608: aload 9
    //   610: astore 8
    //   612: aload_2
    //   613: aload 11
    //   615: invokestatic 441	f:b	(Ljava/util/List;)Ljava/lang/String;
    //   618: invokevirtual 524	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   621: aload 9
    //   623: astore 10
    //   625: aload 9
    //   627: astore 8
    //   629: aload_2
    //   630: invokevirtual 525	java/io/BufferedWriter:close	()V
    //   633: aload 9
    //   635: astore 10
    //   637: aload 9
    //   639: astore 8
    //   641: aload_1
    //   642: invokevirtual 528	java/io/OutputStream:close	()V
    //   645: aload 9
    //   647: astore 10
    //   649: aload 9
    //   651: astore 8
    //   653: aload 9
    //   655: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   658: istore 7
    //   660: iload 7
    //   662: sipush 200
    //   665: if_icmpeq +281 -> 946
    //   668: aload 9
    //   670: astore 10
    //   672: aload 9
    //   674: astore 8
    //   676: new 281	com/arrownock/exception/ArrownockException
    //   679: dup
    //   680: new 226	org/json/JSONObject
    //   683: dup
    //   684: new 228	java/io/BufferedInputStream
    //   687: dup
    //   688: aload 9
    //   690: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   693: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   696: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   699: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   702: ldc_w 305
    //   705: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   708: ldc_w 307
    //   711: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   714: sipush 2107
    //   717: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   720: athrow
    //   721: astore_1
    //   722: aload 9
    //   724: astore 10
    //   726: aload 9
    //   728: astore 8
    //   730: new 281	com/arrownock/exception/ArrownockException
    //   733: dup
    //   734: aload_1
    //   735: invokevirtual 284	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   738: sipush 2107
    //   741: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   744: athrow
    //   745: astore_1
    //   746: aload 9
    //   748: astore 10
    //   750: aload 9
    //   752: astore 8
    //   754: new 281	com/arrownock/exception/ArrownockException
    //   757: dup
    //   758: aload_1
    //   759: invokevirtual 288	java/io/IOException:getMessage	()Ljava/lang/String;
    //   762: sipush 2107
    //   765: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   768: athrow
    //   769: astore_1
    //   770: aload 10
    //   772: astore 8
    //   774: aload_1
    //   775: instanceof 281
    //   778: ifeq +203 -> 981
    //   781: aload 10
    //   783: astore 8
    //   785: aload_1
    //   786: checkcast 281	com/arrownock/exception/ArrownockException
    //   789: athrow
    //   790: astore_1
    //   791: aload 8
    //   793: ifnull +8 -> 801
    //   796: aload 8
    //   798: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   801: aload_1
    //   802: athrow
    //   803: aload 9
    //   805: astore 10
    //   807: aload 11
    //   809: astore 8
    //   811: new 164	java/net/URL
    //   814: dup
    //   815: new 166	java/lang/StringBuilder
    //   818: dup
    //   819: ldc_w 298
    //   822: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   825: aload_0
    //   826: aload_0
    //   827: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   830: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   833: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   836: ldc_w 1003
    //   839: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   842: aload_1
    //   843: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   846: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   849: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   852: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   855: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   858: checkcast 218	java/net/HttpURLConnection
    //   861: astore 9
    //   863: goto -751 -> 112
    //   866: aload 9
    //   868: astore 10
    //   870: aload 9
    //   872: astore 8
    //   874: new 166	java/lang/StringBuilder
    //   877: dup
    //   878: ldc_w 1067
    //   881: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   884: aload_2
    //   885: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   888: ldc_w 1030
    //   891: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   894: aload 12
    //   896: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   899: ldc_w 1034
    //   902: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   905: aload_1
    //   906: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   909: ldc_w 1069
    //   912: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   915: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   918: astore_1
    //   919: goto -431 -> 488
    //   922: astore_1
    //   923: aload 9
    //   925: astore 10
    //   927: aload 9
    //   929: astore 8
    //   931: new 281	com/arrownock/exception/ArrownockException
    //   934: dup
    //   935: aload_1
    //   936: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   939: sipush 2107
    //   942: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   945: athrow
    //   946: aload 9
    //   948: astore 10
    //   950: aload 9
    //   952: astore 8
    //   954: new 228	java/io/BufferedInputStream
    //   957: dup
    //   958: aload 9
    //   960: invokevirtual 232	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   963: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   966: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   969: pop
    //   970: aload 9
    //   972: ifnull +8 -> 980
    //   975: aload 9
    //   977: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   980: return
    //   981: aload 10
    //   983: astore 8
    //   985: new 281	com/arrownock/exception/ArrownockException
    //   988: dup
    //   989: aload_1
    //   990: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   993: sipush 2107
    //   996: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   999: athrow
    //   1000: astore_1
    //   1001: aload 9
    //   1003: astore 8
    //   1005: goto -214 -> 791
    //   1008: astore_1
    //   1009: aload 9
    //   1011: astore 10
    //   1013: goto -243 -> 770
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1016	0	this	f
    //   0	1016	1	paramString1	String
    //   0	1016	2	paramString2	String
    //   0	1016	3	paramString3	String
    //   0	1016	4	paramString4	String
    //   0	1016	5	paramString5	String
    //   0	1016	6	paramBoolean	boolean
    //   658	8	7	i	int
    //   12	992	8	localObject1	Object
    //   4	1006	9	localObject2	Object
    //   8	1004	10	localObject3	Object
    //   1	807	11	localArrayList	java.util.ArrayList
    //   187	708	12	str	String
    // Exception table:
    //   from	to	target	type
    //   676	721	721	org/json/JSONException
    //   954	970	721	org/json/JSONException
    //   164	189	745	java/io/IOException
    //   197	206	745	java/io/IOException
    //   214	235	745	java/io/IOException
    //   243	263	745	java/io/IOException
    //   271	290	745	java/io/IOException
    //   298	321	745	java/io/IOException
    //   334	353	745	java/io/IOException
    //   361	381	745	java/io/IOException
    //   389	409	745	java/io/IOException
    //   417	488	745	java/io/IOException
    //   492	509	745	java/io/IOException
    //   513	520	745	java/io/IOException
    //   524	529	745	java/io/IOException
    //   533	563	745	java/io/IOException
    //   571	577	745	java/io/IOException
    //   585	604	745	java/io/IOException
    //   612	621	745	java/io/IOException
    //   629	633	745	java/io/IOException
    //   641	645	745	java/io/IOException
    //   653	660	745	java/io/IOException
    //   676	721	745	java/io/IOException
    //   730	745	745	java/io/IOException
    //   874	919	745	java/io/IOException
    //   931	946	745	java/io/IOException
    //   954	970	745	java/io/IOException
    //   14	21	769	java/lang/Exception
    //   29	80	769	java/lang/Exception
    //   120	128	769	java/lang/Exception
    //   136	142	769	java/lang/Exception
    //   150	156	769	java/lang/Exception
    //   164	189	769	java/lang/Exception
    //   197	206	769	java/lang/Exception
    //   214	235	769	java/lang/Exception
    //   243	263	769	java/lang/Exception
    //   271	290	769	java/lang/Exception
    //   298	321	769	java/lang/Exception
    //   334	353	769	java/lang/Exception
    //   361	381	769	java/lang/Exception
    //   389	409	769	java/lang/Exception
    //   417	488	769	java/lang/Exception
    //   571	577	769	java/lang/Exception
    //   585	604	769	java/lang/Exception
    //   612	621	769	java/lang/Exception
    //   629	633	769	java/lang/Exception
    //   641	645	769	java/lang/Exception
    //   653	660	769	java/lang/Exception
    //   676	721	769	java/lang/Exception
    //   730	745	769	java/lang/Exception
    //   754	769	769	java/lang/Exception
    //   811	863	769	java/lang/Exception
    //   874	919	769	java/lang/Exception
    //   931	946	769	java/lang/Exception
    //   954	970	769	java/lang/Exception
    //   14	21	790	finally
    //   29	80	790	finally
    //   120	128	790	finally
    //   136	142	790	finally
    //   150	156	790	finally
    //   164	189	790	finally
    //   197	206	790	finally
    //   214	235	790	finally
    //   243	263	790	finally
    //   271	290	790	finally
    //   298	321	790	finally
    //   334	353	790	finally
    //   361	381	790	finally
    //   389	409	790	finally
    //   417	488	790	finally
    //   492	509	790	finally
    //   513	520	790	finally
    //   524	529	790	finally
    //   533	563	790	finally
    //   571	577	790	finally
    //   585	604	790	finally
    //   612	621	790	finally
    //   629	633	790	finally
    //   641	645	790	finally
    //   653	660	790	finally
    //   676	721	790	finally
    //   730	745	790	finally
    //   754	769	790	finally
    //   774	781	790	finally
    //   785	790	790	finally
    //   811	863	790	finally
    //   874	919	790	finally
    //   931	946	790	finally
    //   954	970	790	finally
    //   985	1000	790	finally
    //   492	509	922	java/lang/Exception
    //   513	520	922	java/lang/Exception
    //   524	529	922	java/lang/Exception
    //   533	563	922	java/lang/Exception
    //   80	112	1000	finally
    //   80	112	1008	java/lang/Exception
  }
  
  public final void a(String paramString1, String paramString2, List<String> paramList, String paramString3)
  {
    new Thread(new ag(this, paramString1, paramList, paramString2, paramString3)).start();
  }
  
  public final void a(String paramString1, Set<String> paramSet, String paramString2, int paramInt, long paramLong, boolean paramBoolean, IAnIMHistoryCallback paramIAnIMHistoryCallback)
  {
    new Thread(new y(this, paramString1, paramSet, paramString2, paramInt, paramLong, paramBoolean, paramIAnIMHistoryCallback)).start();
  }
  
  public final void a(String paramString, boolean paramBoolean, int paramInt, List<String> paramList, IAnIMPushNotificationSettingsCallback paramIAnIMPushNotificationSettingsCallback)
  {
    new Thread(new ak(this, paramInt, paramString, paramBoolean, paramList, paramIAnIMPushNotificationSettingsCallback)).start();
  }
  
  public final void a(boolean paramBoolean)
  {
    jdField_c_of_type_Boolean = paramBoolean;
  }
  
  public final String b()
  {
    return d;
  }
  
  /* Error */
  final String b(String paramString1, String paramString2)
    throws ArrownockException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 6
    //   6: aload 6
    //   8: astore 5
    //   10: aload 7
    //   12: astore 4
    //   14: aload_0
    //   15: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   18: ifeq +336 -> 354
    //   21: aload 6
    //   23: astore 5
    //   25: aload 7
    //   27: astore 4
    //   29: new 164	java/net/URL
    //   32: dup
    //   33: new 166	java/lang/StringBuilder
    //   36: dup
    //   37: ldc -88
    //   39: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   42: aload_0
    //   43: aload_0
    //   44: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   47: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   50: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: ldc_w 1092
    //   56: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: aload_1
    //   60: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   63: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   72: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   75: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   78: astore_1
    //   79: aload_1
    //   80: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   83: getstatic 68	f:jdField_a_of_type_JavaxNetSslHostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   86: invokevirtual 199	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   89: aload_1
    //   90: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   93: ldc -55
    //   95: ldc -53
    //   97: ldc -51
    //   99: ldc -49
    //   101: ldc -47
    //   103: invokestatic 212	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   106: invokevirtual 216	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   109: aload_1
    //   110: astore 5
    //   112: aload_1
    //   113: astore 4
    //   115: aload_1
    //   116: ldc_w 486
    //   119: invokevirtual 489	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   122: aload_1
    //   123: astore 5
    //   125: aload_1
    //   126: astore 4
    //   128: aload_1
    //   129: iconst_1
    //   130: invokevirtual 493	java/net/HttpURLConnection:setDoInput	(Z)V
    //   133: aload_1
    //   134: astore 5
    //   136: aload_1
    //   137: astore 4
    //   139: aload_1
    //   140: iconst_1
    //   141: invokevirtual 496	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   144: aload_1
    //   145: astore 5
    //   147: aload_1
    //   148: astore 4
    //   150: new 389	java/util/ArrayList
    //   153: dup
    //   154: invokespecial 390	java/util/ArrayList:<init>	()V
    //   157: astore 6
    //   159: aload_1
    //   160: astore 5
    //   162: aload_1
    //   163: astore 4
    //   165: aload 6
    //   167: new 498	org/apache/http/message/BasicNameValuePair
    //   170: dup
    //   171: ldc_w 500
    //   174: aload_2
    //   175: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   178: invokeinterface 393 2 0
    //   183: pop
    //   184: aload_1
    //   185: astore 5
    //   187: aload_1
    //   188: astore 4
    //   190: aload_1
    //   191: invokevirtual 509	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   194: astore_2
    //   195: aload_1
    //   196: astore 5
    //   198: aload_1
    //   199: astore 4
    //   201: new 511	java/io/BufferedWriter
    //   204: dup
    //   205: new 513	java/io/OutputStreamWriter
    //   208: dup
    //   209: aload_2
    //   210: ldc_w 515
    //   213: invokespecial 518	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   216: invokespecial 521	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   219: astore 7
    //   221: aload_1
    //   222: astore 5
    //   224: aload_1
    //   225: astore 4
    //   227: aload 7
    //   229: aload 6
    //   231: invokestatic 441	f:b	(Ljava/util/List;)Ljava/lang/String;
    //   234: invokevirtual 524	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   237: aload_1
    //   238: astore 5
    //   240: aload_1
    //   241: astore 4
    //   243: aload 7
    //   245: invokevirtual 525	java/io/BufferedWriter:close	()V
    //   248: aload_1
    //   249: astore 5
    //   251: aload_1
    //   252: astore 4
    //   254: aload_2
    //   255: invokevirtual 528	java/io/OutputStream:close	()V
    //   258: aload_1
    //   259: astore 5
    //   261: aload_1
    //   262: astore 4
    //   264: aload_1
    //   265: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   268: istore_3
    //   269: iload_3
    //   270: sipush 200
    //   273: if_icmpne +242 -> 515
    //   276: aload_1
    //   277: astore 5
    //   279: aload_1
    //   280: astore 4
    //   282: new 226	org/json/JSONObject
    //   285: dup
    //   286: new 228	java/io/BufferedInputStream
    //   289: dup
    //   290: aload_1
    //   291: invokevirtual 232	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   294: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   297: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   300: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   303: ldc -15
    //   305: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   308: astore_2
    //   309: aload_2
    //   310: ifnull +106 -> 416
    //   313: aload_1
    //   314: astore 5
    //   316: aload_1
    //   317: astore 4
    //   319: aload_2
    //   320: ldc_w 844
    //   323: aconst_null
    //   324: invokevirtual 342	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   327: ifnull +89 -> 416
    //   330: aload_1
    //   331: astore 5
    //   333: aload_1
    //   334: astore 4
    //   336: aload_2
    //   337: ldc_w 844
    //   340: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   343: astore_2
    //   344: aload_1
    //   345: ifnull +7 -> 352
    //   348: aload_1
    //   349: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   352: aload_2
    //   353: areturn
    //   354: aload 6
    //   356: astore 5
    //   358: aload 7
    //   360: astore 4
    //   362: new 164	java/net/URL
    //   365: dup
    //   366: new 166	java/lang/StringBuilder
    //   369: dup
    //   370: ldc_w 298
    //   373: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   376: aload_0
    //   377: aload_0
    //   378: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   381: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   384: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   387: ldc_w 1092
    //   390: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   393: aload_1
    //   394: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   397: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   400: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   403: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   406: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   409: checkcast 218	java/net/HttpURLConnection
    //   412: astore_1
    //   413: goto -304 -> 109
    //   416: aload_1
    //   417: astore 5
    //   419: aload_1
    //   420: astore 4
    //   422: new 281	com/arrownock/exception/ArrownockException
    //   425: dup
    //   426: ldc_w 1094
    //   429: sipush 2117
    //   432: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   435: athrow
    //   436: astore_2
    //   437: aload_1
    //   438: astore 5
    //   440: aload_1
    //   441: astore 4
    //   443: new 281	com/arrownock/exception/ArrownockException
    //   446: dup
    //   447: aload_2
    //   448: invokevirtual 284	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   451: sipush 2117
    //   454: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   457: athrow
    //   458: astore_2
    //   459: aload_1
    //   460: astore 5
    //   462: aload_1
    //   463: astore 4
    //   465: new 281	com/arrownock/exception/ArrownockException
    //   468: dup
    //   469: aload_2
    //   470: invokevirtual 288	java/io/IOException:getMessage	()Ljava/lang/String;
    //   473: sipush 2117
    //   476: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   479: athrow
    //   480: astore_1
    //   481: aload 5
    //   483: astore 4
    //   485: aload_1
    //   486: instanceof 281
    //   489: ifeq +76 -> 565
    //   492: aload 5
    //   494: astore 4
    //   496: aload_1
    //   497: checkcast 281	com/arrownock/exception/ArrownockException
    //   500: athrow
    //   501: astore_2
    //   502: aload 4
    //   504: astore_1
    //   505: aload_1
    //   506: ifnull +7 -> 513
    //   509: aload_1
    //   510: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   513: aload_2
    //   514: athrow
    //   515: aload_1
    //   516: astore 5
    //   518: aload_1
    //   519: astore 4
    //   521: new 281	com/arrownock/exception/ArrownockException
    //   524: dup
    //   525: new 226	org/json/JSONObject
    //   528: dup
    //   529: new 228	java/io/BufferedInputStream
    //   532: dup
    //   533: aload_1
    //   534: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   537: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   540: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   543: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   546: ldc_w 305
    //   549: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   552: ldc_w 307
    //   555: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   558: sipush 2117
    //   561: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   564: athrow
    //   565: aload 5
    //   567: astore 4
    //   569: new 281	com/arrownock/exception/ArrownockException
    //   572: dup
    //   573: aload_1
    //   574: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   577: sipush 2117
    //   580: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   583: athrow
    //   584: astore_2
    //   585: goto -80 -> 505
    //   588: astore_2
    //   589: aload_1
    //   590: astore 5
    //   592: aload_2
    //   593: astore_1
    //   594: goto -113 -> 481
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	597	0	this	f
    //   0	597	1	paramString1	String
    //   0	597	2	paramString2	String
    //   268	6	3	i	int
    //   12	556	4	localObject1	Object
    //   8	583	5	localObject2	Object
    //   4	351	6	localArrayList	java.util.ArrayList
    //   1	358	7	localBufferedWriter	java.io.BufferedWriter
    // Exception table:
    //   from	to	target	type
    //   282	309	436	org/json/JSONException
    //   319	330	436	org/json/JSONException
    //   336	344	436	org/json/JSONException
    //   422	436	436	org/json/JSONException
    //   521	565	436	org/json/JSONException
    //   150	159	458	java/io/IOException
    //   165	184	458	java/io/IOException
    //   190	195	458	java/io/IOException
    //   201	221	458	java/io/IOException
    //   227	237	458	java/io/IOException
    //   243	248	458	java/io/IOException
    //   254	258	458	java/io/IOException
    //   264	269	458	java/io/IOException
    //   282	309	458	java/io/IOException
    //   319	330	458	java/io/IOException
    //   336	344	458	java/io/IOException
    //   422	436	458	java/io/IOException
    //   443	458	458	java/io/IOException
    //   521	565	458	java/io/IOException
    //   14	21	480	java/lang/Exception
    //   29	79	480	java/lang/Exception
    //   115	122	480	java/lang/Exception
    //   128	133	480	java/lang/Exception
    //   139	144	480	java/lang/Exception
    //   150	159	480	java/lang/Exception
    //   165	184	480	java/lang/Exception
    //   190	195	480	java/lang/Exception
    //   201	221	480	java/lang/Exception
    //   227	237	480	java/lang/Exception
    //   243	248	480	java/lang/Exception
    //   254	258	480	java/lang/Exception
    //   264	269	480	java/lang/Exception
    //   282	309	480	java/lang/Exception
    //   319	330	480	java/lang/Exception
    //   336	344	480	java/lang/Exception
    //   362	413	480	java/lang/Exception
    //   422	436	480	java/lang/Exception
    //   443	458	480	java/lang/Exception
    //   465	480	480	java/lang/Exception
    //   521	565	480	java/lang/Exception
    //   14	21	501	finally
    //   29	79	501	finally
    //   115	122	501	finally
    //   128	133	501	finally
    //   139	144	501	finally
    //   150	159	501	finally
    //   165	184	501	finally
    //   190	195	501	finally
    //   201	221	501	finally
    //   227	237	501	finally
    //   243	248	501	finally
    //   254	258	501	finally
    //   264	269	501	finally
    //   282	309	501	finally
    //   319	330	501	finally
    //   336	344	501	finally
    //   362	413	501	finally
    //   422	436	501	finally
    //   443	458	501	finally
    //   465	480	501	finally
    //   485	492	501	finally
    //   496	501	501	finally
    //   521	565	501	finally
    //   569	584	501	finally
    //   79	109	584	finally
    //   79	109	588	java/lang/Exception
  }
  
  /* Error */
  final String b(String paramString1, String paramString2, String paramString3, String paramString4)
    throws ArrownockException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: aconst_null
    //   4: astore 8
    //   6: aload 8
    //   8: astore 7
    //   10: aload 9
    //   12: astore 6
    //   14: aload_0
    //   15: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   18: ifeq +428 -> 446
    //   21: aload 8
    //   23: astore 7
    //   25: aload 9
    //   27: astore 6
    //   29: new 164	java/net/URL
    //   32: dup
    //   33: new 166	java/lang/StringBuilder
    //   36: dup
    //   37: ldc -88
    //   39: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   42: aload_0
    //   43: aload_0
    //   44: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   47: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   50: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: ldc_w 1096
    //   56: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: aload_1
    //   60: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   63: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   72: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   75: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   78: astore_1
    //   79: aload_1
    //   80: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   83: getstatic 68	f:jdField_a_of_type_JavaxNetSslHostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   86: invokevirtual 199	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   89: aload_1
    //   90: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   93: ldc -55
    //   95: ldc -53
    //   97: ldc -51
    //   99: ldc -49
    //   101: ldc -47
    //   103: invokestatic 212	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   106: invokevirtual 216	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   109: aload_1
    //   110: astore 7
    //   112: aload_1
    //   113: astore 6
    //   115: aload_1
    //   116: ldc_w 486
    //   119: invokevirtual 489	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   122: aload_1
    //   123: astore 7
    //   125: aload_1
    //   126: astore 6
    //   128: aload_1
    //   129: iconst_1
    //   130: invokevirtual 493	java/net/HttpURLConnection:setDoInput	(Z)V
    //   133: aload_1
    //   134: astore 7
    //   136: aload_1
    //   137: astore 6
    //   139: aload_1
    //   140: iconst_1
    //   141: invokevirtual 496	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   144: aload_1
    //   145: astore 7
    //   147: aload_1
    //   148: astore 6
    //   150: new 389	java/util/ArrayList
    //   153: dup
    //   154: invokespecial 390	java/util/ArrayList:<init>	()V
    //   157: astore 8
    //   159: aload_1
    //   160: astore 7
    //   162: aload_1
    //   163: astore 6
    //   165: aload 8
    //   167: new 498	org/apache/http/message/BasicNameValuePair
    //   170: dup
    //   171: ldc_w 500
    //   174: aload_2
    //   175: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   178: invokeinterface 393 2 0
    //   183: pop
    //   184: aload_3
    //   185: ifnull +28 -> 213
    //   188: aload_1
    //   189: astore 7
    //   191: aload_1
    //   192: astore 6
    //   194: aload 8
    //   196: new 498	org/apache/http/message/BasicNameValuePair
    //   199: dup
    //   200: ldc_w 338
    //   203: aload_3
    //   204: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   207: invokeinterface 393 2 0
    //   212: pop
    //   213: aload 4
    //   215: ifnull +29 -> 244
    //   218: aload_1
    //   219: astore 7
    //   221: aload_1
    //   222: astore 6
    //   224: aload 8
    //   226: new 498	org/apache/http/message/BasicNameValuePair
    //   229: dup
    //   230: ldc_w 344
    //   233: aload 4
    //   235: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   238: invokeinterface 393 2 0
    //   243: pop
    //   244: aload_1
    //   245: astore 7
    //   247: aload_1
    //   248: astore 6
    //   250: aload_1
    //   251: invokevirtual 509	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   254: astore_2
    //   255: aload_1
    //   256: astore 7
    //   258: aload_1
    //   259: astore 6
    //   261: new 511	java/io/BufferedWriter
    //   264: dup
    //   265: new 513	java/io/OutputStreamWriter
    //   268: dup
    //   269: aload_2
    //   270: ldc_w 515
    //   273: invokespecial 518	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   276: invokespecial 521	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   279: astore_3
    //   280: aload_1
    //   281: astore 7
    //   283: aload_1
    //   284: astore 6
    //   286: aload_3
    //   287: aload 8
    //   289: invokestatic 441	f:b	(Ljava/util/List;)Ljava/lang/String;
    //   292: invokevirtual 524	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   295: aload_1
    //   296: astore 7
    //   298: aload_1
    //   299: astore 6
    //   301: aload_3
    //   302: invokevirtual 525	java/io/BufferedWriter:close	()V
    //   305: aload_1
    //   306: astore 7
    //   308: aload_1
    //   309: astore 6
    //   311: aload_2
    //   312: invokevirtual 528	java/io/OutputStream:close	()V
    //   315: aload_1
    //   316: astore 7
    //   318: aload_1
    //   319: astore 6
    //   321: aload_1
    //   322: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   325: istore 5
    //   327: iload 5
    //   329: sipush 200
    //   332: if_icmpne +295 -> 627
    //   335: aload_1
    //   336: astore 7
    //   338: aload_1
    //   339: astore 6
    //   341: new 226	org/json/JSONObject
    //   344: dup
    //   345: new 228	java/io/BufferedInputStream
    //   348: dup
    //   349: aload_1
    //   350: invokevirtual 232	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   353: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   356: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   359: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   362: ldc -15
    //   364: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   367: astore_2
    //   368: aload_2
    //   369: ifnull +238 -> 607
    //   372: aload_1
    //   373: astore 7
    //   375: aload_1
    //   376: astore 6
    //   378: aload_2
    //   379: ldc_w 322
    //   382: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   385: ifnull +222 -> 607
    //   388: aload_1
    //   389: astore 7
    //   391: aload_1
    //   392: astore 6
    //   394: aload_2
    //   395: ldc_w 322
    //   398: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   401: astore_2
    //   402: aload_2
    //   403: ifnull +105 -> 508
    //   406: aload_1
    //   407: astore 7
    //   409: aload_1
    //   410: astore 6
    //   412: aload_2
    //   413: ldc_w 844
    //   416: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   419: ifnull +89 -> 508
    //   422: aload_1
    //   423: astore 7
    //   425: aload_1
    //   426: astore 6
    //   428: aload_2
    //   429: ldc_w 844
    //   432: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   435: astore_2
    //   436: aload_1
    //   437: ifnull +7 -> 444
    //   440: aload_1
    //   441: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   444: aload_2
    //   445: areturn
    //   446: aload 8
    //   448: astore 7
    //   450: aload 9
    //   452: astore 6
    //   454: new 164	java/net/URL
    //   457: dup
    //   458: new 166	java/lang/StringBuilder
    //   461: dup
    //   462: ldc_w 298
    //   465: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   468: aload_0
    //   469: aload_0
    //   470: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   473: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   476: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   479: ldc_w 1096
    //   482: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   485: aload_1
    //   486: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   489: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   492: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   495: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   498: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   501: checkcast 218	java/net/HttpURLConnection
    //   504: astore_1
    //   505: goto -396 -> 109
    //   508: aload_1
    //   509: astore 7
    //   511: aload_1
    //   512: astore 6
    //   514: new 281	com/arrownock/exception/ArrownockException
    //   517: dup
    //   518: ldc_w 1098
    //   521: sipush 2115
    //   524: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   527: athrow
    //   528: astore_2
    //   529: aload_1
    //   530: astore 7
    //   532: aload_1
    //   533: astore 6
    //   535: new 281	com/arrownock/exception/ArrownockException
    //   538: dup
    //   539: aload_2
    //   540: invokevirtual 284	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   543: sipush 2115
    //   546: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   549: athrow
    //   550: astore_2
    //   551: aload_1
    //   552: astore 7
    //   554: aload_1
    //   555: astore 6
    //   557: new 281	com/arrownock/exception/ArrownockException
    //   560: dup
    //   561: aload_2
    //   562: invokevirtual 288	java/io/IOException:getMessage	()Ljava/lang/String;
    //   565: sipush 2115
    //   568: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   571: athrow
    //   572: astore_1
    //   573: aload 7
    //   575: astore 6
    //   577: aload_1
    //   578: instanceof 281
    //   581: ifeq +96 -> 677
    //   584: aload 7
    //   586: astore 6
    //   588: aload_1
    //   589: checkcast 281	com/arrownock/exception/ArrownockException
    //   592: athrow
    //   593: astore_2
    //   594: aload 6
    //   596: astore_1
    //   597: aload_1
    //   598: ifnull +7 -> 605
    //   601: aload_1
    //   602: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   605: aload_2
    //   606: athrow
    //   607: aload_1
    //   608: astore 7
    //   610: aload_1
    //   611: astore 6
    //   613: new 281	com/arrownock/exception/ArrownockException
    //   616: dup
    //   617: ldc_w 1100
    //   620: sipush 2115
    //   623: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   626: athrow
    //   627: aload_1
    //   628: astore 7
    //   630: aload_1
    //   631: astore 6
    //   633: new 281	com/arrownock/exception/ArrownockException
    //   636: dup
    //   637: new 226	org/json/JSONObject
    //   640: dup
    //   641: new 228	java/io/BufferedInputStream
    //   644: dup
    //   645: aload_1
    //   646: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   649: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   652: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   655: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   658: ldc_w 305
    //   661: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   664: ldc_w 307
    //   667: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   670: sipush 2115
    //   673: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   676: athrow
    //   677: aload 7
    //   679: astore 6
    //   681: new 281	com/arrownock/exception/ArrownockException
    //   684: dup
    //   685: aload_1
    //   686: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   689: sipush 2115
    //   692: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   695: athrow
    //   696: astore_2
    //   697: goto -100 -> 597
    //   700: astore_2
    //   701: aload_1
    //   702: astore 7
    //   704: aload_2
    //   705: astore_1
    //   706: goto -133 -> 573
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	709	0	this	f
    //   0	709	1	paramString1	String
    //   0	709	2	paramString2	String
    //   0	709	3	paramString3	String
    //   0	709	4	paramString4	String
    //   325	8	5	i	int
    //   12	668	6	localObject1	Object
    //   8	695	7	localObject2	Object
    //   4	443	8	localArrayList	java.util.ArrayList
    //   1	450	9	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   341	368	528	org/json/JSONException
    //   378	388	528	org/json/JSONException
    //   394	402	528	org/json/JSONException
    //   412	422	528	org/json/JSONException
    //   428	436	528	org/json/JSONException
    //   514	528	528	org/json/JSONException
    //   613	627	528	org/json/JSONException
    //   633	677	528	org/json/JSONException
    //   150	159	550	java/io/IOException
    //   165	184	550	java/io/IOException
    //   194	213	550	java/io/IOException
    //   224	244	550	java/io/IOException
    //   250	255	550	java/io/IOException
    //   261	280	550	java/io/IOException
    //   286	295	550	java/io/IOException
    //   301	305	550	java/io/IOException
    //   311	315	550	java/io/IOException
    //   321	327	550	java/io/IOException
    //   341	368	550	java/io/IOException
    //   378	388	550	java/io/IOException
    //   394	402	550	java/io/IOException
    //   412	422	550	java/io/IOException
    //   428	436	550	java/io/IOException
    //   514	528	550	java/io/IOException
    //   535	550	550	java/io/IOException
    //   613	627	550	java/io/IOException
    //   633	677	550	java/io/IOException
    //   14	21	572	java/lang/Exception
    //   29	79	572	java/lang/Exception
    //   115	122	572	java/lang/Exception
    //   128	133	572	java/lang/Exception
    //   139	144	572	java/lang/Exception
    //   150	159	572	java/lang/Exception
    //   165	184	572	java/lang/Exception
    //   194	213	572	java/lang/Exception
    //   224	244	572	java/lang/Exception
    //   250	255	572	java/lang/Exception
    //   261	280	572	java/lang/Exception
    //   286	295	572	java/lang/Exception
    //   301	305	572	java/lang/Exception
    //   311	315	572	java/lang/Exception
    //   321	327	572	java/lang/Exception
    //   341	368	572	java/lang/Exception
    //   378	388	572	java/lang/Exception
    //   394	402	572	java/lang/Exception
    //   412	422	572	java/lang/Exception
    //   428	436	572	java/lang/Exception
    //   454	505	572	java/lang/Exception
    //   514	528	572	java/lang/Exception
    //   535	550	572	java/lang/Exception
    //   557	572	572	java/lang/Exception
    //   613	627	572	java/lang/Exception
    //   633	677	572	java/lang/Exception
    //   14	21	593	finally
    //   29	79	593	finally
    //   115	122	593	finally
    //   128	133	593	finally
    //   139	144	593	finally
    //   150	159	593	finally
    //   165	184	593	finally
    //   194	213	593	finally
    //   224	244	593	finally
    //   250	255	593	finally
    //   261	280	593	finally
    //   286	295	593	finally
    //   301	305	593	finally
    //   311	315	593	finally
    //   321	327	593	finally
    //   341	368	593	finally
    //   378	388	593	finally
    //   394	402	593	finally
    //   412	422	593	finally
    //   428	436	593	finally
    //   454	505	593	finally
    //   514	528	593	finally
    //   535	550	593	finally
    //   557	572	593	finally
    //   577	584	593	finally
    //   588	593	593	finally
    //   613	627	593	finally
    //   633	677	593	finally
    //   681	696	593	finally
    //   79	109	696	finally
    //   79	109	700	java/lang/Exception
  }
  
  public final void b(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = paramContext.getSharedPreferences(jdField_b_of_type_JavaLangString, 0).edit();
    paramContext.putString(paramString1, paramString2);
    paramContext.commit();
  }
  
  public final void b(String paramString)
  {
    if ((jdField_a_of_type_Ji != null) && (d != null))
    {
      paramString = "ANIM/" + d + '/' + paramString;
      jdField_a_of_type_Ji.a(paramString);
      new Thread(new ao(this)).start();
    }
  }
  
  public final void b(String paramString1, String paramString2)
  {
    d = paramString2;
    e = paramString2;
    new Thread(new ac(this, paramString2, paramString1)).start();
  }
  
  public final void b(String paramString1, String paramString2, IAnIMGetClientsStatusCallback paramIAnIMGetClientsStatusCallback)
  {
    new Thread(new ad(this, paramString1, paramString2, paramIAnIMGetClientsStatusCallback)).start();
  }
  
  @Deprecated
  public final void b(String paramString1, String paramString2, String paramString3)
  {
    new Thread(new k(this, paramString1, paramString2, paramString3)).start();
  }
  
  /* Error */
  final void b(String paramString1, String paramString2, String paramString3, int paramInt, long paramLong, boolean paramBoolean, IAnIMHistoryCallback paramIAnIMHistoryCallback)
    throws ArrownockException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: new 449	java/lang/StringBuffer
    //   6: dup
    //   7: invokespecial 450	java/lang/StringBuffer:<init>	()V
    //   10: astore 10
    //   12: aload 10
    //   14: aload_0
    //   15: aload_0
    //   16: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   19: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   22: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   25: pop
    //   26: aload 10
    //   28: new 166	java/lang/StringBuilder
    //   31: dup
    //   32: ldc_w 1124
    //   35: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   38: aload_1
    //   39: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   42: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   51: pop
    //   52: aload 10
    //   54: ldc_w 1126
    //   57: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   60: pop
    //   61: aload_2
    //   62: ifnonnull +475 -> 537
    //   65: aload 10
    //   67: ldc_w 1128
    //   70: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   73: pop
    //   74: aload 10
    //   76: ldc_w 1130
    //   79: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   82: pop
    //   83: aload 10
    //   85: aload_3
    //   86: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   89: pop
    //   90: iload 4
    //   92: ifle +27 -> 119
    //   95: aload 10
    //   97: new 166	java/lang/StringBuilder
    //   100: dup
    //   101: ldc_w 1132
    //   104: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   107: iload 4
    //   109: invokevirtual 810	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   112: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   118: pop
    //   119: lload 5
    //   121: lconst_0
    //   122: lcmp
    //   123: ifle +27 -> 150
    //   126: aload 10
    //   128: new 166	java/lang/StringBuilder
    //   131: dup
    //   132: ldc_w 1134
    //   135: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   138: lload 5
    //   140: invokevirtual 807	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   143: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   146: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   149: pop
    //   150: iload 7
    //   152: ifeq +12 -> 164
    //   155: aload 10
    //   157: ldc_w 1136
    //   160: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   163: pop
    //   164: aload 10
    //   166: ldc_w 1138
    //   169: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   172: pop
    //   173: aload_0
    //   174: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   177: ifeq +379 -> 556
    //   180: new 164	java/net/URL
    //   183: dup
    //   184: new 166	java/lang/StringBuilder
    //   187: dup
    //   188: ldc -88
    //   190: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   193: aload 10
    //   195: invokevirtual 463	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   198: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   204: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   207: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   210: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   213: astore_1
    //   214: aload_1
    //   215: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   218: getstatic 68	f:jdField_a_of_type_JavaxNetSslHostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   221: invokevirtual 199	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   224: aload_1
    //   225: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   228: ldc -55
    //   230: ldc -53
    //   232: ldc -51
    //   234: ldc -49
    //   236: ldc -47
    //   238: invokestatic 212	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   241: invokevirtual 216	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   244: aload_1
    //   245: invokevirtual 221	java/net/HttpURLConnection:connect	()V
    //   248: aload_1
    //   249: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   252: istore 4
    //   254: iload 4
    //   256: sipush 200
    //   259: if_icmpne +537 -> 796
    //   262: new 226	org/json/JSONObject
    //   265: dup
    //   266: new 228	java/io/BufferedInputStream
    //   269: dup
    //   270: aload_1
    //   271: invokevirtual 232	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   274: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   277: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   280: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   283: astore_3
    //   284: aload_3
    //   285: ldc -15
    //   287: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   290: astore_2
    //   291: aload_3
    //   292: ldc_w 305
    //   295: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   298: astore 10
    //   300: aload_2
    //   301: ifnull +481 -> 782
    //   304: aload_2
    //   305: ldc_w 1140
    //   308: invokevirtual 251	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   311: astore 11
    //   313: new 389	java/util/ArrayList
    //   316: dup
    //   317: invokespecial 390	java/util/ArrayList:<init>	()V
    //   320: astore 12
    //   322: iconst_0
    //   323: istore 4
    //   325: iload 4
    //   327: aload 11
    //   329: invokevirtual 254	org/json/JSONArray:length	()I
    //   332: if_icmpge +390 -> 722
    //   335: aload 11
    //   337: iload 4
    //   339: invokevirtual 257	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   342: astore 9
    //   344: aload 9
    //   346: ifnull +530 -> 876
    //   349: aload 9
    //   351: ldc_w 1142
    //   354: invokevirtual 1144	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   357: astore 17
    //   359: aload 9
    //   361: ldc_w 1146
    //   364: invokevirtual 1144	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   367: astore 13
    //   369: aload 9
    //   371: ldc_w 844
    //   374: invokevirtual 1144	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   377: astore 14
    //   379: aload 9
    //   381: ldc_w 1148
    //   384: invokevirtual 1144	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   387: astore 15
    //   389: aload 9
    //   391: ldc_w 307
    //   394: invokevirtual 1144	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   397: astore 16
    //   399: aload 9
    //   401: ldc_w 1150
    //   404: invokevirtual 1153	org/json/JSONObject:optLong	(Ljava/lang/String;)J
    //   407: lstore 5
    //   409: aload 9
    //   411: ldc_w 1155
    //   414: invokevirtual 1158	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   417: astore 18
    //   419: aconst_null
    //   420: astore_2
    //   421: aload 18
    //   423: ifnull +171 -> 594
    //   426: aload 18
    //   428: invokevirtual 261	org/json/JSONObject:keys	()Ljava/util/Iterator;
    //   431: astore 19
    //   433: new 36	java/util/HashMap
    //   436: dup
    //   437: invokespecial 39	java/util/HashMap:<init>	()V
    //   440: astore_3
    //   441: aload_3
    //   442: astore_2
    //   443: aload 19
    //   445: invokeinterface 267 1 0
    //   450: ifeq +144 -> 594
    //   453: aload 19
    //   455: invokeinterface 271 1 0
    //   460: checkcast 142	java/lang/String
    //   463: astore_2
    //   464: aload_3
    //   465: aload_2
    //   466: aload 18
    //   468: aload_2
    //   469: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   472: invokeinterface 55 3 0
    //   477: pop
    //   478: goto -37 -> 441
    //   481: astore_2
    //   482: new 281	com/arrownock/exception/ArrownockException
    //   485: dup
    //   486: aload_2
    //   487: invokevirtual 284	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   490: sipush 2116
    //   493: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   496: athrow
    //   497: astore_2
    //   498: new 281	com/arrownock/exception/ArrownockException
    //   501: dup
    //   502: aload_2
    //   503: invokevirtual 288	java/io/IOException:getMessage	()Ljava/lang/String;
    //   506: sipush 2116
    //   509: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   512: athrow
    //   513: astore_2
    //   514: aload_2
    //   515: instanceof 281
    //   518: ifeq +322 -> 840
    //   521: aload_2
    //   522: checkcast 281	com/arrownock/exception/ArrownockException
    //   525: athrow
    //   526: astore_2
    //   527: aload_1
    //   528: ifnull +7 -> 535
    //   531: aload_1
    //   532: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   535: aload_2
    //   536: athrow
    //   537: aload 10
    //   539: ldc_w 1160
    //   542: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   545: pop
    //   546: aload 10
    //   548: aload_2
    //   549: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   552: pop
    //   553: goto -479 -> 74
    //   556: new 164	java/net/URL
    //   559: dup
    //   560: new 166	java/lang/StringBuilder
    //   563: dup
    //   564: ldc_w 298
    //   567: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   570: aload 10
    //   572: invokevirtual 463	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   575: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   578: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   581: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   584: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   587: checkcast 218	java/net/HttpURLConnection
    //   590: astore_1
    //   591: goto -347 -> 244
    //   594: ldc_w 1162
    //   597: aload 17
    //   599: invokevirtual 409	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   602: ifeq +37 -> 639
    //   605: aload 12
    //   607: new 1164	com/arrownock/im/AnIMMessage
    //   610: dup
    //   611: getstatic 1170	com/arrownock/im/AnIMMessageType:AnIMTextMessage	Lcom/arrownock/im/AnIMMessageType;
    //   614: aload 13
    //   616: aload 14
    //   618: aload 16
    //   620: aconst_null
    //   621: aconst_null
    //   622: aload 15
    //   624: lload 5
    //   626: aload_2
    //   627: invokespecial 1173	com/arrownock/im/AnIMMessage:<init>	(Lcom/arrownock/im/AnIMMessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    //   630: invokeinterface 393 2 0
    //   635: pop
    //   636: goto +240 -> 876
    //   639: ldc_w 1175
    //   642: aload 17
    //   644: invokevirtual 409	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   647: ifeq +229 -> 876
    //   650: aload 9
    //   652: ldc_w 1177
    //   655: invokevirtual 1144	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   658: astore 17
    //   660: aconst_null
    //   661: astore 9
    //   663: aload 9
    //   665: astore_3
    //   666: aload 16
    //   668: ifnull +20 -> 688
    //   671: aload 9
    //   673: astore_3
    //   674: aload 16
    //   676: invokevirtual 146	java/lang/String:length	()I
    //   679: ifle +9 -> 688
    //   682: aload 16
    //   684: invokestatic 1181	az:a	(Ljava/lang/String;)[B
    //   687: astore_3
    //   688: aload 12
    //   690: new 1164	com/arrownock/im/AnIMMessage
    //   693: dup
    //   694: getstatic 1184	com/arrownock/im/AnIMMessageType:AnIMBinaryMessage	Lcom/arrownock/im/AnIMMessageType;
    //   697: aload 13
    //   699: aload 14
    //   701: aconst_null
    //   702: aload_3
    //   703: aload 17
    //   705: aload 15
    //   707: lload 5
    //   709: aload_2
    //   710: invokespecial 1173	com/arrownock/im/AnIMMessage:<init>	(Lcom/arrownock/im/AnIMMessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    //   713: invokeinterface 393 2 0
    //   718: pop
    //   719: goto +157 -> 876
    //   722: aload 8
    //   724: ifnull +36 -> 760
    //   727: aload 10
    //   729: ifnull +40 -> 769
    //   732: aload 10
    //   734: ldc_w 1186
    //   737: invokevirtual 1189	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   740: ifeq +29 -> 769
    //   743: aload 8
    //   745: aload 12
    //   747: aload 10
    //   749: ldc_w 1186
    //   752: invokevirtual 756	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   755: invokeinterface 1195 3 0
    //   760: aload_1
    //   761: ifnull +7 -> 768
    //   764: aload_1
    //   765: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   768: return
    //   769: aload 8
    //   771: aload 12
    //   773: iconst_m1
    //   774: invokeinterface 1195 3 0
    //   779: goto -19 -> 760
    //   782: new 281	com/arrownock/exception/ArrownockException
    //   785: dup
    //   786: ldc_w 1197
    //   789: sipush 2110
    //   792: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   795: athrow
    //   796: new 281	com/arrownock/exception/ArrownockException
    //   799: dup
    //   800: new 226	org/json/JSONObject
    //   803: dup
    //   804: new 228	java/io/BufferedInputStream
    //   807: dup
    //   808: aload_1
    //   809: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   812: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   815: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   818: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   821: ldc_w 305
    //   824: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   827: ldc_w 307
    //   830: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   833: sipush 2116
    //   836: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   839: athrow
    //   840: new 281	com/arrownock/exception/ArrownockException
    //   843: dup
    //   844: aload_2
    //   845: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   848: sipush 2116
    //   851: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   854: athrow
    //   855: astore_2
    //   856: aconst_null
    //   857: astore_1
    //   858: goto -331 -> 527
    //   861: astore_2
    //   862: goto -335 -> 527
    //   865: astore_2
    //   866: goto -352 -> 514
    //   869: astore_2
    //   870: aload 9
    //   872: astore_1
    //   873: goto -359 -> 514
    //   876: iload 4
    //   878: iconst_1
    //   879: iadd
    //   880: istore 4
    //   882: goto -557 -> 325
    //   885: astore_2
    //   886: goto -359 -> 527
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	889	0	this	f
    //   0	889	1	paramString1	String
    //   0	889	2	paramString2	String
    //   0	889	3	paramString3	String
    //   0	889	4	paramInt	int
    //   0	889	5	paramLong	long
    //   0	889	7	paramBoolean	boolean
    //   0	889	8	paramIAnIMHistoryCallback	IAnIMHistoryCallback
    //   1	870	9	localJSONObject1	org.json.JSONObject
    //   10	738	10	localObject	Object
    //   311	25	11	localJSONArray	org.json.JSONArray
    //   320	452	12	localArrayList	java.util.ArrayList
    //   367	331	13	str1	String
    //   377	323	14	str2	String
    //   387	319	15	str3	String
    //   397	286	16	str4	String
    //   357	347	17	str5	String
    //   417	50	18	localJSONObject2	org.json.JSONObject
    //   431	23	19	localIterator	Iterator
    // Exception table:
    //   from	to	target	type
    //   262	300	481	org/json/JSONException
    //   304	322	481	org/json/JSONException
    //   325	344	481	org/json/JSONException
    //   349	419	481	org/json/JSONException
    //   426	441	481	org/json/JSONException
    //   443	478	481	org/json/JSONException
    //   594	636	481	org/json/JSONException
    //   639	660	481	org/json/JSONException
    //   674	688	481	org/json/JSONException
    //   688	719	481	org/json/JSONException
    //   732	760	481	org/json/JSONException
    //   769	779	481	org/json/JSONException
    //   782	796	481	org/json/JSONException
    //   796	840	481	org/json/JSONException
    //   244	254	497	java/io/IOException
    //   262	300	497	java/io/IOException
    //   304	322	497	java/io/IOException
    //   325	344	497	java/io/IOException
    //   349	419	497	java/io/IOException
    //   426	441	497	java/io/IOException
    //   443	478	497	java/io/IOException
    //   482	497	497	java/io/IOException
    //   594	636	497	java/io/IOException
    //   639	660	497	java/io/IOException
    //   674	688	497	java/io/IOException
    //   688	719	497	java/io/IOException
    //   732	760	497	java/io/IOException
    //   769	779	497	java/io/IOException
    //   782	796	497	java/io/IOException
    //   796	840	497	java/io/IOException
    //   244	254	513	java/lang/Exception
    //   262	300	513	java/lang/Exception
    //   304	322	513	java/lang/Exception
    //   325	344	513	java/lang/Exception
    //   349	419	513	java/lang/Exception
    //   426	441	513	java/lang/Exception
    //   443	478	513	java/lang/Exception
    //   482	497	513	java/lang/Exception
    //   498	513	513	java/lang/Exception
    //   594	636	513	java/lang/Exception
    //   639	660	513	java/lang/Exception
    //   674	688	513	java/lang/Exception
    //   688	719	513	java/lang/Exception
    //   732	760	513	java/lang/Exception
    //   769	779	513	java/lang/Exception
    //   782	796	513	java/lang/Exception
    //   796	840	513	java/lang/Exception
    //   514	526	526	finally
    //   840	855	526	finally
    //   3	61	855	finally
    //   65	74	855	finally
    //   74	90	855	finally
    //   95	119	855	finally
    //   126	150	855	finally
    //   155	164	855	finally
    //   164	214	855	finally
    //   537	553	855	finally
    //   556	591	855	finally
    //   214	244	861	finally
    //   214	244	865	java/lang/Exception
    //   3	61	869	java/lang/Exception
    //   65	74	869	java/lang/Exception
    //   74	90	869	java/lang/Exception
    //   95	119	869	java/lang/Exception
    //   126	150	869	java/lang/Exception
    //   155	164	869	java/lang/Exception
    //   164	214	869	java/lang/Exception
    //   537	553	869	java/lang/Exception
    //   556	591	869	java/lang/Exception
    //   244	254	885	finally
    //   262	300	885	finally
    //   304	322	885	finally
    //   325	344	885	finally
    //   349	419	885	finally
    //   426	441	885	finally
    //   443	478	885	finally
    //   482	497	885	finally
    //   498	513	885	finally
    //   594	636	885	finally
    //   639	660	885	finally
    //   674	688	885	finally
    //   688	719	885	finally
    //   732	760	885	finally
    //   769	779	885	finally
    //   782	796	885	finally
    //   796	840	885	finally
  }
  
  public final void b(String paramString1, String paramString2, String paramString3, IAnIMTopicCallback paramIAnIMTopicCallback)
  {
    new Thread(new n(this, paramString1, paramString2, paramString3, paramIAnIMTopicCallback)).start();
  }
  
  @Deprecated
  public final void b(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    new Thread(new as(this, paramString1, paramString2, paramString3, paramString4)).start();
  }
  
  public final void b(String paramString1, String paramString2, String paramString3, String paramString4, IAnIMTopicCallback paramIAnIMTopicCallback)
  {
    new Thread(new j(this, paramString1, paramString2, paramString3, paramString4, paramIAnIMTopicCallback)).start();
  }
  
  /* Error */
  final void b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, boolean paramBoolean)
    throws ArrownockException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 13
    //   3: aconst_null
    //   4: astore 12
    //   6: aload 12
    //   8: astore 11
    //   10: aload 13
    //   12: astore 10
    //   14: aload_0
    //   15: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   18: ifeq +528 -> 546
    //   21: aload 12
    //   23: astore 11
    //   25: aload 13
    //   27: astore 10
    //   29: new 164	java/net/URL
    //   32: dup
    //   33: new 166	java/lang/StringBuilder
    //   36: dup
    //   37: ldc -88
    //   39: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   42: aload_0
    //   43: aload_0
    //   44: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   47: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   50: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: ldc_w 1208
    //   56: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: aload_1
    //   60: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   63: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   72: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   75: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   78: astore_1
    //   79: aload_1
    //   80: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   83: getstatic 68	f:jdField_a_of_type_JavaxNetSslHostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   86: invokevirtual 199	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   89: aload_1
    //   90: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   93: ldc -55
    //   95: ldc -53
    //   97: ldc -51
    //   99: ldc -49
    //   101: ldc -47
    //   103: invokestatic 212	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   106: invokevirtual 216	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   109: aload_1
    //   110: astore 11
    //   112: aload_1
    //   113: astore 10
    //   115: aload_1
    //   116: ldc_w 486
    //   119: invokevirtual 489	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   122: aload_1
    //   123: astore 11
    //   125: aload_1
    //   126: astore 10
    //   128: aload_1
    //   129: iconst_1
    //   130: invokevirtual 493	java/net/HttpURLConnection:setDoInput	(Z)V
    //   133: aload_1
    //   134: astore 11
    //   136: aload_1
    //   137: astore 10
    //   139: aload_1
    //   140: iconst_1
    //   141: invokevirtual 496	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   144: aload_1
    //   145: astore 11
    //   147: aload_1
    //   148: astore 10
    //   150: new 389	java/util/ArrayList
    //   153: dup
    //   154: invokespecial 390	java/util/ArrayList:<init>	()V
    //   157: astore 12
    //   159: aload_1
    //   160: astore 11
    //   162: aload_1
    //   163: astore 10
    //   165: aload 12
    //   167: new 498	org/apache/http/message/BasicNameValuePair
    //   170: dup
    //   171: ldc_w 1148
    //   174: aload_2
    //   175: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   178: invokeinterface 393 2 0
    //   183: pop
    //   184: aload_1
    //   185: astore 11
    //   187: aload_1
    //   188: astore 10
    //   190: aload 12
    //   192: new 498	org/apache/http/message/BasicNameValuePair
    //   195: dup
    //   196: ldc_w 1210
    //   199: aload_3
    //   200: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   203: invokeinterface 393 2 0
    //   208: pop
    //   209: aload 4
    //   211: ifnull +397 -> 608
    //   214: aload_1
    //   215: astore 11
    //   217: aload_1
    //   218: astore 10
    //   220: aload 12
    //   222: new 498	org/apache/http/message/BasicNameValuePair
    //   225: dup
    //   226: ldc_w 505
    //   229: aload 4
    //   231: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   234: invokeinterface 393 2 0
    //   239: pop
    //   240: aload 6
    //   242: ifnull +29 -> 271
    //   245: aload_1
    //   246: astore 11
    //   248: aload_1
    //   249: astore 10
    //   251: aload 12
    //   253: new 498	org/apache/http/message/BasicNameValuePair
    //   256: dup
    //   257: ldc_w 1212
    //   260: aload 6
    //   262: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   265: invokeinterface 393 2 0
    //   270: pop
    //   271: aload_1
    //   272: astore 11
    //   274: aload_1
    //   275: astore 10
    //   277: aload 12
    //   279: new 498	org/apache/http/message/BasicNameValuePair
    //   282: dup
    //   283: ldc_w 1214
    //   286: iload 8
    //   288: invokestatic 1018	java/lang/String:valueOf	(Z)Ljava/lang/String;
    //   291: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   294: invokeinterface 393 2 0
    //   299: pop
    //   300: aload_1
    //   301: astore 11
    //   303: aload_1
    //   304: astore 10
    //   306: aload 12
    //   308: new 498	org/apache/http/message/BasicNameValuePair
    //   311: dup
    //   312: ldc_w 1146
    //   315: aload 7
    //   317: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   320: invokeinterface 393 2 0
    //   325: pop
    //   326: aload_1
    //   327: astore 11
    //   329: aload_1
    //   330: astore 10
    //   332: aload_1
    //   333: invokevirtual 509	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   336: astore_2
    //   337: aload_1
    //   338: astore 11
    //   340: aload_1
    //   341: astore 10
    //   343: new 511	java/io/BufferedWriter
    //   346: dup
    //   347: new 513	java/io/OutputStreamWriter
    //   350: dup
    //   351: aload_2
    //   352: ldc_w 515
    //   355: invokespecial 518	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   358: invokespecial 521	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   361: astore_3
    //   362: aload_1
    //   363: astore 11
    //   365: aload_1
    //   366: astore 10
    //   368: aload_3
    //   369: aload 12
    //   371: invokestatic 441	f:b	(Ljava/util/List;)Ljava/lang/String;
    //   374: invokevirtual 524	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   377: aload_1
    //   378: astore 11
    //   380: aload_1
    //   381: astore 10
    //   383: aload_3
    //   384: invokevirtual 525	java/io/BufferedWriter:close	()V
    //   387: aload_1
    //   388: astore 11
    //   390: aload_1
    //   391: astore 10
    //   393: aload_2
    //   394: invokevirtual 528	java/io/OutputStream:close	()V
    //   397: aload_1
    //   398: astore 11
    //   400: aload_1
    //   401: astore 10
    //   403: aload_1
    //   404: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   407: istore 9
    //   409: iload 9
    //   411: sipush 200
    //   414: if_icmpeq +228 -> 642
    //   417: aload_1
    //   418: astore 11
    //   420: aload_1
    //   421: astore 10
    //   423: new 281	com/arrownock/exception/ArrownockException
    //   426: dup
    //   427: new 226	org/json/JSONObject
    //   430: dup
    //   431: new 228	java/io/BufferedInputStream
    //   434: dup
    //   435: aload_1
    //   436: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   439: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   442: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   445: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   448: ldc_w 305
    //   451: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   454: ldc_w 307
    //   457: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   460: sipush 2108
    //   463: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   466: athrow
    //   467: astore_2
    //   468: aload_1
    //   469: astore 11
    //   471: aload_1
    //   472: astore 10
    //   474: new 281	com/arrownock/exception/ArrownockException
    //   477: dup
    //   478: aload_2
    //   479: invokevirtual 284	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   482: sipush 2108
    //   485: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   488: athrow
    //   489: astore_2
    //   490: aload_1
    //   491: astore 11
    //   493: aload_1
    //   494: astore 10
    //   496: new 281	com/arrownock/exception/ArrownockException
    //   499: dup
    //   500: aload_2
    //   501: invokevirtual 288	java/io/IOException:getMessage	()Ljava/lang/String;
    //   504: sipush 2108
    //   507: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   510: athrow
    //   511: astore_1
    //   512: aload 11
    //   514: astore 10
    //   516: aload_1
    //   517: instanceof 281
    //   520: ifeq +131 -> 651
    //   523: aload 11
    //   525: astore 10
    //   527: aload_1
    //   528: checkcast 281	com/arrownock/exception/ArrownockException
    //   531: athrow
    //   532: astore_2
    //   533: aload 10
    //   535: astore_1
    //   536: aload_1
    //   537: ifnull +7 -> 544
    //   540: aload_1
    //   541: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   544: aload_2
    //   545: athrow
    //   546: aload 12
    //   548: astore 11
    //   550: aload 13
    //   552: astore 10
    //   554: new 164	java/net/URL
    //   557: dup
    //   558: new 166	java/lang/StringBuilder
    //   561: dup
    //   562: ldc_w 298
    //   565: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   568: aload_0
    //   569: aload_0
    //   570: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   573: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   576: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   579: ldc_w 1208
    //   582: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   585: aload_1
    //   586: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   589: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   592: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   595: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   598: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   601: checkcast 218	java/net/HttpURLConnection
    //   604: astore_1
    //   605: goto -496 -> 109
    //   608: aload 5
    //   610: ifnull -370 -> 240
    //   613: aload_1
    //   614: astore 11
    //   616: aload_1
    //   617: astore 10
    //   619: aload 12
    //   621: new 498	org/apache/http/message/BasicNameValuePair
    //   624: dup
    //   625: ldc_w 322
    //   628: aload 5
    //   630: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   633: invokeinterface 393 2 0
    //   638: pop
    //   639: goto -399 -> 240
    //   642: aload_1
    //   643: ifnull +7 -> 650
    //   646: aload_1
    //   647: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   650: return
    //   651: aload 11
    //   653: astore 10
    //   655: new 281	com/arrownock/exception/ArrownockException
    //   658: dup
    //   659: aload_1
    //   660: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   663: sipush 2108
    //   666: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   669: athrow
    //   670: astore_2
    //   671: goto -135 -> 536
    //   674: astore_2
    //   675: aload_1
    //   676: astore 11
    //   678: aload_2
    //   679: astore_1
    //   680: goto -168 -> 512
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	683	0	this	f
    //   0	683	1	paramString1	String
    //   0	683	2	paramString2	String
    //   0	683	3	paramString3	String
    //   0	683	4	paramString4	String
    //   0	683	5	paramString5	String
    //   0	683	6	paramString6	String
    //   0	683	7	paramString7	String
    //   0	683	8	paramBoolean	boolean
    //   407	8	9	i	int
    //   12	642	10	localObject1	Object
    //   8	669	11	localObject2	Object
    //   4	616	12	localArrayList	java.util.ArrayList
    //   1	550	13	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   423	467	467	org/json/JSONException
    //   150	159	489	java/io/IOException
    //   165	184	489	java/io/IOException
    //   190	209	489	java/io/IOException
    //   220	240	489	java/io/IOException
    //   251	271	489	java/io/IOException
    //   277	300	489	java/io/IOException
    //   306	326	489	java/io/IOException
    //   332	337	489	java/io/IOException
    //   343	362	489	java/io/IOException
    //   368	377	489	java/io/IOException
    //   383	387	489	java/io/IOException
    //   393	397	489	java/io/IOException
    //   403	409	489	java/io/IOException
    //   423	467	489	java/io/IOException
    //   474	489	489	java/io/IOException
    //   619	639	489	java/io/IOException
    //   14	21	511	java/lang/Exception
    //   29	79	511	java/lang/Exception
    //   115	122	511	java/lang/Exception
    //   128	133	511	java/lang/Exception
    //   139	144	511	java/lang/Exception
    //   150	159	511	java/lang/Exception
    //   165	184	511	java/lang/Exception
    //   190	209	511	java/lang/Exception
    //   220	240	511	java/lang/Exception
    //   251	271	511	java/lang/Exception
    //   277	300	511	java/lang/Exception
    //   306	326	511	java/lang/Exception
    //   332	337	511	java/lang/Exception
    //   343	362	511	java/lang/Exception
    //   368	377	511	java/lang/Exception
    //   383	387	511	java/lang/Exception
    //   393	397	511	java/lang/Exception
    //   403	409	511	java/lang/Exception
    //   423	467	511	java/lang/Exception
    //   474	489	511	java/lang/Exception
    //   496	511	511	java/lang/Exception
    //   554	605	511	java/lang/Exception
    //   619	639	511	java/lang/Exception
    //   14	21	532	finally
    //   29	79	532	finally
    //   115	122	532	finally
    //   128	133	532	finally
    //   139	144	532	finally
    //   150	159	532	finally
    //   165	184	532	finally
    //   190	209	532	finally
    //   220	240	532	finally
    //   251	271	532	finally
    //   277	300	532	finally
    //   306	326	532	finally
    //   332	337	532	finally
    //   343	362	532	finally
    //   368	377	532	finally
    //   383	387	532	finally
    //   393	397	532	finally
    //   403	409	532	finally
    //   423	467	532	finally
    //   474	489	532	finally
    //   496	511	532	finally
    //   516	523	532	finally
    //   527	532	532	finally
    //   554	605	532	finally
    //   619	639	532	finally
    //   655	670	532	finally
    //   79	109	670	finally
    //   79	109	674	java/lang/Exception
  }
  
  /* Error */
  final void b(String paramString1, Set<String> paramSet, String paramString2, int paramInt, long paramLong, boolean paramBoolean, IAnIMHistoryCallback paramIAnIMHistoryCallback)
    throws ArrownockException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: new 449	java/lang/StringBuffer
    //   6: dup
    //   7: invokespecial 450	java/lang/StringBuffer:<init>	()V
    //   10: astore 10
    //   12: aload 10
    //   14: aload_0
    //   15: aload_0
    //   16: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   19: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   22: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   25: pop
    //   26: aload 10
    //   28: new 166	java/lang/StringBuilder
    //   31: dup
    //   32: ldc_w 1124
    //   35: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   38: aload_1
    //   39: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   42: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   51: pop
    //   52: aload 10
    //   54: ldc_w 1216
    //   57: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   60: pop
    //   61: aload_2
    //   62: ifnonnull +465 -> 527
    //   65: aload 10
    //   67: ldc_w 1128
    //   70: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   73: pop
    //   74: aload 10
    //   76: ldc_w 1130
    //   79: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   82: pop
    //   83: aload 10
    //   85: aload_3
    //   86: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   89: pop
    //   90: iload 4
    //   92: ifle +27 -> 119
    //   95: aload 10
    //   97: new 166	java/lang/StringBuilder
    //   100: dup
    //   101: ldc_w 1132
    //   104: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   107: iload 4
    //   109: invokevirtual 810	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   112: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   118: pop
    //   119: lload 5
    //   121: lconst_0
    //   122: lcmp
    //   123: ifle +27 -> 150
    //   126: aload 10
    //   128: new 166	java/lang/StringBuilder
    //   131: dup
    //   132: ldc_w 1134
    //   135: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   138: lload 5
    //   140: invokevirtual 807	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   143: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   146: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   149: pop
    //   150: iload 7
    //   152: ifeq +12 -> 164
    //   155: aload 10
    //   157: ldc_w 1136
    //   160: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   163: pop
    //   164: aload 10
    //   166: ldc_w 1138
    //   169: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   172: pop
    //   173: aload_0
    //   174: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   177: ifeq +402 -> 579
    //   180: new 164	java/net/URL
    //   183: dup
    //   184: new 166	java/lang/StringBuilder
    //   187: dup
    //   188: ldc -88
    //   190: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   193: aload 10
    //   195: invokevirtual 463	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   198: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   204: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   207: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   210: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   213: astore_1
    //   214: aload_1
    //   215: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   218: getstatic 68	f:jdField_a_of_type_JavaxNetSslHostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   221: invokevirtual 199	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   224: aload_1
    //   225: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   228: ldc -55
    //   230: ldc -53
    //   232: ldc -51
    //   234: ldc -49
    //   236: ldc -47
    //   238: invokestatic 212	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   241: invokevirtual 216	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   244: aload_1
    //   245: invokevirtual 221	java/net/HttpURLConnection:connect	()V
    //   248: aload_1
    //   249: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   252: istore 4
    //   254: iload 4
    //   256: sipush 200
    //   259: if_icmpne +558 -> 817
    //   262: new 226	org/json/JSONObject
    //   265: dup
    //   266: new 228	java/io/BufferedInputStream
    //   269: dup
    //   270: aload_1
    //   271: invokevirtual 232	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   274: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   277: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   280: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   283: astore_2
    //   284: aload_2
    //   285: ldc_w 305
    //   288: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   291: astore 10
    //   293: aload_2
    //   294: ldc -15
    //   296: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   299: astore_2
    //   300: aload_2
    //   301: ifnull +502 -> 803
    //   304: aload_2
    //   305: ldc_w 1140
    //   308: invokevirtual 251	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   311: astore 11
    //   313: new 389	java/util/ArrayList
    //   316: dup
    //   317: invokespecial 390	java/util/ArrayList:<init>	()V
    //   320: astore 12
    //   322: iconst_0
    //   323: istore 4
    //   325: iload 4
    //   327: aload 11
    //   329: invokevirtual 254	org/json/JSONArray:length	()I
    //   332: if_icmpge +411 -> 743
    //   335: aload 11
    //   337: iload 4
    //   339: invokevirtual 257	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   342: astore 9
    //   344: aload 9
    //   346: ifnull +551 -> 897
    //   349: aload 9
    //   351: ldc_w 1142
    //   354: invokevirtual 1144	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   357: astore 16
    //   359: aload 9
    //   361: ldc_w 1146
    //   364: invokevirtual 1144	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   367: astore 13
    //   369: aload 9
    //   371: ldc_w 1148
    //   374: invokevirtual 1144	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   377: astore 14
    //   379: aload 9
    //   381: ldc_w 307
    //   384: invokevirtual 1144	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   387: astore 15
    //   389: aload 9
    //   391: ldc_w 1150
    //   394: invokevirtual 1153	org/json/JSONObject:optLong	(Ljava/lang/String;)J
    //   397: lstore 5
    //   399: aload 9
    //   401: ldc_w 1155
    //   404: invokevirtual 1158	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   407: astore 17
    //   409: aconst_null
    //   410: astore_2
    //   411: aload 17
    //   413: ifnull +204 -> 617
    //   416: aload 17
    //   418: invokevirtual 261	org/json/JSONObject:keys	()Ljava/util/Iterator;
    //   421: astore 18
    //   423: new 36	java/util/HashMap
    //   426: dup
    //   427: invokespecial 39	java/util/HashMap:<init>	()V
    //   430: astore_3
    //   431: aload_3
    //   432: astore_2
    //   433: aload 18
    //   435: invokeinterface 267 1 0
    //   440: ifeq +177 -> 617
    //   443: aload 18
    //   445: invokeinterface 271 1 0
    //   450: checkcast 142	java/lang/String
    //   453: astore_2
    //   454: aload_3
    //   455: aload_2
    //   456: aload 17
    //   458: aload_2
    //   459: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   462: invokeinterface 55 3 0
    //   467: pop
    //   468: goto -37 -> 431
    //   471: astore_2
    //   472: new 281	com/arrownock/exception/ArrownockException
    //   475: dup
    //   476: aload_2
    //   477: invokevirtual 284	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   480: sipush 2116
    //   483: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   486: athrow
    //   487: astore_2
    //   488: new 281	com/arrownock/exception/ArrownockException
    //   491: dup
    //   492: aload_2
    //   493: invokevirtual 288	java/io/IOException:getMessage	()Ljava/lang/String;
    //   496: sipush 2116
    //   499: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   502: athrow
    //   503: astore_2
    //   504: aload_2
    //   505: instanceof 281
    //   508: ifeq +353 -> 861
    //   511: aload_2
    //   512: checkcast 281	com/arrownock/exception/ArrownockException
    //   515: athrow
    //   516: astore_2
    //   517: aload_1
    //   518: ifnull +7 -> 525
    //   521: aload_1
    //   522: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   525: aload_2
    //   526: athrow
    //   527: aload 10
    //   529: ldc_w 1218
    //   532: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   535: pop
    //   536: aload_2
    //   537: invokeinterface 1219 1 0
    //   542: astore_1
    //   543: aload_1
    //   544: invokeinterface 267 1 0
    //   549: ifeq -475 -> 74
    //   552: aload 10
    //   554: aload_1
    //   555: invokeinterface 271 1 0
    //   560: checkcast 142	java/lang/String
    //   563: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   566: pop
    //   567: aload 10
    //   569: ldc_w 681
    //   572: invokevirtual 462	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   575: pop
    //   576: goto -33 -> 543
    //   579: new 164	java/net/URL
    //   582: dup
    //   583: new 166	java/lang/StringBuilder
    //   586: dup
    //   587: ldc_w 298
    //   590: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   593: aload 10
    //   595: invokevirtual 463	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   598: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   601: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   604: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   607: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   610: checkcast 218	java/net/HttpURLConnection
    //   613: astore_1
    //   614: goto -370 -> 244
    //   617: ldc_w 1162
    //   620: aload 16
    //   622: invokevirtual 409	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   625: ifeq +36 -> 661
    //   628: aload 12
    //   630: new 1164	com/arrownock/im/AnIMMessage
    //   633: dup
    //   634: getstatic 1170	com/arrownock/im/AnIMMessageType:AnIMTextMessage	Lcom/arrownock/im/AnIMMessageType;
    //   637: aload 13
    //   639: aconst_null
    //   640: aload 15
    //   642: aconst_null
    //   643: aconst_null
    //   644: aload 14
    //   646: lload 5
    //   648: aload_2
    //   649: invokespecial 1173	com/arrownock/im/AnIMMessage:<init>	(Lcom/arrownock/im/AnIMMessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    //   652: invokeinterface 393 2 0
    //   657: pop
    //   658: goto +239 -> 897
    //   661: ldc_w 1175
    //   664: aload 16
    //   666: invokevirtual 409	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   669: ifeq +228 -> 897
    //   672: aload 9
    //   674: ldc_w 1177
    //   677: invokevirtual 1144	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   680: astore 16
    //   682: aconst_null
    //   683: astore 9
    //   685: aload 9
    //   687: astore_3
    //   688: aload 15
    //   690: ifnull +20 -> 710
    //   693: aload 9
    //   695: astore_3
    //   696: aload 15
    //   698: invokevirtual 146	java/lang/String:length	()I
    //   701: ifle +9 -> 710
    //   704: aload 15
    //   706: invokestatic 1181	az:a	(Ljava/lang/String;)[B
    //   709: astore_3
    //   710: aload 12
    //   712: new 1164	com/arrownock/im/AnIMMessage
    //   715: dup
    //   716: getstatic 1184	com/arrownock/im/AnIMMessageType:AnIMBinaryMessage	Lcom/arrownock/im/AnIMMessageType;
    //   719: aload 13
    //   721: aconst_null
    //   722: aconst_null
    //   723: aload_3
    //   724: aload 16
    //   726: aload 14
    //   728: lload 5
    //   730: aload_2
    //   731: invokespecial 1173	com/arrownock/im/AnIMMessage:<init>	(Lcom/arrownock/im/AnIMMessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    //   734: invokeinterface 393 2 0
    //   739: pop
    //   740: goto +157 -> 897
    //   743: aload 8
    //   745: ifnull +36 -> 781
    //   748: aload 10
    //   750: ifnull +40 -> 790
    //   753: aload 10
    //   755: ldc_w 1186
    //   758: invokevirtual 1189	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   761: ifeq +29 -> 790
    //   764: aload 8
    //   766: aload 12
    //   768: aload 10
    //   770: ldc_w 1186
    //   773: invokevirtual 756	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   776: invokeinterface 1195 3 0
    //   781: aload_1
    //   782: ifnull +7 -> 789
    //   785: aload_1
    //   786: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   789: return
    //   790: aload 8
    //   792: aload 12
    //   794: iconst_m1
    //   795: invokeinterface 1195 3 0
    //   800: goto -19 -> 781
    //   803: new 281	com/arrownock/exception/ArrownockException
    //   806: dup
    //   807: ldc_w 1221
    //   810: sipush 2116
    //   813: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   816: athrow
    //   817: new 281	com/arrownock/exception/ArrownockException
    //   820: dup
    //   821: new 226	org/json/JSONObject
    //   824: dup
    //   825: new 228	java/io/BufferedInputStream
    //   828: dup
    //   829: aload_1
    //   830: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   833: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   836: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   839: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   842: ldc_w 305
    //   845: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   848: ldc_w 307
    //   851: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   854: sipush 2116
    //   857: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   860: athrow
    //   861: new 281	com/arrownock/exception/ArrownockException
    //   864: dup
    //   865: aload_2
    //   866: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   869: sipush 2116
    //   872: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   875: athrow
    //   876: astore_2
    //   877: aconst_null
    //   878: astore_1
    //   879: goto -362 -> 517
    //   882: astore_2
    //   883: goto -366 -> 517
    //   886: astore_2
    //   887: goto -383 -> 504
    //   890: astore_2
    //   891: aload 9
    //   893: astore_1
    //   894: goto -390 -> 504
    //   897: iload 4
    //   899: iconst_1
    //   900: iadd
    //   901: istore 4
    //   903: goto -578 -> 325
    //   906: astore_2
    //   907: goto -390 -> 517
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	910	0	this	f
    //   0	910	1	paramString1	String
    //   0	910	2	paramSet	Set<String>
    //   0	910	3	paramString2	String
    //   0	910	4	paramInt	int
    //   0	910	5	paramLong	long
    //   0	910	7	paramBoolean	boolean
    //   0	910	8	paramIAnIMHistoryCallback	IAnIMHistoryCallback
    //   1	891	9	localJSONObject1	org.json.JSONObject
    //   10	759	10	localObject	Object
    //   311	25	11	localJSONArray	org.json.JSONArray
    //   320	473	12	localArrayList	java.util.ArrayList
    //   367	353	13	str1	String
    //   377	350	14	str2	String
    //   387	318	15	str3	String
    //   357	368	16	str4	String
    //   407	50	17	localJSONObject2	org.json.JSONObject
    //   421	23	18	localIterator	Iterator
    // Exception table:
    //   from	to	target	type
    //   262	300	471	org/json/JSONException
    //   304	322	471	org/json/JSONException
    //   325	344	471	org/json/JSONException
    //   349	409	471	org/json/JSONException
    //   416	431	471	org/json/JSONException
    //   433	468	471	org/json/JSONException
    //   617	658	471	org/json/JSONException
    //   661	682	471	org/json/JSONException
    //   696	710	471	org/json/JSONException
    //   710	740	471	org/json/JSONException
    //   753	781	471	org/json/JSONException
    //   790	800	471	org/json/JSONException
    //   803	817	471	org/json/JSONException
    //   817	861	471	org/json/JSONException
    //   244	254	487	java/io/IOException
    //   262	300	487	java/io/IOException
    //   304	322	487	java/io/IOException
    //   325	344	487	java/io/IOException
    //   349	409	487	java/io/IOException
    //   416	431	487	java/io/IOException
    //   433	468	487	java/io/IOException
    //   472	487	487	java/io/IOException
    //   617	658	487	java/io/IOException
    //   661	682	487	java/io/IOException
    //   696	710	487	java/io/IOException
    //   710	740	487	java/io/IOException
    //   753	781	487	java/io/IOException
    //   790	800	487	java/io/IOException
    //   803	817	487	java/io/IOException
    //   817	861	487	java/io/IOException
    //   244	254	503	java/lang/Exception
    //   262	300	503	java/lang/Exception
    //   304	322	503	java/lang/Exception
    //   325	344	503	java/lang/Exception
    //   349	409	503	java/lang/Exception
    //   416	431	503	java/lang/Exception
    //   433	468	503	java/lang/Exception
    //   472	487	503	java/lang/Exception
    //   488	503	503	java/lang/Exception
    //   617	658	503	java/lang/Exception
    //   661	682	503	java/lang/Exception
    //   696	710	503	java/lang/Exception
    //   710	740	503	java/lang/Exception
    //   753	781	503	java/lang/Exception
    //   790	800	503	java/lang/Exception
    //   803	817	503	java/lang/Exception
    //   817	861	503	java/lang/Exception
    //   504	516	516	finally
    //   861	876	516	finally
    //   3	61	876	finally
    //   65	74	876	finally
    //   74	90	876	finally
    //   95	119	876	finally
    //   126	150	876	finally
    //   155	164	876	finally
    //   164	214	876	finally
    //   527	543	876	finally
    //   543	576	876	finally
    //   579	614	876	finally
    //   214	244	882	finally
    //   214	244	886	java/lang/Exception
    //   3	61	890	java/lang/Exception
    //   65	74	890	java/lang/Exception
    //   74	90	890	java/lang/Exception
    //   95	119	890	java/lang/Exception
    //   126	150	890	java/lang/Exception
    //   155	164	890	java/lang/Exception
    //   164	214	890	java/lang/Exception
    //   527	543	890	java/lang/Exception
    //   543	576	890	java/lang/Exception
    //   579	614	890	java/lang/Exception
    //   244	254	906	finally
    //   262	300	906	finally
    //   304	322	906	finally
    //   325	344	906	finally
    //   349	409	906	finally
    //   416	431	906	finally
    //   433	468	906	finally
    //   472	487	906	finally
    //   488	503	906	finally
    //   617	658	906	finally
    //   661	682	906	finally
    //   696	710	906	finally
    //   710	740	906	finally
    //   753	781	906	finally
    //   790	800	906	finally
    //   803	817	906	finally
    //   817	861	906	finally
  }
  
  public final void c(String paramString1, String paramString2)
  {
    new Thread(new q(this, paramString1, paramString2)).start();
  }
  
  /* Error */
  final void c(String paramString1, String paramString2, String paramString3)
    throws ArrownockException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aconst_null
    //   4: astore 7
    //   6: aload 7
    //   8: astore 6
    //   10: aload 8
    //   12: astore 5
    //   14: aload_0
    //   15: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   18: ifeq +411 -> 429
    //   21: aload 7
    //   23: astore 6
    //   25: aload 8
    //   27: astore 5
    //   29: new 164	java/net/URL
    //   32: dup
    //   33: new 166	java/lang/StringBuilder
    //   36: dup
    //   37: ldc -88
    //   39: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   42: aload_0
    //   43: aload_0
    //   44: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   47: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   50: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: ldc_w 1226
    //   56: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: aload_1
    //   60: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   63: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   72: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   75: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   78: astore_1
    //   79: aload_1
    //   80: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   83: getstatic 68	f:jdField_a_of_type_JavaxNetSslHostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   86: invokevirtual 199	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   89: aload_1
    //   90: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   93: ldc -55
    //   95: ldc -53
    //   97: ldc -51
    //   99: ldc -49
    //   101: ldc -47
    //   103: invokestatic 212	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   106: invokevirtual 216	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   109: aload_1
    //   110: astore 6
    //   112: aload_1
    //   113: astore 5
    //   115: aload_1
    //   116: ldc_w 486
    //   119: invokevirtual 489	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   122: aload_1
    //   123: astore 6
    //   125: aload_1
    //   126: astore 5
    //   128: aload_1
    //   129: iconst_1
    //   130: invokevirtual 493	java/net/HttpURLConnection:setDoInput	(Z)V
    //   133: aload_1
    //   134: astore 6
    //   136: aload_1
    //   137: astore 5
    //   139: aload_1
    //   140: iconst_1
    //   141: invokevirtual 496	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   144: aload_1
    //   145: astore 6
    //   147: aload_1
    //   148: astore 5
    //   150: new 389	java/util/ArrayList
    //   153: dup
    //   154: invokespecial 390	java/util/ArrayList:<init>	()V
    //   157: astore 7
    //   159: aload_1
    //   160: astore 6
    //   162: aload_1
    //   163: astore 5
    //   165: aload 7
    //   167: new 498	org/apache/http/message/BasicNameValuePair
    //   170: dup
    //   171: ldc_w 500
    //   174: aload_2
    //   175: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   178: invokeinterface 393 2 0
    //   183: pop
    //   184: aload_1
    //   185: astore 6
    //   187: aload_1
    //   188: astore 5
    //   190: aload 7
    //   192: new 498	org/apache/http/message/BasicNameValuePair
    //   195: dup
    //   196: ldc_w 505
    //   199: aload_3
    //   200: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   203: invokeinterface 393 2 0
    //   208: pop
    //   209: aload_1
    //   210: astore 6
    //   212: aload_1
    //   213: astore 5
    //   215: aload_1
    //   216: invokevirtual 509	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   219: astore_2
    //   220: aload_1
    //   221: astore 6
    //   223: aload_1
    //   224: astore 5
    //   226: new 511	java/io/BufferedWriter
    //   229: dup
    //   230: new 513	java/io/OutputStreamWriter
    //   233: dup
    //   234: aload_2
    //   235: ldc_w 515
    //   238: invokespecial 518	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   241: invokespecial 521	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   244: astore_3
    //   245: aload_1
    //   246: astore 6
    //   248: aload_1
    //   249: astore 5
    //   251: aload_3
    //   252: aload 7
    //   254: invokestatic 441	f:b	(Ljava/util/List;)Ljava/lang/String;
    //   257: invokevirtual 524	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   260: aload_1
    //   261: astore 6
    //   263: aload_1
    //   264: astore 5
    //   266: aload_3
    //   267: invokevirtual 525	java/io/BufferedWriter:close	()V
    //   270: aload_1
    //   271: astore 6
    //   273: aload_1
    //   274: astore 5
    //   276: aload_2
    //   277: invokevirtual 528	java/io/OutputStream:close	()V
    //   280: aload_1
    //   281: astore 6
    //   283: aload_1
    //   284: astore 5
    //   286: aload_1
    //   287: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   290: istore 4
    //   292: iload 4
    //   294: sipush 200
    //   297: if_icmpeq +194 -> 491
    //   300: aload_1
    //   301: astore 6
    //   303: aload_1
    //   304: astore 5
    //   306: new 281	com/arrownock/exception/ArrownockException
    //   309: dup
    //   310: new 226	org/json/JSONObject
    //   313: dup
    //   314: new 228	java/io/BufferedInputStream
    //   317: dup
    //   318: aload_1
    //   319: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   322: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   325: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   328: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   331: ldc_w 305
    //   334: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   337: ldc_w 307
    //   340: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   343: sipush 2105
    //   346: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   349: athrow
    //   350: astore_2
    //   351: aload_1
    //   352: astore 6
    //   354: aload_1
    //   355: astore 5
    //   357: new 281	com/arrownock/exception/ArrownockException
    //   360: dup
    //   361: aload_2
    //   362: invokevirtual 284	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   365: sipush 2105
    //   368: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   371: athrow
    //   372: astore_2
    //   373: aload_1
    //   374: astore 6
    //   376: aload_1
    //   377: astore 5
    //   379: new 281	com/arrownock/exception/ArrownockException
    //   382: dup
    //   383: aload_2
    //   384: invokevirtual 288	java/io/IOException:getMessage	()Ljava/lang/String;
    //   387: sipush 2105
    //   390: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   393: athrow
    //   394: astore_1
    //   395: aload 6
    //   397: astore 5
    //   399: aload_1
    //   400: instanceof 281
    //   403: ifeq +97 -> 500
    //   406: aload 6
    //   408: astore 5
    //   410: aload_1
    //   411: checkcast 281	com/arrownock/exception/ArrownockException
    //   414: athrow
    //   415: astore_2
    //   416: aload 5
    //   418: astore_1
    //   419: aload_1
    //   420: ifnull +7 -> 427
    //   423: aload_1
    //   424: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   427: aload_2
    //   428: athrow
    //   429: aload 7
    //   431: astore 6
    //   433: aload 8
    //   435: astore 5
    //   437: new 164	java/net/URL
    //   440: dup
    //   441: new 166	java/lang/StringBuilder
    //   444: dup
    //   445: ldc_w 298
    //   448: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   451: aload_0
    //   452: aload_0
    //   453: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   456: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   459: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   462: ldc_w 1226
    //   465: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   468: aload_1
    //   469: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   472: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   475: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   478: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   481: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   484: checkcast 218	java/net/HttpURLConnection
    //   487: astore_1
    //   488: goto -379 -> 109
    //   491: aload_1
    //   492: ifnull +7 -> 499
    //   495: aload_1
    //   496: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   499: return
    //   500: aload 6
    //   502: astore 5
    //   504: new 281	com/arrownock/exception/ArrownockException
    //   507: dup
    //   508: aload_1
    //   509: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   512: sipush 2105
    //   515: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   518: athrow
    //   519: astore_2
    //   520: goto -101 -> 419
    //   523: astore_2
    //   524: aload_1
    //   525: astore 6
    //   527: aload_2
    //   528: astore_1
    //   529: goto -134 -> 395
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	532	0	this	f
    //   0	532	1	paramString1	String
    //   0	532	2	paramString2	String
    //   0	532	3	paramString3	String
    //   290	8	4	i	int
    //   12	491	5	localObject1	Object
    //   8	518	6	localObject2	Object
    //   4	426	7	localArrayList	java.util.ArrayList
    //   1	433	8	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   306	350	350	org/json/JSONException
    //   150	159	372	java/io/IOException
    //   165	184	372	java/io/IOException
    //   190	209	372	java/io/IOException
    //   215	220	372	java/io/IOException
    //   226	245	372	java/io/IOException
    //   251	260	372	java/io/IOException
    //   266	270	372	java/io/IOException
    //   276	280	372	java/io/IOException
    //   286	292	372	java/io/IOException
    //   306	350	372	java/io/IOException
    //   357	372	372	java/io/IOException
    //   14	21	394	java/lang/Exception
    //   29	79	394	java/lang/Exception
    //   115	122	394	java/lang/Exception
    //   128	133	394	java/lang/Exception
    //   139	144	394	java/lang/Exception
    //   150	159	394	java/lang/Exception
    //   165	184	394	java/lang/Exception
    //   190	209	394	java/lang/Exception
    //   215	220	394	java/lang/Exception
    //   226	245	394	java/lang/Exception
    //   251	260	394	java/lang/Exception
    //   266	270	394	java/lang/Exception
    //   276	280	394	java/lang/Exception
    //   286	292	394	java/lang/Exception
    //   306	350	394	java/lang/Exception
    //   357	372	394	java/lang/Exception
    //   379	394	394	java/lang/Exception
    //   437	488	394	java/lang/Exception
    //   14	21	415	finally
    //   29	79	415	finally
    //   115	122	415	finally
    //   128	133	415	finally
    //   139	144	415	finally
    //   150	159	415	finally
    //   165	184	415	finally
    //   190	209	415	finally
    //   215	220	415	finally
    //   226	245	415	finally
    //   251	260	415	finally
    //   266	270	415	finally
    //   276	280	415	finally
    //   286	292	415	finally
    //   306	350	415	finally
    //   357	372	415	finally
    //   379	394	415	finally
    //   399	406	415	finally
    //   410	415	415	finally
    //   437	488	415	finally
    //   504	519	415	finally
    //   79	109	519	finally
    //   79	109	523	java/lang/Exception
  }
  
  @Deprecated
  public final void c(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    new Thread(new i(this, paramString1, paramString2, paramString3, paramString4)).start();
  }
  
  @Deprecated
  public final void d(String paramString1, String paramString2)
  {
    new Thread(new u(this, paramString1, paramString2)).start();
  }
  
  @Deprecated
  public final void d(String paramString1, String paramString2, String paramString3)
  {
    new Thread(new m(this, paramString1, paramString2, paramString3)).start();
  }
  
  public final void e(String paramString1, String paramString2)
  {
    new Thread(new w(this, paramString1, paramString2)).start();
  }
  
  /* Error */
  final void e(String paramString1, String paramString2, String paramString3)
    throws ArrownockException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aconst_null
    //   4: astore 7
    //   6: aload 7
    //   8: astore 6
    //   10: aload 8
    //   12: astore 5
    //   14: aload_0
    //   15: getfield 91	f:jdField_c_of_type_Boolean	Z
    //   18: ifeq +411 -> 429
    //   21: aload 7
    //   23: astore 6
    //   25: aload 8
    //   27: astore 5
    //   29: new 164	java/net/URL
    //   32: dup
    //   33: new 166	java/lang/StringBuilder
    //   36: dup
    //   37: ldc -88
    //   39: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   42: aload_0
    //   43: aload_0
    //   44: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   47: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   50: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: ldc_w 1240
    //   56: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: aload_1
    //   60: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   63: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   72: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   75: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   78: astore_1
    //   79: aload_1
    //   80: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   83: getstatic 68	f:jdField_a_of_type_JavaxNetSslHostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   86: invokevirtual 199	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   89: aload_1
    //   90: checkcast 195	javax/net/ssl/HttpsURLConnection
    //   93: ldc -55
    //   95: ldc -53
    //   97: ldc -51
    //   99: ldc -49
    //   101: ldc -47
    //   103: invokestatic 212	at:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    //   106: invokevirtual 216	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   109: aload_1
    //   110: astore 6
    //   112: aload_1
    //   113: astore 5
    //   115: aload_1
    //   116: ldc_w 486
    //   119: invokevirtual 489	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   122: aload_1
    //   123: astore 6
    //   125: aload_1
    //   126: astore 5
    //   128: aload_1
    //   129: iconst_1
    //   130: invokevirtual 493	java/net/HttpURLConnection:setDoInput	(Z)V
    //   133: aload_1
    //   134: astore 6
    //   136: aload_1
    //   137: astore 5
    //   139: aload_1
    //   140: iconst_1
    //   141: invokevirtual 496	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   144: aload_1
    //   145: astore 6
    //   147: aload_1
    //   148: astore 5
    //   150: new 389	java/util/ArrayList
    //   153: dup
    //   154: invokespecial 390	java/util/ArrayList:<init>	()V
    //   157: astore 7
    //   159: aload_1
    //   160: astore 6
    //   162: aload_1
    //   163: astore 5
    //   165: aload 7
    //   167: new 498	org/apache/http/message/BasicNameValuePair
    //   170: dup
    //   171: ldc_w 500
    //   174: aload_2
    //   175: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   178: invokeinterface 393 2 0
    //   183: pop
    //   184: aload_1
    //   185: astore 6
    //   187: aload_1
    //   188: astore 5
    //   190: aload 7
    //   192: new 498	org/apache/http/message/BasicNameValuePair
    //   195: dup
    //   196: ldc_w 505
    //   199: aload_3
    //   200: invokespecial 503	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   203: invokeinterface 393 2 0
    //   208: pop
    //   209: aload_1
    //   210: astore 6
    //   212: aload_1
    //   213: astore 5
    //   215: aload_1
    //   216: invokevirtual 509	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   219: astore_2
    //   220: aload_1
    //   221: astore 6
    //   223: aload_1
    //   224: astore 5
    //   226: new 511	java/io/BufferedWriter
    //   229: dup
    //   230: new 513	java/io/OutputStreamWriter
    //   233: dup
    //   234: aload_2
    //   235: ldc_w 515
    //   238: invokespecial 518	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   241: invokespecial 521	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   244: astore_3
    //   245: aload_1
    //   246: astore 6
    //   248: aload_1
    //   249: astore 5
    //   251: aload_3
    //   252: aload 7
    //   254: invokestatic 441	f:b	(Ljava/util/List;)Ljava/lang/String;
    //   257: invokevirtual 524	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   260: aload_1
    //   261: astore 6
    //   263: aload_1
    //   264: astore 5
    //   266: aload_3
    //   267: invokevirtual 525	java/io/BufferedWriter:close	()V
    //   270: aload_1
    //   271: astore 6
    //   273: aload_1
    //   274: astore 5
    //   276: aload_2
    //   277: invokevirtual 528	java/io/OutputStream:close	()V
    //   280: aload_1
    //   281: astore 6
    //   283: aload_1
    //   284: astore 5
    //   286: aload_1
    //   287: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   290: istore 4
    //   292: iload 4
    //   294: sipush 200
    //   297: if_icmpeq +194 -> 491
    //   300: aload_1
    //   301: astore 6
    //   303: aload_1
    //   304: astore 5
    //   306: new 281	com/arrownock/exception/ArrownockException
    //   309: dup
    //   310: new 226	org/json/JSONObject
    //   313: dup
    //   314: new 228	java/io/BufferedInputStream
    //   317: dup
    //   318: aload_1
    //   319: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   322: invokespecial 235	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   325: invokestatic 238	f:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   328: invokespecial 239	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   331: ldc_w 305
    //   334: invokevirtual 245	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   337: ldc_w 307
    //   340: invokevirtual 311	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   343: sipush 2106
    //   346: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   349: athrow
    //   350: astore_2
    //   351: aload_1
    //   352: astore 6
    //   354: aload_1
    //   355: astore 5
    //   357: new 281	com/arrownock/exception/ArrownockException
    //   360: dup
    //   361: aload_2
    //   362: invokevirtual 284	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   365: sipush 2106
    //   368: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   371: athrow
    //   372: astore_2
    //   373: aload_1
    //   374: astore 6
    //   376: aload_1
    //   377: astore 5
    //   379: new 281	com/arrownock/exception/ArrownockException
    //   382: dup
    //   383: aload_2
    //   384: invokevirtual 288	java/io/IOException:getMessage	()Ljava/lang/String;
    //   387: sipush 2106
    //   390: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   393: athrow
    //   394: astore_1
    //   395: aload 6
    //   397: astore 5
    //   399: aload_1
    //   400: instanceof 281
    //   403: ifeq +97 -> 500
    //   406: aload 6
    //   408: astore 5
    //   410: aload_1
    //   411: checkcast 281	com/arrownock/exception/ArrownockException
    //   414: athrow
    //   415: astore_2
    //   416: aload 5
    //   418: astore_1
    //   419: aload_1
    //   420: ifnull +7 -> 427
    //   423: aload_1
    //   424: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   427: aload_2
    //   428: athrow
    //   429: aload 7
    //   431: astore 6
    //   433: aload 8
    //   435: astore 5
    //   437: new 164	java/net/URL
    //   440: dup
    //   441: new 166	java/lang/StringBuilder
    //   444: dup
    //   445: ldc_w 298
    //   448: invokespecial 171	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   451: aload_0
    //   452: aload_0
    //   453: getfield 89	f:jdField_a_of_type_AndroidContentContext	Landroid/content/Context;
    //   456: invokespecial 174	f:a	(Landroid/content/Context;)Ljava/lang/String;
    //   459: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   462: ldc_w 1240
    //   465: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   468: aload_1
    //   469: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   472: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   475: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   478: invokespecial 189	java/net/URL:<init>	(Ljava/lang/String;)V
    //   481: invokevirtual 193	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   484: checkcast 218	java/net/HttpURLConnection
    //   487: astore_1
    //   488: goto -379 -> 109
    //   491: aload_1
    //   492: ifnull +7 -> 499
    //   495: aload_1
    //   496: invokevirtual 296	java/net/HttpURLConnection:disconnect	()V
    //   499: return
    //   500: aload 6
    //   502: astore 5
    //   504: new 281	com/arrownock/exception/ArrownockException
    //   507: dup
    //   508: aload_1
    //   509: invokevirtual 312	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   512: sipush 2106
    //   515: invokespecial 287	com/arrownock/exception/ArrownockException:<init>	(Ljava/lang/String;I)V
    //   518: athrow
    //   519: astore_2
    //   520: goto -101 -> 419
    //   523: astore_2
    //   524: aload_1
    //   525: astore 6
    //   527: aload_2
    //   528: astore_1
    //   529: goto -134 -> 395
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	532	0	this	f
    //   0	532	1	paramString1	String
    //   0	532	2	paramString2	String
    //   0	532	3	paramString3	String
    //   290	8	4	i	int
    //   12	491	5	localObject1	Object
    //   8	518	6	localObject2	Object
    //   4	426	7	localArrayList	java.util.ArrayList
    //   1	433	8	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   306	350	350	org/json/JSONException
    //   150	159	372	java/io/IOException
    //   165	184	372	java/io/IOException
    //   190	209	372	java/io/IOException
    //   215	220	372	java/io/IOException
    //   226	245	372	java/io/IOException
    //   251	260	372	java/io/IOException
    //   266	270	372	java/io/IOException
    //   276	280	372	java/io/IOException
    //   286	292	372	java/io/IOException
    //   306	350	372	java/io/IOException
    //   357	372	372	java/io/IOException
    //   14	21	394	java/lang/Exception
    //   29	79	394	java/lang/Exception
    //   115	122	394	java/lang/Exception
    //   128	133	394	java/lang/Exception
    //   139	144	394	java/lang/Exception
    //   150	159	394	java/lang/Exception
    //   165	184	394	java/lang/Exception
    //   190	209	394	java/lang/Exception
    //   215	220	394	java/lang/Exception
    //   226	245	394	java/lang/Exception
    //   251	260	394	java/lang/Exception
    //   266	270	394	java/lang/Exception
    //   276	280	394	java/lang/Exception
    //   286	292	394	java/lang/Exception
    //   306	350	394	java/lang/Exception
    //   357	372	394	java/lang/Exception
    //   379	394	394	java/lang/Exception
    //   437	488	394	java/lang/Exception
    //   14	21	415	finally
    //   29	79	415	finally
    //   115	122	415	finally
    //   128	133	415	finally
    //   139	144	415	finally
    //   150	159	415	finally
    //   165	184	415	finally
    //   190	209	415	finally
    //   215	220	415	finally
    //   226	245	415	finally
    //   251	260	415	finally
    //   266	270	415	finally
    //   276	280	415	finally
    //   286	292	415	finally
    //   306	350	415	finally
    //   357	372	415	finally
    //   379	394	415	finally
    //   399	406	415	finally
    //   410	415	415	finally
    //   437	488	415	finally
    //   504	519	415	finally
    //   79	109	519	finally
    //   79	109	523	java/lang/Exception
  }
  
  @Deprecated
  public final void f(String paramString1, String paramString2)
  {
    new Thread(new z(this, paramString1, paramString2)).start();
  }
  
  @Deprecated
  public final void g(String paramString1, String paramString2)
  {
    new Thread(new ab(this, paramString1, paramString2)).start();
  }
  
  @Deprecated
  public final void h(String paramString1, String paramString2)
  {
    new Thread(new ae(this, paramString1, paramString2)).start();
  }
  
  public final void i(String paramString1, String paramString2)
  {
    new Thread(new ah(this, paramString1, paramString2)).start();
  }
  
  public final void j(String paramString1, String paramString2)
  {
    new Thread(new ai(this, paramString1, paramString2)).start();
  }
  
  @Deprecated
  public final void k(String paramString1, String paramString2)
  {
    new Thread(new al(this, paramString1, paramString2)).start();
  }
}
