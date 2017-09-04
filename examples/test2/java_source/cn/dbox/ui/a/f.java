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
import cn.dbox.core.bean.a;
import cn.dbox.ui.e.c;
import cn.dbox.ui.e.d;
import java.util.ArrayList;

public class f
  extends BaseAdapter
{
  private Context a;
  private ArrayList<a> b;
  private cn.dbox.core.b c;
  
  public f(Context paramContext, ArrayList<a> paramArrayList, cn.dbox.core.b paramB)
  {
    a = paramContext;
    b = paramArrayList;
    c = paramB;
  }
  
  public int getCount()
  {
    return b.size();
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
      paramView = LayoutInflater.from(a).inflate(d.a(a, "dbox_list_container_item"), null);
      paramViewGroup = new a(null);
      a = ((ImageView)paramView.findViewById(c.a(a, "lsit_logo")));
      b = ((ImageView)paramView.findViewById(c.a(a, "lsit_logo_tag")));
      c = ((TextView)paramView.findViewById(c.a(a, "list_name")));
      d = ((TextView)paramView.findViewById(c.a(a, "list_describe")));
      paramView.setTag(paramViewGroup);
      localObject = ((a)b.get(paramInt)).g();
      if ((localObject == null) || (((ArrayList)localObject).size() < 1)) {
        break label362;
      }
      localObject = (String)((ArrayList)localObject).get(0);
      b.setVisibility(0);
      if (!"recommend".equals(localObject)) {
        break label304;
      }
      b.setBackgroundResource(cn.dbox.ui.e.b.a(a, "dbox_card_tag_tj"));
    }
    for (;;)
    {
      c.setText(((a)b.get(paramInt)).e());
      d.setText(((a)b.get(paramInt)).j());
      a.setTag(((a)b.get(paramInt)).k());
      c.a(((a)b.get(paramInt)).k(), a, new b.k()
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
      label304:
      if ("hot".equals(localObject))
      {
        b.setBackgroundResource(cn.dbox.ui.e.b.a(a, "dbox_card_tag_rm"));
      }
      else if ("choiceness".equals(localObject))
      {
        b.setBackgroundResource(cn.dbox.ui.e.b.a(a, "dbox_card_tag_jx"));
        continue;
        label362:
        b.setVisibility(4);
      }
    }
  }
  
  private class a
  {
    ImageView a;
    ImageView b;
    TextView c;
    TextView d;
    
    private a() {}
  }
}
