package cn.domob.android.ads;

import cn.domob.android.i.g;

public class DomobPreRollSceneInfo
  extends DomobSceneInfo
{
  private static final int b = 10;
  private static final int c = 10;
  private int d;
  private int e;
  private boolean f = false;
  private boolean g = false;
  private boolean h = false;
  
  public DomobPreRollSceneInfo() {}
  
  protected boolean a()
  {
    return h;
  }
  
  protected int b()
  {
    if (f) {
      return d;
    }
    return g.a(e(), 10);
  }
  
  protected int c()
  {
    if (g) {
      return e;
    }
    return g.a(e(), 10);
  }
  
  public void setCountdownCoordinatesX(int paramInt)
  {
    f = true;
    d = paramInt;
  }
  
  public void setCountdownCoordinatesY(int paramInt)
  {
    g = true;
    e = paramInt;
  }
  
  public void setWhetherToAddCountdown(boolean paramBoolean)
  {
    h = paramBoolean;
  }
}
