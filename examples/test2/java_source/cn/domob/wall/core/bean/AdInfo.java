package cn.domob.wall.core.bean;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import cn.domob.wall.core.h.d;
import cn.domob.wall.core.h.f;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AdInfo
  implements Parcelable
{
  public static final Parcelable.Creator<AdInfo> CREATOR = new Parcelable.Creator()
  {
    public AdInfo a(Parcel paramAnonymousParcel)
    {
      AdInfo localAdInfo = new AdInfo();
      AdInfo.a(localAdInfo, paramAnonymousParcel.readInt());
      AdInfo.b(localAdInfo, paramAnonymousParcel.readInt());
      AdInfo.c(localAdInfo, paramAnonymousParcel.readInt());
      AdInfo.d(localAdInfo, paramAnonymousParcel.readInt());
      AdInfo.e(localAdInfo, paramAnonymousParcel.readInt());
      AdInfo.f(localAdInfo, paramAnonymousParcel.readInt());
      b = paramAnonymousParcel.readInt();
      AdInfo.a(localAdInfo, paramAnonymousParcel.readString());
      AdInfo.b(localAdInfo, paramAnonymousParcel.readString());
      AdInfo.c(localAdInfo, paramAnonymousParcel.readString());
      AdInfo.d(localAdInfo, paramAnonymousParcel.readString());
      AdInfo.e(localAdInfo, paramAnonymousParcel.readString());
      AdInfo.f(localAdInfo, paramAnonymousParcel.readString());
      AdInfo.g(localAdInfo, paramAnonymousParcel.readString());
      AdInfo.h(localAdInfo, paramAnonymousParcel.readString());
      AdInfo.i(localAdInfo, paramAnonymousParcel.readString());
      AdInfo.j(localAdInfo, paramAnonymousParcel.readString());
      AdInfo.k(localAdInfo, paramAnonymousParcel.readString());
      AdInfo.l(localAdInfo, paramAnonymousParcel.readString());
      c = paramAnonymousParcel.readString();
      AdInfo.m(localAdInfo, paramAnonymousParcel.readString());
      AdInfo.n(localAdInfo, paramAnonymousParcel.readString());
      AdInfo.o(localAdInfo, paramAnonymousParcel.readString());
      AdInfo.p(localAdInfo, paramAnonymousParcel.readString());
      AdInfo.q(localAdInfo, paramAnonymousParcel.readString());
      AdInfo.a(localAdInfo, paramAnonymousParcel.readLong());
      AdInfo.a(localAdInfo, paramAnonymousParcel.readArrayList(getClass().getClassLoader()));
      return localAdInfo;
    }
    
    public AdInfo[] a(int paramAnonymousInt)
    {
      return new AdInfo[paramAnonymousInt];
    }
  };
  protected static final int a = -1;
  private static d d = new d(AdInfo.class.getSimpleName());
  private String A = "true";
  private String B;
  private ControlInfo C;
  private List<String> D = new ArrayList();
  protected int b;
  protected String c;
  private int e;
  private int f;
  private int g = -1;
  private int h;
  private int i;
  private int j;
  private long k;
  private String l;
  private String m;
  private String n;
  private String o;
  private String p;
  private String q;
  private String r;
  private String s;
  private String t;
  private String u;
  private String v;
  private String w;
  private String x;
  private String y;
  private String z = "false";
  
  public AdInfo() {}
  
  public AdInfo(long paramLong, JSONObject paramJSONObject, String paramString1, String paramString2, ControlInfo paramControlInfo)
  {
    if (paramJSONObject != null)
    {
      C = paramControlInfo;
      l = paramString1;
      m = paramJSONObject.optString("id");
      e = paramJSONObject.optInt("type", 0);
      f = paramJSONObject.optInt("pos");
      n = paramJSONObject.optString("logo");
      o = paramJSONObject.optString("image");
      p = paramJSONObject.optString("name");
      q = paramJSONObject.optString("title");
      r = paramJSONObject.optString("texts");
      s = paramJSONObject.optString("provider");
      t = paramJSONObject.optString("desc");
      j = paramJSONObject.optInt("app_category");
      y = paramString2;
      try
      {
        paramString1 = new JSONArray(paramJSONObject.getString("screenshot"));
        if (paramString1 != null)
        {
          i1 = 0;
          if (i1 >= paramString1.length()) {
            break label267;
          }
        }
      }
      catch (JSONException paramString1)
      {
        try
        {
          for (;;)
          {
            int i1;
            D.add(paramString1.getString(i1));
            i1 += 1;
          }
          paramString1 = paramString1;
          d.b(paramString1.toString());
          paramString1 = null;
        }
        catch (JSONException paramString2)
        {
          for (;;)
          {
            d.a(paramString2);
          }
        }
        d.d("Screenshot of the page with details of the ad is empty");
        label267:
        u = paramJSONObject.optString("identifier");
        i = paramJSONObject.optInt("vc");
        v = paramJSONObject.optString("vn");
        c = paramJSONObject.optString("action_url");
        w = paramJSONObject.optString("click_tracker");
        B = paramJSONObject.optString("thumbnail");
        h = paramJSONObject.optInt("size");
        k = paramJSONObject.optLong("release_time");
        d.b("上次请求时间：" + paramLong + "广告上线时间：" + k);
        if (paramLong != 0L) {}
      }
    }
    for (z = Boolean.toString(Boolean.TRUE.booleanValue());; z = Boolean.toString(bool))
    {
      b = paramJSONObject.optInt("action_type");
      x = paramJSONObject.optString("tr");
      A = Boolean.toString(paramJSONObject.optBoolean("showd", Boolean.valueOf(A).booleanValue()));
      return;
      if (k > paramLong) {
        bool = true;
      }
    }
  }
  
  public AdInfo(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4, String paramString5)
  {
    m = paramString1;
    u = paramString2;
    i = paramInt;
    v = paramString3;
    x = paramString4;
    l = paramString5;
  }
  
  protected String a()
  {
    return B;
  }
  
  protected long b()
  {
    return k;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public ClickActionType getAdActionType()
  {
    if (b == 1) {
      return ClickActionType.DOWNLOAD;
    }
    if (b == 2) {
      return ClickActionType.INTERNAL_BROWSER;
    }
    if (b == 3) {
      return ClickActionType.EXTERNAL_BROWSER;
    }
    if (b == 4) {
      return ClickActionType.LAUNCH;
    }
    if (b == 5) {
      return ClickActionType.UPDATE;
    }
    return ClickActionType.NONE;
  }
  
  public String getAdActionURL()
  {
    return c;
  }
  
  public int getAdActualPosition()
  {
    return g;
  }
  
  public String getAdBannerImageURL()
  {
    return o;
  }
  
  public String getAdBriefText()
  {
    return r;
  }
  
  public int getAdCategory()
  {
    return j;
  }
  
  public String getAdDetailDescription()
  {
    return t;
  }
  
  public String getAdDownloadURL()
  {
    return Uri.parse(c).getQueryParameter("url");
  }
  
  public String getAdId()
  {
    return m;
  }
  
  public String getAdLogoURL()
  {
    return n;
  }
  
  public String getAdName()
  {
    return p;
  }
  
  public String getAdPackageName()
  {
    return u;
  }
  
  public int getAdPosition()
  {
    return f;
  }
  
  public String getAdProvider()
  {
    return s;
  }
  
  public int getAdSize()
  {
    return h;
  }
  
  public AdStyle getAdStyle()
  {
    if (y != null)
    {
      if (y.equals(f.a())) {
        return AdStyle.XX;
      }
      if (y.equals("own")) {
        return AdStyle.HOUSE_AD;
      }
      if (y.equals("wheel")) {
        return AdStyle.BANNER;
      }
    }
    return AdStyle.NONE;
  }
  
  public String getAdTitle()
  {
    return q;
  }
  
  public String getAdTracker()
  {
    return x;
  }
  
  public AdType getAdType()
  {
    if (e == 1) {
      return AdType.GAME;
    }
    if (e == 2) {
      return AdType.APPLICATION;
    }
    return AdType.NONE;
  }
  
  public int getAdVersionCode()
  {
    return i;
  }
  
  public String getAdVersionName()
  {
    return v;
  }
  
  public String getClickTrackerUrl()
  {
    return w;
  }
  
  public List<String> getScreenshot()
  {
    return D;
  }
  
  public String getSearchId()
  {
    return l;
  }
  
  public boolean isAdActualPositionAvailable()
  {
    return g != -1;
  }
  
  public boolean isDownloadAd()
  {
    return Boolean.valueOf(A).booleanValue();
  }
  
  public boolean isNew()
  {
    if ((C != null) && (!C.isShowNew())) {
      z = Boolean.toString(false);
    }
    return Boolean.valueOf(z).booleanValue();
  }
  
  public boolean isShowDetail()
  {
    return Boolean.valueOf(A).booleanValue();
  }
  
  public void setAdActionURL(String paramString)
  {
    c = paramString;
  }
  
  public void setAdActualPosition(int paramInt)
  {
    g = (paramInt + 1);
  }
  
  public void setClickActionType(int paramInt)
  {
    b = paramInt;
  }
  
  public String toString()
  {
    return "AdInfo [mType=" + e + ", mPosition=" + f + ", mActualPosition=" + g + ", mSize=" + h + ", mVersionCode=" + i + ", mActionType=" + b + ", mSearchId=" + l + ", mId=" + m + ", mLogoURL=" + n + ", mBannnerImage=" + o + ", mName=" + p + ", mTitle=" + q + ", mText=" + r + ", mProvider=" + s + ", mDescription=" + t + ", mPackageName=" + u + ", mVersionName=" + v + ", mClickTrackerUrl=" + w + ", mActionURL=" + c + ", mTracker=" + x + ", mStyle=" + y + ", isNew=" + z + ", isShowDetail=" + A + ", mReleaseTime=" + k + ", mThumbnail=" + B + ", mAdCategory=" + j + ", mScreenshot=" + D + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(e);
    paramParcel.writeInt(f);
    paramParcel.writeInt(g);
    paramParcel.writeInt(h);
    paramParcel.writeInt(i);
    paramParcel.writeInt(j);
    paramParcel.writeInt(b);
    paramParcel.writeString(l);
    paramParcel.writeString(m);
    paramParcel.writeString(n);
    paramParcel.writeString(o);
    paramParcel.writeString(p);
    paramParcel.writeString(q);
    paramParcel.writeString(r);
    paramParcel.writeString(s);
    paramParcel.writeString(t);
    paramParcel.writeString(u);
    paramParcel.writeString(v);
    paramParcel.writeString(w);
    paramParcel.writeString(c);
    paramParcel.writeString(x);
    paramParcel.writeString(y);
    paramParcel.writeString(z);
    paramParcel.writeString(A);
    paramParcel.writeString(B);
    paramParcel.writeLong(k);
    paramParcel.writeList(D);
  }
  
  public static enum AdStyle
  {
    private AdStyle() {}
  }
  
  public static enum AdType
  {
    static
    {
      GAME = new AdType("GAME", 1);
    }
    
    private AdType() {}
  }
  
  public static enum ClickActionType
  {
    static
    {
      DOWNLOAD = new ClickActionType("DOWNLOAD", 1);
      INTERNAL_BROWSER = new ClickActionType("INTERNAL_BROWSER", 2);
      EXTERNAL_BROWSER = new ClickActionType("EXTERNAL_BROWSER", 3);
      LAUNCH = new ClickActionType("LAUNCH", 4);
      UPDATE = new ClickActionType("UPDATE", 5);
    }
    
    private ClickActionType() {}
  }
}
