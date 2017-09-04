package cn.dbox.ui.card;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.dbox.core.b;
import cn.dbox.core.b.k;
import cn.dbox.ui.common.k;
import cn.dbox.ui.e.c;

public class d
  extends RelativeLayout
{
  public static final int a = 50;
  private View b;
  private ImageView c;
  private TextView d;
  
  public d(Context paramContext, String paramString1, String paramString2, b paramB)
  {
    super(paramContext);
    a(paramContext, paramString1, paramString2, paramB);
    if (b != null)
    {
      paramString1 = new RelativeLayout.LayoutParams(-1, k.a(paramContext, 50));
      topMargin = k.a(paramContext, 5);
      addView(b, paramString1);
    }
  }
  
  public void a(Context paramContext, String paramString1, String paramString2, b paramB)
  {
    b = LayoutInflater.from(paramContext).inflate(cn.dbox.ui.e.d.a(paramContext, "dbox_channel_titlebar"), null);
    c = ((ImageView)b.findViewById(c.a(paramContext, "se_channel_header_logo")));
    d = ((TextView)b.findViewById(c.a(paramContext, "se_channel_header_name")));
    d.setText(paramString2);
    c.setTag(paramString1);
    paramB.a(paramString1, c, new b.k()
    {
      public void a(Bitmap paramAnonymousBitmap, String paramAnonymousString, ImageView paramAnonymousImageView)
      {
        if ((paramAnonymousImageView.getTag().equals(paramAnonymousString)) && (paramAnonymousBitmap != null)) {
          paramAnonymousImageView.setImageBitmap(paramAnonymousBitmap);
        }
      }
      
      public void a(String paramAnonymousString, ImageView paramAnonymousImageView) {}
    });
  }
}
