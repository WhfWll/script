package cn.dbox.ui.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import cn.dbox.core.b.k;
import cn.dbox.ui.e.c;
import cn.dbox.ui.e.d;
import java.util.ArrayList;

public class a
  extends g
{
  private ArrayList<cn.dbox.core.bean.a> a;
  private Context b;
  private cn.dbox.core.b c;
  
  public a(Context paramContext, ArrayList<cn.dbox.core.bean.a> paramArrayList, cn.dbox.core.b paramB)
  {
    super(paramContext);
    a = paramArrayList;
    b = paramContext;
    c = paramB;
  }
  
  public int a()
  {
    if (a != null) {
      return a.size();
    }
    return 0;
  }
  
  public View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = LayoutInflater.from(b).inflate(d.a(b, "dbox_cardview_item"), null);
      paramViewGroup = new a(null);
      a = ((ImageView)paramView.findViewById(c.a(b, "card_logo")));
      b = ((TextView)paramView.findViewById(c.a(b, "card_name")));
      c = ((ImageView)paramView.findViewById(c.a(b, "card_tag")));
      paramView.setTag(paramViewGroup);
    }
    label432:
    for (;;)
    {
      Object localObject = ((cn.dbox.core.bean.a)a.get(paramInt)).g();
      if ((localObject != null) && (((ArrayList)localObject).size() >= 1))
      {
        localObject = (String)((ArrayList)localObject).get(0);
        c.setVisibility(0);
        if ("recommend".equals(localObject)) {
          c.setBackgroundResource(cn.dbox.ui.e.b.a(b, "dbox_card_tag_tj"));
        }
      }
      for (;;)
      {
        b.setText(((cn.dbox.core.bean.a)a.get(paramInt)).e());
        a.setTag(((cn.dbox.core.bean.a)a.get(paramInt)).k());
        c.a(((cn.dbox.core.bean.a)a.get(paramInt)).k(), a, new b.k()
        {
          public void a(Bitmap paramAnonymousBitmap, String paramAnonymousString, ImageView paramAnonymousImageView)
          {
            if ((paramAnonymousImageView.getTag().equals(paramAnonymousString)) && (paramAnonymousBitmap != null)) {
              paramAnonymousImageView.setImageBitmap(paramAnonymousBitmap);
            }
          }
          
          public void a(String paramAnonymousString, ImageView paramAnonymousImageView) {}
        });
        return paramView;
        paramViewGroup = (a)paramView.getTag();
        if (paramViewGroup != null) {
          break label432;
        }
        paramView = LayoutInflater.from(b).inflate(d.a(b, "dbox_cardview_item"), null);
        paramViewGroup = new a(null);
        a = ((ImageView)paramView.findViewById(c.a(b, "card_logo")));
        b = ((TextView)paramView.findViewById(c.a(b, "card_name")));
        c = ((ImageView)paramView.findViewById(c.a(b, "card_tag")));
        paramView.setTag(paramViewGroup);
        break;
        if ("hot".equals(localObject))
        {
          c.setBackgroundResource(cn.dbox.ui.e.b.a(b, "dbox_card_tag_rm"));
        }
        else if ("choiceness".equals(localObject))
        {
          c.setBackgroundResource(cn.dbox.ui.e.b.a(b, "dbox_card_tag_jx"));
          continue;
          c.setVisibility(4);
        }
      }
    }
  }
  
  public Object getItem(int paramInt)
  {
    return Integer.valueOf(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  private class a
  {
    ImageView a;
    TextView b;
    ImageView c;
    
    private a() {}
  }
}
