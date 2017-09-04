package org.apache.cordova;

import android.app.Activity;
import android.content.ContentResolver;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.Log;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class FileTransfer
  extends CordovaPlugin
{
  public static int ABORTED_ERR = 0;
  private static final String BOUNDARY = "+++++";
  public static int CONNECTION_ERR = 0;
  private static final HostnameVerifier DO_NOT_VERIFY = new HostnameVerifier()
  {
    public boolean verify(String paramAnonymousString, SSLSession paramAnonymousSSLSession)
    {
      return true;
    }
  };
  public static int FILE_NOT_FOUND_ERR = 1;
  public static int INVALID_URL_ERR = 2;
  private static final String LINE_END = "\r\n";
  private static final String LINE_START = "--";
  private static final String LOG_TAG = "FileTransfer";
  private static final int MAX_BUFFER_SIZE = 16384;
  private static HashMap<String, RequestContext> activeRequests;
  private static final TrustManager[] trustAllCerts = { new X509TrustManager()
  {
    public void checkClientTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
      throws CertificateException
    {}
    
    public void checkServerTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
      throws CertificateException
    {}
    
    public X509Certificate[] getAcceptedIssuers()
    {
      return new X509Certificate[0];
    }
  } };
  
  static
  {
    CONNECTION_ERR = 3;
    ABORTED_ERR = 4;
    activeRequests = new HashMap();
  }
  
  public FileTransfer() {}
  
  private void abort(final String paramString)
  {
    synchronized (activeRequests)
    {
      paramString = (RequestContext)activeRequests.remove(paramString);
      if (paramString != null)
      {
        ??? = targetFile;
        if (??? != null) {
          ((File)???).delete();
        }
        ??? = createFileTransferError(ABORTED_ERR, source, target, null, Integer.valueOf(-1));
      }
    }
  }
  
  private static void addHeadersToRequest(URLConnection paramURLConnection, JSONObject paramJSONObject)
  {
    try
    {
      Iterator localIterator = paramJSONObject.keys();
      while (localIterator.hasNext())
      {
        String str = localIterator.next().toString();
        JSONArray localJSONArray2 = paramJSONObject.optJSONArray(str);
        JSONArray localJSONArray1 = localJSONArray2;
        if (localJSONArray2 == null)
        {
          localJSONArray1 = new JSONArray();
          localJSONArray1.put(paramJSONObject.getString(str));
        }
        paramURLConnection.setRequestProperty(str, localJSONArray1.getString(0));
        int i = 1;
        while (i < localJSONArray1.length())
        {
          paramURLConnection.addRequestProperty(str, localJSONArray1.getString(i));
          i += 1;
        }
      }
      return;
    }
    catch (JSONException paramURLConnection) {}
  }
  
  private static JSONObject createFileTransferError(int paramInt, String paramString1, String paramString2, String paramString3, Integer paramInteger)
  {
    Object localObject = null;
    try
    {
      localJSONObject = new JSONObject();
      Log.e("FileTransfer", paramString1.getMessage(), paramString1);
    }
    catch (JSONException paramString1)
    {
      try
      {
        localJSONObject.put("code", paramInt);
        localJSONObject.put("source", paramString1);
        localJSONObject.put("target", paramString2);
        if (paramString3 != null) {
          localJSONObject.put("body", paramString3);
        }
        if (paramInteger != null) {
          localJSONObject.put("http_status", paramInteger);
        }
        return localJSONObject;
      }
      catch (JSONException paramString1)
      {
        for (;;)
        {
          JSONObject localJSONObject;
          paramString2 = localJSONObject;
        }
      }
      paramString1 = paramString1;
      paramString2 = localObject;
    }
    return paramString2;
  }
  
  private static JSONObject createFileTransferError(int paramInt, String paramString1, String paramString2, URLConnection paramURLConnection)
  {
    int m = 0;
    int k = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject2 = null;
    Object localObject1 = localObject2;
    int j = m;
    int i;
    if (paramURLConnection != null)
    {
      i = k;
      localObject1 = localObject2;
      j = m;
      try
      {
        if ((paramURLConnection instanceof HttpURLConnection))
        {
          i = k;
          k = ((HttpURLConnection)paramURLConnection).getResponseCode();
          i = k;
          paramURLConnection = ((HttpURLConnection)paramURLConnection).getErrorStream();
          localObject1 = localObject2;
          j = k;
          if (paramURLConnection != null)
          {
            i = k;
            BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramURLConnection, "UTF-8"));
            i = k;
            paramURLConnection = localBufferedReader.readLine();
            while (paramURLConnection != null)
            {
              i = k;
              localStringBuilder.append(paramURLConnection);
              i = k;
              localObject1 = localBufferedReader.readLine();
              paramURLConnection = (URLConnection)localObject1;
              if (localObject1 != null)
              {
                i = k;
                localStringBuilder.append('\n');
                paramURLConnection = (URLConnection)localObject1;
              }
            }
          }
        }
        return createFileTransferError(paramInt, paramString1, paramString2, (String)localObject1, Integer.valueOf(j));
      }
      catch (IOException paramURLConnection)
      {
        Log.w("FileTransfer", "Error getting HTTP status code from connection.", paramURLConnection);
        j = i;
        localObject1 = localObject2;
      }
    }
    for (;;)
    {
      i = k;
      localObject1 = localStringBuilder.toString();
      j = k;
    }
  }
  
  private void download(final String paramString1, final String paramString2, final JSONArray paramJSONArray, CallbackContext arg4)
    throws JSONException
  {
    Log.d("FileTransfer", "download " + paramString1 + " to " + paramString2);
    final boolean bool1 = paramJSONArray.optBoolean(2);
    final String str = paramJSONArray.getString(3);
    paramJSONArray = paramJSONArray.optJSONObject(4);
    final URL localURL;
    final boolean bool2;
    try
    {
      localURL = new URL(paramString1);
      bool2 = localURL.getProtocol().equals("https");
      if (!Config.isUrlWhiteListed(paramString1))
      {
        Log.w("FileTransfer", "Source URL is not in white list: '" + paramString1 + "'");
        paramString1 = createFileTransferError(CONNECTION_ERR, paramString1, paramString2, null, Integer.valueOf(401));
        ???.sendPluginResult(new PluginResult(PluginResult.Status.IO_EXCEPTION, paramString1));
        return;
      }
    }
    catch (MalformedURLException paramJSONArray)
    {
      paramString1 = createFileTransferError(INVALID_URL_ERR, paramString1, paramString2, null, Integer.valueOf(0));
      Log.e("FileTransfer", paramString1.toString(), paramJSONArray);
      ???.sendPluginResult(new PluginResult(PluginResult.Status.IO_EXCEPTION, paramString1));
      return;
    }
    final RequestContext localRequestContext = new RequestContext(paramString1, paramString2, ???);
    synchronized (activeRequests)
    {
      activeRequests.put(str, localRequestContext);
      cordova.getThreadPool().execute(new Runnable()
      {
        /* Error */
        public void run()
        {
          // Byte code:
          //   0: aload_0
          //   1: getfield 32	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   4: getfield 64	org/apache/cordova/FileTransfer$RequestContext:aborted	Z
          //   7: ifeq +4 -> 11
          //   10: return
          //   11: aconst_null
          //   12: astore 28
          //   14: aconst_null
          //   15: astore 30
          //   17: aconst_null
          //   18: astore 32
          //   20: aconst_null
          //   21: astore 33
          //   23: aconst_null
          //   24: astore 4
          //   26: aconst_null
          //   27: astore 34
          //   29: aconst_null
          //   30: astore 35
          //   32: aconst_null
          //   33: astore 36
          //   35: aconst_null
          //   36: astore 37
          //   38: aconst_null
          //   39: astore 38
          //   41: aconst_null
          //   42: astore 7
          //   44: aconst_null
          //   45: astore 39
          //   47: aconst_null
          //   48: astore 40
          //   50: aconst_null
          //   51: astore 41
          //   53: aconst_null
          //   54: astore 42
          //   56: aconst_null
          //   57: astore 43
          //   59: aconst_null
          //   60: astore 8
          //   62: aconst_null
          //   63: astore 21
          //   65: aconst_null
          //   66: astore 24
          //   68: aconst_null
          //   69: astore 25
          //   71: aconst_null
          //   72: astore 10
          //   74: aconst_null
          //   75: astore 20
          //   77: aconst_null
          //   78: astore 31
          //   80: aconst_null
          //   81: astore 29
          //   83: aload 4
          //   85: astore 22
          //   87: aload 34
          //   89: astore 12
          //   91: aload 39
          //   93: astore 13
          //   95: aload 28
          //   97: astore 23
          //   99: aload 35
          //   101: astore 14
          //   103: aload 40
          //   105: astore 15
          //   107: aload 30
          //   109: astore 26
          //   111: aload 36
          //   113: astore 16
          //   115: aload 41
          //   117: astore 17
          //   119: aload 32
          //   121: astore 27
          //   123: aload 37
          //   125: astore 18
          //   127: aload 42
          //   129: astore 19
          //   131: aload 33
          //   133: astore 9
          //   135: aload 38
          //   137: astore 5
          //   139: aload 43
          //   141: astore 6
          //   143: aload_0
          //   144: getfield 30	org/apache/cordova/FileTransfer$4:this$0	Lorg/apache/cordova/FileTransfer;
          //   147: aload_0
          //   148: getfield 34	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   151: invokestatic 68	org/apache/cordova/FileTransfer:access$800	(Lorg/apache/cordova/FileTransfer;Ljava/lang/String;)Ljava/io/File;
          //   154: astore 11
          //   156: aload 4
          //   158: astore 22
          //   160: aload 11
          //   162: astore 20
          //   164: aload 34
          //   166: astore 12
          //   168: aload 39
          //   170: astore 13
          //   172: aload 28
          //   174: astore 23
          //   176: aload 11
          //   178: astore 21
          //   180: aload 35
          //   182: astore 14
          //   184: aload 40
          //   186: astore 15
          //   188: aload 30
          //   190: astore 26
          //   192: aload 11
          //   194: astore 24
          //   196: aload 36
          //   198: astore 16
          //   200: aload 41
          //   202: astore 17
          //   204: aload 32
          //   206: astore 27
          //   208: aload 11
          //   210: astore 25
          //   212: aload 37
          //   214: astore 18
          //   216: aload 42
          //   218: astore 19
          //   220: aload 33
          //   222: astore 9
          //   224: aload 11
          //   226: astore 10
          //   228: aload 38
          //   230: astore 5
          //   232: aload 43
          //   234: astore 6
          //   236: aload_0
          //   237: getfield 32	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   240: aload 11
          //   242: putfield 72	org/apache/cordova/FileTransfer$RequestContext:targetFile	Ljava/io/File;
          //   245: aload 4
          //   247: astore 22
          //   249: aload 11
          //   251: astore 20
          //   253: aload 34
          //   255: astore 12
          //   257: aload 39
          //   259: astore 13
          //   261: aload 28
          //   263: astore 23
          //   265: aload 11
          //   267: astore 21
          //   269: aload 35
          //   271: astore 14
          //   273: aload 40
          //   275: astore 15
          //   277: aload 30
          //   279: astore 26
          //   281: aload 11
          //   283: astore 24
          //   285: aload 36
          //   287: astore 16
          //   289: aload 41
          //   291: astore 17
          //   293: aload 32
          //   295: astore 27
          //   297: aload 11
          //   299: astore 25
          //   301: aload 37
          //   303: astore 18
          //   305: aload 42
          //   307: astore 19
          //   309: aload 33
          //   311: astore 9
          //   313: aload 11
          //   315: astore 10
          //   317: aload 38
          //   319: astore 5
          //   321: aload 43
          //   323: astore 6
          //   325: aload 11
          //   327: invokevirtual 78	java/io/File:getParentFile	()Ljava/io/File;
          //   330: invokevirtual 82	java/io/File:mkdirs	()Z
          //   333: pop
          //   334: aload 4
          //   336: astore 22
          //   338: aload 11
          //   340: astore 20
          //   342: aload 34
          //   344: astore 12
          //   346: aload 39
          //   348: astore 13
          //   350: aload 28
          //   352: astore 23
          //   354: aload 11
          //   356: astore 21
          //   358: aload 35
          //   360: astore 14
          //   362: aload 40
          //   364: astore 15
          //   366: aload 30
          //   368: astore 26
          //   370: aload 11
          //   372: astore 24
          //   374: aload 36
          //   376: astore 16
          //   378: aload 41
          //   380: astore 17
          //   382: aload 32
          //   384: astore 27
          //   386: aload 11
          //   388: astore 25
          //   390: aload 37
          //   392: astore 18
          //   394: aload 42
          //   396: astore 19
          //   398: aload 33
          //   400: astore 9
          //   402: aload 11
          //   404: astore 10
          //   406: aload 38
          //   408: astore 5
          //   410: aload 43
          //   412: astore 6
          //   414: aload_0
          //   415: getfield 36	org/apache/cordova/FileTransfer$4:val$useHttps	Z
          //   418: ifeq +2079 -> 2497
          //   421: aload 4
          //   423: astore 22
          //   425: aload 11
          //   427: astore 20
          //   429: aload 34
          //   431: astore 12
          //   433: aload 39
          //   435: astore 13
          //   437: aload 28
          //   439: astore 23
          //   441: aload 11
          //   443: astore 21
          //   445: aload 35
          //   447: astore 14
          //   449: aload 40
          //   451: astore 15
          //   453: aload 30
          //   455: astore 26
          //   457: aload 11
          //   459: astore 24
          //   461: aload 36
          //   463: astore 16
          //   465: aload 41
          //   467: astore 17
          //   469: aload 32
          //   471: astore 27
          //   473: aload 11
          //   475: astore 25
          //   477: aload 37
          //   479: astore 18
          //   481: aload 42
          //   483: astore 19
          //   485: aload 33
          //   487: astore 9
          //   489: aload 11
          //   491: astore 10
          //   493: aload 38
          //   495: astore 5
          //   497: aload 43
          //   499: astore 6
          //   501: aload_0
          //   502: getfield 38	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
          //   505: ifne +1631 -> 2136
          //   508: aload 4
          //   510: astore 22
          //   512: aload 11
          //   514: astore 20
          //   516: aload 34
          //   518: astore 12
          //   520: aload 39
          //   522: astore 13
          //   524: aload 28
          //   526: astore 23
          //   528: aload 11
          //   530: astore 21
          //   532: aload 35
          //   534: astore 14
          //   536: aload 40
          //   538: astore 15
          //   540: aload 30
          //   542: astore 26
          //   544: aload 11
          //   546: astore 24
          //   548: aload 36
          //   550: astore 16
          //   552: aload 41
          //   554: astore 17
          //   556: aload 32
          //   558: astore 27
          //   560: aload 11
          //   562: astore 25
          //   564: aload 37
          //   566: astore 18
          //   568: aload 42
          //   570: astore 19
          //   572: aload 33
          //   574: astore 9
          //   576: aload 11
          //   578: astore 10
          //   580: aload 38
          //   582: astore 5
          //   584: aload 43
          //   586: astore 6
          //   588: aload_0
          //   589: getfield 40	org/apache/cordova/FileTransfer$4:val$url	Ljava/net/URL;
          //   592: invokevirtual 88	java/net/URL:openConnection	()Ljava/net/URLConnection;
          //   595: checkcast 90	javax/net/ssl/HttpsURLConnection
          //   598: astore 4
          //   600: aload 4
          //   602: astore 22
          //   604: aload 11
          //   606: astore 20
          //   608: aload 7
          //   610: astore 12
          //   612: aload 8
          //   614: astore 13
          //   616: aload 4
          //   618: astore 23
          //   620: aload 11
          //   622: astore 21
          //   624: aload 7
          //   626: astore 14
          //   628: aload 8
          //   630: astore 15
          //   632: aload 4
          //   634: astore 26
          //   636: aload 11
          //   638: astore 24
          //   640: aload 7
          //   642: astore 16
          //   644: aload 8
          //   646: astore 17
          //   648: aload 4
          //   650: astore 27
          //   652: aload 11
          //   654: astore 25
          //   656: aload 7
          //   658: astore 18
          //   660: aload 8
          //   662: astore 19
          //   664: aload 4
          //   666: astore 9
          //   668: aload 11
          //   670: astore 10
          //   672: aload 7
          //   674: astore 5
          //   676: aload 8
          //   678: astore 6
          //   680: aload 4
          //   682: instanceof 92
          //   685: ifeq +93 -> 778
          //   688: aload 4
          //   690: astore 22
          //   692: aload 11
          //   694: astore 20
          //   696: aload 7
          //   698: astore 12
          //   700: aload 8
          //   702: astore 13
          //   704: aload 4
          //   706: astore 23
          //   708: aload 11
          //   710: astore 21
          //   712: aload 7
          //   714: astore 14
          //   716: aload 8
          //   718: astore 15
          //   720: aload 4
          //   722: astore 26
          //   724: aload 11
          //   726: astore 24
          //   728: aload 7
          //   730: astore 16
          //   732: aload 8
          //   734: astore 17
          //   736: aload 4
          //   738: astore 27
          //   740: aload 11
          //   742: astore 25
          //   744: aload 7
          //   746: astore 18
          //   748: aload 8
          //   750: astore 19
          //   752: aload 4
          //   754: astore 9
          //   756: aload 11
          //   758: astore 10
          //   760: aload 7
          //   762: astore 5
          //   764: aload 8
          //   766: astore 6
          //   768: aload 4
          //   770: checkcast 92	java/net/HttpURLConnection
          //   773: ldc 94
          //   775: invokevirtual 98	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
          //   778: aload 4
          //   780: astore 22
          //   782: aload 11
          //   784: astore 20
          //   786: aload 7
          //   788: astore 12
          //   790: aload 8
          //   792: astore 13
          //   794: aload 4
          //   796: astore 23
          //   798: aload 11
          //   800: astore 21
          //   802: aload 7
          //   804: astore 14
          //   806: aload 8
          //   808: astore 15
          //   810: aload 4
          //   812: astore 26
          //   814: aload 11
          //   816: astore 24
          //   818: aload 7
          //   820: astore 16
          //   822: aload 8
          //   824: astore 17
          //   826: aload 4
          //   828: astore 27
          //   830: aload 11
          //   832: astore 25
          //   834: aload 7
          //   836: astore 18
          //   838: aload 8
          //   840: astore 19
          //   842: aload 4
          //   844: astore 9
          //   846: aload 11
          //   848: astore 10
          //   850: aload 7
          //   852: astore 5
          //   854: aload 8
          //   856: astore 6
          //   858: invokestatic 104	android/webkit/CookieManager:getInstance	()Landroid/webkit/CookieManager;
          //   861: aload_0
          //   862: getfield 42	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   865: invokevirtual 108	android/webkit/CookieManager:getCookie	(Ljava/lang/String;)Ljava/lang/String;
          //   868: astore 28
          //   870: aload 28
          //   872: ifnull +92 -> 964
          //   875: aload 4
          //   877: astore 22
          //   879: aload 11
          //   881: astore 20
          //   883: aload 7
          //   885: astore 12
          //   887: aload 8
          //   889: astore 13
          //   891: aload 4
          //   893: astore 23
          //   895: aload 11
          //   897: astore 21
          //   899: aload 7
          //   901: astore 14
          //   903: aload 8
          //   905: astore 15
          //   907: aload 4
          //   909: astore 26
          //   911: aload 11
          //   913: astore 24
          //   915: aload 7
          //   917: astore 16
          //   919: aload 8
          //   921: astore 17
          //   923: aload 4
          //   925: astore 27
          //   927: aload 11
          //   929: astore 25
          //   931: aload 7
          //   933: astore 18
          //   935: aload 8
          //   937: astore 19
          //   939: aload 4
          //   941: astore 9
          //   943: aload 11
          //   945: astore 10
          //   947: aload 7
          //   949: astore 5
          //   951: aload 8
          //   953: astore 6
          //   955: aload 4
          //   957: ldc 110
          //   959: aload 28
          //   961: invokevirtual 116	java/net/URLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
          //   964: aload 4
          //   966: astore 22
          //   968: aload 11
          //   970: astore 20
          //   972: aload 7
          //   974: astore 12
          //   976: aload 8
          //   978: astore 13
          //   980: aload 4
          //   982: astore 23
          //   984: aload 11
          //   986: astore 21
          //   988: aload 7
          //   990: astore 14
          //   992: aload 8
          //   994: astore 15
          //   996: aload 4
          //   998: astore 26
          //   1000: aload 11
          //   1002: astore 24
          //   1004: aload 7
          //   1006: astore 16
          //   1008: aload 8
          //   1010: astore 17
          //   1012: aload 4
          //   1014: astore 27
          //   1016: aload 11
          //   1018: astore 25
          //   1020: aload 7
          //   1022: astore 18
          //   1024: aload 8
          //   1026: astore 19
          //   1028: aload 4
          //   1030: astore 9
          //   1032: aload 11
          //   1034: astore 10
          //   1036: aload 7
          //   1038: astore 5
          //   1040: aload 8
          //   1042: astore 6
          //   1044: aload_0
          //   1045: getfield 44	org/apache/cordova/FileTransfer$4:val$headers	Lorg/json/JSONObject;
          //   1048: ifnull +92 -> 1140
          //   1051: aload 4
          //   1053: astore 22
          //   1055: aload 11
          //   1057: astore 20
          //   1059: aload 7
          //   1061: astore 12
          //   1063: aload 8
          //   1065: astore 13
          //   1067: aload 4
          //   1069: astore 23
          //   1071: aload 11
          //   1073: astore 21
          //   1075: aload 7
          //   1077: astore 14
          //   1079: aload 8
          //   1081: astore 15
          //   1083: aload 4
          //   1085: astore 26
          //   1087: aload 11
          //   1089: astore 24
          //   1091: aload 7
          //   1093: astore 16
          //   1095: aload 8
          //   1097: astore 17
          //   1099: aload 4
          //   1101: astore 27
          //   1103: aload 11
          //   1105: astore 25
          //   1107: aload 7
          //   1109: astore 18
          //   1111: aload 8
          //   1113: astore 19
          //   1115: aload 4
          //   1117: astore 9
          //   1119: aload 11
          //   1121: astore 10
          //   1123: aload 7
          //   1125: astore 5
          //   1127: aload 8
          //   1129: astore 6
          //   1131: aload 4
          //   1133: aload_0
          //   1134: getfield 44	org/apache/cordova/FileTransfer$4:val$headers	Lorg/json/JSONObject;
          //   1137: invokestatic 120	org/apache/cordova/FileTransfer:access$200	(Ljava/net/URLConnection;Lorg/json/JSONObject;)V
          //   1140: aload 4
          //   1142: astore 22
          //   1144: aload 11
          //   1146: astore 20
          //   1148: aload 7
          //   1150: astore 12
          //   1152: aload 8
          //   1154: astore 13
          //   1156: aload 4
          //   1158: astore 23
          //   1160: aload 11
          //   1162: astore 21
          //   1164: aload 7
          //   1166: astore 14
          //   1168: aload 8
          //   1170: astore 15
          //   1172: aload 4
          //   1174: astore 26
          //   1176: aload 11
          //   1178: astore 24
          //   1180: aload 7
          //   1182: astore 16
          //   1184: aload 8
          //   1186: astore 17
          //   1188: aload 4
          //   1190: astore 27
          //   1192: aload 11
          //   1194: astore 25
          //   1196: aload 7
          //   1198: astore 18
          //   1200: aload 8
          //   1202: astore 19
          //   1204: aload 4
          //   1206: astore 9
          //   1208: aload 11
          //   1210: astore 10
          //   1212: aload 7
          //   1214: astore 5
          //   1216: aload 8
          //   1218: astore 6
          //   1220: aload 4
          //   1222: invokevirtual 123	java/net/URLConnection:connect	()V
          //   1225: aload 4
          //   1227: astore 22
          //   1229: aload 11
          //   1231: astore 20
          //   1233: aload 7
          //   1235: astore 12
          //   1237: aload 8
          //   1239: astore 13
          //   1241: aload 4
          //   1243: astore 23
          //   1245: aload 11
          //   1247: astore 21
          //   1249: aload 7
          //   1251: astore 14
          //   1253: aload 8
          //   1255: astore 15
          //   1257: aload 4
          //   1259: astore 26
          //   1261: aload 11
          //   1263: astore 24
          //   1265: aload 7
          //   1267: astore 16
          //   1269: aload 8
          //   1271: astore 17
          //   1273: aload 4
          //   1275: astore 27
          //   1277: aload 11
          //   1279: astore 25
          //   1281: aload 7
          //   1283: astore 18
          //   1285: aload 8
          //   1287: astore 19
          //   1289: aload 4
          //   1291: astore 9
          //   1293: aload 11
          //   1295: astore 10
          //   1297: aload 7
          //   1299: astore 5
          //   1301: aload 8
          //   1303: astore 6
          //   1305: ldc 125
          //   1307: new 127	java/lang/StringBuilder
          //   1310: dup
          //   1311: invokespecial 128	java/lang/StringBuilder:<init>	()V
          //   1314: ldc -126
          //   1316: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   1319: aload_0
          //   1320: getfield 40	org/apache/cordova/FileTransfer$4:val$url	Ljava/net/URL;
          //   1323: invokevirtual 137	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
          //   1326: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   1329: invokestatic 147	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
          //   1332: pop
          //   1333: aload 4
          //   1335: astore 22
          //   1337: aload 11
          //   1339: astore 20
          //   1341: aload 7
          //   1343: astore 12
          //   1345: aload 8
          //   1347: astore 13
          //   1349: aload 4
          //   1351: astore 23
          //   1353: aload 11
          //   1355: astore 21
          //   1357: aload 7
          //   1359: astore 14
          //   1361: aload 8
          //   1363: astore 15
          //   1365: aload 4
          //   1367: astore 26
          //   1369: aload 11
          //   1371: astore 24
          //   1373: aload 7
          //   1375: astore 16
          //   1377: aload 8
          //   1379: astore 17
          //   1381: aload 4
          //   1383: astore 27
          //   1385: aload 11
          //   1387: astore 25
          //   1389: aload 7
          //   1391: astore 18
          //   1393: aload 8
          //   1395: astore 19
          //   1397: aload 4
          //   1399: astore 9
          //   1401: aload 11
          //   1403: astore 10
          //   1405: aload 7
          //   1407: astore 5
          //   1409: aload 8
          //   1411: astore 6
          //   1413: new 149	org/apache/cordova/FileProgressResult
          //   1416: dup
          //   1417: invokespecial 150	org/apache/cordova/FileProgressResult:<init>	()V
          //   1420: astore 32
          //   1422: aload 4
          //   1424: astore 22
          //   1426: aload 11
          //   1428: astore 20
          //   1430: aload 7
          //   1432: astore 12
          //   1434: aload 8
          //   1436: astore 13
          //   1438: aload 4
          //   1440: astore 23
          //   1442: aload 11
          //   1444: astore 21
          //   1446: aload 7
          //   1448: astore 14
          //   1450: aload 8
          //   1452: astore 15
          //   1454: aload 4
          //   1456: astore 26
          //   1458: aload 11
          //   1460: astore 24
          //   1462: aload 7
          //   1464: astore 16
          //   1466: aload 8
          //   1468: astore 17
          //   1470: aload 4
          //   1472: astore 27
          //   1474: aload 11
          //   1476: astore 25
          //   1478: aload 7
          //   1480: astore 18
          //   1482: aload 8
          //   1484: astore 19
          //   1486: aload 4
          //   1488: astore 9
          //   1490: aload 11
          //   1492: astore 10
          //   1494: aload 7
          //   1496: astore 5
          //   1498: aload 8
          //   1500: astore 6
          //   1502: aload 4
          //   1504: invokevirtual 153	java/net/URLConnection:getContentEncoding	()Ljava/lang/String;
          //   1507: ifnonnull +180 -> 1687
          //   1510: aload 4
          //   1512: astore 22
          //   1514: aload 11
          //   1516: astore 20
          //   1518: aload 7
          //   1520: astore 12
          //   1522: aload 8
          //   1524: astore 13
          //   1526: aload 4
          //   1528: astore 23
          //   1530: aload 11
          //   1532: astore 21
          //   1534: aload 7
          //   1536: astore 14
          //   1538: aload 8
          //   1540: astore 15
          //   1542: aload 4
          //   1544: astore 26
          //   1546: aload 11
          //   1548: astore 24
          //   1550: aload 7
          //   1552: astore 16
          //   1554: aload 8
          //   1556: astore 17
          //   1558: aload 4
          //   1560: astore 27
          //   1562: aload 11
          //   1564: astore 25
          //   1566: aload 7
          //   1568: astore 18
          //   1570: aload 8
          //   1572: astore 19
          //   1574: aload 4
          //   1576: astore 9
          //   1578: aload 11
          //   1580: astore 10
          //   1582: aload 7
          //   1584: astore 5
          //   1586: aload 8
          //   1588: astore 6
          //   1590: aload 32
          //   1592: iconst_1
          //   1593: invokevirtual 157	org/apache/cordova/FileProgressResult:setLengthComputable	(Z)V
          //   1596: aload 4
          //   1598: astore 22
          //   1600: aload 11
          //   1602: astore 20
          //   1604: aload 7
          //   1606: astore 12
          //   1608: aload 8
          //   1610: astore 13
          //   1612: aload 4
          //   1614: astore 23
          //   1616: aload 11
          //   1618: astore 21
          //   1620: aload 7
          //   1622: astore 14
          //   1624: aload 8
          //   1626: astore 15
          //   1628: aload 4
          //   1630: astore 26
          //   1632: aload 11
          //   1634: astore 24
          //   1636: aload 7
          //   1638: astore 16
          //   1640: aload 8
          //   1642: astore 17
          //   1644: aload 4
          //   1646: astore 27
          //   1648: aload 11
          //   1650: astore 25
          //   1652: aload 7
          //   1654: astore 18
          //   1656: aload 8
          //   1658: astore 19
          //   1660: aload 4
          //   1662: astore 9
          //   1664: aload 11
          //   1666: astore 10
          //   1668: aload 7
          //   1670: astore 5
          //   1672: aload 8
          //   1674: astore 6
          //   1676: aload 32
          //   1678: aload 4
          //   1680: invokevirtual 161	java/net/URLConnection:getContentLength	()I
          //   1683: i2l
          //   1684: invokevirtual 165	org/apache/cordova/FileProgressResult:setTotal	(J)V
          //   1687: aconst_null
          //   1688: astore 6
          //   1690: aconst_null
          //   1691: astore 5
          //   1693: aload 4
          //   1695: invokestatic 169	org/apache/cordova/FileTransfer:access$500	(Ljava/net/URLConnection;)Ljava/io/InputStream;
          //   1698: astore 28
          //   1700: aload 28
          //   1702: astore 5
          //   1704: new 171	java/io/FileOutputStream
          //   1707: dup
          //   1708: aload 11
          //   1710: invokespecial 174	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
          //   1713: astore 30
          //   1715: aload_0
          //   1716: getfield 32	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   1719: astore 5
          //   1721: aload 5
          //   1723: monitorenter
          //   1724: aload_0
          //   1725: getfield 32	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   1728: getfield 64	org/apache/cordova/FileTransfer$RequestContext:aborted	Z
          //   1731: ifeq +858 -> 2589
          //   1734: aload 5
          //   1736: monitorexit
          //   1737: aload 4
          //   1739: astore 22
          //   1741: aload 11
          //   1743: astore 20
          //   1745: aload 7
          //   1747: astore 12
          //   1749: aload 8
          //   1751: astore 13
          //   1753: aload 4
          //   1755: astore 23
          //   1757: aload 11
          //   1759: astore 21
          //   1761: aload 7
          //   1763: astore 14
          //   1765: aload 8
          //   1767: astore 15
          //   1769: aload 4
          //   1771: astore 26
          //   1773: aload 11
          //   1775: astore 24
          //   1777: aload 7
          //   1779: astore 16
          //   1781: aload 8
          //   1783: astore 17
          //   1785: aload 4
          //   1787: astore 27
          //   1789: aload 11
          //   1791: astore 25
          //   1793: aload 7
          //   1795: astore 18
          //   1797: aload 8
          //   1799: astore 19
          //   1801: aload 4
          //   1803: astore 9
          //   1805: aload 11
          //   1807: astore 10
          //   1809: aload 7
          //   1811: astore 5
          //   1813: aload 8
          //   1815: astore 6
          //   1817: aload_0
          //   1818: getfield 32	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   1821: aconst_null
          //   1822: putfield 178	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
          //   1825: aload 4
          //   1827: astore 22
          //   1829: aload 11
          //   1831: astore 20
          //   1833: aload 7
          //   1835: astore 12
          //   1837: aload 8
          //   1839: astore 13
          //   1841: aload 4
          //   1843: astore 23
          //   1845: aload 11
          //   1847: astore 21
          //   1849: aload 7
          //   1851: astore 14
          //   1853: aload 8
          //   1855: astore 15
          //   1857: aload 4
          //   1859: astore 26
          //   1861: aload 11
          //   1863: astore 24
          //   1865: aload 7
          //   1867: astore 16
          //   1869: aload 8
          //   1871: astore 17
          //   1873: aload 4
          //   1875: astore 27
          //   1877: aload 11
          //   1879: astore 25
          //   1881: aload 7
          //   1883: astore 18
          //   1885: aload 8
          //   1887: astore 19
          //   1889: aload 4
          //   1891: astore 9
          //   1893: aload 11
          //   1895: astore 10
          //   1897: aload 7
          //   1899: astore 5
          //   1901: aload 8
          //   1903: astore 6
          //   1905: aload 28
          //   1907: invokestatic 182	org/apache/cordova/FileTransfer:access$400	(Ljava/io/Closeable;)V
          //   1910: aload 4
          //   1912: astore 22
          //   1914: aload 11
          //   1916: astore 20
          //   1918: aload 7
          //   1920: astore 12
          //   1922: aload 8
          //   1924: astore 13
          //   1926: aload 4
          //   1928: astore 23
          //   1930: aload 11
          //   1932: astore 21
          //   1934: aload 7
          //   1936: astore 14
          //   1938: aload 8
          //   1940: astore 15
          //   1942: aload 4
          //   1944: astore 26
          //   1946: aload 11
          //   1948: astore 24
          //   1950: aload 7
          //   1952: astore 16
          //   1954: aload 8
          //   1956: astore 17
          //   1958: aload 4
          //   1960: astore 27
          //   1962: aload 11
          //   1964: astore 25
          //   1966: aload 7
          //   1968: astore 18
          //   1970: aload 8
          //   1972: astore 19
          //   1974: aload 4
          //   1976: astore 9
          //   1978: aload 11
          //   1980: astore 10
          //   1982: aload 7
          //   1984: astore 5
          //   1986: aload 8
          //   1988: astore 6
          //   1990: aload 30
          //   1992: invokestatic 182	org/apache/cordova/FileTransfer:access$400	(Ljava/io/Closeable;)V
          //   1995: invokestatic 186	org/apache/cordova/FileTransfer:access$700	()Ljava/util/HashMap;
          //   1998: astore 5
          //   2000: aload 5
          //   2002: monitorenter
          //   2003: invokestatic 186	org/apache/cordova/FileTransfer:access$700	()Ljava/util/HashMap;
          //   2006: aload_0
          //   2007: getfield 46	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
          //   2010: invokevirtual 192	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   2013: pop
          //   2014: aload 5
          //   2016: monitorexit
          //   2017: aload 4
          //   2019: ifnull +38 -> 2057
          //   2022: aload_0
          //   2023: getfield 38	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
          //   2026: ifeq +31 -> 2057
          //   2029: aload_0
          //   2030: getfield 36	org/apache/cordova/FileTransfer$4:val$useHttps	Z
          //   2033: ifeq +24 -> 2057
          //   2036: aload 4
          //   2038: checkcast 90	javax/net/ssl/HttpsURLConnection
          //   2041: astore 5
          //   2043: aload 5
          //   2045: aload 7
          //   2047: invokevirtual 196	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   2050: aload 5
          //   2052: aload 8
          //   2054: invokevirtual 200	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   2057: aload 29
          //   2059: astore 6
          //   2061: iconst_0
          //   2062: ifne +31 -> 2093
          //   2065: new 202	org/apache/cordova/api/PluginResult
          //   2068: dup
          //   2069: getstatic 208	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
          //   2072: getstatic 212	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   2075: aload_0
          //   2076: getfield 42	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   2079: aload_0
          //   2080: getfield 34	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   2083: aload 4
          //   2085: invokestatic 216	org/apache/cordova/FileTransfer:access$600	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   2088: invokespecial 219	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   2091: astore 6
          //   2093: aload 6
          //   2095: invokevirtual 222	org/apache/cordova/api/PluginResult:getStatus	()I
          //   2098: getstatic 225	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   2101: invokevirtual 228	org/apache/cordova/api/PluginResult$Status:ordinal	()I
          //   2104: if_icmpeq +14 -> 2118
          //   2107: aload 11
          //   2109: ifnull +9 -> 2118
          //   2112: aload 11
          //   2114: invokevirtual 231	java/io/File:delete	()Z
          //   2117: pop
          //   2118: aload_0
          //   2119: getfield 32	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   2122: astore 5
          //   2124: aload 6
          //   2126: astore 4
          //   2128: aload 5
          //   2130: aload 4
          //   2132: invokevirtual 235	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
          //   2135: return
          //   2136: aload 4
          //   2138: astore 22
          //   2140: aload 11
          //   2142: astore 20
          //   2144: aload 34
          //   2146: astore 12
          //   2148: aload 39
          //   2150: astore 13
          //   2152: aload 28
          //   2154: astore 23
          //   2156: aload 11
          //   2158: astore 21
          //   2160: aload 35
          //   2162: astore 14
          //   2164: aload 40
          //   2166: astore 15
          //   2168: aload 30
          //   2170: astore 26
          //   2172: aload 11
          //   2174: astore 24
          //   2176: aload 36
          //   2178: astore 16
          //   2180: aload 41
          //   2182: astore 17
          //   2184: aload 32
          //   2186: astore 27
          //   2188: aload 11
          //   2190: astore 25
          //   2192: aload 37
          //   2194: astore 18
          //   2196: aload 42
          //   2198: astore 19
          //   2200: aload 33
          //   2202: astore 9
          //   2204: aload 11
          //   2206: astore 10
          //   2208: aload 38
          //   2210: astore 5
          //   2212: aload 43
          //   2214: astore 6
          //   2216: aload_0
          //   2217: getfield 40	org/apache/cordova/FileTransfer$4:val$url	Ljava/net/URL;
          //   2220: invokevirtual 88	java/net/URL:openConnection	()Ljava/net/URLConnection;
          //   2223: checkcast 90	javax/net/ssl/HttpsURLConnection
          //   2226: astore 44
          //   2228: aload 4
          //   2230: astore 22
          //   2232: aload 11
          //   2234: astore 20
          //   2236: aload 34
          //   2238: astore 12
          //   2240: aload 39
          //   2242: astore 13
          //   2244: aload 28
          //   2246: astore 23
          //   2248: aload 11
          //   2250: astore 21
          //   2252: aload 35
          //   2254: astore 14
          //   2256: aload 40
          //   2258: astore 15
          //   2260: aload 30
          //   2262: astore 26
          //   2264: aload 11
          //   2266: astore 24
          //   2268: aload 36
          //   2270: astore 16
          //   2272: aload 41
          //   2274: astore 17
          //   2276: aload 32
          //   2278: astore 27
          //   2280: aload 11
          //   2282: astore 25
          //   2284: aload 37
          //   2286: astore 18
          //   2288: aload 42
          //   2290: astore 19
          //   2292: aload 33
          //   2294: astore 9
          //   2296: aload 11
          //   2298: astore 10
          //   2300: aload 38
          //   2302: astore 5
          //   2304: aload 43
          //   2306: astore 6
          //   2308: aload 44
          //   2310: invokestatic 239	org/apache/cordova/FileTransfer:access$000	(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
          //   2313: astore 8
          //   2315: aload 4
          //   2317: astore 22
          //   2319: aload 11
          //   2321: astore 20
          //   2323: aload 34
          //   2325: astore 12
          //   2327: aload 8
          //   2329: astore 13
          //   2331: aload 28
          //   2333: astore 23
          //   2335: aload 11
          //   2337: astore 21
          //   2339: aload 35
          //   2341: astore 14
          //   2343: aload 8
          //   2345: astore 15
          //   2347: aload 30
          //   2349: astore 26
          //   2351: aload 11
          //   2353: astore 24
          //   2355: aload 36
          //   2357: astore 16
          //   2359: aload 8
          //   2361: astore 17
          //   2363: aload 32
          //   2365: astore 27
          //   2367: aload 11
          //   2369: astore 25
          //   2371: aload 37
          //   2373: astore 18
          //   2375: aload 8
          //   2377: astore 19
          //   2379: aload 33
          //   2381: astore 9
          //   2383: aload 11
          //   2385: astore 10
          //   2387: aload 38
          //   2389: astore 5
          //   2391: aload 8
          //   2393: astore 6
          //   2395: aload 44
          //   2397: invokevirtual 243	javax/net/ssl/HttpsURLConnection:getHostnameVerifier	()Ljavax/net/ssl/HostnameVerifier;
          //   2400: astore 7
          //   2402: aload 4
          //   2404: astore 22
          //   2406: aload 11
          //   2408: astore 20
          //   2410: aload 7
          //   2412: astore 12
          //   2414: aload 8
          //   2416: astore 13
          //   2418: aload 28
          //   2420: astore 23
          //   2422: aload 11
          //   2424: astore 21
          //   2426: aload 7
          //   2428: astore 14
          //   2430: aload 8
          //   2432: astore 15
          //   2434: aload 30
          //   2436: astore 26
          //   2438: aload 11
          //   2440: astore 24
          //   2442: aload 7
          //   2444: astore 16
          //   2446: aload 8
          //   2448: astore 17
          //   2450: aload 32
          //   2452: astore 27
          //   2454: aload 11
          //   2456: astore 25
          //   2458: aload 7
          //   2460: astore 18
          //   2462: aload 8
          //   2464: astore 19
          //   2466: aload 33
          //   2468: astore 9
          //   2470: aload 11
          //   2472: astore 10
          //   2474: aload 7
          //   2476: astore 5
          //   2478: aload 8
          //   2480: astore 6
          //   2482: aload 44
          //   2484: invokestatic 246	org/apache/cordova/FileTransfer:access$100	()Ljavax/net/ssl/HostnameVerifier;
          //   2487: invokevirtual 196	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   2490: aload 44
          //   2492: astore 4
          //   2494: goto -1894 -> 600
          //   2497: aload 4
          //   2499: astore 22
          //   2501: aload 11
          //   2503: astore 20
          //   2505: aload 34
          //   2507: astore 12
          //   2509: aload 39
          //   2511: astore 13
          //   2513: aload 28
          //   2515: astore 23
          //   2517: aload 11
          //   2519: astore 21
          //   2521: aload 35
          //   2523: astore 14
          //   2525: aload 40
          //   2527: astore 15
          //   2529: aload 30
          //   2531: astore 26
          //   2533: aload 11
          //   2535: astore 24
          //   2537: aload 36
          //   2539: astore 16
          //   2541: aload 41
          //   2543: astore 17
          //   2545: aload 32
          //   2547: astore 27
          //   2549: aload 11
          //   2551: astore 25
          //   2553: aload 37
          //   2555: astore 18
          //   2557: aload 42
          //   2559: astore 19
          //   2561: aload 33
          //   2563: astore 9
          //   2565: aload 11
          //   2567: astore 10
          //   2569: aload 38
          //   2571: astore 5
          //   2573: aload 43
          //   2575: astore 6
          //   2577: aload_0
          //   2578: getfield 40	org/apache/cordova/FileTransfer$4:val$url	Ljava/net/URL;
          //   2581: invokevirtual 88	java/net/URL:openConnection	()Ljava/net/URLConnection;
          //   2584: astore 4
          //   2586: goto -1986 -> 600
          //   2589: aload_0
          //   2590: getfield 32	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   2593: aload 28
          //   2595: putfield 178	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
          //   2598: aload 5
          //   2600: monitorexit
          //   2601: sipush 16384
          //   2604: newarray byte
          //   2606: astore 5
          //   2608: lconst_0
          //   2609: lstore_2
          //   2610: aload 28
          //   2612: aload 5
          //   2614: invokevirtual 252	java/io/InputStream:read	([B)I
          //   2617: istore_1
          //   2618: iload_1
          //   2619: ifle +641 -> 3260
          //   2622: aload 30
          //   2624: aload 5
          //   2626: iconst_0
          //   2627: iload_1
          //   2628: invokevirtual 256	java/io/FileOutputStream:write	([BII)V
          //   2631: lload_2
          //   2632: iload_1
          //   2633: i2l
          //   2634: ladd
          //   2635: lstore_2
          //   2636: aload 32
          //   2638: lload_2
          //   2639: invokevirtual 259	org/apache/cordova/FileProgressResult:setLoaded	(J)V
          //   2642: new 202	org/apache/cordova/api/PluginResult
          //   2645: dup
          //   2646: getstatic 225	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   2649: aload 32
          //   2651: invokevirtual 263	org/apache/cordova/FileProgressResult:toJSONObject	()Lorg/json/JSONObject;
          //   2654: invokespecial 219	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   2657: astore 6
          //   2659: aload 6
          //   2661: iconst_1
          //   2662: invokevirtual 266	org/apache/cordova/api/PluginResult:setKeepCallback	(Z)V
          //   2665: aload_0
          //   2666: getfield 32	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   2669: aload 6
          //   2671: invokevirtual 235	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
          //   2674: goto -64 -> 2610
          //   2677: astore 5
          //   2679: aload 30
          //   2681: astore 29
          //   2683: aload 5
          //   2685: astore 30
          //   2687: aload 4
          //   2689: astore 22
          //   2691: aload 11
          //   2693: astore 20
          //   2695: aload 7
          //   2697: astore 12
          //   2699: aload 8
          //   2701: astore 13
          //   2703: aload 4
          //   2705: astore 23
          //   2707: aload 11
          //   2709: astore 21
          //   2711: aload 7
          //   2713: astore 14
          //   2715: aload 8
          //   2717: astore 15
          //   2719: aload 4
          //   2721: astore 26
          //   2723: aload 11
          //   2725: astore 24
          //   2727: aload 7
          //   2729: astore 16
          //   2731: aload 8
          //   2733: astore 17
          //   2735: aload 4
          //   2737: astore 27
          //   2739: aload 11
          //   2741: astore 25
          //   2743: aload 7
          //   2745: astore 18
          //   2747: aload 8
          //   2749: astore 19
          //   2751: aload 4
          //   2753: astore 9
          //   2755: aload 11
          //   2757: astore 10
          //   2759: aload 7
          //   2761: astore 5
          //   2763: aload 8
          //   2765: astore 6
          //   2767: aload_0
          //   2768: getfield 32	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   2771: aconst_null
          //   2772: putfield 178	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
          //   2775: aload 4
          //   2777: astore 22
          //   2779: aload 11
          //   2781: astore 20
          //   2783: aload 7
          //   2785: astore 12
          //   2787: aload 8
          //   2789: astore 13
          //   2791: aload 4
          //   2793: astore 23
          //   2795: aload 11
          //   2797: astore 21
          //   2799: aload 7
          //   2801: astore 14
          //   2803: aload 8
          //   2805: astore 15
          //   2807: aload 4
          //   2809: astore 26
          //   2811: aload 11
          //   2813: astore 24
          //   2815: aload 7
          //   2817: astore 16
          //   2819: aload 8
          //   2821: astore 17
          //   2823: aload 4
          //   2825: astore 27
          //   2827: aload 11
          //   2829: astore 25
          //   2831: aload 7
          //   2833: astore 18
          //   2835: aload 8
          //   2837: astore 19
          //   2839: aload 4
          //   2841: astore 9
          //   2843: aload 11
          //   2845: astore 10
          //   2847: aload 7
          //   2849: astore 5
          //   2851: aload 8
          //   2853: astore 6
          //   2855: aload 28
          //   2857: invokestatic 182	org/apache/cordova/FileTransfer:access$400	(Ljava/io/Closeable;)V
          //   2860: aload 4
          //   2862: astore 22
          //   2864: aload 11
          //   2866: astore 20
          //   2868: aload 7
          //   2870: astore 12
          //   2872: aload 8
          //   2874: astore 13
          //   2876: aload 4
          //   2878: astore 23
          //   2880: aload 11
          //   2882: astore 21
          //   2884: aload 7
          //   2886: astore 14
          //   2888: aload 8
          //   2890: astore 15
          //   2892: aload 4
          //   2894: astore 26
          //   2896: aload 11
          //   2898: astore 24
          //   2900: aload 7
          //   2902: astore 16
          //   2904: aload 8
          //   2906: astore 17
          //   2908: aload 4
          //   2910: astore 27
          //   2912: aload 11
          //   2914: astore 25
          //   2916: aload 7
          //   2918: astore 18
          //   2920: aload 8
          //   2922: astore 19
          //   2924: aload 4
          //   2926: astore 9
          //   2928: aload 11
          //   2930: astore 10
          //   2932: aload 7
          //   2934: astore 5
          //   2936: aload 8
          //   2938: astore 6
          //   2940: aload 29
          //   2942: invokestatic 182	org/apache/cordova/FileTransfer:access$400	(Ljava/io/Closeable;)V
          //   2945: aload 4
          //   2947: astore 22
          //   2949: aload 11
          //   2951: astore 20
          //   2953: aload 7
          //   2955: astore 12
          //   2957: aload 8
          //   2959: astore 13
          //   2961: aload 4
          //   2963: astore 23
          //   2965: aload 11
          //   2967: astore 21
          //   2969: aload 7
          //   2971: astore 14
          //   2973: aload 8
          //   2975: astore 15
          //   2977: aload 4
          //   2979: astore 26
          //   2981: aload 11
          //   2983: astore 24
          //   2985: aload 7
          //   2987: astore 16
          //   2989: aload 8
          //   2991: astore 17
          //   2993: aload 4
          //   2995: astore 27
          //   2997: aload 11
          //   2999: astore 25
          //   3001: aload 7
          //   3003: astore 18
          //   3005: aload 8
          //   3007: astore 19
          //   3009: aload 4
          //   3011: astore 9
          //   3013: aload 11
          //   3015: astore 10
          //   3017: aload 7
          //   3019: astore 5
          //   3021: aload 8
          //   3023: astore 6
          //   3025: aload 30
          //   3027: athrow
          //   3028: astore 4
          //   3030: aload 22
          //   3032: astore 9
          //   3034: aload 20
          //   3036: astore 10
          //   3038: aload 12
          //   3040: astore 5
          //   3042: aload 13
          //   3044: astore 6
          //   3046: getstatic 269	org/apache/cordova/FileTransfer:FILE_NOT_FOUND_ERR	I
          //   3049: aload_0
          //   3050: getfield 42	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   3053: aload_0
          //   3054: getfield 34	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   3057: aload 22
          //   3059: invokestatic 216	org/apache/cordova/FileTransfer:access$600	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   3062: astore 7
          //   3064: aload 22
          //   3066: astore 9
          //   3068: aload 20
          //   3070: astore 10
          //   3072: aload 12
          //   3074: astore 5
          //   3076: aload 13
          //   3078: astore 6
          //   3080: ldc 125
          //   3082: aload 7
          //   3084: invokevirtual 272	org/json/JSONObject:toString	()Ljava/lang/String;
          //   3087: aload 4
          //   3089: invokestatic 276	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
          //   3092: pop
          //   3093: aload 22
          //   3095: astore 9
          //   3097: aload 20
          //   3099: astore 10
          //   3101: aload 12
          //   3103: astore 5
          //   3105: aload 13
          //   3107: astore 6
          //   3109: new 202	org/apache/cordova/api/PluginResult
          //   3112: dup
          //   3113: getstatic 279	org/apache/cordova/api/PluginResult$Status:IO_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
          //   3116: aload 7
          //   3118: invokespecial 219	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   3121: astore 4
          //   3123: invokestatic 186	org/apache/cordova/FileTransfer:access$700	()Ljava/util/HashMap;
          //   3126: astore 5
          //   3128: aload 5
          //   3130: monitorenter
          //   3131: invokestatic 186	org/apache/cordova/FileTransfer:access$700	()Ljava/util/HashMap;
          //   3134: aload_0
          //   3135: getfield 46	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
          //   3138: invokevirtual 192	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   3141: pop
          //   3142: aload 5
          //   3144: monitorexit
          //   3145: aload 22
          //   3147: ifnull +38 -> 3185
          //   3150: aload_0
          //   3151: getfield 38	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
          //   3154: ifeq +31 -> 3185
          //   3157: aload_0
          //   3158: getfield 36	org/apache/cordova/FileTransfer$4:val$useHttps	Z
          //   3161: ifeq +24 -> 3185
          //   3164: aload 22
          //   3166: checkcast 90	javax/net/ssl/HttpsURLConnection
          //   3169: astore 5
          //   3171: aload 5
          //   3173: aload 12
          //   3175: invokevirtual 196	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   3178: aload 5
          //   3180: aload 13
          //   3182: invokevirtual 200	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   3185: aload 4
          //   3187: ifnonnull +1608 -> 4795
          //   3190: new 202	org/apache/cordova/api/PluginResult
          //   3193: dup
          //   3194: getstatic 208	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
          //   3197: getstatic 212	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   3200: aload_0
          //   3201: getfield 42	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   3204: aload_0
          //   3205: getfield 34	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   3208: aload 22
          //   3210: invokestatic 216	org/apache/cordova/FileTransfer:access$600	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   3213: invokespecial 219	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   3216: astore 4
          //   3218: aload 4
          //   3220: invokevirtual 222	org/apache/cordova/api/PluginResult:getStatus	()I
          //   3223: getstatic 225	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   3226: invokevirtual 228	org/apache/cordova/api/PluginResult$Status:ordinal	()I
          //   3229: if_icmpeq +14 -> 3243
          //   3232: aload 20
          //   3234: ifnull +9 -> 3243
          //   3237: aload 20
          //   3239: invokevirtual 231	java/io/File:delete	()Z
          //   3242: pop
          //   3243: aload_0
          //   3244: getfield 32	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   3247: astore 5
          //   3249: goto -1121 -> 2128
          //   3252: astore 6
          //   3254: aload 5
          //   3256: monitorexit
          //   3257: aload 6
          //   3259: athrow
          //   3260: aload 4
          //   3262: astore 22
          //   3264: aload 11
          //   3266: astore 20
          //   3268: aload 7
          //   3270: astore 12
          //   3272: aload 8
          //   3274: astore 13
          //   3276: aload 4
          //   3278: astore 23
          //   3280: aload 11
          //   3282: astore 21
          //   3284: aload 7
          //   3286: astore 14
          //   3288: aload 8
          //   3290: astore 15
          //   3292: aload 4
          //   3294: astore 26
          //   3296: aload 11
          //   3298: astore 24
          //   3300: aload 7
          //   3302: astore 16
          //   3304: aload 8
          //   3306: astore 17
          //   3308: aload 4
          //   3310: astore 27
          //   3312: aload 11
          //   3314: astore 25
          //   3316: aload 7
          //   3318: astore 18
          //   3320: aload 8
          //   3322: astore 19
          //   3324: aload 4
          //   3326: astore 9
          //   3328: aload 11
          //   3330: astore 10
          //   3332: aload 7
          //   3334: astore 5
          //   3336: aload 8
          //   3338: astore 6
          //   3340: aload_0
          //   3341: getfield 32	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   3344: aconst_null
          //   3345: putfield 178	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
          //   3348: aload 4
          //   3350: astore 22
          //   3352: aload 11
          //   3354: astore 20
          //   3356: aload 7
          //   3358: astore 12
          //   3360: aload 8
          //   3362: astore 13
          //   3364: aload 4
          //   3366: astore 23
          //   3368: aload 11
          //   3370: astore 21
          //   3372: aload 7
          //   3374: astore 14
          //   3376: aload 8
          //   3378: astore 15
          //   3380: aload 4
          //   3382: astore 26
          //   3384: aload 11
          //   3386: astore 24
          //   3388: aload 7
          //   3390: astore 16
          //   3392: aload 8
          //   3394: astore 17
          //   3396: aload 4
          //   3398: astore 27
          //   3400: aload 11
          //   3402: astore 25
          //   3404: aload 7
          //   3406: astore 18
          //   3408: aload 8
          //   3410: astore 19
          //   3412: aload 4
          //   3414: astore 9
          //   3416: aload 11
          //   3418: astore 10
          //   3420: aload 7
          //   3422: astore 5
          //   3424: aload 8
          //   3426: astore 6
          //   3428: aload 28
          //   3430: invokestatic 182	org/apache/cordova/FileTransfer:access$400	(Ljava/io/Closeable;)V
          //   3433: aload 4
          //   3435: astore 22
          //   3437: aload 11
          //   3439: astore 20
          //   3441: aload 7
          //   3443: astore 12
          //   3445: aload 8
          //   3447: astore 13
          //   3449: aload 4
          //   3451: astore 23
          //   3453: aload 11
          //   3455: astore 21
          //   3457: aload 7
          //   3459: astore 14
          //   3461: aload 8
          //   3463: astore 15
          //   3465: aload 4
          //   3467: astore 26
          //   3469: aload 11
          //   3471: astore 24
          //   3473: aload 7
          //   3475: astore 16
          //   3477: aload 8
          //   3479: astore 17
          //   3481: aload 4
          //   3483: astore 27
          //   3485: aload 11
          //   3487: astore 25
          //   3489: aload 7
          //   3491: astore 18
          //   3493: aload 8
          //   3495: astore 19
          //   3497: aload 4
          //   3499: astore 9
          //   3501: aload 11
          //   3503: astore 10
          //   3505: aload 7
          //   3507: astore 5
          //   3509: aload 8
          //   3511: astore 6
          //   3513: aload 30
          //   3515: invokestatic 182	org/apache/cordova/FileTransfer:access$400	(Ljava/io/Closeable;)V
          //   3518: aload 4
          //   3520: astore 22
          //   3522: aload 11
          //   3524: astore 20
          //   3526: aload 7
          //   3528: astore 12
          //   3530: aload 8
          //   3532: astore 13
          //   3534: aload 4
          //   3536: astore 23
          //   3538: aload 11
          //   3540: astore 21
          //   3542: aload 7
          //   3544: astore 14
          //   3546: aload 8
          //   3548: astore 15
          //   3550: aload 4
          //   3552: astore 26
          //   3554: aload 11
          //   3556: astore 24
          //   3558: aload 7
          //   3560: astore 16
          //   3562: aload 8
          //   3564: astore 17
          //   3566: aload 4
          //   3568: astore 27
          //   3570: aload 11
          //   3572: astore 25
          //   3574: aload 7
          //   3576: astore 18
          //   3578: aload 8
          //   3580: astore 19
          //   3582: aload 4
          //   3584: astore 9
          //   3586: aload 11
          //   3588: astore 10
          //   3590: aload 7
          //   3592: astore 5
          //   3594: aload 8
          //   3596: astore 6
          //   3598: ldc 125
          //   3600: new 127	java/lang/StringBuilder
          //   3603: dup
          //   3604: invokespecial 128	java/lang/StringBuilder:<init>	()V
          //   3607: ldc_w 281
          //   3610: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   3613: aload_0
          //   3614: getfield 34	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   3617: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   3620: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   3623: invokestatic 147	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
          //   3626: pop
          //   3627: aload 4
          //   3629: astore 22
          //   3631: aload 11
          //   3633: astore 20
          //   3635: aload 7
          //   3637: astore 12
          //   3639: aload 8
          //   3641: astore 13
          //   3643: aload 4
          //   3645: astore 23
          //   3647: aload 11
          //   3649: astore 21
          //   3651: aload 7
          //   3653: astore 14
          //   3655: aload 8
          //   3657: astore 15
          //   3659: aload 4
          //   3661: astore 26
          //   3663: aload 11
          //   3665: astore 24
          //   3667: aload 7
          //   3669: astore 16
          //   3671: aload 8
          //   3673: astore 17
          //   3675: aload 4
          //   3677: astore 27
          //   3679: aload 11
          //   3681: astore 25
          //   3683: aload 7
          //   3685: astore 18
          //   3687: aload 8
          //   3689: astore 19
          //   3691: aload 4
          //   3693: astore 9
          //   3695: aload 11
          //   3697: astore 10
          //   3699: aload 7
          //   3701: astore 5
          //   3703: aload 8
          //   3705: astore 6
          //   3707: aload 11
          //   3709: invokestatic 287	org/apache/cordova/FileUtils:getEntry	(Ljava/io/File;)Lorg/json/JSONObject;
          //   3712: astore 28
          //   3714: aload 4
          //   3716: astore 22
          //   3718: aload 11
          //   3720: astore 20
          //   3722: aload 7
          //   3724: astore 12
          //   3726: aload 8
          //   3728: astore 13
          //   3730: aload 4
          //   3732: astore 23
          //   3734: aload 11
          //   3736: astore 21
          //   3738: aload 7
          //   3740: astore 14
          //   3742: aload 8
          //   3744: astore 15
          //   3746: aload 4
          //   3748: astore 26
          //   3750: aload 11
          //   3752: astore 24
          //   3754: aload 7
          //   3756: astore 16
          //   3758: aload 8
          //   3760: astore 17
          //   3762: aload 4
          //   3764: astore 27
          //   3766: aload 11
          //   3768: astore 25
          //   3770: aload 7
          //   3772: astore 18
          //   3774: aload 8
          //   3776: astore 19
          //   3778: aload 4
          //   3780: astore 9
          //   3782: aload 11
          //   3784: astore 10
          //   3786: aload 7
          //   3788: astore 5
          //   3790: aload 8
          //   3792: astore 6
          //   3794: new 202	org/apache/cordova/api/PluginResult
          //   3797: dup
          //   3798: getstatic 225	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   3801: aload 28
          //   3803: invokespecial 219	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   3806: astore 28
          //   3808: invokestatic 186	org/apache/cordova/FileTransfer:access$700	()Ljava/util/HashMap;
          //   3811: astore 5
          //   3813: aload 5
          //   3815: monitorenter
          //   3816: invokestatic 186	org/apache/cordova/FileTransfer:access$700	()Ljava/util/HashMap;
          //   3819: aload_0
          //   3820: getfield 46	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
          //   3823: invokevirtual 192	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   3826: pop
          //   3827: aload 5
          //   3829: monitorexit
          //   3830: aload 4
          //   3832: ifnull +38 -> 3870
          //   3835: aload_0
          //   3836: getfield 38	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
          //   3839: ifeq +31 -> 3870
          //   3842: aload_0
          //   3843: getfield 36	org/apache/cordova/FileTransfer$4:val$useHttps	Z
          //   3846: ifeq +24 -> 3870
          //   3849: aload 4
          //   3851: checkcast 90	javax/net/ssl/HttpsURLConnection
          //   3854: astore 5
          //   3856: aload 5
          //   3858: aload 7
          //   3860: invokevirtual 196	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   3863: aload 5
          //   3865: aload 8
          //   3867: invokevirtual 200	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   3870: aload 28
          //   3872: ifnonnull +907 -> 4779
          //   3875: new 202	org/apache/cordova/api/PluginResult
          //   3878: dup
          //   3879: getstatic 208	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
          //   3882: getstatic 212	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   3885: aload_0
          //   3886: getfield 42	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   3889: aload_0
          //   3890: getfield 34	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   3893: aload 4
          //   3895: invokestatic 216	org/apache/cordova/FileTransfer:access$600	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   3898: invokespecial 219	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   3901: astore 4
          //   3903: aload 4
          //   3905: invokevirtual 222	org/apache/cordova/api/PluginResult:getStatus	()I
          //   3908: getstatic 225	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   3911: invokevirtual 228	org/apache/cordova/api/PluginResult$Status:ordinal	()I
          //   3914: if_icmpeq +14 -> 3928
          //   3917: aload 11
          //   3919: ifnull +9 -> 3928
          //   3922: aload 11
          //   3924: invokevirtual 231	java/io/File:delete	()Z
          //   3927: pop
          //   3928: aload_0
          //   3929: getfield 32	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   3932: astore 5
          //   3934: goto -1806 -> 2128
          //   3937: astore 4
          //   3939: aload 23
          //   3941: astore 9
          //   3943: aload 21
          //   3945: astore 10
          //   3947: aload 14
          //   3949: astore 5
          //   3951: aload 15
          //   3953: astore 6
          //   3955: getstatic 212	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   3958: aload_0
          //   3959: getfield 42	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   3962: aload_0
          //   3963: getfield 34	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   3966: aload 23
          //   3968: invokestatic 216	org/apache/cordova/FileTransfer:access$600	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   3971: astore 7
          //   3973: aload 23
          //   3975: astore 9
          //   3977: aload 21
          //   3979: astore 10
          //   3981: aload 14
          //   3983: astore 5
          //   3985: aload 15
          //   3987: astore 6
          //   3989: ldc 125
          //   3991: aload 7
          //   3993: invokevirtual 272	org/json/JSONObject:toString	()Ljava/lang/String;
          //   3996: aload 4
          //   3998: invokestatic 276	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
          //   4001: pop
          //   4002: aload 23
          //   4004: astore 9
          //   4006: aload 21
          //   4008: astore 10
          //   4010: aload 14
          //   4012: astore 5
          //   4014: aload 15
          //   4016: astore 6
          //   4018: new 202	org/apache/cordova/api/PluginResult
          //   4021: dup
          //   4022: getstatic 279	org/apache/cordova/api/PluginResult$Status:IO_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
          //   4025: aload 7
          //   4027: invokespecial 219	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   4030: astore 4
          //   4032: invokestatic 186	org/apache/cordova/FileTransfer:access$700	()Ljava/util/HashMap;
          //   4035: astore 5
          //   4037: aload 5
          //   4039: monitorenter
          //   4040: invokestatic 186	org/apache/cordova/FileTransfer:access$700	()Ljava/util/HashMap;
          //   4043: aload_0
          //   4044: getfield 46	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
          //   4047: invokevirtual 192	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   4050: pop
          //   4051: aload 5
          //   4053: monitorexit
          //   4054: aload 23
          //   4056: ifnull +38 -> 4094
          //   4059: aload_0
          //   4060: getfield 38	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
          //   4063: ifeq +31 -> 4094
          //   4066: aload_0
          //   4067: getfield 36	org/apache/cordova/FileTransfer$4:val$useHttps	Z
          //   4070: ifeq +24 -> 4094
          //   4073: aload 23
          //   4075: checkcast 90	javax/net/ssl/HttpsURLConnection
          //   4078: astore 5
          //   4080: aload 5
          //   4082: aload 14
          //   4084: invokevirtual 196	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   4087: aload 5
          //   4089: aload 15
          //   4091: invokevirtual 200	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   4094: aload 4
          //   4096: ifnonnull +696 -> 4792
          //   4099: new 202	org/apache/cordova/api/PluginResult
          //   4102: dup
          //   4103: getstatic 208	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
          //   4106: getstatic 212	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   4109: aload_0
          //   4110: getfield 42	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   4113: aload_0
          //   4114: getfield 34	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   4117: aload 23
          //   4119: invokestatic 216	org/apache/cordova/FileTransfer:access$600	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   4122: invokespecial 219	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   4125: astore 4
          //   4127: aload 4
          //   4129: invokevirtual 222	org/apache/cordova/api/PluginResult:getStatus	()I
          //   4132: getstatic 225	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   4135: invokevirtual 228	org/apache/cordova/api/PluginResult$Status:ordinal	()I
          //   4138: if_icmpeq +14 -> 4152
          //   4141: aload 21
          //   4143: ifnull +9 -> 4152
          //   4146: aload 21
          //   4148: invokevirtual 231	java/io/File:delete	()Z
          //   4151: pop
          //   4152: aload_0
          //   4153: getfield 32	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   4156: astore 5
          //   4158: goto -2030 -> 2128
          //   4161: astore 4
          //   4163: aload 26
          //   4165: astore 9
          //   4167: aload 24
          //   4169: astore 10
          //   4171: aload 16
          //   4173: astore 5
          //   4175: aload 17
          //   4177: astore 6
          //   4179: ldc 125
          //   4181: aload 4
          //   4183: invokevirtual 290	org/json/JSONException:getMessage	()Ljava/lang/String;
          //   4186: aload 4
          //   4188: invokestatic 276	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
          //   4191: pop
          //   4192: aload 26
          //   4194: astore 9
          //   4196: aload 24
          //   4198: astore 10
          //   4200: aload 16
          //   4202: astore 5
          //   4204: aload 17
          //   4206: astore 6
          //   4208: new 202	org/apache/cordova/api/PluginResult
          //   4211: dup
          //   4212: getstatic 293	org/apache/cordova/api/PluginResult$Status:JSON_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
          //   4215: invokespecial 296	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;)V
          //   4218: astore 4
          //   4220: invokestatic 186	org/apache/cordova/FileTransfer:access$700	()Ljava/util/HashMap;
          //   4223: astore 5
          //   4225: aload 5
          //   4227: monitorenter
          //   4228: invokestatic 186	org/apache/cordova/FileTransfer:access$700	()Ljava/util/HashMap;
          //   4231: aload_0
          //   4232: getfield 46	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
          //   4235: invokevirtual 192	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   4238: pop
          //   4239: aload 5
          //   4241: monitorexit
          //   4242: aload 26
          //   4244: ifnull +38 -> 4282
          //   4247: aload_0
          //   4248: getfield 38	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
          //   4251: ifeq +31 -> 4282
          //   4254: aload_0
          //   4255: getfield 36	org/apache/cordova/FileTransfer$4:val$useHttps	Z
          //   4258: ifeq +24 -> 4282
          //   4261: aload 26
          //   4263: checkcast 90	javax/net/ssl/HttpsURLConnection
          //   4266: astore 5
          //   4268: aload 5
          //   4270: aload 16
          //   4272: invokevirtual 196	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   4275: aload 5
          //   4277: aload 17
          //   4279: invokevirtual 200	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   4282: aload 4
          //   4284: ifnonnull +505 -> 4789
          //   4287: new 202	org/apache/cordova/api/PluginResult
          //   4290: dup
          //   4291: getstatic 208	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
          //   4294: getstatic 212	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   4297: aload_0
          //   4298: getfield 42	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   4301: aload_0
          //   4302: getfield 34	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   4305: aload 26
          //   4307: invokestatic 216	org/apache/cordova/FileTransfer:access$600	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   4310: invokespecial 219	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   4313: astore 4
          //   4315: aload 4
          //   4317: invokevirtual 222	org/apache/cordova/api/PluginResult:getStatus	()I
          //   4320: getstatic 225	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   4323: invokevirtual 228	org/apache/cordova/api/PluginResult$Status:ordinal	()I
          //   4326: if_icmpeq +14 -> 4340
          //   4329: aload 24
          //   4331: ifnull +9 -> 4340
          //   4334: aload 24
          //   4336: invokevirtual 231	java/io/File:delete	()Z
          //   4339: pop
          //   4340: aload_0
          //   4341: getfield 32	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   4344: astore 5
          //   4346: goto -2218 -> 2128
          //   4349: astore 4
          //   4351: aload 27
          //   4353: astore 9
          //   4355: aload 25
          //   4357: astore 10
          //   4359: aload 18
          //   4361: astore 5
          //   4363: aload 19
          //   4365: astore 6
          //   4367: getstatic 212	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   4370: aload_0
          //   4371: getfield 42	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   4374: aload_0
          //   4375: getfield 34	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   4378: aload 27
          //   4380: invokestatic 216	org/apache/cordova/FileTransfer:access$600	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   4383: astore 7
          //   4385: aload 27
          //   4387: astore 9
          //   4389: aload 25
          //   4391: astore 10
          //   4393: aload 18
          //   4395: astore 5
          //   4397: aload 19
          //   4399: astore 6
          //   4401: ldc 125
          //   4403: aload 7
          //   4405: invokevirtual 272	org/json/JSONObject:toString	()Ljava/lang/String;
          //   4408: aload 4
          //   4410: invokestatic 276	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
          //   4413: pop
          //   4414: aload 27
          //   4416: astore 9
          //   4418: aload 25
          //   4420: astore 10
          //   4422: aload 18
          //   4424: astore 5
          //   4426: aload 19
          //   4428: astore 6
          //   4430: new 202	org/apache/cordova/api/PluginResult
          //   4433: dup
          //   4434: getstatic 279	org/apache/cordova/api/PluginResult$Status:IO_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
          //   4437: aload 7
          //   4439: invokespecial 219	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   4442: astore 4
          //   4444: invokestatic 186	org/apache/cordova/FileTransfer:access$700	()Ljava/util/HashMap;
          //   4447: astore 5
          //   4449: aload 5
          //   4451: monitorenter
          //   4452: invokestatic 186	org/apache/cordova/FileTransfer:access$700	()Ljava/util/HashMap;
          //   4455: aload_0
          //   4456: getfield 46	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
          //   4459: invokevirtual 192	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   4462: pop
          //   4463: aload 5
          //   4465: monitorexit
          //   4466: aload 27
          //   4468: ifnull +38 -> 4506
          //   4471: aload_0
          //   4472: getfield 38	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
          //   4475: ifeq +31 -> 4506
          //   4478: aload_0
          //   4479: getfield 36	org/apache/cordova/FileTransfer$4:val$useHttps	Z
          //   4482: ifeq +24 -> 4506
          //   4485: aload 27
          //   4487: checkcast 90	javax/net/ssl/HttpsURLConnection
          //   4490: astore 5
          //   4492: aload 5
          //   4494: aload 18
          //   4496: invokevirtual 196	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   4499: aload 5
          //   4501: aload 19
          //   4503: invokevirtual 200	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   4506: aload 4
          //   4508: ifnonnull +278 -> 4786
          //   4511: new 202	org/apache/cordova/api/PluginResult
          //   4514: dup
          //   4515: getstatic 208	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
          //   4518: getstatic 212	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   4521: aload_0
          //   4522: getfield 42	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   4525: aload_0
          //   4526: getfield 34	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   4529: aload 27
          //   4531: invokestatic 216	org/apache/cordova/FileTransfer:access$600	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   4534: invokespecial 219	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   4537: astore 4
          //   4539: aload 4
          //   4541: invokevirtual 222	org/apache/cordova/api/PluginResult:getStatus	()I
          //   4544: getstatic 225	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   4547: invokevirtual 228	org/apache/cordova/api/PluginResult$Status:ordinal	()I
          //   4550: if_icmpeq +14 -> 4564
          //   4553: aload 25
          //   4555: ifnull +9 -> 4564
          //   4558: aload 25
          //   4560: invokevirtual 231	java/io/File:delete	()Z
          //   4563: pop
          //   4564: aload_0
          //   4565: getfield 32	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   4568: astore 5
          //   4570: goto -2442 -> 2128
          //   4573: astore 7
          //   4575: invokestatic 186	org/apache/cordova/FileTransfer:access$700	()Ljava/util/HashMap;
          //   4578: astore 4
          //   4580: aload 4
          //   4582: monitorenter
          //   4583: invokestatic 186	org/apache/cordova/FileTransfer:access$700	()Ljava/util/HashMap;
          //   4586: aload_0
          //   4587: getfield 46	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
          //   4590: invokevirtual 192	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   4593: pop
          //   4594: aload 4
          //   4596: monitorexit
          //   4597: aload 9
          //   4599: ifnull +38 -> 4637
          //   4602: aload_0
          //   4603: getfield 38	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
          //   4606: ifeq +31 -> 4637
          //   4609: aload_0
          //   4610: getfield 36	org/apache/cordova/FileTransfer$4:val$useHttps	Z
          //   4613: ifeq +24 -> 4637
          //   4616: aload 9
          //   4618: checkcast 90	javax/net/ssl/HttpsURLConnection
          //   4621: astore 4
          //   4623: aload 4
          //   4625: aload 5
          //   4627: invokevirtual 196	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   4630: aload 4
          //   4632: aload 6
          //   4634: invokevirtual 200	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   4637: aload 31
          //   4639: astore 4
          //   4641: iconst_0
          //   4642: ifne +31 -> 4673
          //   4645: new 202	org/apache/cordova/api/PluginResult
          //   4648: dup
          //   4649: getstatic 208	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
          //   4652: getstatic 212	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   4655: aload_0
          //   4656: getfield 42	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   4659: aload_0
          //   4660: getfield 34	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   4663: aload 9
          //   4665: invokestatic 216	org/apache/cordova/FileTransfer:access$600	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   4668: invokespecial 219	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   4671: astore 4
          //   4673: aload 4
          //   4675: invokevirtual 222	org/apache/cordova/api/PluginResult:getStatus	()I
          //   4678: getstatic 225	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   4681: invokevirtual 228	org/apache/cordova/api/PluginResult$Status:ordinal	()I
          //   4684: if_icmpeq +14 -> 4698
          //   4687: aload 10
          //   4689: ifnull +9 -> 4698
          //   4692: aload 10
          //   4694: invokevirtual 231	java/io/File:delete	()Z
          //   4697: pop
          //   4698: aload_0
          //   4699: getfield 32	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   4702: aload 4
          //   4704: invokevirtual 235	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
          //   4707: aload 7
          //   4709: athrow
          //   4710: astore 5
          //   4712: aload 4
          //   4714: monitorexit
          //   4715: aload 5
          //   4717: athrow
          //   4718: astore 4
          //   4720: aload 5
          //   4722: monitorexit
          //   4723: aload 4
          //   4725: athrow
          //   4726: astore 4
          //   4728: aload 5
          //   4730: monitorexit
          //   4731: aload 4
          //   4733: athrow
          //   4734: astore 4
          //   4736: aload 5
          //   4738: monitorexit
          //   4739: aload 4
          //   4741: athrow
          //   4742: astore 4
          //   4744: aload 5
          //   4746: monitorexit
          //   4747: aload 4
          //   4749: athrow
          //   4750: astore 4
          //   4752: aload 5
          //   4754: monitorexit
          //   4755: aload 4
          //   4757: athrow
          //   4758: astore 4
          //   4760: aload 5
          //   4762: monitorexit
          //   4763: aload 4
          //   4765: athrow
          //   4766: astore 30
          //   4768: aload 5
          //   4770: astore 28
          //   4772: aload 6
          //   4774: astore 29
          //   4776: goto -2089 -> 2687
          //   4779: aload 28
          //   4781: astore 4
          //   4783: goto -880 -> 3903
          //   4786: goto -247 -> 4539
          //   4789: goto -474 -> 4315
          //   4792: goto -665 -> 4127
          //   4795: goto -1577 -> 3218
          // Local variable table:
          //   start	length	slot	name	signature
          //   0	4798	0	this	4
          //   2617	16	1	i	int
          //   2609	30	2	l	long
          //   24	2986	4	localObject1	Object
          //   3028	60	4	localFileNotFoundException	FileNotFoundException
          //   3121	783	4	localPluginResult1	PluginResult
          //   3937	60	4	localIOException	IOException
          //   4030	98	4	localPluginResult2	PluginResult
          //   4161	26	4	localJSONException	JSONException
          //   4218	98	4	localPluginResult3	PluginResult
          //   4349	60	4	localThrowable	Throwable
          //   4718	6	4	localObject3	Object
          //   4726	6	4	localObject4	Object
          //   4734	6	4	localObject5	Object
          //   4742	6	4	localObject6	Object
          //   4750	6	4	localObject7	Object
          //   4758	6	4	localObject8	Object
          //   4781	1	4	localObject9	Object
          //   2677	7	5	localObject11	Object
          //   4710	59	5	localObject13	Object
          //   141	2967	6	localObject14	Object
          //   3252	6	6	localObject15	Object
          //   3338	1435	6	localObject16	Object
          //   42	4396	7	localObject17	Object
          //   4573	135	7	localObject18	Object
          //   60	3806	8	localSSLSocketFactory	SSLSocketFactory
          //   133	4531	9	localObject19	Object
          //   72	4621	10	localObject20	Object
          //   154	3769	11	localFile	File
          //   89	3636	12	localObject21	Object
          //   93	3636	13	localObject22	Object
          //   101	3982	14	localObject23	Object
          //   105	3985	15	localObject24	Object
          //   113	4158	16	localObject25	Object
          //   117	4161	17	localObject26	Object
          //   125	4370	18	localObject27	Object
          //   129	4373	19	localObject28	Object
          //   75	3646	20	localObject29	Object
          //   63	4084	21	localObject30	Object
          //   85	3632	22	localObject31	Object
          //   97	4021	23	localObject32	Object
          //   66	4269	24	localObject33	Object
          //   69	4490	25	localObject34	Object
          //   109	4197	26	localObject35	Object
          //   121	4409	27	localObject36	Object
          //   12	4768	28	localObject37	Object
          //   81	4694	29	localObject38	Object
          //   15	3499	30	localObject39	Object
          //   4766	1	30	localObject40	Object
          //   78	4560	31	localObject41	Object
          //   18	2632	32	localFileProgressResult	FileProgressResult
          //   21	2541	33	localObject42	Object
          //   27	2479	34	localObject43	Object
          //   30	2492	35	localObject44	Object
          //   33	2505	36	localObject45	Object
          //   36	2518	37	localObject46	Object
          //   39	2531	38	localObject47	Object
          //   45	2465	39	localObject48	Object
          //   48	2478	40	localObject49	Object
          //   51	2491	41	localObject50	Object
          //   54	2504	42	localObject51	Object
          //   57	2517	43	localObject52	Object
          //   2226	265	44	localHttpsURLConnection	HttpsURLConnection
          // Exception table:
          //   from	to	target	type
          //   1715	1724	2677	finally
          //   2601	2608	2677	finally
          //   2610	2618	2677	finally
          //   2622	2631	2677	finally
          //   2636	2674	2677	finally
          //   3257	3260	2677	finally
          //   143	156	3028	java/io/FileNotFoundException
          //   236	245	3028	java/io/FileNotFoundException
          //   325	334	3028	java/io/FileNotFoundException
          //   414	421	3028	java/io/FileNotFoundException
          //   501	508	3028	java/io/FileNotFoundException
          //   588	600	3028	java/io/FileNotFoundException
          //   680	688	3028	java/io/FileNotFoundException
          //   768	778	3028	java/io/FileNotFoundException
          //   858	870	3028	java/io/FileNotFoundException
          //   955	964	3028	java/io/FileNotFoundException
          //   1044	1051	3028	java/io/FileNotFoundException
          //   1131	1140	3028	java/io/FileNotFoundException
          //   1220	1225	3028	java/io/FileNotFoundException
          //   1305	1333	3028	java/io/FileNotFoundException
          //   1413	1422	3028	java/io/FileNotFoundException
          //   1502	1510	3028	java/io/FileNotFoundException
          //   1590	1596	3028	java/io/FileNotFoundException
          //   1676	1687	3028	java/io/FileNotFoundException
          //   1817	1825	3028	java/io/FileNotFoundException
          //   1905	1910	3028	java/io/FileNotFoundException
          //   1990	1995	3028	java/io/FileNotFoundException
          //   2216	2228	3028	java/io/FileNotFoundException
          //   2308	2315	3028	java/io/FileNotFoundException
          //   2395	2402	3028	java/io/FileNotFoundException
          //   2482	2490	3028	java/io/FileNotFoundException
          //   2577	2586	3028	java/io/FileNotFoundException
          //   2767	2775	3028	java/io/FileNotFoundException
          //   2855	2860	3028	java/io/FileNotFoundException
          //   2940	2945	3028	java/io/FileNotFoundException
          //   3025	3028	3028	java/io/FileNotFoundException
          //   3340	3348	3028	java/io/FileNotFoundException
          //   3428	3433	3028	java/io/FileNotFoundException
          //   3513	3518	3028	java/io/FileNotFoundException
          //   3598	3627	3028	java/io/FileNotFoundException
          //   3707	3714	3028	java/io/FileNotFoundException
          //   3794	3808	3028	java/io/FileNotFoundException
          //   1724	1737	3252	finally
          //   2589	2601	3252	finally
          //   3254	3257	3252	finally
          //   143	156	3937	java/io/IOException
          //   236	245	3937	java/io/IOException
          //   325	334	3937	java/io/IOException
          //   414	421	3937	java/io/IOException
          //   501	508	3937	java/io/IOException
          //   588	600	3937	java/io/IOException
          //   680	688	3937	java/io/IOException
          //   768	778	3937	java/io/IOException
          //   858	870	3937	java/io/IOException
          //   955	964	3937	java/io/IOException
          //   1044	1051	3937	java/io/IOException
          //   1131	1140	3937	java/io/IOException
          //   1220	1225	3937	java/io/IOException
          //   1305	1333	3937	java/io/IOException
          //   1413	1422	3937	java/io/IOException
          //   1502	1510	3937	java/io/IOException
          //   1590	1596	3937	java/io/IOException
          //   1676	1687	3937	java/io/IOException
          //   1817	1825	3937	java/io/IOException
          //   1905	1910	3937	java/io/IOException
          //   1990	1995	3937	java/io/IOException
          //   2216	2228	3937	java/io/IOException
          //   2308	2315	3937	java/io/IOException
          //   2395	2402	3937	java/io/IOException
          //   2482	2490	3937	java/io/IOException
          //   2577	2586	3937	java/io/IOException
          //   2767	2775	3937	java/io/IOException
          //   2855	2860	3937	java/io/IOException
          //   2940	2945	3937	java/io/IOException
          //   3025	3028	3937	java/io/IOException
          //   3340	3348	3937	java/io/IOException
          //   3428	3433	3937	java/io/IOException
          //   3513	3518	3937	java/io/IOException
          //   3598	3627	3937	java/io/IOException
          //   3707	3714	3937	java/io/IOException
          //   3794	3808	3937	java/io/IOException
          //   143	156	4161	org/json/JSONException
          //   236	245	4161	org/json/JSONException
          //   325	334	4161	org/json/JSONException
          //   414	421	4161	org/json/JSONException
          //   501	508	4161	org/json/JSONException
          //   588	600	4161	org/json/JSONException
          //   680	688	4161	org/json/JSONException
          //   768	778	4161	org/json/JSONException
          //   858	870	4161	org/json/JSONException
          //   955	964	4161	org/json/JSONException
          //   1044	1051	4161	org/json/JSONException
          //   1131	1140	4161	org/json/JSONException
          //   1220	1225	4161	org/json/JSONException
          //   1305	1333	4161	org/json/JSONException
          //   1413	1422	4161	org/json/JSONException
          //   1502	1510	4161	org/json/JSONException
          //   1590	1596	4161	org/json/JSONException
          //   1676	1687	4161	org/json/JSONException
          //   1817	1825	4161	org/json/JSONException
          //   1905	1910	4161	org/json/JSONException
          //   1990	1995	4161	org/json/JSONException
          //   2216	2228	4161	org/json/JSONException
          //   2308	2315	4161	org/json/JSONException
          //   2395	2402	4161	org/json/JSONException
          //   2482	2490	4161	org/json/JSONException
          //   2577	2586	4161	org/json/JSONException
          //   2767	2775	4161	org/json/JSONException
          //   2855	2860	4161	org/json/JSONException
          //   2940	2945	4161	org/json/JSONException
          //   3025	3028	4161	org/json/JSONException
          //   3340	3348	4161	org/json/JSONException
          //   3428	3433	4161	org/json/JSONException
          //   3513	3518	4161	org/json/JSONException
          //   3598	3627	4161	org/json/JSONException
          //   3707	3714	4161	org/json/JSONException
          //   3794	3808	4161	org/json/JSONException
          //   143	156	4349	java/lang/Throwable
          //   236	245	4349	java/lang/Throwable
          //   325	334	4349	java/lang/Throwable
          //   414	421	4349	java/lang/Throwable
          //   501	508	4349	java/lang/Throwable
          //   588	600	4349	java/lang/Throwable
          //   680	688	4349	java/lang/Throwable
          //   768	778	4349	java/lang/Throwable
          //   858	870	4349	java/lang/Throwable
          //   955	964	4349	java/lang/Throwable
          //   1044	1051	4349	java/lang/Throwable
          //   1131	1140	4349	java/lang/Throwable
          //   1220	1225	4349	java/lang/Throwable
          //   1305	1333	4349	java/lang/Throwable
          //   1413	1422	4349	java/lang/Throwable
          //   1502	1510	4349	java/lang/Throwable
          //   1590	1596	4349	java/lang/Throwable
          //   1676	1687	4349	java/lang/Throwable
          //   1817	1825	4349	java/lang/Throwable
          //   1905	1910	4349	java/lang/Throwable
          //   1990	1995	4349	java/lang/Throwable
          //   2216	2228	4349	java/lang/Throwable
          //   2308	2315	4349	java/lang/Throwable
          //   2395	2402	4349	java/lang/Throwable
          //   2482	2490	4349	java/lang/Throwable
          //   2577	2586	4349	java/lang/Throwable
          //   2767	2775	4349	java/lang/Throwable
          //   2855	2860	4349	java/lang/Throwable
          //   2940	2945	4349	java/lang/Throwable
          //   3025	3028	4349	java/lang/Throwable
          //   3340	3348	4349	java/lang/Throwable
          //   3428	3433	4349	java/lang/Throwable
          //   3513	3518	4349	java/lang/Throwable
          //   3598	3627	4349	java/lang/Throwable
          //   3707	3714	4349	java/lang/Throwable
          //   3794	3808	4349	java/lang/Throwable
          //   143	156	4573	finally
          //   236	245	4573	finally
          //   325	334	4573	finally
          //   414	421	4573	finally
          //   501	508	4573	finally
          //   588	600	4573	finally
          //   680	688	4573	finally
          //   768	778	4573	finally
          //   858	870	4573	finally
          //   955	964	4573	finally
          //   1044	1051	4573	finally
          //   1131	1140	4573	finally
          //   1220	1225	4573	finally
          //   1305	1333	4573	finally
          //   1413	1422	4573	finally
          //   1502	1510	4573	finally
          //   1590	1596	4573	finally
          //   1676	1687	4573	finally
          //   1817	1825	4573	finally
          //   1905	1910	4573	finally
          //   1990	1995	4573	finally
          //   2216	2228	4573	finally
          //   2308	2315	4573	finally
          //   2395	2402	4573	finally
          //   2482	2490	4573	finally
          //   2577	2586	4573	finally
          //   2767	2775	4573	finally
          //   2855	2860	4573	finally
          //   2940	2945	4573	finally
          //   3025	3028	4573	finally
          //   3046	3064	4573	finally
          //   3080	3093	4573	finally
          //   3109	3123	4573	finally
          //   3340	3348	4573	finally
          //   3428	3433	4573	finally
          //   3513	3518	4573	finally
          //   3598	3627	4573	finally
          //   3707	3714	4573	finally
          //   3794	3808	4573	finally
          //   3955	3973	4573	finally
          //   3989	4002	4573	finally
          //   4018	4032	4573	finally
          //   4179	4192	4573	finally
          //   4208	4220	4573	finally
          //   4367	4385	4573	finally
          //   4401	4414	4573	finally
          //   4430	4444	4573	finally
          //   4583	4597	4710	finally
          //   4712	4715	4710	finally
          //   3131	3145	4718	finally
          //   4720	4723	4718	finally
          //   4040	4054	4726	finally
          //   4728	4731	4726	finally
          //   4228	4242	4734	finally
          //   4736	4739	4734	finally
          //   4452	4466	4742	finally
          //   4744	4747	4742	finally
          //   2003	2017	4750	finally
          //   4752	4755	4750	finally
          //   3816	3830	4758	finally
          //   4760	4763	4758	finally
          //   1693	1700	4766	finally
          //   1704	1715	4766	finally
        }
      });
      return;
    }
  }
  
  private static String getArgument(JSONArray paramJSONArray, int paramInt, String paramString)
  {
    Object localObject = paramString;
    if (paramJSONArray.length() >= paramInt)
    {
      paramJSONArray = paramJSONArray.optString(paramInt);
      if (paramJSONArray != null)
      {
        localObject = paramJSONArray;
        if (!"null".equals(paramJSONArray)) {}
      }
      else
      {
        localObject = paramString;
      }
    }
    return localObject;
  }
  
  private File getFileFromPath(String paramString)
    throws FileNotFoundException
  {
    if (paramString.startsWith("file://")) {}
    for (paramString = new File(paramString.substring("file://".length())); paramString.getParent() == null; paramString = new File(paramString)) {
      throw new FileNotFoundException();
    }
    return paramString;
  }
  
  private static InputStream getInputStream(URLConnection paramURLConnection)
    throws IOException
  {
    if (Build.VERSION.SDK_INT < 11) {
      return new DoneHandlerInputStream(paramURLConnection.getInputStream());
    }
    return paramURLConnection.getInputStream();
  }
  
  private InputStream getPathFromUri(String paramString)
    throws FileNotFoundException
  {
    if (paramString.startsWith("content:"))
    {
      paramString = Uri.parse(paramString);
      return cordova.getActivity().getContentResolver().openInputStream(paramString);
    }
    if (paramString.startsWith("file://"))
    {
      int i = paramString.indexOf("?");
      if (i == -1) {
        return new FileInputStream(paramString.substring(7));
      }
      return new FileInputStream(paramString.substring(7, i));
    }
    return new FileInputStream(paramString);
  }
  
  private static void safeClose(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  private static SSLSocketFactory trustAllHosts(HttpsURLConnection paramHttpsURLConnection)
  {
    SSLSocketFactory localSSLSocketFactory = paramHttpsURLConnection.getSSLSocketFactory();
    try
    {
      SSLContext localSSLContext = SSLContext.getInstance("TLS");
      localSSLContext.init(null, trustAllCerts, new SecureRandom());
      paramHttpsURLConnection.setSSLSocketFactory(localSSLContext.getSocketFactory());
      return localSSLSocketFactory;
    }
    catch (Exception paramHttpsURLConnection)
    {
      Log.e("FileTransfer", paramHttpsURLConnection.getMessage(), paramHttpsURLConnection);
    }
    return localSSLSocketFactory;
  }
  
  /* Error */
  private void upload(final String paramString1, final String paramString2, final JSONArray paramJSONArray, CallbackContext arg4)
    throws JSONException
  {
    // Byte code:
    //   0: ldc 41
    //   2: new 270	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 271	java/lang/StringBuilder:<init>	()V
    //   9: ldc_w 477
    //   12: invokevirtual 299	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: aload_1
    //   16: invokevirtual 299	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: ldc_w 316
    //   22: invokevirtual 299	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: aload_2
    //   26: invokevirtual 299	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: invokevirtual 308	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   32: invokestatic 320	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   35: pop
    //   36: aload_3
    //   37: iconst_2
    //   38: ldc_w 479
    //   41: invokestatic 481	org/apache/cordova/FileTransfer:getArgument	(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;
    //   44: astore 10
    //   46: aload_3
    //   47: iconst_3
    //   48: ldc_w 483
    //   51: invokestatic 481	org/apache/cordova/FileTransfer:getArgument	(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;
    //   54: astore 11
    //   56: aload_3
    //   57: iconst_4
    //   58: ldc_w 485
    //   61: invokestatic 481	org/apache/cordova/FileTransfer:getArgument	(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;
    //   64: astore 12
    //   66: aload_3
    //   67: iconst_5
    //   68: invokevirtual 328	org/json/JSONArray:optJSONObject	(I)Lorg/json/JSONObject;
    //   71: ifnonnull +385 -> 456
    //   74: new 194	org/json/JSONObject
    //   77: dup
    //   78: invokespecial 245	org/json/JSONObject:<init>	()V
    //   81: astore 8
    //   83: aload_3
    //   84: bipush 6
    //   86: invokevirtual 324	org/json/JSONArray:optBoolean	(I)Z
    //   89: istore 6
    //   91: aload_3
    //   92: bipush 7
    //   94: invokevirtual 324	org/json/JSONArray:optBoolean	(I)Z
    //   97: ifne +12 -> 109
    //   100: aload_3
    //   101: bipush 7
    //   103: invokevirtual 488	org/json/JSONArray:isNull	(I)Z
    //   106: ifeq +360 -> 466
    //   109: iconst_1
    //   110: istore 5
    //   112: aload_3
    //   113: bipush 8
    //   115: invokevirtual 328	org/json/JSONArray:optJSONObject	(I)Lorg/json/JSONObject;
    //   118: ifnonnull +354 -> 472
    //   121: aload 8
    //   123: ldc_w 490
    //   126: invokevirtual 493	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   129: astore 9
    //   131: aload_3
    //   132: bipush 9
    //   134: invokevirtual 231	org/json/JSONArray:getString	(I)Ljava/lang/String;
    //   137: astore_3
    //   138: ldc 41
    //   140: new 270	java/lang/StringBuilder
    //   143: dup
    //   144: invokespecial 271	java/lang/StringBuilder:<init>	()V
    //   147: ldc_w 495
    //   150: invokevirtual 299	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: aload 10
    //   155: invokevirtual 299	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: invokevirtual 308	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   161: invokestatic 320	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   164: pop
    //   165: ldc 41
    //   167: new 270	java/lang/StringBuilder
    //   170: dup
    //   171: invokespecial 271	java/lang/StringBuilder:<init>	()V
    //   174: ldc_w 497
    //   177: invokevirtual 299	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: aload 11
    //   182: invokevirtual 299	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: invokevirtual 308	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   188: invokestatic 320	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   191: pop
    //   192: ldc 41
    //   194: new 270	java/lang/StringBuilder
    //   197: dup
    //   198: invokespecial 271	java/lang/StringBuilder:<init>	()V
    //   201: ldc_w 499
    //   204: invokevirtual 299	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: aload 12
    //   209: invokevirtual 299	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 308	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: invokestatic 320	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   218: pop
    //   219: ldc 41
    //   221: new 270	java/lang/StringBuilder
    //   224: dup
    //   225: invokespecial 271	java/lang/StringBuilder:<init>	()V
    //   228: ldc_w 501
    //   231: invokevirtual 299	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: aload 8
    //   236: invokevirtual 504	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   239: invokevirtual 308	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   242: invokestatic 320	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   245: pop
    //   246: ldc 41
    //   248: new 270	java/lang/StringBuilder
    //   251: dup
    //   252: invokespecial 271	java/lang/StringBuilder:<init>	()V
    //   255: ldc_w 506
    //   258: invokevirtual 299	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: iload 6
    //   263: invokevirtual 509	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   266: invokevirtual 308	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   269: invokestatic 320	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   272: pop
    //   273: ldc 41
    //   275: new 270	java/lang/StringBuilder
    //   278: dup
    //   279: invokespecial 271	java/lang/StringBuilder:<init>	()V
    //   282: ldc_w 511
    //   285: invokevirtual 299	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: iload 5
    //   290: invokevirtual 509	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   293: invokevirtual 308	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   296: invokestatic 320	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   299: pop
    //   300: ldc 41
    //   302: new 270	java/lang/StringBuilder
    //   305: dup
    //   306: invokespecial 271	java/lang/StringBuilder:<init>	()V
    //   309: ldc_w 513
    //   312: invokevirtual 299	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   315: aload 9
    //   317: invokevirtual 504	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   320: invokevirtual 308	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   323: invokestatic 320	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   326: pop
    //   327: ldc 41
    //   329: new 270	java/lang/StringBuilder
    //   332: dup
    //   333: invokespecial 271	java/lang/StringBuilder:<init>	()V
    //   336: ldc_w 515
    //   339: invokevirtual 299	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: aload_3
    //   343: invokevirtual 299	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   346: invokevirtual 308	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   349: invokestatic 320	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   352: pop
    //   353: new 330	java/net/URL
    //   356: dup
    //   357: aload_2
    //   358: invokespecial 332	java/net/URL:<init>	(Ljava/lang/String;)V
    //   361: astore 13
    //   363: aload 13
    //   365: invokevirtual 335	java/net/URL:getProtocol	()Ljava/lang/String;
    //   368: ldc_w 337
    //   371: invokevirtual 343	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   374: istore 7
    //   376: new 19	org/apache/cordova/FileTransfer$RequestContext
    //   379: dup
    //   380: aload_1
    //   381: aload_2
    //   382: aload 4
    //   384: invokespecial 365	org/apache/cordova/FileTransfer$RequestContext:<init>	(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V
    //   387: astore 14
    //   389: getstatic 65	org/apache/cordova/FileTransfer:activeRequests	Ljava/util/HashMap;
    //   392: astore 4
    //   394: aload 4
    //   396: monitorenter
    //   397: getstatic 65	org/apache/cordova/FileTransfer:activeRequests	Ljava/util/HashMap;
    //   400: aload_3
    //   401: aload 14
    //   403: invokevirtual 368	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   406: pop
    //   407: aload 4
    //   409: monitorexit
    //   410: aload_0
    //   411: getfield 130	org/apache/cordova/FileTransfer:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   414: invokeinterface 136 1 0
    //   419: new 6	org/apache/cordova/FileTransfer$1
    //   422: dup
    //   423: aload_0
    //   424: aload 14
    //   426: iload 7
    //   428: iload 6
    //   430: aload 13
    //   432: aload_2
    //   433: aload 9
    //   435: aload 8
    //   437: aload 10
    //   439: aload 11
    //   441: aload 12
    //   443: aload_1
    //   444: iload 5
    //   446: aload_3
    //   447: invokespecial 518	org/apache/cordova/FileTransfer$1:<init>	(Lorg/apache/cordova/FileTransfer;Lorg/apache/cordova/FileTransfer$RequestContext;ZZLjava/net/URL;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    //   450: invokeinterface 145 2 0
    //   455: return
    //   456: aload_3
    //   457: iconst_5
    //   458: invokevirtual 328	org/json/JSONArray:optJSONObject	(I)Lorg/json/JSONObject;
    //   461: astore 8
    //   463: goto -380 -> 83
    //   466: iconst_0
    //   467: istore 5
    //   469: goto -357 -> 112
    //   472: aload_3
    //   473: bipush 8
    //   475: invokevirtual 328	org/json/JSONArray:optJSONObject	(I)Lorg/json/JSONObject;
    //   478: astore 9
    //   480: goto -349 -> 131
    //   483: astore_3
    //   484: getstatic 54	org/apache/cordova/FileTransfer:INVALID_URL_ERR	I
    //   487: aload_1
    //   488: aload_2
    //   489: aconst_null
    //   490: iconst_0
    //   491: invokestatic 103	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   494: invokestatic 107	org/apache/cordova/FileTransfer:createFileTransferError	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;
    //   497: astore_1
    //   498: ldc 41
    //   500: aload_1
    //   501: invokevirtual 362	org/json/JSONObject:toString	()Ljava/lang/String;
    //   504: aload_3
    //   505: invokestatic 268	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   508: pop
    //   509: aload 4
    //   511: new 109	org/apache/cordova/api/PluginResult
    //   514: dup
    //   515: getstatic 358	org/apache/cordova/api/PluginResult$Status:IO_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
    //   518: aload_1
    //   519: invokespecial 118	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   522: invokevirtual 361	org/apache/cordova/api/CallbackContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   525: return
    //   526: astore_1
    //   527: aload 4
    //   529: monitorexit
    //   530: aload_1
    //   531: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	532	0	this	FileTransfer
    //   0	532	1	paramString1	String
    //   0	532	2	paramString2	String
    //   0	532	3	paramJSONArray	JSONArray
    //   110	358	5	bool1	boolean
    //   89	340	6	bool2	boolean
    //   374	53	7	bool3	boolean
    //   81	381	8	localJSONObject1	JSONObject
    //   129	350	9	localJSONObject2	JSONObject
    //   44	394	10	str1	String
    //   54	386	11	str2	String
    //   64	378	12	str3	String
    //   361	70	13	localURL	URL
    //   387	38	14	localRequestContext	RequestContext
    // Exception table:
    //   from	to	target	type
    //   353	363	483	java/net/MalformedURLException
    //   397	410	526	finally
    //   527	530	526	finally
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    if ((paramString.equals("upload")) || (paramString.equals("download")))
    {
      String str1 = paramJSONArray.getString(0);
      String str2 = paramJSONArray.getString(1);
      if (paramString.equals("upload")) {
        try
        {
          upload(URLDecoder.decode(str1, "UTF-8"), str2, paramJSONArray, paramCallbackContext);
          return true;
        }
        catch (UnsupportedEncodingException paramString)
        {
          paramCallbackContext.sendPluginResult(new PluginResult(PluginResult.Status.MALFORMED_URL_EXCEPTION, "UTF-8 error."));
          return true;
        }
      }
      download(str1, str2, paramJSONArray, paramCallbackContext);
      return true;
    }
    if (paramString.equals("abort"))
    {
      abort(paramJSONArray.getString(0));
      paramCallbackContext.success();
      return true;
    }
    return false;
  }
  
  private static final class DoneHandlerInputStream
    extends FilterInputStream
  {
    private boolean done;
    
    public DoneHandlerInputStream(InputStream paramInputStream)
    {
      super();
    }
    
    public int read()
      throws IOException
    {
      int i;
      if (done)
      {
        i = -1;
        if (i != -1) {
          break label31;
        }
      }
      label31:
      for (boolean bool = true;; bool = false)
      {
        done = bool;
        return i;
        i = super.read();
        break;
      }
    }
    
    public int read(byte[] paramArrayOfByte)
      throws IOException
    {
      int i;
      if (done)
      {
        i = -1;
        if (i != -1) {
          break label32;
        }
      }
      label32:
      for (boolean bool = true;; bool = false)
      {
        done = bool;
        return i;
        i = super.read(paramArrayOfByte);
        break;
      }
    }
    
    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      if (done)
      {
        paramInt1 = -1;
        if (paramInt1 != -1) {
          break label36;
        }
      }
      label36:
      for (boolean bool = true;; bool = false)
      {
        done = bool;
        return paramInt1;
        paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
        break;
      }
    }
  }
  
  private static final class RequestContext
  {
    boolean aborted;
    CallbackContext callbackContext;
    InputStream currentInputStream;
    OutputStream currentOutputStream;
    String source;
    String target;
    File targetFile;
    
    RequestContext(String paramString1, String paramString2, CallbackContext paramCallbackContext)
    {
      source = paramString1;
      target = paramString2;
      callbackContext = paramCallbackContext;
    }
    
    void sendPluginResult(PluginResult paramPluginResult)
    {
      try
      {
        if (!aborted) {
          callbackContext.sendPluginResult(paramPluginResult);
        }
        return;
      }
      finally {}
    }
  }
}
