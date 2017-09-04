package com.bontai.mobiads.ads.gif;

import com.bangcle.andjni.JniLib;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.OkHttpClient;

public class ByteArrayHttpClient
{
  private static final String TAG = "ByteArrayHttpClient";
  private static OkHttpClient client = new OkHttpClient();
  
  static
  {
    JniLib.a(ByteArrayHttpClient.class, 241);
  }
  
  public ByteArrayHttpClient() {}
  
  public static native byte[] get(String paramString);
  
  private static final native byte[] input2byte(InputStream paramInputStream)
    throws IOException;
}
