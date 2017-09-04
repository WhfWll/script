package com.bontai.mobiads.ads.gif;

import android.os.AsyncTask;
import android.util.Log;
import com.bangcle.andjni.JniLib;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public class GifDataDownloader
  extends AsyncTask<String, Void, byte[]>
{
  private static final String TAG = "GifDataDownloader";
  
  static
  {
    JniLib.a(GifDataDownloader.class, 242);
  }
  
  public GifDataDownloader() {}
  
  private static final native byte[] input2byte(InputStream paramInputStream)
    throws IOException;
  
  protected byte[] doInBackground(String... paramVarArgs)
  {
    paramVarArgs = paramVarArgs[0];
    if (paramVarArgs == null) {
      return null;
    }
    if (!paramVarArgs.startsWith("http")) {
      try
      {
        Object localObject = new File(paramVarArgs);
        if (!((File)localObject).exists()) {
          Log.i("ad12306", "gif文件不存在" + paramVarArgs);
        }
        localObject = input2byte(new FileInputStream((File)localObject));
        return localObject;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    try
    {
      byte[] arrayOfByte = ByteArrayHttpClient.get(paramVarArgs);
      return arrayOfByte;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      Log.e("GifDataDownloader", "GifDecode OOM: " + paramVarArgs, localOutOfMemoryError);
    }
    return null;
  }
}
