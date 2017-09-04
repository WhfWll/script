package com.sdu.didi.uuid;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.io.ObjectOutputStream;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.UUID;

public class n
{
  /* Error */
  static Object a(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: ifnonnull +7 -> 10
    //   6: aload_3
    //   7: astore_0
    //   8: aload_0
    //   9: areturn
    //   10: new 14	java/io/ByteArrayInputStream
    //   13: dup
    //   14: aload_0
    //   15: invokespecial 18	java/io/ByteArrayInputStream:<init>	([B)V
    //   18: astore 4
    //   20: new 20	java/io/ObjectInputStream
    //   23: dup
    //   24: aload 4
    //   26: invokespecial 23	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   29: astore_0
    //   30: aload_0
    //   31: astore_1
    //   32: aload_0
    //   33: invokevirtual 27	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   36: astore_2
    //   37: aload_2
    //   38: astore_1
    //   39: aload_0
    //   40: ifnull +7 -> 47
    //   43: aload_0
    //   44: invokevirtual 31	java/io/ObjectInputStream:close	()V
    //   47: aload_1
    //   48: astore_0
    //   49: aload 4
    //   51: ifnull -43 -> 8
    //   54: aload 4
    //   56: invokevirtual 32	java/io/ByteArrayInputStream:close	()V
    //   59: aload_1
    //   60: areturn
    //   61: astore_0
    //   62: aload_0
    //   63: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   66: aload_1
    //   67: areturn
    //   68: astore_0
    //   69: aload_0
    //   70: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   73: goto -26 -> 47
    //   76: astore_2
    //   77: aconst_null
    //   78: astore_0
    //   79: aload_0
    //   80: astore_1
    //   81: aload_2
    //   82: invokevirtual 36	java/io/StreamCorruptedException:printStackTrace	()V
    //   85: aload_0
    //   86: ifnull +7 -> 93
    //   89: aload_0
    //   90: invokevirtual 31	java/io/ObjectInputStream:close	()V
    //   93: aload_3
    //   94: astore_0
    //   95: aload 4
    //   97: ifnull -89 -> 8
    //   100: aload 4
    //   102: invokevirtual 32	java/io/ByteArrayInputStream:close	()V
    //   105: aconst_null
    //   106: areturn
    //   107: astore_0
    //   108: aload_0
    //   109: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   112: aconst_null
    //   113: areturn
    //   114: astore_0
    //   115: aload_0
    //   116: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   119: goto -26 -> 93
    //   122: astore_0
    //   123: aconst_null
    //   124: astore_0
    //   125: aload_0
    //   126: ifnull +7 -> 133
    //   129: aload_0
    //   130: invokevirtual 31	java/io/ObjectInputStream:close	()V
    //   133: aload_3
    //   134: astore_0
    //   135: aload 4
    //   137: ifnull -129 -> 8
    //   140: aload 4
    //   142: invokevirtual 32	java/io/ByteArrayInputStream:close	()V
    //   145: aconst_null
    //   146: areturn
    //   147: astore_0
    //   148: aload_0
    //   149: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   152: aconst_null
    //   153: areturn
    //   154: astore_0
    //   155: aload_0
    //   156: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   159: goto -26 -> 133
    //   162: astore_0
    //   163: aconst_null
    //   164: astore_0
    //   165: aload_0
    //   166: ifnull +7 -> 173
    //   169: aload_0
    //   170: invokevirtual 31	java/io/ObjectInputStream:close	()V
    //   173: aload_3
    //   174: astore_0
    //   175: aload 4
    //   177: ifnull -169 -> 8
    //   180: aload 4
    //   182: invokevirtual 32	java/io/ByteArrayInputStream:close	()V
    //   185: aconst_null
    //   186: areturn
    //   187: astore_0
    //   188: aload_0
    //   189: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   192: aconst_null
    //   193: areturn
    //   194: astore_0
    //   195: aload_0
    //   196: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   199: goto -26 -> 173
    //   202: astore_0
    //   203: aconst_null
    //   204: astore_1
    //   205: aload_1
    //   206: ifnull +7 -> 213
    //   209: aload_1
    //   210: invokevirtual 31	java/io/ObjectInputStream:close	()V
    //   213: aload 4
    //   215: ifnull +8 -> 223
    //   218: aload 4
    //   220: invokevirtual 32	java/io/ByteArrayInputStream:close	()V
    //   223: aload_0
    //   224: athrow
    //   225: astore_1
    //   226: aload_1
    //   227: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   230: goto -17 -> 213
    //   233: astore_1
    //   234: aload_1
    //   235: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   238: goto -15 -> 223
    //   241: astore_0
    //   242: goto -37 -> 205
    //   245: astore_1
    //   246: goto -81 -> 165
    //   249: astore_1
    //   250: goto -125 -> 125
    //   253: astore_2
    //   254: goto -175 -> 79
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	257	0	paramArrayOfByte	byte[]
    //   31	179	1	localObject1	Object
    //   225	2	1	localIOException1	IOException
    //   233	2	1	localIOException2	IOException
    //   245	1	1	localClassNotFoundException	ClassNotFoundException
    //   249	1	1	localIOException3	IOException
    //   36	2	2	localObject2	Object
    //   76	6	2	localStreamCorruptedException1	java.io.StreamCorruptedException
    //   253	1	2	localStreamCorruptedException2	java.io.StreamCorruptedException
    //   1	173	3	localObject3	Object
    //   18	201	4	localByteArrayInputStream	java.io.ByteArrayInputStream
    // Exception table:
    //   from	to	target	type
    //   54	59	61	java/io/IOException
    //   43	47	68	java/io/IOException
    //   20	30	76	java/io/StreamCorruptedException
    //   100	105	107	java/io/IOException
    //   89	93	114	java/io/IOException
    //   20	30	122	java/io/IOException
    //   140	145	147	java/io/IOException
    //   129	133	154	java/io/IOException
    //   20	30	162	java/lang/ClassNotFoundException
    //   180	185	187	java/io/IOException
    //   169	173	194	java/io/IOException
    //   20	30	202	finally
    //   209	213	225	java/io/IOException
    //   218	223	233	java/io/IOException
    //   32	37	241	finally
    //   81	85	241	finally
    //   32	37	245	java/lang/ClassNotFoundException
    //   32	37	249	java/io/IOException
    //   32	37	253	java/io/StreamCorruptedException
  }
  
