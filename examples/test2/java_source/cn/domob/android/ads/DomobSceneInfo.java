package cn.domob.android.ads;

import android.content.Context;
import android.util.Log;
import android.view.ViewGroup;
import cn.domob.android.i.f;
import cn.domob.android.i.h;

public class DomobSceneInfo
{
  private static final int i = 32;
  protected int a;
  private Context b;
  private ViewGroup c;
  private String d;
  private int e;
  private int f;
  private int g;
  private int h;
  
  public DomobSceneInfo() {}
  
  protected String d()
  {
    return d;
  }
  
  protected Context e()
  {
    return b;
  }
  
  protected ViewGroup f()
  {
    return c;
  }
  
  protected int g()
  {
    return e;
  }
  
  protected int h()
  {
    return f;
  }
  
  protected int i()
  {
    return g;
  }
  
  protected int j()
  {
    return h;
  }
  
  protected int k()
  {
    return a;
  }
  
  public void setContext(Context paramContext)
  {
    b = paramContext;
  }
  
  public void setCoordinatesX(int paramInt)
  {
    e = paramInt;
  }
  
  public void setCoordinatesY(int paramInt)
  {
    f = paramInt;
  }
  
  public void setParentViewGroup(ViewGroup paramViewGroup)
  {
    c = paramViewGroup;
  }
  
  public void setSceneId(String paramString)
  {
    if ((!h.e(paramString)) && (paramString.getBytes().length > 32))
    {
      Log.e(f.b(), String.format("scene id maximum length is limited to %d bytes", new Object[] { Integer.valueOf(32) }));
      d = paramString.substring(0, 32);
      return;
    }
    d = paramString;
  }
  
  public void setSecureAreaHeight(int paramInt)
  {
    h = paramInt;
  }
  
  public void setSecureAreaWidth(int paramInt)
  {
    g = paramInt;
  }
}
