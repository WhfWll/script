package cn.domob.wall.core.download;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
import cn.domob.wall.core.DService.OnImageDownload;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class k
{
  private static k b;
  DService.OnImageDownload a;
  private ExecutorService c = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors() + 1);
  private l d;
  private i e;
  private Map<String, ImageView> f;
  private boolean g = true;
  
  private k(Context paramContext)
  {
    d = new l(paramContext);
    e = new i();
    f = new HashMap();
  }
  
  private Bitmap a(String paramString)
  {
    Bitmap localBitmap2 = d.a(paramString);
    Bitmap localBitmap1 = localBitmap2;
    if (localBitmap2 == null)
    {
      localBitmap1 = e.a(paramString);
      if (localBitmap1 != null) {
        break label61;
      }
      localBitmap2 = j.a(paramString);
      localBitmap1 = localBitmap2;
      if (localBitmap2 != null)
      {
        e.a(localBitmap2, paramString);
        d.a(paramString, localBitmap2);
        localBitmap1 = localBitmap2;
      }
    }
    return localBitmap1;
    label61:
    d.a(paramString, localBitmap1);
    return localBitmap1;
  }
  
  public static k a(Context paramContext)
  {
    if (b == null) {
      b = new k(paramContext);
    }
    return b;
  }
  
  private void a(String paramString, ImageView paramImageView)
  {
    c.submit(new b(new a(paramString, paramImageView), paramString));
  }
  
  private void d()
  {
    synchronized (f)
    {
      Iterator localIterator = f.values().iterator();
      while (localIterator.hasNext())
      {
        ImageView localImageView = (ImageView)localIterator.next();
        if ((localImageView != null) && (localImageView.getTag() != null)) {
          a((String)localImageView.getTag(), localImageView);
        }
      }
    }
    f.clear();
  }
  
  public void a()
  {
    g = true;
  }
  
  public void a(String arg1, ImageView paramImageView, DService.OnImageDownload paramOnImageDownload)
  {
    a = paramOnImageDownload;
    paramOnImageDownload = d.a(???);
    if (paramOnImageDownload != null) {
      if (a != null) {
        a.onDownloadSuc(paramOnImageDownload, ???, paramImageView);
      }
    }
    for (;;)
    {
      return;
      synchronized (f)
      {
        f.put(Integer.toString(paramImageView.hashCode()), paramImageView);
        if (!g) {
          continue;
        }
        d();
        return;
      }
    }
  }
  
  public void b()
  {
    g = false;
  }
  
  public void c()
  {
    g = true;
    d();
  }
  
  private class a
    extends Handler
  {
    String a;
    ImageView b;
    
    public a(String paramString, ImageView paramImageView)
    {
      a = paramString;
      b = paramImageView;
    }
    
    public void handleMessage(Message paramMessage)
    {
      if (b.getTag().equals(a))
      {
        if (obj == null) {
          break label99;
        }
        paramMessage = (Bitmap)obj;
        if (paramMessage == null) {
          break label68;
        }
        if (a != null) {
          a.onDownloadSuc(paramMessage, a, b);
        }
      }
      label68:
      label99:
      while (a == null)
      {
        do
        {
          return;
        } while (a == null);
        a.onDownloadFail(a, b);
        return;
      }
      a.onDownloadFail(a, b);
    }
  }
  
  private class b
    implements Callable<String>
  {
    private String b;
    private Handler c;
    
    public b(Handler paramHandler, String paramString)
    {
      b = paramString;
      c = paramHandler;
    }
    
    public String a()
      throws Exception
    {
      Message localMessage = new Message();
      obj = k.a(k.this, b);
      c.sendMessage(localMessage);
      return b;
    }
  }
}
