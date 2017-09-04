import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.KeyStore;
import java.util.Hashtable;
import java.util.Vector;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

public final class ki
{
  private static final byte[] a = { -99, -89, -39, -128, 5, -72, -119, -100 };
  
  public ki()
  {
    new Hashtable();
  }
  
  private static String a(String paramString)
  {
    String str = null;
    if (paramString != null) {
      str = System.getProperty(paramString);
    }
    return str;
  }
  
  private static KeyStore a()
    throws kg
  {
    try
    {
      Object localObject1 = Class.forName("com.ibm.rcp.security.auth.SecurePlatform");
      Object localObject2 = ((Class)localObject1).getMethod("getKeyStore", null).invoke(null, null);
      if (((Boolean)((Class)localObject1).getMethod("isLoggedIn", null).invoke(localObject2, null)).booleanValue())
      {
        localObject1 = (KeyStore)((Class)localObject1).getMethod("getKeyStore", null).invoke(localObject2, null);
        return localObject1;
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      return null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.getLocalizedMessage();
      throw new kh(localIllegalAccessException);
    }
    catch (SecurityException localSecurityException)
    {
      localSecurityException.getLocalizedMessage();
      throw new kh(localSecurityException);
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localNoSuchMethodException.getLocalizedMessage();
      throw new kh(localNoSuchMethodException);
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.getLocalizedMessage();
      throw new kh(localIllegalArgumentException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      localInvocationTargetException.getLocalizedMessage();
      throw new kh(localInvocationTargetException);
    }
    return null;
  }
  
  /* Error */
  private static SSLContext a()
    throws kg
  {
    // Byte code:
    //   0: aconst_null
    //   1: invokestatic 109	ki:a	(Ljava/lang/String;)Ljava/lang/String;
    //   4: astore_1
    //   5: aload_1
    //   6: astore_0
    //   7: aload_1
    //   8: ifnonnull +6 -> 14
    //   11: ldc 111
    //   13: astore_0
    //   14: aconst_null
    //   15: invokestatic 109	ki:a	(Ljava/lang/String;)Ljava/lang/String;
    //   18: astore_1
    //   19: aload_1
    //   20: ifnonnull +291 -> 311
    //   23: aload_0
    //   24: invokestatic 117	javax/net/ssl/SSLContext:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    //   27: astore_1
    //   28: aconst_null
    //   29: invokestatic 109	ki:a	(Ljava/lang/String;)Ljava/lang/String;
    //   32: astore_2
    //   33: aload_2
    //   34: ifnonnull +483 -> 517
    //   37: invokestatic 119	ki:a	()Ljava/security/KeyStore;
    //   40: astore_0
    //   41: aload_0
    //   42: ifnonnull +452 -> 494
    //   45: aload_2
    //   46: ifnonnull +468 -> 514
    //   49: ldc 121
    //   51: invokestatic 109	ki:a	(Ljava/lang/String;)Ljava/lang/String;
    //   54: astore_2
    //   55: ldc 123
    //   57: invokestatic 109	ki:a	(Ljava/lang/String;)Ljava/lang/String;
    //   60: astore_0
    //   61: aload_0
    //   62: ifnull +447 -> 509
    //   65: aload_0
    //   66: ldc 125
    //   68: invokevirtual 131	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   71: ifeq +249 -> 320
    //   74: aload_0
    //   75: invokestatic 134	ki:a	(Ljava/lang/String;)[C
    //   78: astore_0
    //   79: ldc -120
    //   81: invokestatic 109	ki:a	(Ljava/lang/String;)Ljava/lang/String;
    //   84: astore_3
    //   85: aload_3
    //   86: ifnonnull +420 -> 506
    //   89: invokestatic 139	java/security/KeyStore:getDefaultType	()Ljava/lang/String;
    //   92: astore_3
    //   93: invokestatic 144	javax/net/ssl/KeyManagerFactory:getDefaultAlgorithm	()Ljava/lang/String;
    //   96: astore 5
    //   98: aconst_null
    //   99: invokestatic 109	ki:a	(Ljava/lang/String;)Ljava/lang/String;
    //   102: astore 6
    //   104: ldc -110
    //   106: invokestatic 109	ki:a	(Ljava/lang/String;)Ljava/lang/String;
    //   109: astore 4
    //   111: aload 4
    //   113: ifnull +386 -> 499
    //   116: aload_2
    //   117: ifnull +377 -> 494
    //   120: aload_3
    //   121: ifnull +373 -> 494
    //   124: aload_0
    //   125: ifnull +369 -> 494
    //   128: aload 4
    //   130: ifnull +364 -> 494
    //   133: aload_3
    //   134: invokestatic 149	java/security/KeyStore:getInstance	(Ljava/lang/String;)Ljava/security/KeyStore;
    //   137: astore_3
    //   138: aload_3
    //   139: new 151	java/io/FileInputStream
    //   142: dup
    //   143: aload_2
    //   144: invokespecial 154	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   147: aload_0
    //   148: invokevirtual 158	java/security/KeyStore:load	(Ljava/io/InputStream;[C)V
    //   151: aload 6
    //   153: ifnull +175 -> 328
    //   156: aload 4
    //   158: aload 6
    //   160: invokestatic 161	javax/net/ssl/KeyManagerFactory:getInstance	(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
    //   163: astore_2
    //   164: aload_2
    //   165: aload_3
    //   166: aload_0
    //   167: invokevirtual 165	javax/net/ssl/KeyManagerFactory:init	(Ljava/security/KeyStore;[C)V
    //   170: aload_2
    //   171: invokevirtual 169	javax/net/ssl/KeyManagerFactory:getKeyManagers	()[Ljavax/net/ssl/KeyManager;
    //   174: astore_2
    //   175: ldc -85
    //   177: invokestatic 109	ki:a	(Ljava/lang/String;)Ljava/lang/String;
    //   180: astore 6
    //   182: ldc -83
    //   184: invokestatic 109	ki:a	(Ljava/lang/String;)Ljava/lang/String;
    //   187: astore_0
    //   188: aload_0
    //   189: ifnull +300 -> 489
    //   192: aload_0
    //   193: ldc 125
    //   195: invokevirtual 131	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   198: ifeq +219 -> 417
    //   201: aload_0
    //   202: invokestatic 134	ki:a	(Ljava/lang/String;)[C
    //   205: astore_0
    //   206: aconst_null
    //   207: invokestatic 109	ki:a	(Ljava/lang/String;)Ljava/lang/String;
    //   210: astore_3
    //   211: aload_3
    //   212: ifnonnull +274 -> 486
    //   215: invokestatic 139	java/security/KeyStore:getDefaultType	()Ljava/lang/String;
    //   218: astore_3
    //   219: invokestatic 176	javax/net/ssl/TrustManagerFactory:getDefaultAlgorithm	()Ljava/lang/String;
    //   222: astore 5
    //   224: aconst_null
    //   225: invokestatic 109	ki:a	(Ljava/lang/String;)Ljava/lang/String;
    //   228: astore 7
    //   230: ldc -78
    //   232: invokestatic 109	ki:a	(Ljava/lang/String;)Ljava/lang/String;
    //   235: astore 4
    //   237: aload 4
    //   239: ifnull +240 -> 479
    //   242: aload 6
    //   244: ifnull +230 -> 474
    //   247: aload_3
    //   248: ifnull +226 -> 474
    //   251: aload_0
    //   252: ifnull +222 -> 474
    //   255: aload 4
    //   257: ifnull +217 -> 474
    //   260: aload_3
    //   261: invokestatic 149	java/security/KeyStore:getInstance	(Ljava/lang/String;)Ljava/security/KeyStore;
    //   264: astore_3
    //   265: aload_3
    //   266: new 151	java/io/FileInputStream
    //   269: dup
    //   270: aload 6
    //   272: invokespecial 154	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   275: aload_0
    //   276: invokevirtual 158	java/security/KeyStore:load	(Ljava/io/InputStream;[C)V
    //   279: aload 7
    //   281: ifnull +144 -> 425
    //   284: aload 4
    //   286: aload 7
    //   288: invokestatic 181	javax/net/ssl/TrustManagerFactory:getInstance	(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    //   291: astore_0
    //   292: aload_0
    //   293: aload_3
    //   294: invokevirtual 184	javax/net/ssl/TrustManagerFactory:init	(Ljava/security/KeyStore;)V
    //   297: aload_0
    //   298: invokevirtual 188	javax/net/ssl/TrustManagerFactory:getTrustManagers	()[Ljavax/net/ssl/TrustManager;
    //   301: astore_0
    //   302: aload_1
    //   303: aload_2
    //   304: aload_0
    //   305: aconst_null
    //   306: invokevirtual 191	javax/net/ssl/SSLContext:init	([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    //   309: aload_1
    //   310: areturn
    //   311: aload_0
    //   312: aload_1
    //   313: invokestatic 194	javax/net/ssl/SSLContext:getInstance	(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    //   316: astore_1
    //   317: goto -289 -> 28
    //   320: aload_0
    //   321: invokevirtual 198	java/lang/String:toCharArray	()[C
    //   324: astore_0
    //   325: goto -246 -> 79
    //   328: aload 4
    //   330: invokestatic 201	javax/net/ssl/KeyManagerFactory:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
    //   333: astore_2
    //   334: goto -170 -> 164
    //   337: astore_0
    //   338: new 82	kh
    //   341: dup
    //   342: aload_0
    //   343: invokespecial 85	kh:<init>	(Ljava/lang/Throwable;)V
    //   346: athrow
    //   347: astore_0
    //   348: new 82	kh
    //   351: dup
    //   352: aload_0
    //   353: invokespecial 85	kh:<init>	(Ljava/lang/Throwable;)V
    //   356: athrow
    //   357: astore_0
    //   358: new 82	kh
    //   361: dup
    //   362: aload_0
    //   363: invokespecial 85	kh:<init>	(Ljava/lang/Throwable;)V
    //   366: athrow
    //   367: astore_0
    //   368: new 82	kh
    //   371: dup
    //   372: aload_0
    //   373: invokespecial 85	kh:<init>	(Ljava/lang/Throwable;)V
    //   376: athrow
    //   377: astore_0
    //   378: new 82	kh
    //   381: dup
    //   382: aload_0
    //   383: invokespecial 85	kh:<init>	(Ljava/lang/Throwable;)V
    //   386: athrow
    //   387: astore_0
    //   388: new 82	kh
    //   391: dup
    //   392: aload_0
    //   393: invokespecial 85	kh:<init>	(Ljava/lang/Throwable;)V
    //   396: athrow
    //   397: astore_0
    //   398: new 82	kh
    //   401: dup
    //   402: aload_0
    //   403: invokespecial 85	kh:<init>	(Ljava/lang/Throwable;)V
    //   406: athrow
    //   407: astore_0
    //   408: new 82	kh
    //   411: dup
    //   412: aload_0
    //   413: invokespecial 85	kh:<init>	(Ljava/lang/Throwable;)V
    //   416: athrow
    //   417: aload_0
    //   418: invokevirtual 198	java/lang/String:toCharArray	()[C
    //   421: astore_0
    //   422: goto -216 -> 206
    //   425: aload 4
    //   427: invokestatic 204	javax/net/ssl/TrustManagerFactory:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    //   430: astore_0
    //   431: goto -139 -> 292
    //   434: astore_0
    //   435: new 82	kh
    //   438: dup
    //   439: aload_0
    //   440: invokespecial 85	kh:<init>	(Ljava/lang/Throwable;)V
    //   443: athrow
    //   444: astore_0
    //   445: new 82	kh
    //   448: dup
    //   449: aload_0
    //   450: invokespecial 85	kh:<init>	(Ljava/lang/Throwable;)V
    //   453: athrow
    //   454: astore_0
    //   455: new 82	kh
    //   458: dup
    //   459: aload_0
    //   460: invokespecial 85	kh:<init>	(Ljava/lang/Throwable;)V
    //   463: athrow
    //   464: astore_0
    //   465: new 82	kh
    //   468: dup
    //   469: aload_0
    //   470: invokespecial 85	kh:<init>	(Ljava/lang/Throwable;)V
    //   473: athrow
    //   474: aconst_null
    //   475: astore_0
    //   476: goto -174 -> 302
    //   479: aload 5
    //   481: astore 4
    //   483: goto -241 -> 242
    //   486: goto -267 -> 219
    //   489: aconst_null
    //   490: astore_0
    //   491: goto -285 -> 206
    //   494: aconst_null
    //   495: astore_2
    //   496: goto -321 -> 175
    //   499: aload 5
    //   501: astore 4
    //   503: goto -387 -> 116
    //   506: goto -413 -> 93
    //   509: aconst_null
    //   510: astore_0
    //   511: goto -432 -> 79
    //   514: goto -459 -> 55
    //   517: aconst_null
    //   518: astore_0
    //   519: goto -478 -> 41
    // Local variable table:
    //   start	length	slot	name	signature
    //   6	319	0	localObject1	Object
    //   337	6	0	localKeyStoreException1	java.security.KeyStoreException
    //   347	6	0	localNoSuchAlgorithmException	java.security.NoSuchAlgorithmException
    //   357	6	0	localCertificateException1	java.security.cert.CertificateException
    //   367	6	0	localNoSuchProviderException	java.security.NoSuchProviderException
    //   377	6	0	localFileNotFoundException1	java.io.FileNotFoundException
    //   387	6	0	localKeyManagementException	java.security.KeyManagementException
    //   397	6	0	localIOException1	java.io.IOException
    //   407	11	0	localUnrecoverableKeyException	java.security.UnrecoverableKeyException
    //   421	10	0	localObject2	Object
    //   434	6	0	localKeyStoreException2	java.security.KeyStoreException
    //   444	6	0	localCertificateException2	java.security.cert.CertificateException
    //   454	6	0	localFileNotFoundException2	java.io.FileNotFoundException
    //   464	6	0	localIOException2	java.io.IOException
    //   475	44	0	localObject3	Object
    //   4	313	1	localObject4	Object
    //   32	464	2	localObject5	Object
    //   84	210	3	localObject6	Object
    //   109	393	4	str1	String
    //   96	404	5	str2	String
    //   102	169	6	str3	String
    //   228	59	7	str4	String
    // Exception table:
    //   from	to	target	type
    //   133	151	337	java/security/KeyStoreException
    //   156	164	337	java/security/KeyStoreException
    //   164	175	337	java/security/KeyStoreException
    //   328	334	337	java/security/KeyStoreException
    //   23	28	347	java/security/NoSuchAlgorithmException
    //   28	33	347	java/security/NoSuchAlgorithmException
    //   37	41	347	java/security/NoSuchAlgorithmException
    //   49	55	347	java/security/NoSuchAlgorithmException
    //   55	61	347	java/security/NoSuchAlgorithmException
    //   65	79	347	java/security/NoSuchAlgorithmException
    //   79	85	347	java/security/NoSuchAlgorithmException
    //   89	93	347	java/security/NoSuchAlgorithmException
    //   93	111	347	java/security/NoSuchAlgorithmException
    //   133	151	347	java/security/NoSuchAlgorithmException
    //   156	164	347	java/security/NoSuchAlgorithmException
    //   164	175	347	java/security/NoSuchAlgorithmException
    //   175	188	347	java/security/NoSuchAlgorithmException
    //   192	206	347	java/security/NoSuchAlgorithmException
    //   206	211	347	java/security/NoSuchAlgorithmException
    //   215	219	347	java/security/NoSuchAlgorithmException
    //   219	237	347	java/security/NoSuchAlgorithmException
    //   260	279	347	java/security/NoSuchAlgorithmException
    //   284	292	347	java/security/NoSuchAlgorithmException
    //   292	302	347	java/security/NoSuchAlgorithmException
    //   302	309	347	java/security/NoSuchAlgorithmException
    //   311	317	347	java/security/NoSuchAlgorithmException
    //   320	325	347	java/security/NoSuchAlgorithmException
    //   328	334	347	java/security/NoSuchAlgorithmException
    //   338	347	347	java/security/NoSuchAlgorithmException
    //   358	367	347	java/security/NoSuchAlgorithmException
    //   378	387	347	java/security/NoSuchAlgorithmException
    //   398	407	347	java/security/NoSuchAlgorithmException
    //   408	417	347	java/security/NoSuchAlgorithmException
    //   417	422	347	java/security/NoSuchAlgorithmException
    //   425	431	347	java/security/NoSuchAlgorithmException
    //   435	444	347	java/security/NoSuchAlgorithmException
    //   445	454	347	java/security/NoSuchAlgorithmException
    //   455	464	347	java/security/NoSuchAlgorithmException
    //   465	474	347	java/security/NoSuchAlgorithmException
    //   133	151	357	java/security/cert/CertificateException
    //   156	164	357	java/security/cert/CertificateException
    //   164	175	357	java/security/cert/CertificateException
    //   328	334	357	java/security/cert/CertificateException
    //   23	28	367	java/security/NoSuchProviderException
    //   28	33	367	java/security/NoSuchProviderException
    //   37	41	367	java/security/NoSuchProviderException
    //   49	55	367	java/security/NoSuchProviderException
    //   55	61	367	java/security/NoSuchProviderException
    //   65	79	367	java/security/NoSuchProviderException
    //   79	85	367	java/security/NoSuchProviderException
    //   89	93	367	java/security/NoSuchProviderException
    //   93	111	367	java/security/NoSuchProviderException
    //   133	151	367	java/security/NoSuchProviderException
    //   156	164	367	java/security/NoSuchProviderException
    //   164	175	367	java/security/NoSuchProviderException
    //   175	188	367	java/security/NoSuchProviderException
    //   192	206	367	java/security/NoSuchProviderException
    //   206	211	367	java/security/NoSuchProviderException
    //   215	219	367	java/security/NoSuchProviderException
    //   219	237	367	java/security/NoSuchProviderException
    //   260	279	367	java/security/NoSuchProviderException
    //   284	292	367	java/security/NoSuchProviderException
    //   292	302	367	java/security/NoSuchProviderException
    //   302	309	367	java/security/NoSuchProviderException
    //   311	317	367	java/security/NoSuchProviderException
    //   320	325	367	java/security/NoSuchProviderException
    //   328	334	367	java/security/NoSuchProviderException
    //   338	347	367	java/security/NoSuchProviderException
    //   358	367	367	java/security/NoSuchProviderException
    //   378	387	367	java/security/NoSuchProviderException
    //   398	407	367	java/security/NoSuchProviderException
    //   408	417	367	java/security/NoSuchProviderException
    //   417	422	367	java/security/NoSuchProviderException
    //   425	431	367	java/security/NoSuchProviderException
    //   435	444	367	java/security/NoSuchProviderException
    //   445	454	367	java/security/NoSuchProviderException
    //   455	464	367	java/security/NoSuchProviderException
    //   465	474	367	java/security/NoSuchProviderException
    //   133	151	377	java/io/FileNotFoundException
    //   156	164	377	java/io/FileNotFoundException
    //   164	175	377	java/io/FileNotFoundException
    //   328	334	377	java/io/FileNotFoundException
    //   23	28	387	java/security/KeyManagementException
    //   28	33	387	java/security/KeyManagementException
    //   37	41	387	java/security/KeyManagementException
    //   49	55	387	java/security/KeyManagementException
    //   55	61	387	java/security/KeyManagementException
    //   65	79	387	java/security/KeyManagementException
    //   79	85	387	java/security/KeyManagementException
    //   89	93	387	java/security/KeyManagementException
    //   93	111	387	java/security/KeyManagementException
    //   133	151	387	java/security/KeyManagementException
    //   156	164	387	java/security/KeyManagementException
    //   164	175	387	java/security/KeyManagementException
    //   175	188	387	java/security/KeyManagementException
    //   192	206	387	java/security/KeyManagementException
    //   206	211	387	java/security/KeyManagementException
    //   215	219	387	java/security/KeyManagementException
    //   219	237	387	java/security/KeyManagementException
    //   260	279	387	java/security/KeyManagementException
    //   284	292	387	java/security/KeyManagementException
    //   292	302	387	java/security/KeyManagementException
    //   302	309	387	java/security/KeyManagementException
    //   311	317	387	java/security/KeyManagementException
    //   320	325	387	java/security/KeyManagementException
    //   328	334	387	java/security/KeyManagementException
    //   338	347	387	java/security/KeyManagementException
    //   358	367	387	java/security/KeyManagementException
    //   378	387	387	java/security/KeyManagementException
    //   398	407	387	java/security/KeyManagementException
    //   408	417	387	java/security/KeyManagementException
    //   417	422	387	java/security/KeyManagementException
    //   425	431	387	java/security/KeyManagementException
    //   435	444	387	java/security/KeyManagementException
    //   445	454	387	java/security/KeyManagementException
    //   455	464	387	java/security/KeyManagementException
    //   465	474	387	java/security/KeyManagementException
    //   133	151	397	java/io/IOException
    //   156	164	397	java/io/IOException
    //   164	175	397	java/io/IOException
    //   328	334	397	java/io/IOException
    //   133	151	407	java/security/UnrecoverableKeyException
    //   156	164	407	java/security/UnrecoverableKeyException
    //   164	175	407	java/security/UnrecoverableKeyException
    //   328	334	407	java/security/UnrecoverableKeyException
    //   260	279	434	java/security/KeyStoreException
    //   284	292	434	java/security/KeyStoreException
    //   292	302	434	java/security/KeyStoreException
    //   425	431	434	java/security/KeyStoreException
    //   260	279	444	java/security/cert/CertificateException
    //   284	292	444	java/security/cert/CertificateException
    //   292	302	444	java/security/cert/CertificateException
    //   425	431	444	java/security/cert/CertificateException
    //   260	279	454	java/io/FileNotFoundException
    //   284	292	454	java/io/FileNotFoundException
    //   292	302	454	java/io/FileNotFoundException
    //   425	431	454	java/io/FileNotFoundException
    //   260	279	464	java/io/IOException
    //   284	292	464	java/io/IOException
    //   292	302	464	java/io/IOException
    //   425	431	464	java/io/IOException
  }
  
  public static SSLSocketFactory a()
    throws kg
  {
    return a().getSocketFactory();
  }
  
  private static char[] a(String paramString)
  {
    int k = 0;
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = kj.a(paramString.substring(5));
      i = 0;
      while (i < paramString.length)
      {
        paramString[i] = ((byte)(paramString[i] ^ a[(i % a.length)]));
        i += 1;
      }
      if (paramString != null) {
        break label59;
      }
    }
    catch (Exception paramString)
    {
      return null;
    }
    return null;
    label59:
    char[] arrayOfChar = new char[paramString.length / 2];
    int j = 0;
    int i = k;
    while (j < paramString.length)
    {
      k = j + 1;
      int m = paramString[j];
      j = k + 1;
      arrayOfChar[i] = ((char)(((paramString[k] & 0xFF) << 8) + (m & 0xFF)));
      i += 1;
    }
    return arrayOfChar;
  }
  
  public static String[] a()
  {
    Object localObject = a(null);
    if (localObject == null) {
      return null;
    }
    Vector localVector = new Vector();
    int j = ((String)localObject).indexOf(',');
    int i = 0;
    while (j >= 0)
    {
      localVector.add(((String)localObject).substring(i, j));
      i = j + 1;
      j = ((String)localObject).indexOf(',', i);
    }
    localVector.add(((String)localObject).substring(i));
    localObject = new String[localVector.size()];
    localVector.toArray((Object[])localObject);
    return localObject;
  }
}
