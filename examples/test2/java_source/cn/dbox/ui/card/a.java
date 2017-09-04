package cn.dbox.ui.card;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.dbox.core.b.e;
import cn.dbox.core.b.k;
import java.util.ArrayList;

public class a
  extends LinearLayout
{
  ArrayList<cn.dbox.core.bean.d> a;
  public int b = 3;
  private View c;
  private ImageView d;
  private TextView e;
  private cn.dbox.ui.d.b f;
  
  public a(Context paramContext, cn.dbox.core.bean.c paramC, cn.dbox.core.b paramB)
  {
    super(paramContext);
    a(paramContext, paramC, paramB);
    if (c != null) {
      addView(c);
    }
  }
  
  public void a(Context paramContext, cn.dbox.core.bean.c paramC, cn.dbox.core.b paramB)
  {
    c = LayoutInflater.from(paramContext).inflate(cn.dbox.ui.e.d.a(paramContext, "dbox_channel_item"), null);
    d = ((ImageView)c.findViewById(cn.dbox.ui.e.c.a(paramContext, "channel_header_logo")));
    e = ((TextView)c.findViewById(cn.dbox.ui.e.c.a(paramContext, "channel_header_name")));
    Object localObject = paramC.b();
    String str = paramC.c();
    e.setText((CharSequence)localObject);
    d.setTag(str);
    paramB.a(str, d, new b.k()
    {
      public void a(Bitmap paramAnonymousBitmap, String paramAnonymousString, ImageView paramAnonymousImageView)
      {
        if ((paramAnonymousImageView.getTag().equals(paramAnonymousString)) && (paramAnonymousBitmap != null)) {
          paramAnonymousImageView.setImageBitmap(paramAnonymousBitmap);
        }
      }
      
      public void a(String paramAnonymousString, ImageView paramAnonymousImageView) {}
    });
    localObject = (ScrollCardView)c.findViewById(cn.dbox.ui.e.c.a(paramContext, "card_view"));
    ((ScrollCardView)localObject).setNumColumns(b);
    a = paramC.d();
    ((ScrollCardView)localObject).setAdapter(new cn.dbox.ui.a.b(paramContext, a, paramB));
    ((ScrollCardView)localObject).setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if ((a.a(a.this) != null) && (paramAnonymousInt < a.size())) {
          a.a(a.this).a((cn.dbox.core.bean.d)a.get(paramAnonymousInt), b.e.c);
        }
      }
    });
  }
  
  public void a(cn.dbox.ui.d.b paramB)
  {
    f = paramB;
  }
}
