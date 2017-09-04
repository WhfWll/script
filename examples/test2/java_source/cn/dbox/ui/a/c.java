package cn.dbox.ui.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import cn.dbox.core.b;
import cn.dbox.core.b.k;
import cn.dbox.core.bean.a;
import cn.dbox.ui.common.k;
import cn.dbox.ui.e.d;
import java.util.ArrayList;

public class c
  extends BaseAdapter
{
  public final float a = 0.15625F;
  public final float b = 0.3125F;
  private Context c;
  private ArrayList<a> d;
  private b e;
  
  public c(Context paramContext, ArrayList<a> paramArrayList, b paramB)
  {
    c = paramContext;
    d = paramArrayList;
    e = paramB;
  }
  
  public int getCount()
  {
    if (d != null)
    {
      if (d.size() == 1) {
        return 1;
      }
      return Integer.MAX_VALUE;
    }
    return Integer.MAX_VALUE;
  }
  
  public Object getItem(int paramInt)
  {
    return Integer.valueOf(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(c).inflate(d.a(c, "dbox_gallery_item"), null);
      paramView.setLayoutParams(new Gallery.LayoutParams(-1, -2));
      paramViewGroup = new a(null);
      a = ((ImageView)paramView.findViewById(cn.dbox.ui.e.c.a(c, "gallery_image")));
      if (e.f().equals("32:5"))
      {
        i = k.a(c, 0.15625F);
        a.getLayoutParams().height = i;
        paramView.setTag(paramViewGroup);
      }
    }
    for (;;)
    {
      String str = ((a)d.get(paramInt % d.size())).l();
      a.setTag(str);
      e.a(str, a, new b.k()
      {
        public void a(Bitmap paramAnonymousBitmap, String paramAnonymousString, ImageView paramAnonymousImageView)
        {
          if ((paramAnonymousImageView.getTag().equals(paramAnonymousString)) && (paramAnonymousBitmap != null)) {
            paramAnonymousImageView.setImageBitmap(paramAnonymousBitmap);
          }
        }
        
        public void a(String paramAnonymousString, ImageView paramAnonymousImageView) {}
      });
      a.setScaleType(ImageView.ScaleType.FIT_XY);
      return paramView;
      i = k.a(c, 0.3125F);
      break;
      paramViewGroup = (a)paramView.getTag();
    }
  }
  
  private class a
  {
    ImageView a;
    
    private a() {}
  }
}
