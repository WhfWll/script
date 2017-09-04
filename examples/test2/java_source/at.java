import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import com.arrownock.exception.ArrownockException;
import com.arrownock.im.AnIMStatus;
import com.arrownock.im.callback.AnIMBinaryCallbackData;
import com.arrownock.im.callback.AnIMGetSessionInfoCallbackData;
import com.arrownock.im.callback.AnIMMessageCallbackData;
import com.arrownock.im.callback.AnIMMessageSentCallbackData;
import com.arrownock.im.callback.AnIMNoticeCallbackData;
import com.arrownock.im.callback.AnIMReadACKCallbackData;
import com.arrownock.im.callback.AnIMReceiveACKCallbackData;
import com.arrownock.im.callback.AnIMStatusUpdateCallbackData;
import com.arrownock.im.callback.AnIMTopicBinaryCallbackData;
import com.arrownock.im.callback.AnIMTopicMessageCallbackData;
import com.arrownock.im.callback.IAnIMCallback;
import com.arrownock.live.AnLive;
import com.arrownock.live.IAnLiveEventListener;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.KeyManagementException;
import java.security.KeyPair;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManagerFactory;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.SessionDescription.Type;

public final class at
  implements dz
{
  private at(f paramF) {}
  
  public static int a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
    {
      j = 0;
      return j;
    }
    int j = paramArrayOfByte.length;
    int i = j + 1;
    for (;;)
    {
      int k = j - 1;
      j = i;
      if (k < 0) {
        break;
      }
      i = i * 257 ^ paramArrayOfByte[k];
      j = k;
    }
  }
  
  public static NetworkInfo a(Context paramContext)
  {
    return ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
  }
  
  public static String a(String paramString)
  {
    int i = 0;
    char[] arrayOfChar = paramString.toCharArray();
    int k;
    for (int j = 0; i != arrayOfChar.length; j = k)
    {
      int m = arrayOfChar[i];
      k = j;
      if (65 <= m)
      {
        k = j;
        if (90 >= m)
        {
          k = 1;
          arrayOfChar[i] = ((char)(m - 65 + 97));
        }
      }
      i += 1;
    }
    if (j != 0) {
      paramString = new String(arrayOfChar);
    }
    return paramString;
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    return new String(a(paramArrayOfByte));
  }
  
  public static SSLSocketFactory a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
    throws IOException, KeyStoreException, NoSuchAlgorithmException, CertificateException, UnrecoverableKeyException, KeyManagementException
  {
    paramString1 = new ByteArrayInputStream(az.a(paramString1));
    paramString2 = new ByteArrayInputStream(az.a(paramString2));
    paramString3 = new ByteArrayInputStream(az.a(paramString3));
    Security.addProvider(new il());
    Object localObject = new iq(new InputStreamReader(paramString1));
    paramString1 = (X509Certificate)((iq)localObject).a();
    ((iq)localObject).close();
    localObject = new iq(new InputStreamReader(paramString2));
    paramString2 = (X509Certificate)((iq)localObject).a();
    ((iq)localObject).close();
    localObject = new iq(new InputStreamReader(paramString3), new eb(paramString4));
    paramString3 = (KeyPair)((iq)localObject).a();
    ((iq)localObject).close();
    localObject = KeyStore.getInstance(paramString5);
    ((KeyStore)localObject).load(null, null);
    ((KeyStore)localObject).setCertificateEntry("ca-certificate", paramString1);
    paramString1 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
    paramString1.init((KeyStore)localObject);
    paramString5 = KeyStore.getInstance(paramString5);
    paramString5.load(null, null);
    paramString5.setCertificateEntry("certificate", paramString2);
    paramString5.setKeyEntry("private-key", paramString3.getPrivate(), paramString4.toCharArray(), new Certificate[] { paramString2 });
    paramString2 = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
    paramString2.init(paramString5, paramString4.toCharArray());
    paramString3 = SSLContext.getInstance("TLSv1");
    paramString3.init(paramString2.getKeyManagers(), paramString1.getTrustManagers(), null);
    return new ec(paramString3.getSocketFactory());
  }
  
  public static jm a(int paramInt)
  {
    if ((paramInt == 4) || (paramInt == 5)) {
      return new jq(paramInt);
    }
    return new jm(paramInt);
  }
  
  public static jm a(Throwable paramThrowable)
  {
    if (paramThrowable.getClass().getName().equals("java.security.GeneralSecurityException")) {
      return new jq(paramThrowable);
    }
    return new jm(paramThrowable);
  }
  
  public static boolean a(String paramString)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramString == null) || ("".equals(paramString.trim())))
    {
      bool1 = false;
      return bool1;
    }
    int k = paramString.length();
    int i = 0;
    label32:
    if (i < k)
    {
      int j = paramString.charAt(i);
      if ((j == 0) || (j == 9) || (j == 10) || (j == 13) || ((j >= 32) && (j <= 55295)) || ((j >= 57344) && (j <= 65533)) || ((j >= 65536) && (j <= 1114111))) {}
      for (j = 1;; j = 0)
      {
        bool1 = bool2;
        if (j == 0) {
          break;
        }
        i += 1;
        break label32;
      }
    }
    return false;
  }
  
  public static boolean a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramArrayOfByte1 == paramArrayOfByte2) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (paramArrayOfByte1 == null);
        bool1 = bool2;
      } while (paramArrayOfByte2 == null);
      bool1 = bool2;
    } while (paramArrayOfByte1.length != paramArrayOfByte2.length);
    int i = 0;
    for (;;)
    {
      if (i == paramArrayOfByte1.length) {
        break label63;
      }
      bool1 = bool2;
      if (paramArrayOfByte1[i] != paramArrayOfByte2[i]) {
        break;
      }
      i += 1;
    }
    label63:
    return true;
  }
  
  public static byte[] a(String paramString)
  {
    int j = 0;
    if (paramString == null) {
      return null;
    }
    paramString = paramString.getBytes();
    int i = paramString.length;
    while (paramString[(i - 1)] == 61) {
      i -= 1;
    }
    byte[] arrayOfByte = new byte[i - paramString.length / 4];
    i = 0;
    if (i < paramString.length)
    {
      if (paramString[i] == 61) {
        paramString[i] = 0;
      }
      for (;;)
      {
        i += 1;
        break;
        if (paramString[i] == 47) {
          paramString[i] = 63;
        } else if (paramString[i] == 43) {
          paramString[i] = 62;
        } else if ((paramString[i] >= 48) && (paramString[i] <= 57)) {
          paramString[i] = ((byte)(paramString[i] + 4));
        } else if ((paramString[i] >= 97) && (paramString[i] <= 122)) {
          paramString[i] = ((byte)(paramString[i] - 71));
        } else if ((paramString[i] >= 65) && (paramString[i] <= 90)) {
          paramString[i] = ((byte)(paramString[i] - 65));
        }
      }
    }
    i = 0;
    while (j < arrayOfByte.length - 2)
    {
      arrayOfByte[j] = ((byte)(paramString[i] << 2 & 0xFF | paramString[(i + 1)] >>> 4 & 0x3));
      arrayOfByte[(j + 1)] = ((byte)(paramString[(i + 1)] << 4 & 0xFF | paramString[(i + 2)] >>> 2 & 0xF));
      arrayOfByte[(j + 2)] = ((byte)(paramString[(i + 2)] << 6 & 0xFF | paramString[(i + 3)] & 0x3F));
      i += 4;
      j += 3;
    }
    if (j < arrayOfByte.length) {
      arrayOfByte[j] = ((byte)(paramString[i] << 2 & 0xFF | paramString[(i + 1)] >>> 4 & 0x3));
    }
    j += 1;
    if (j < arrayOfByte.length)
    {
      int k = paramString[(i + 1)];
      arrayOfByte[j] = ((byte)(paramString[(i + 2)] >>> 2 & 0xF | k << 4 & 0xFF));
    }
    return arrayOfByte;
  }
  
  public static byte[] a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    byte[] arrayOfByte = new byte[paramArrayOfByte.length];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
    return arrayOfByte;
  }
  
  private static char[] a(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar = new char[paramArrayOfByte.length];
    int i = 0;
    while (i != arrayOfChar.length)
    {
      arrayOfChar[i] = ((char)(paramArrayOfByte[i] & 0xFF));
      i += 1;
    }
    return arrayOfChar;
  }
  
  public static boolean b(String paramString)
  {
    try
    {
      Class.forName(paramString);
      return true;
    }
    catch (ClassNotFoundException paramString) {}
    return false;
  }
  
  public final void a() {}
  
  public final void a(String paramString)
  {
    if ((paramString == null) || (paramString.equals(""))) {}
    for (;;)
    {
      return;
      localObject11 = null;
      localObject13 = null;
      l2 = -1L;
      for (;;)
      {
        Object localObject10;
        long l1;
        Object localObject6;
        Object localObject16;
        Object localObject17;
        String str2;
        Object localObject15;
        try
        {
          localJSONObject = new JSONObject(paramString);
          paramString = localJSONObject.optString("from", null);
        }
        catch (JSONException paramString)
        {
          JSONObject localJSONObject;
          Object localObject3;
          int i;
          localObject11 = null;
          localObject10 = null;
          paramString = null;
          localObject4 = null;
          localObject6 = null;
          Object localObject1 = null;
          l1 = l2;
          continue;
        }
        try
        {
          localObject1 = localJSONObject.optString("message", null);
        }
        catch (JSONException localJSONException1)
        {
          localObject10 = null;
          localObject11 = paramString;
          paramString = null;
          localObject4 = null;
          localObject2 = null;
          localObject6 = null;
          l1 = l2;
          continue;
        }
        try
        {
          localObject3 = localJSONObject.optString("fileType", null);
        }
        catch (JSONException localJSONException2)
        {
          localObject13 = localObject2;
          localObject10 = null;
          localObject11 = paramString;
          localObject2 = null;
          localObject6 = null;
          localObject5 = null;
          paramString = null;
          l1 = l2;
          continue;
        }
        try
        {
          localObject10 = localJSONObject.optString("topic", null);
        }
        catch (JSONException localJSONException3)
        {
          localObject15 = null;
          localObject13 = localObject2;
          localObject7 = localObject5;
          localObject11 = paramString;
          localObject10 = null;
          localObject5 = null;
          paramString = null;
          l1 = l2;
          localObject2 = localObject15;
          continue;
        }
        try
        {
          localObject13 = localJSONObject.optString("session_key", null);
          l1 = localJSONObject.optLong("timestamp", -1L);
          localObject6 = localObject11;
          if (localObject13 == null) {}
        }
        catch (JSONException localJSONException4)
        {
          localObject17 = null;
          localObject16 = null;
          localObject8 = localObject5;
          localObject13 = localObject2;
          localObject15 = null;
          localObject11 = paramString;
          l1 = l2;
          paramString = (String)localObject17;
          localObject2 = localObject16;
          localObject5 = localObject10;
          localObject10 = localObject15;
          continue;
        }
        try
        {
          localObject13 = a.a(f.b(a), (String)localObject13);
          localObject6 = localObject11;
          if (!((AnIMGetSessionInfoCallbackData)localObject13).isError()) {
            localObject6 = ((AnIMGetSessionInfoCallbackData)localObject13).getParties();
          }
        }
        catch (JSONException localJSONException5)
        {
          localObject17 = null;
          localObject16 = null;
          localObject9 = localObject5;
          localObject13 = localObject2;
          localObject15 = null;
          localObject11 = paramString;
          paramString = (String)localObject17;
          localObject2 = localObject16;
          localObject5 = localObject10;
          localObject10 = localObject15;
          continue;
        }
        try
        {
          localObject11 = localJSONObject.optString("msg_id", null);
        }
        catch (JSONException localJSONException6)
        {
          str2 = null;
          localObject17 = null;
          localObject12 = localObject5;
          localObject13 = localObject2;
          localObject15 = localObject9;
          localObject16 = paramString;
          paramString = str2;
          localObject2 = localObject17;
          localObject5 = localObject10;
          localObject9 = localObject12;
          localObject10 = localObject15;
          localObject12 = localObject16;
          continue;
        }
        try
        {
          localObject16 = localJSONObject.optJSONObject("customData");
          if (localObject16 == null) {
            break label1557;
          }
          localObject17 = ((JSONObject)localObject16).keys();
          localObject13 = new HashMap();
          try
          {
            if (!((Iterator)localObject17).hasNext()) {
              continue;
            }
            str2 = (String)((Iterator)localObject17).next();
            ((Map)localObject13).put(str2, ((JSONObject)localObject16).getString(str2));
            continue;
            localObject17 = localObject6;
          }
          catch (JSONException localJSONException8)
          {
            localObject15 = localObject10;
            localObject10 = paramString;
            paramString = (String)localObject13;
            localObject16 = localObject11;
            localObject11 = localObject10;
            localObject10 = localObject6;
            localObject13 = localObject1;
            localObject6 = localObject3;
            localObject3 = localObject15;
            localObject1 = localObject16;
          }
        }
        catch (JSONException localJSONException7)
        {
          str2 = null;
          Object localObject14 = localObject5;
          localObject15 = localObject2;
          localObject16 = localObject9;
          localObject17 = paramString;
          paramString = str2;
          localObject2 = localObject12;
          localObject5 = localObject10;
          localObject9 = localObject14;
          localObject14 = localObject15;
          localObject10 = localObject16;
          localObject12 = localObject17;
          continue;
          continue;
          localObject14 = null;
        }
      }
      localObject6 = paramString;
      localObject16 = localObject13;
      paramString = (String)localObject11;
      localObject15 = localObject1;
      i = -1;
      localObject11 = localObject10;
      localObject10 = localObject17;
      localObject13 = localObject3;
      localObject1 = localObject16;
      localObject3 = localObject15;
      for (;;)
      {
        switch (i)
        {
        default: 
          Log.i(f.d(a), "Wrong message type: " + i);
          return;
        }
        try
        {
          i = localObject15.optInt("msg_type", -1);
          localObject15 = localObject3;
          localObject3 = localObject11;
          localObject11 = localObject6;
          localObject6 = localObject13;
          localObject13 = localObject10;
          localObject10 = localObject15;
        }
        catch (JSONException localJSONException9)
        {
          Object localObject4;
          Object localObject7;
          Object localObject8;
          localObject16 = localObject10;
          localObject10 = localObject2;
          String str1 = paramString;
          paramString = localObject14;
          Object localObject2 = localObject12;
          localObject14 = localObject5;
          Object localObject12 = localObject9;
          Object localObject5 = localObject16;
          Object localObject9 = localObject14;
          localObject14 = localObject10;
          localObject10 = localObject12;
          localObject12 = str1;
        }
      }
      if (f.a(a) == null) {
        continue;
      }
      paramString = new AnIMMessageCallbackData((String)localObject3, paramString, (Set)localObject11, (String)localObject1, (Map)localObject6, l1);
      try
      {
        f.a(a).receivedMessage(paramString);
        return;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return;
      }
      localObject13 = new byte[0];
      if (((String)localObject1).length() != 0) {
        localObject13 = az.a((String)localObject1);
      }
      if (f.a(a) == null) {
        continue;
      }
      paramString = new AnIMBinaryCallbackData((String)localObject3, paramString, (Set)localObject11, (byte[])localObject13, (String)localObject10, (Map)localObject6, l1);
      try
      {
        f.a(a).receivedBinary(paramString);
        return;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return;
      }
      if (f.a(a) == null) {
        continue;
      }
      paramString = new AnIMTopicMessageCallbackData((String)localObject3, paramString, (String)localObject13, (String)localObject1, (Map)localObject6, l1);
      try
      {
        f.a(a).receivedTopicMessage(paramString);
        return;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return;
      }
      localObject11 = new byte[0];
      if (((String)localObject1).length() != 0) {
        localObject11 = az.a((String)localObject1);
      }
      if (f.a(a) == null) {
        continue;
      }
      paramString = new AnIMTopicBinaryCallbackData((String)localObject3, paramString, (String)localObject13, (byte[])localObject11, (String)localObject10, (Map)localObject6, l1);
      try
      {
        f.a(a).receivedTopicBinary(paramString);
        return;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return;
      }
      if (f.a(a) == null) {
        continue;
      }
      paramString = new AnIMNoticeCallbackData((String)localObject3, paramString, (String)localObject1, (Map)localObject6, l1, (String)localObject13);
      try
      {
        f.a(a).receivedNotice(paramString);
        return;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return;
      }
      if (f.a(a) == null) {
        continue;
      }
      paramString = new AnIMReceiveACKCallbackData((String)localObject3, paramString);
      try
      {
        f.a(a).receivedReceiveACK(paramString);
        return;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return;
      }
      if (f.a(a) == null) {
        continue;
      }
      paramString = new AnIMReadACKCallbackData((String)localObject3, paramString);
      try
      {
        f.a(a).receivedReadACK(paramString);
        return;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return;
      }
      if (f.a(a) == null) {
        continue;
      }
      new Thread(new au(this)).start();
      return;
      if (f.a(a) == null) {
        continue;
      }
      new Thread(new av(this)).start();
      return;
      if (f.a(a) == null) {
        continue;
      }
      paramString = (String)((Map)localObject6).get("sid");
      localObject1 = f.a(a);
      try
      {
        AnLive.access$400(a).validateSession(paramString);
        return;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return;
      }
      if (f.a(a) == null) {
        continue;
      }
      localObject3 = (String)((Map)localObject6).get("o");
      try
      {
        Integer.valueOf((String)localObject3).intValue();
        paramString = AnLive.access$700(aa).a, paramString);
        paramString.a(SessionDescription.Type.OFFER, (String)localObject1);
        paramString.b();
        return;
        if (f.a(a) == null) {
          continue;
        }
        localObject3 = (String)((Map)localObject6).get("o");
        try
        {
          Integer.valueOf((String)localObject3).intValue();
          AnLive.access$700(aa).a, paramString).a(SessionDescription.Type.ANSWER, (String)localObject1);
          return;
          if (f.a(a) == null) {
            continue;
          }
          localObject3 = f.a(a);
          try
          {
            localObject1 = new JSONObject((String)localObject1);
            AnLive.access$700(a, paramString).a((JSONObject)localObject1);
            return;
          }
          catch (JSONException paramString)
          {
            paramString.printStackTrace();
            return;
          }
          if (f.a(a) == null) {
            continue;
          }
          localObject1 = f.a(a);
          try
          {
            AnLive.access$900(a).onRemotePartyDisconnected(paramString);
            AnLive.access$1000(a);
            return;
          }
          catch (Exception paramString)
          {
            paramString = paramString;
            paramString.printStackTrace();
            return;
          }
          finally {}
        }
        catch (Exception localException1)
        {
          for (;;) {}
        }
      }
      catch (Exception localException2)
      {
        for (;;) {}
      }
    }
  }
  
  /* Error */
  public final void a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: ldc2_w 261
    //   3: lstore_3
    //   4: aload_1
    //   5: ldc_w 525
    //   8: invokevirtual 528	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   11: ifne +101 -> 112
    //   14: aload_0
    //   15: getfield 12	at:a	Lf;
    //   18: invokestatic 365	f:a	(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;
    //   21: ifnull +91 -> 112
    //   24: ldc_w 530
    //   27: aload_1
    //   28: invokevirtual 214	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   31: ifne +81 -> 112
    //   34: aload_2
    //   35: ifnull +79 -> 114
    //   38: new 264	org/json/JSONObject
    //   41: dup
    //   42: aload_2
    //   43: invokespecial 265	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   46: astore_2
    //   47: aload_2
    //   48: ldc_w 532
    //   51: aconst_null
    //   52: invokevirtual 271	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   55: astore 7
    //   57: aload_2
    //   58: ldc_w 281
    //   61: ldc2_w 261
    //   64: invokevirtual 285	org/json/JSONObject:optLong	(Ljava/lang/String;J)J
    //   67: lstore 5
    //   69: aload_1
    //   70: aload 7
    //   72: invokevirtual 214	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   75: ifeq +12 -> 87
    //   78: lload 5
    //   80: invokestatic 537	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   83: invokevirtual 541	java/lang/Long:longValue	()J
    //   86: lstore_3
    //   87: new 543	com/arrownock/im/callback/AnIMMessageSentCallbackData
    //   90: dup
    //   91: iconst_0
    //   92: aconst_null
    //   93: aload_1
    //   94: lload_3
    //   95: invokespecial 546	com/arrownock/im/callback/AnIMMessageSentCallbackData:<init>	(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;J)V
    //   98: astore_1
    //   99: aload_0
    //   100: getfield 12	at:a	Lf;
    //   103: invokestatic 365	f:a	(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;
    //   106: aload_1
    //   107: invokeinterface 550 2 0
    //   112: return
    //   113: astore_2
    //   114: ldc2_w 261
    //   117: lstore_3
    //   118: goto -31 -> 87
    //   121: astore_1
    //   122: aload_1
    //   123: invokevirtual 379	java/lang/Exception:printStackTrace	()V
    //   126: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	127	0	this	at
    //   0	127	1	paramString1	String
    //   0	127	2	paramString2	String
    //   3	115	3	l1	long
    //   67	12	5	l2	long
    //   55	16	7	str	String
    // Exception table:
    //   from	to	target	type
    //   38	69	113	org/json/JSONException
    //   69	87	113	org/json/JSONException
    //   99	112	121	java/lang/Exception
  }
  
  public final void a(String paramString, Throwable paramThrowable)
  {
    if ((f.a().get(paramString) == null) && (f.a(a) != null)) {
      paramString = new AnIMMessageSentCallbackData(true, new ArrownockException(paramThrowable.getMessage(), 3104), paramString, -1L);
    }
    try
    {
      f.a(a).messageSent(paramString);
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public final void a(Throwable paramThrowable)
  {
    Log.e(f.d(a), "General Problem occured. Exception Type: " + paramThrowable.getClass().getName() + "; Exception Message: " + paramThrowable.getMessage(), paramThrowable);
  }
  
  public final void b()
  {
    AnIMStatusUpdateCallbackData localAnIMStatusUpdateCallbackData;
    if (f.a(a) != null)
    {
      localAnIMStatusUpdateCallbackData = new AnIMStatusUpdateCallbackData(AnIMStatus.ONLINE, null);
      if ((cm.a.booleanValue()) && (!"".equals(f.e(a)))) {
        f.a(a, f.e(a));
      }
    }
    try
    {
      new Thread(new aw(this, localAnIMStatusUpdateCallbackData)).start();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public final void b(Throwable paramThrowable)
  {
    f localF = a;
    f.a();
    f.b(a);
    if (f.b(a)) {
      f.a(a, false);
    }
    while (f.a(a) == null) {
      return;
    }
    if ((paramThrowable != null) && ((paramThrowable instanceof Exception))) {
      paramThrowable = new AnIMStatusUpdateCallbackData(a.a(), new ArrownockException("Connection to IM server is broken.", (Exception)paramThrowable, 3106));
    }
    for (;;)
    {
      try
      {
        f.a(a).statusUpdate(paramThrowable);
        return;
      }
      catch (Exception paramThrowable)
      {
        paramThrowable.printStackTrace();
        return;
      }
      if (f.c(a))
      {
        paramThrowable = new AnIMStatusUpdateCallbackData(a.a(), new ArrownockException("User logged in from other device, client force closed.", 3105));
        f.b(a, false);
      }
      else
      {
        paramThrowable = new AnIMStatusUpdateCallbackData(a.a(), null);
      }
    }
  }
  
  public final void c(Throwable paramThrowable)
  {
    Log.e(f.d(a), "Failed to connect to IM Server. Exception Type: " + paramThrowable.getClass().getName() + "; Exception Message: " + paramThrowable.getMessage(), paramThrowable);
    f.b(a);
    if (((paramThrowable instanceof jm)) && (((jm)paramThrowable).a() == 5)) {}
    while (f.a(a) == null) {
      return;
    }
    paramThrowable = new AnIMStatusUpdateCallbackData(a.a(), new ArrownockException(paramThrowable.getMessage(), 3102));
    try
    {
      f.a(a).statusUpdate(paramThrowable);
      return;
    }
    catch (Exception paramThrowable)
    {
      paramThrowable.printStackTrace();
    }
  }
  
  public final void d(Throwable paramThrowable)
  {
    f localF = a;
    f.a();
    Log.e(f.d(a), "Failed to disconnect to IM Server. Exception Type: " + paramThrowable.getClass().getName() + "; Exception Message: " + paramThrowable.getMessage(), paramThrowable);
    if (f.a(a) != null) {
      paramThrowable = new AnIMStatusUpdateCallbackData(a.a(), new ArrownockException(paramThrowable.getMessage(), 3103));
    }
    try
    {
      f.a(a).statusUpdate(paramThrowable);
      return;
    }
    catch (Exception paramThrowable)
    {
      paramThrowable.printStackTrace();
    }
  }
  
  public final void e(Throwable paramThrowable)
  {
    if (f.a(a) != null) {
      paramThrowable = new AnIMStatusUpdateCallbackData(a.a(), new ArrownockException(paramThrowable.getMessage(), 3102));
    }
    try
    {
      new Thread(new ax(this, paramThrowable)).start();
      return;
    }
    catch (Exception paramThrowable)
    {
      paramThrowable.printStackTrace();
    }
  }
}
