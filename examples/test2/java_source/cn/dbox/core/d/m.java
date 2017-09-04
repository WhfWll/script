package cn.dbox.core.d;

import android.content.Context;
import android.graphics.Bitmap;
import java.lang.ref.SoftReference;
import java.util.LinkedHashMap;
import java.util.Map.Entry;

public class m
{
  private static final int a = 15;
  private static n<String, Bitmap> b;
  private static LinkedHashMap<String, SoftReference<Bitmap>> c;
  
  public m(Context paramContext)
  {
    b = new n(8388608)
    {
      protected int a(String paramAnonymousString, Bitmap paramAnonymousBitmap)
      {
        if (paramAnonymousBitmap != null) {
          return paramAnonymousBitmap.getRowBytes() * paramAnonymousBitmap.getHeight();
        }
        return 0;
      }
      
      protected void a(boolean paramAnonymousBoolean, String paramAnonymousString, Bitmap paramAnonymousBitmap1, Bitmap paramAnonymousBitmap2)
      {
        if (paramAnonymousBitmap1 != null) {
          m.b().put(paramAnonymousString, new SoftReference(paramAnonymousBitmap1));
        }
      }
    };
    c = new LinkedHashMap(15, 0.75F, true)
    {
      private static final long serialVersionUID = 6040103833179403725L;
      
      protected boolean removeEldestEntry(Map.Entry<String, SoftReference<Bitmap>> paramAnonymousEntry)
      {
        return size() > 15;
      }
    };
  }
  
  public Bitmap a(String paramString)
  {
    synchronized (b)
    {
      Object localObject2 = (Bitmap)b.a(paramString);
      if (localObject2 != null)
      {
        b.b(paramString);
        b.b(paramString, localObject2);
        return localObject2;
      }
      synchronized (c)
      {
        localObject2 = (SoftReference)c.get(paramString);
        if (localObject2 == null) {
          break label116;
        }
        localObject2 = (Bitmap)((SoftReference)localObject2).get();
        if (localObject2 != null)
        {
          b.b(paramString, localObject2);
          c.remove(paramString);
          return localObject2;
        }
      }
    }
    c.remove(paramString);
    label116:
    return null;
  }
  
  public void a()
  {
    c.clear();
  }
  
  public void a(String paramString, Bitmap paramBitmap)
  {
    if (paramBitmap != null) {
      synchronized (b)
      {
        b.b(paramString, paramBitmap);
        return;
      }
    }
  }
}
