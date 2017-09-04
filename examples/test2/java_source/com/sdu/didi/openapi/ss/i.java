package com.sdu.didi.openapi.ss;

import android.content.Context;
import android.os.AsyncTask;
import android.widget.Toast;
import com.sdu.didi.openapi.utils.Utils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

class i
  extends AsyncTask<Void, Void, Void>
{
  i(g paramG, Context paramContext, String paramString, File paramFile) {}
  
  protected Void a(Void... paramVarArgs)
  {
    try
    {
      paramVarArgs = ((HttpURLConnection)new URL(b).openConnection()).getInputStream();
      FileOutputStream localFileOutputStream = new FileOutputStream(c);
      byte[] arrayOfByte = new byte['Ѐ'];
      for (;;)
      {
        int i = paramVarArgs.read(arrayOfByte);
        if (i <= 0) {
          break;
        }
        localFileOutputStream.write(arrayOfByte, 0, i);
      }
      return null;
    }
    catch (IOException paramVarArgs)
    {
      paramVarArgs.printStackTrace();
    }
    for (;;)
    {
      Utils.a(a, c.toString());
    }
  }
  
  protected void onPreExecute()
  {
    Toast.makeText(a, "开始下载...", 1).show();
  }
}
