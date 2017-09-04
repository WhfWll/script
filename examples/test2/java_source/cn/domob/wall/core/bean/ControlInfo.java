package cn.domob.wall.core.bean;

import cn.domob.wall.core.h.d;
import org.json.JSONObject;

public class ControlInfo
{
  private static final boolean r = Boolean.FALSE.booleanValue();
  private static final boolean s = Boolean.TRUE.booleanValue();
  private static final boolean t = Boolean.TRUE.booleanValue();
  private static final boolean u = Boolean.FALSE.booleanValue();
  private static final boolean v = Boolean.TRUE.booleanValue();
  d a = new d(ControlInfo.class.getSimpleName());
  private String b;
  private int c = 5;
  private int d = 15;
  private int e = 1;
  private int f = 0;
  private boolean g;
  private boolean h;
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private long p;
  private boolean q;
  
  public ControlInfo() {}
  
  public ControlInfo(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null) {}
    try
    {
      g = paramJSONObject.optBoolean("ent_pic", r);
      if (Boolean.valueOf(g).booleanValue()) {
        b = paramJSONObject.optString("pic_url", "");
      }
      h = paramJSONObject.optBoolean("new_rem", s);
      c = paramJSONObject.optInt("top_tim", c);
      i = paramJSONObject.optBoolean("dbut_show", t);
      d = paramJSONObject.optInt("show_num", d);
      e = paramJSONObject.optInt("ad_order", e);
      j = paramJSONObject.optBoolean("app_classify", u);
      k = paramJSONObject.optBoolean("ishavebanner", v);
      m = paramJSONObject.optBoolean("showOpen", Boolean.FALSE.booleanValue());
      l = paramJSONObject.optBoolean("showUpdate", Boolean.FALSE.booleanValue());
      n = paramJSONObject.optBoolean("showNew", Boolean.TRUE.booleanValue());
      o = paramJSONObject.optBoolean("showSearchEntry", Boolean.FALSE.booleanValue());
      p = paramJSONObject.optLong("timeout", 86400000L);
      q = paramJSONObject.optBoolean("showEWallEntry", Boolean.FALSE.booleanValue());
      a.b("controlJsonObject: " + toString());
      return;
    }
    catch (Exception localException)
    {
      a.e("Error happens when decoding controlJsonObject: " + paramJSONObject.toString());
      a.a(localException);
    }
  }
  
  public a getAdOrder()
  {
    if (e == 1) {
      return a.a;
    }
    if (e == 2) {
      return a.b;
    }
    if (e == 3) {
      return a.c;
    }
    return a.a;
  }
  
  public int getBannerIntervalTime()
  {
    return c;
  }
  
  public String getEnterPicURL()
  {
    return b;
  }
  
  public int getNumberOfNewAd()
  {
    return f;
  }
  
  public int getShowAdNum()
  {
    return d;
  }
  
  public long getTimeout()
  {
    return p;
  }
  
  public boolean isButtonShow()
  {
    return i;
  }
  
  public boolean isChangeEnterPic()
  {
    return g;
  }
  
  public boolean isClassify()
  {
    return j;
  }
  
  public boolean isHasBanner()
  {
    return k;
  }
  
  public boolean isShowEWallEntrance()
  {
    return q;
  }
  
  public boolean isShowNew()
  {
    return n;
  }
  
  public boolean isShowNewReminder()
  {
    return h;
  }
  
  public boolean isShowOpen()
  {
    return m;
  }
  
  public boolean isShowSearchEntrance()
  {
    return o;
  }
  
  public boolean isShowUpdate()
  {
    return l;
  }
  
  public void setNumberOfNewAd(int paramInt)
  {
    f = paramInt;
  }
  
  public String toString()
  {
    return "ControlInfo [mLogger=" + a + ", mPicURL=" + b + ", bannerIntervalTime=" + c + ", mShowNum=" + d + ", mOrder=" + e + ", numberOfNewAd=" + f + ", mChangePic=" + g + ", mNewReminder=" + h + ", mRightButShow=" + i + ", mClassify=" + j + ", mIshaveBanner=" + k + ", mShowUpdate=" + l + ", mShowOpen=" + m + ", mShowNew=" + n + ", mShowSearchEntrance=" + o + ", mTimeout=" + p + "]";
  }
  
  public static enum a
  {
    private a() {}
  }
}
