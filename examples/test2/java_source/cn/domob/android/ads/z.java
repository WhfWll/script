package cn.domob.android.ads;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout.LayoutParams;
import cn.domob.android.i.f;
import java.util.HashMap;

public class z
  extends n
{
  private static f g = new f(z.class.getSimpleName());
  
  public z(Context paramContext, k paramK, j paramJ, g paramG)
  {
    super(paramContext, paramK, paramJ, paramG);
    g.b("New DomobSplashAdapter instance.");
  }
  
  public void a()
  {
    n();
  }
  
  public void a(int paramInt1, int paramInt2) {}
  
  public void a(HashMap<String, String> paramHashMap, String paramString, long paramLong) {}
  
  public void d() {}
  
  public void e() {}
  
  public void f()
  {
    if ((f instanceof B))
    {
      ((B)f).destroy();
      f = null;
    }
  }
  
  public void n()
  {
    if (f == null)
    {
      ImageView localImageView = new ImageView(a);
      f = localImageView;
      localImageView.setLayoutParams(new RelativeLayout.LayoutParams(b.a(), b.b()));
      localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
      if (c != null) {
        localImageView.setImageBitmap(BitmapFactory.decodeFile(c.h()));
      }
      g();
    }
  }
}
