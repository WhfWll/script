package cn.dbox.ui.common;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import cn.dbox.core.bean.a;
import cn.dbox.core.bean.c;
import java.util.ArrayList;

public class h
  extends LinearLayout
{
  public ArrayList<cn.dbox.core.bean.d> a;
  public ArrayList<c> b;
  public ArrayList<a> c;
  public cn.dbox.core.b d;
  public i e;
  public ArrayList<cn.dbox.ui.card.e> f = new ArrayList();
  public cn.dbox.ui.d.b g;
  public View h;
  public View i;
  public View j;
  public Context k;
  public d l;
  public LinearLayout.LayoutParams m;
  
  public h(Context paramContext)
  {
    this(paramContext, null, null, null);
  }
  
  public h(Context paramContext, ArrayList<c> paramArrayList, ArrayList<a> paramArrayList1, cn.dbox.core.b paramB)
  {
    super(paramContext);
    k = paramContext;
    b = paramArrayList;
    a = k.a(paramArrayList);
    d = paramB;
    m = new LinearLayout.LayoutParams(-1, -1);
    setLayoutParams(m);
    setOrientation(1);
    e = new i(paramContext);
    h = LayoutInflater.from(k).inflate(cn.dbox.ui.e.d.a(k, "dbox_progressbar"), null);
    i = LayoutInflater.from(k).inflate(cn.dbox.ui.e.d.a(k, "dbox_loading"), null);
    j = LayoutInflater.from(k).inflate(cn.dbox.ui.e.d.a(k, "dbox_error"), null);
    l = new d(paramContext);
  }
  
  public void a(Context paramContext, ArrayList<c> paramArrayList, ArrayList<a> paramArrayList1, cn.dbox.core.b paramB)
  {
    k = paramContext;
    b = paramArrayList;
    a = k.a(paramArrayList);
    d = paramB;
  }
  
  public void a(cn.dbox.ui.d.b paramB)
  {
    g = paramB;
    int n = 0;
    while (n < f.size())
    {
      ((cn.dbox.ui.card.e)f.get(n)).a(paramB);
      n += 1;
    }
  }
  
  public void a(cn.dbox.ui.d.e paramE)
  {
    e.a(paramE);
  }
}
