package com.worklight.common;

import android.util.Log;
import com.bangcle.andjni.JniLib;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public class WLX509TrustManager
  implements X509TrustManager
{
  private X509TrustManager standardTrustManager = null;
  
  static
  {
    JniLib.a(WLX509TrustManager.class, 1208);
  }
  
  public WLX509TrustManager(KeyStore paramKeyStore)
  {
    try
    {
      Log.d("SSL", "initial keystore");
      TrustManagerFactory localTrustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
      localTrustManagerFactory.init(paramKeyStore);
      paramKeyStore = localTrustManagerFactory.getTrustManagers();
      if (paramKeyStore.length == 0) {
        throw new NoSuchAlgorithmException("no trust manager found");
      }
    }
    catch (NoSuchAlgorithmException paramKeyStore)
    {
      Log.e("SSL", "init keystore error. NoSuchAlgorithmException\n" + paramKeyStore.getMessage());
      return;
      standardTrustManager = ((X509TrustManager)paramKeyStore[0]);
      return;
    }
    catch (KeyStoreException paramKeyStore)
    {
      Log.e("SSL", "init keystore error. KeyStoreException\n" + paramKeyStore.getMessage());
    }
  }
  
  public native void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString);
  
  public native void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString);
  
  public native X509Certificate[] getAcceptedIssuers();
}
