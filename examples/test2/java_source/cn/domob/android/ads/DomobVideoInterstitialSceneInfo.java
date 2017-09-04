package cn.domob.android.ads;

public class DomobVideoInterstitialSceneInfo
  extends DomobSceneInfo
{
  public static final int CLOSE_BUTTON_POSITION_OUTSIDE_AD_RIGHT = 3;
  public static final int CLOSE_BUTTON_POSITION_OUTSIDE_AD_UP = 1;
  private int b = 3;
  
  public DomobVideoInterstitialSceneInfo() {}
  
  protected int a()
  {
    return b;
  }
  
  public void setCloseBtnPosition(int paramInt)
  {
    b = paramInt;
  }
}
