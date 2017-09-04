package cn.dbox.ui.common;

import android.content.Context;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

public class f
  extends ListView
{
  public b a;
  public a b;
  int c = 0;
  public AbsListView.OnScrollListener d = new AbsListView.OnScrollListener()
  {
    public void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
    {
      if ((paramAnonymousAbsListView.getLastVisiblePosition() > 0) && (paramAnonymousAbsListView.getLastVisiblePosition() == paramAnonymousAbsListView.getCount() - 1) && (paramAnonymousInt == 0) && (a != null)) {
        a.a();
      }
      if ((paramAnonymousAbsListView.getLastVisiblePosition() > 0) && (paramAnonymousInt == 0))
      {
        int i = paramAnonymousAbsListView.getLastVisiblePosition();
        paramAnonymousAbsListView = f.this;
        paramAnonymousInt = i;
        if (c > i) {
          paramAnonymousInt = c;
        }
        c = paramAnonymousInt;
      }
    }
  };
  AdapterView.OnItemClickListener e = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      if (b != null) {
        b.a();
      }
    }
  };
  
  public f(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public void a()
  {
    setVerticalScrollBarEnabled(false);
    setDivider(null);
    setLayoutParams(new AbsListView.LayoutParams(-1, -1));
    setOnScrollListener(d);
    setOnItemClickListener(e);
  }
  
  public void a(a paramA)
  {
    b = paramA;
  }
  
  public void a(b paramB)
  {
    a = paramB;
  }
  
  public int b()
  {
    if (c == 0) {
      c = getLastVisiblePosition();
    }
    return c;
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
  
  public static abstract interface b
  {
    public abstract void a();
  }
}
