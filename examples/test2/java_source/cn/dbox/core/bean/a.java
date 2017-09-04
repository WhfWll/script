package cn.dbox.core.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import cn.dbox.core.h.d;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a
  implements Parcelable
{
  public static final Parcelable.Creator<a> a = new Parcelable.Creator()
  {
    public a a(Parcel paramAnonymousParcel)
    {
      a localA = new a();
      a.a(localA, paramAnonymousParcel.readString());
      a.b(localA, paramAnonymousParcel.readString());
      a.c(localA, paramAnonymousParcel.readString());
      a.d(localA, paramAnonymousParcel.readString());
      a.e(localA, paramAnonymousParcel.readString());
      a.f(localA, paramAnonymousParcel.readString());
      a.g(localA, paramAnonymousParcel.readString());
      a.h(localA, paramAnonymousParcel.readString());
      a.i(localA, paramAnonymousParcel.readString());
      a.a(localA, paramAnonymousParcel.readArrayList(getClass().getClassLoader()));
      return localA;
    }
    
    public a[] a(int paramAnonymousInt)
    {
      return new a[paramAnonymousInt];
    }
  };
  private static d b = new d(a.class.getSimpleName());
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private ArrayList<String> i = new ArrayList();
  private String j;
  private String k;
  private String l;
  private int m;
  private String n;
  private String o;
  private String p;
  
  public a() {}
  
  public a(String paramString1, String paramString2, String paramString3)
  {
    d = paramString1;
    e = paramString2;
    f = paramString3;
  }
  
  public a(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null)
    {
      c = paramJSONObject.optString("id");
      d = paramJSONObject.optString("title");
      e = paramJSONObject.optString("description");
      f = paramJSONObject.optString("logo");
      g = paramJSONObject.optString("banner");
      h = paramJSONObject.optString("thumbnail");
      j = paramJSONObject.optString("action_url");
      k = paramJSONObject.optString("tracker");
      l = paramJSONObject.optString("click_tracker");
      try
      {
        paramJSONObject = new JSONArray(paramJSONObject.getString("tags"));
        int i1 = 0;
        for (;;)
        {
          int i2 = paramJSONObject.length();
          if (i1 < i2) {
            try
            {
              i.add(paramJSONObject.getString(i1));
              i1 += 1;
            }
            catch (JSONException localJSONException)
            {
              for (;;)
              {
                b.a(localJSONException);
              }
            }
          }
        }
        return;
      }
      catch (JSONException paramJSONObject)
      {
        b.b(paramJSONObject.toString());
      }
    }
  }
  
  public String a()
  {
    return p;
  }
  
  public void a(int paramInt)
  {
    m = paramInt;
  }
  
  public void a(String paramString)
  {
    p = paramString;
  }
  
  public String b()
  {
    return n;
  }
  
  public void b(String paramString)
  {
    n = paramString;
  }
  
  public String c()
  {
    return o;
  }
  
  public void c(String paramString)
  {
    o = paramString;
  }
  
  public int d()
  {
    return m;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return d;
  }
  
  public String f()
  {
    return h;
  }
  
  public ArrayList<String> g()
  {
    return i;
  }
  
  public String h()
  {
    return k;
  }
  
  public String i()
  {
    return c;
  }
  
  public String j()
  {
    return e;
  }
  
  public String k()
  {
    return f;
  }
  
  public String l()
  {
    return g;
  }
  
  public String m()
  {
    return j;
  }
  
  public String n()
  {
    return l;
  }
  
  public String toString()
  {
    return "AdInfo [mId=" + c + ", mTitle=" + d + ", mDescription=" + e + ", mLogo=" + f + ", mBanner=" + g + ", mThumbnail=" + h + ", mTags=" + i + ", mActionUrl=" + j + ", mTracker=" + k + ", mClickTracker=" + l + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
    paramParcel.writeString(h);
    paramParcel.writeString(j);
    paramParcel.writeString(k);
    paramParcel.writeString(l);
    paramParcel.writeList(i);
  }
}