  static String a()
  {
    String str2 = Build.MODEL;
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = "";
    }
    return str1;
  }
  
  static String a(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }
  
  /* Error */
  static void a(String paramString, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 70	java/io/BufferedInputStream
    //   3: dup
    //   4: new 14	java/io/ByteArrayInputStream
    //   7: dup
    //   8: aload_1
    //   9: invokespecial 18	java/io/ByteArrayInputStream:<init>	([B)V
    //   12: invokespecial 71	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   15: astore 4
    //   17: new 73	java/io/BufferedOutputStream
    //   20: dup
    //   21: new 75	java/io/FileOutputStream
    //   24: dup
    //   25: aload_0
    //   26: invokespecial 78	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   29: invokespecial 81	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   32: astore_1
    //   33: aload_1
    //   34: astore_0
    //   35: sipush 2048
    //   38: newarray byte
    //   40: astore_3
    //   41: aload_1
    //   42: astore_0
    //   43: aload 4
    //   45: aload_3
    //   46: invokevirtual 87	java/io/InputStream:read	([B)I
    //   49: istore_2
    //   50: iload_2
    //   51: ifle +36 -> 87
    //   54: aload_1
    //   55: astore_0
    //   56: aload_1
    //   57: aload_3
    //   58: iconst_0
    //   59: iload_2
    //   60: invokevirtual 93	java/io/OutputStream:write	([BII)V
    //   63: goto -22 -> 41
    //   66: astore_3
    //   67: aload_1
    //   68: astore_0
    //   69: aload_3
    //   70: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   73: aload 4
    //   75: invokevirtual 94	java/io/InputStream:close	()V
    //   78: aload_1
    //   79: ifnull +7 -> 86
    //   82: aload_1
    //   83: invokevirtual 95	java/io/OutputStream:close	()V
    //   86: return
    //   87: aload 4
    //   89: invokevirtual 94	java/io/InputStream:close	()V
    //   92: aload_1
    //   93: ifnull -7 -> 86
    //   96: aload_1
    //   97: invokevirtual 95	java/io/OutputStream:close	()V
    //   100: return
    //   101: astore_0
    //   102: aload_0
    //   103: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   106: return
    //   107: astore_0
    //   108: aload_0
    //   109: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   112: return
    //   113: astore_1
    //   114: aconst_null
    //   115: astore_0
    //   116: aload 4
    //   118: invokevirtual 94	java/io/InputStream:close	()V
    //   121: aload_0
    //   122: ifnull +7 -> 129
    //   125: aload_0
    //   126: invokevirtual 95	java/io/OutputStream:close	()V
    //   129: aload_1
    //   130: athrow
    //   131: astore_0
    //   132: aload_0
    //   133: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   136: goto -7 -> 129
    //   139: astore_1
    //   140: goto -24 -> 116
    //   143: astore_3
    //   144: aconst_null
    //   145: astore_1
    //   146: goto -79 -> 67
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	149	0	paramString	String
    //   0	149	1	paramArrayOfByte	byte[]
    //   49	11	2	i	int
    //   40	18	3	arrayOfByte	byte[]
    //   66	4	3	localIOException1	IOException
    //   143	1	3	localIOException2	IOException
    //   15	102	4	localBufferedInputStream	java.io.BufferedInputStream
    // Exception table:
    //   from	to	target	type
    //   35	41	66	java/io/IOException
    //   43	50	66	java/io/IOException
    //   56	63	66	java/io/IOException
    //   87	92	101	java/io/IOException
    //   96	100	101	java/io/IOException
    //   73	78	107	java/io/IOException
    //   82	86	107	java/io/IOException
    //   17	33	113	finally
    //   116	121	131	java/io/IOException
    //   125	129	131	java/io/IOException
    //   35	41	139	finally
    //   43	50	139	finally
    //   56	63	139	finally
    //   69	73	139	finally
    //   17	33	143	java/io/IOException
  }
  
  static byte[] a(Object paramObject)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      new ObjectOutputStream(localByteArrayOutputStream).writeObject(paramObject);
      return localByteArrayOutputStream.toByteArray();
    }
    catch (IOException paramObject)
    {
      for (;;)
      {
        paramObject.printStackTrace();
      }
    }
  }
  
  /* Error */
  static byte[] a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 114	java/io/File
    //   6: dup
    //   7: aload_0
    //   8: invokespecial 115	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: astore_0
    //   12: aload_0
    //   13: invokevirtual 119	java/io/File:exists	()Z
    //   16: ifne +8 -> 24
    //   19: aload 4
    //   21: astore_2
    //   22: aload_2
    //   23: areturn
    //   24: new 98	java/io/ByteArrayOutputStream
    //   27: dup
    //   28: aload_0
    //   29: invokevirtual 123	java/io/File:length	()J
    //   32: l2i
    //   33: invokespecial 126	java/io/ByteArrayOutputStream:<init>	(I)V
    //   36: astore 5
    //   38: new 70	java/io/BufferedInputStream
    //   41: dup
    //   42: new 128	java/io/FileInputStream
    //   45: dup
    //   46: aload_0
    //   47: invokespecial 131	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   50: invokespecial 71	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   53: astore_2
    //   54: aload_2
    //   55: astore_0
    //   56: sipush 1024
    //   59: newarray byte
    //   61: astore_3
    //   62: aload_2
    //   63: astore_0
    //   64: aload_2
    //   65: aload_3
    //   66: iconst_0
    //   67: sipush 1024
    //   70: invokevirtual 134	java/io/BufferedInputStream:read	([BII)I
    //   73: istore_1
    //   74: iconst_m1
    //   75: iload_1
    //   76: if_icmpeq +53 -> 129
    //   79: aload_2
    //   80: astore_0
    //   81: aload 5
    //   83: aload_3
    //   84: iconst_0
    //   85: iload_1
    //   86: invokevirtual 135	java/io/ByteArrayOutputStream:write	([BII)V
    //   89: goto -27 -> 62
    //   92: astore_3
    //   93: aload_2
    //   94: astore_0
    //   95: aload_3
    //   96: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   99: aload_2
    //   100: ifnull +7 -> 107
    //   103: aload_2
    //   104: invokevirtual 136	java/io/BufferedInputStream:close	()V
    //   107: aload 4
    //   109: astore_2
    //   110: aload 5
    //   112: ifnull -90 -> 22
    //   115: aload 5
    //   117: invokevirtual 137	java/io/ByteArrayOutputStream:close	()V
    //   120: aconst_null
    //   121: areturn
    //   122: astore_0
    //   123: aload_0
    //   124: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   127: aconst_null
    //   128: areturn
    //   129: aload_2
    //   130: astore_0
    //   131: aload 5
    //   133: invokevirtual 111	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   136: astore_3
    //   137: aload_3
    //   138: astore_0
    //   139: aload_2
    //   140: ifnull +7 -> 147
    //   143: aload_2
    //   144: invokevirtual 136	java/io/BufferedInputStream:close	()V
    //   147: aload_0
    //   148: astore_2
    //   149: aload 5
    //   151: ifnull -129 -> 22
    //   154: aload 5
    //   156: invokevirtual 137	java/io/ByteArrayOutputStream:close	()V
    //   159: aload_0
    //   160: areturn
    //   161: astore_2
    //   162: aload_2
    //   163: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   166: aload_0
    //   167: areturn
    //   168: astore_2
    //   169: aload_2
    //   170: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   173: goto -26 -> 147
    //   176: astore_0
    //   177: aload_0
    //   178: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   181: goto -74 -> 107
    //   184: astore_2
    //   185: aconst_null
    //   186: astore_0
    //   187: aload_0
    //   188: ifnull +7 -> 195
    //   191: aload_0
    //   192: invokevirtual 136	java/io/BufferedInputStream:close	()V
    //   195: aload 5
    //   197: ifnull +8 -> 205
    //   200: aload 5
    //   202: invokevirtual 137	java/io/ByteArrayOutputStream:close	()V
    //   205: aload_2
    //   206: athrow
    //   207: astore_0
    //   208: aload_0
    //   209: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   212: goto -17 -> 195
    //   215: astore_0
    //   216: aload_0
    //   217: invokevirtual 35	java/io/IOException:printStackTrace	()V
    //   220: goto -15 -> 205
    //   223: astore_2
    //   224: goto -37 -> 187
    //   227: astore_3
    //   228: aconst_null
    //   229: astore_2
    //   230: goto -137 -> 93
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	233	0	paramString	String
    //   73	13	1	i	int
    //   21	128	2	localObject1	Object
    //   161	2	2	localIOException1	IOException
    //   168	2	2	localIOException2	IOException
    //   184	22	2	localObject2	Object
    //   223	1	2	localObject3	Object
    //   229	1	2	localObject4	Object
    //   61	23	3	arrayOfByte1	byte[]
    //   92	4	3	localIOException3	IOException
    //   136	2	3	arrayOfByte2	byte[]
    //   227	1	3	localIOException4	IOException
    //   1	107	4	localObject5	Object
    //   36	165	5	localByteArrayOutputStream	ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   56	62	92	java/io/IOException
    //   64	74	92	java/io/IOException
    //   81	89	92	java/io/IOException
    //   131	137	92	java/io/IOException
    //   115	120	122	java/io/IOException
    //   154	159	161	java/io/IOException
    //   143	147	168	java/io/IOException
    //   103	107	176	java/io/IOException
    //   38	54	184	finally
    //   191	195	207	java/io/IOException
    //   200	205	215	java/io/IOException
    //   56	62	223	finally
    //   64	74	223	finally
    //   81	89	223	finally
    //   95	99	223	finally
    //   131	137	223	finally
    //   38	54	227	java/io/IOException
  }
  
  static int b()
  {
    return Build.VERSION.SDK_INT;
  }
  
  static String b(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if (paramContext.getDeviceId() == null) {
      return "";
    }
    return paramContext.getDeviceId();
  }
  
  /* Error */
  static String b(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: new 163	java/lang/StringBuffer
    //   5: dup
    //   6: invokespecial 164	java/lang/StringBuffer:<init>	()V
    //   9: astore_2
    //   10: ldc -90
    //   12: invokestatic 172	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   15: astore_3
    //   16: aload_3
    //   17: invokevirtual 175	java/security/MessageDigest:reset	()V
    //   20: aload_3
    //   21: aload_0
    //   22: ldc -79
    //   24: invokevirtual 182	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   27: invokevirtual 185	java/security/MessageDigest:update	([B)V
    //   30: aload_3
    //   31: invokevirtual 188	java/security/MessageDigest:digest	()[B
    //   34: astore_0
    //   35: iload_1
    //   36: aload_0
    //   37: arraylength
    //   38: if_icmpge +38 -> 76
    //   41: aload_2
    //   42: ldc -66
    //   44: iconst_1
    //   45: anewarray 4	java/lang/Object
    //   48: dup
    //   49: iconst_0
    //   50: aload_0
    //   51: iload_1
    //   52: baload
    //   53: invokestatic 196	java/lang/Byte:valueOf	(B)Ljava/lang/Byte;
    //   56: aastore
    //   57: invokestatic 200	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   60: invokevirtual 204	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   63: pop
    //   64: iload_1
    //   65: iconst_1
    //   66: iadd
    //   67: istore_1
    //   68: goto -33 -> 35
    //   71: astore_0
    //   72: aload_0
    //   73: invokevirtual 205	java/security/NoSuchAlgorithmException:printStackTrace	()V
    //   76: aload_2
    //   77: invokevirtual 208	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   80: areturn
    //   81: astore_0
    //   82: aload_0
    //   83: invokevirtual 209	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   86: goto -10 -> 76
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	89	0	paramString	String
    //   1	67	1	i	int
    //   9	68	2	localStringBuffer	StringBuffer
    //   15	16	3	localMessageDigest	java.security.MessageDigest
    // Exception table:
    //   from	to	target	type
    //   10	35	71	java/security/NoSuchAlgorithmException
    //   35	64	71	java/security/NoSuchAlgorithmException
    //   10	35	81	java/io/UnsupportedEncodingException
    //   35	64	81	java/io/UnsupportedEncodingException
  }
  
  static String c()
  {
    String str2 = Build.BRAND;
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = "";
    }
    return str1;
  }
  
  static String c(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if (paramContext.getSubscriberId() == null) {
      return "";
    }
    return paramContext.getSubscriberId();
  }
  
  static String d()
  {
    try
    {
      InetAddress localInetAddress;
      do
      {
        localObject = NetworkInterface.getNetworkInterfaces();
        Enumeration localEnumeration;
        while (!localEnumeration.hasMoreElements())
        {
          if (!((Enumeration)localObject).hasMoreElements()) {
            break;
          }
          localEnumeration = ((NetworkInterface)((Enumeration)localObject).nextElement()).getInetAddresses();
        }
        localInetAddress = (InetAddress)localEnumeration.nextElement();
      } while ((localInetAddress.isLoopbackAddress()) || (!(localInetAddress instanceof Inet4Address)));
      Object localObject = localInetAddress.getHostAddress().toString();
      return localObject;
    }
    catch (SocketException localSocketException)
    {
      localSocketException.printStackTrace();
    }
    return null;
  }
  
  static String d(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
    if (paramContext.getMacAddress() != null) {
      return paramContext.getMacAddress();
    }
    return "null";
  }
  
  static String e()
  {
    Object localObject2 = null;
    try
    {
      LineNumberReader localLineNumberReader = new LineNumberReader(new InputStreamReader(Runtime.getRuntime().exec("cat /proc/cpuinfo").getInputStream()));
      int i = 1;
      for (;;)
      {
        Object localObject1 = localObject2;
        if (i < 100)
        {
          String str = localLineNumberReader.readLine();
          localObject1 = localObject2;
          if (str != null)
          {
            if (str.indexOf("Serial") <= -1) {
              break label90;
            }
            localObject1 = str.substring(str.indexOf(":") + 1, str.length()).trim();
          }
        }
        return localObject1;
        label90:
        i += 1;
      }
      return null;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  static String e(Context paramContext)
  {
    paramContext = (WifiManager)paramContext.getSystemService("wifi");
    if (paramContext.isWifiEnabled()) {
      return paramContext.getConnectionInfo().getBSSID();
    }
    return null;
  }
  
  static int f(Context paramContext)
  {
    String str = paramContext.getApplicationContext().getPackageName();
    try
    {
      int i = getApplicationContextgetPackageManagergetPackageInfo16384versionCode;
      return i;
    }
    catch (Exception paramContext) {}
    return 0;
  }
  
  static long f()
  {
    long l2 = System.currentTimeMillis();
    long l1 = l2;
    if (l2 < 1.0E11D) {
      l1 = l2 * 1000L;
    }
    return l1;
  }
  
  static boolean g()
  {
    boolean bool2 = false;
    String[] arrayOfString = new String[11];
    arrayOfString[0] = "/system/xbin/which";
    arrayOfString[1] = "/sbin/";
    arrayOfString[2] = "/system/sbin/";
    arrayOfString[3] = "/system/bin/";
    arrayOfString[4] = "/system/xbin/";
    arrayOfString[5] = "/data/local/xbin/";
    arrayOfString[6] = "/data/local/bin/";
    arrayOfString[7] = "/system/sd/xbin/";
    arrayOfString[8] = "/system/bin/failsafe/";
    arrayOfString[9] = "/data/local/";
    arrayOfString[10] = "/vendor/bin/";
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < arrayOfString.length)
      {
        File localFile = new File(arrayOfString[i] + "su");
        if ((localFile != null) && (localFile.exists())) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      i += 1;
    }
  }
  
  static boolean g(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext != null) {
      try
      {
        paramContext = paramContext.getActiveNetworkInfo();
        if (paramContext != null)
        {
          int i = paramContext.getType();
          if (i == 1) {
            return true;
          }
        }
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
      }
    }
    return false;
  }
  
  static String h(Context paramContext)
  {
    if (paramContext == null) {}
    do
    {
      return null;
      paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    } while (paramContext == null);
    try
    {
      paramContext = paramContext.getActiveNetworkInfo();
      if (paramContext != null) {
        if (paramContext.getType() == 0) {
          paramContext = paramContext.getSubtypeName();
        } else if (paramContext.getType() == 1) {
          paramContext = "WIFI";
        }
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
      return null;
    }
    paramContext = null;
    return paramContext;
  }
  
  static String i(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if (paramContext != null) {}
    for (paramContext = paramContext.getSimOperatorName();; paramContext = null) {
      return paramContext;
    }
  }
  
  static String j(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    return ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getSSID();
  }
  
  static String k(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
    paramContext.getMacAddress();
    int i = paramContext.getIpAddress();
    return (i & 0xFF) + "." + (i >> 8 & 0xFF) + "." + (i >> 16 & 0xFF) + "." + (i >> 24 & 0xFF);
  }
  
  @SuppressLint({"NewApi"})
  static long l(Context paramContext)
  {
    if (paramContext == null) {}
    for (;;)
    {
      return 0L;
      PackageManager localPackageManager = paramContext.getPackageManager();
      try
      {
        if (Build.VERSION.SDK_INT > 8)
        {
          long l = getPackageInfogetPackageName0firstInstallTime;
          return l;
        }
      }
      catch (Exception paramContext) {}
    }
    return 0L;
  }
  
  static String m(Context paramContext)
  {
    int j = 0;
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    String str = paramContext.getNetworkOperator();
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    int k = Integer.parseInt(str.substring(0, 3));
    int m = Integer.parseInt(str.substring(3));
    paramContext = paramContext.getCellLocation();
    int i;
    if (paramContext != null) {
      if ((paramContext instanceof GsmCellLocation))
      {
        paramContext = (GsmCellLocation)paramContext;
        j = paramContext.getLac();
        i = paramContext.getCid();
      }
    }
    for (;;)
    {
      paramContext = new StringBuilder();
      paramContext.append(k).append(":");
      paramContext.append(m).append(":");
      paramContext.append(j).append(":");
      paramContext.append(i);
      return paramContext.toString();
      if ((paramContext instanceof CdmaCellLocation))
      {
        paramContext = (CdmaCellLocation)paramContext;
        j = paramContext.getNetworkId();
        i = paramContext.getBaseStationId();
        continue;
        return null;
      }
      else
      {
        i = 0;
      }
    }
  }
  
  static String n(Context paramContext)
  {
    String str2 = "" + "1-";
    String str3 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    String str1 = str2;
    if (!TextUtils.isEmpty(str3)) {
      str1 = str2 + str3;
    }
    str1 = str1 + "_2-";
    str2 = b(paramContext);
    paramContext = str1;
    if (!TextUtils.isEmpty(str2)) {
      paramContext = str1 + str2;
    }
    str1 = paramContext + "_3-";
    str2 = e();
    paramContext = str1;
    if (!TextUtils.isEmpty(str2)) {
      paramContext = str1 + str2;
    }
    return b(paramContext);
  }
  
  static String o(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(a(paramContext));
    localStringBuilder.append(f());
    localStringBuilder.append(UUID.randomUUID());
    return b(localStringBuilder.toString());
  }
}
