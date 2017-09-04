package cn.domob.wall.core.download;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import cn.domob.wall.core.h.d;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;

public class j
{
  private static final String a = "ImageGetFromHttp";
  private static d b = new d(DownloadCancelActivity.class.getSimpleName());
  
  public j() {}
  
  public static Bitmap a(String paramString)
  {
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    HttpGet localHttpGet = new HttpGet(paramString);
    try
    {
      Object localObject1 = localDefaultHttpClient.execute(localHttpGet);
      int i = ((HttpResponse)localObject1).getStatusLine().getStatusCode();
      if (i != 200)
      {
        b.d("ImageGetFromHttp", "Error " + i + " while retrieving bitmap from " + paramString);
        return null;
      }
      HttpEntity localHttpEntity = ((HttpResponse)localObject1).getEntity();
      if (localHttpEntity != null)
      {
        try
        {
          localObject1 = localHttpEntity.getContent();
          Bitmap localBitmap;
          if (localObject1 == null) {
            break label171;
          }
        }
        finally
        {
          try
          {
            localBitmap = BitmapFactory.decodeStream(new a((InputStream)localObject1));
            if (localObject1 != null) {
              ((InputStream)localObject1).close();
            }
            localHttpEntity.consumeContent();
            return localBitmap;
          }
          finally {}
          localObject2 = finally;
          localObject1 = null;
        }
        ((InputStream)localObject1).close();
        label171:
        localHttpEntity.consumeContent();
        throw localObject2;
      }
    }
    catch (IOException paramString)
    {
      localHttpGet.abort();
      b.a(paramString);
      return null;
      return null;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localHttpGet.abort();
      b.d("ImageGetFromHttp", "Incorrect URL: " + paramString);
      return null;
    }
    catch (Exception paramString)
    {
      localHttpGet.abort();
      b.a(paramString);
      return null;
    }
    finally
    {
      localDefaultHttpClient.getConnectionManager().shutdown();
    }
  }
  
  static class a
    extends FilterInputStream
  {
    public a(InputStream paramInputStream)
    {
      super();
    }
    
    public long skip(long paramLong)
      throws IOException
    {
      long l2;
      for (long l1 = 0L;; l1 = l2 + l1)
      {
        if (l1 < paramLong)
        {
          long l3 = in.skip(paramLong - l1);
          l2 = l3;
          if (l3 != 0L) {
            continue;
          }
          if (read() >= 0) {}
        }
        else
        {
          return l1;
        }
        l2 = 1L;
      }
    }
  }
}
