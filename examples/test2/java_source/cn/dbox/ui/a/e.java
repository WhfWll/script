package cn.dbox.ui.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import cn.dbox.core.b.k;
import cn.dbox.core.bean.a;
import cn.dbox.ui.common.k;
import cn.dbox.ui.e.c;
import cn.dbox.ui.e.d;
import java.util.ArrayList;

public class e
  extends BaseAdapter
{
  private Context a;
  private ArrayList<a> b;
  private cn.dbox.core.b c;
  private int d;
  private int e;
  
  public e(Context paramContext, ArrayList<a> paramArrayList, cn.dbox.core.b paramB)
  {
    a = paramContext;
    b = paramArrayList;
    c = paramB;
    d = k.g(paramContext);
    e = k.i(paramContext);
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
      paramView = LayoutInflater.from(a).inflate(d.a(a, "dbox_feeds_item"), null);
      paramViewGroup = new a(null);
      a = ((ImageView)paramView.findViewById(c.a(a, "list_thumbnail")));
      b = ((ImageView)paramView.findViewById(c.a(a, "list_title_tag")));
      c = ((TextView)paramView.findViewById(c.a(a, "list_title")));
      d = ((ImageView)paramView.findViewById(c.a(a, "list_large_image")));
      d.getLayoutParams().width = d;
      d.getLayoutParams().height = e;
      e = ((TextView)paramView.findViewById(c.a(a, "list_describe")));
      f = ((TextView)paramView.findViewById(c.a(a, "list_describe_btn")));
      paramView.setTag(paramViewGroup);
      localObject = ((a)b.get(paramInt)).g();
      if ((localObject == null) || (((ArrayList)localObject).size() < 1)) {
        break label543;
      }
      localObject = (String)((ArrayList)localObject).get(0);
      b.setVisibility(0);
      if (!"recommend".equals(localObject)) {
        break label485;
      }
      b.setBackgroundResource(cn.dbox.ui.e.b.a(a, "dbox_feeds_tag_jian"));
    }
    for (;;)
    {
      c.setFocusable(false);
      e.setFocusable(false);
      f.setFocusable(false);
      a.setFocusable(false);
      d.setFocusable(false);
      c.setText(((a)b.get(paramInt)).e());
      e.setText(((a)b.get(paramInt)).j());
      f.setText(">>");
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
      d.setScaleType(ImageView.ScaleType.FIT_XY);
      d.setTag(((a)b.get(paramInt)).f());
      c.a(((a)b.get(paramInt)).f(), d, new b.k()
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
      label485:
      if ("hot".equals(localObject))
      {
        b.setBackgroundResource(cn.dbox.ui.e.b.a(a, "dbox_feeds_tag_re"));
      }
      else if ("choiceness".equals(localObject))
      {
        b.setBackgroundResource(cn.dbox.ui.e.b.a(a, "dbox_feeds_tag_jing"));
        continue;
        label543:
        b.setVisibility(4);
      }
    }
  }
  
  private class a
  {
    ImageView a;
    ImageView b;
    TextView c;
    ImageView d;
    TextView e;
    TextView f;
    
    private a() {}
  }
}
