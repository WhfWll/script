package cn.dbox.ui.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import cn.dbox.core.b.k;
import cn.dbox.ui.e.c;
import java.util.ArrayList;

public class b
  extends BaseAdapter
{
  private ArrayList<cn.dbox.core.bean.d> a;
  private Context b;
  private cn.dbox.core.b c;
  
  public b(Context paramContext, ArrayList<cn.dbox.core.bean.d> paramArrayList, cn.dbox.core.b paramB)
  {
    a = paramArrayList;
    b = paramContext;
    c = paramB;
  }
  
  public int getCount()
  {
    if (a.size() % 3 == 0) {
      return a.size();
    }
    return a.size() + 3 - a.size() % 3;
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
    Object localObject;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(b).inflate(cn.dbox.ui.e.d.a(b, "dbox_cardview_layout_item"), null);
      paramViewGroup = new a(null);
      a = ((ImageView)paramView.findViewById(c.a(b, "card_logo")));
      b = ((TextView)paramView.findViewById(c.a(b, "card_name")));
      c = ((ImageView)paramView.findViewById(c.a(b, "card_tag")));
      paramView.setTag(paramViewGroup);
      if (paramInt >= a.size()) {
        break label392;
      }
      localObject = ((cn.dbox.core.bean.d)a.get(paramInt)).f();
      if ((localObject == null) || (((ArrayList)localObject).size() < 1)) {
        break label357;
      }
      localObject = (String)((ArrayList)localObject).get(0);
      c.setVisibility(0);
      if (!"new".equals(localObject)) {
        break label315;
      }
      c.setBackgroundResource(cn.dbox.ui.e.b.a(b, "dbox_card_tag_new"));
      label186:
      localObject = ((cn.dbox.core.bean.d)a.get(paramInt)).d();
      if (localObject == null) {
        break label380;
      }
      if (((String)localObject).length() != 3) {
        break label368;
      }
      b.setText(" " + (String)localObject + " ");
    }
    for (;;)
    {
      a.setTag(((cn.dbox.core.bean.d)a.get(paramInt)).e());
      c.a(((cn.dbox.core.bean.d)a.get(paramInt)).e(), a, new b.k()
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
      break;
      label315:
      if ("hot".equals(localObject))
      {
        c.setBackgroundResource(cn.dbox.ui.e.b.a(b, "dbox_card_tag_hot"));
        break label186;
      }
      if (!"red".equals(localObject)) {
        break label186;
      }
      break label186;
      label357:
      c.setVisibility(4);
      break label186;
      label368:
      b.setText((CharSequence)localObject);
      continue;
      label380:
      b.setText("");
    }
    label392:
    a.setVisibility(4);
    return paramView;
  }
  
  private class a
  {
    ImageView a;
    TextView b;
    ImageView c;
    
    private a() {}
  }
}
