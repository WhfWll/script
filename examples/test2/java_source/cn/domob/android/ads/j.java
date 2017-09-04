package cn.domob.android.ads;

import android.content.Context;
import android.graphics.Color;
import android.util.Log;
import cn.domob.android.i.d;
import cn.domob.android.i.f;
import cn.domob.android.i.h;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class j
{
  public static final String A = "content";
  public static final String B = "base_url";
  public static final String C = "o";
  public static final String D = "preload";
  public static final String E = "timeout";
  public static final String F = "autoplay";
  public static final String G = "cls_btn";
  public static final String H = "width";
  public static final String I = "height";
  public static final String J = "click_tracker";
  public static final String K = "imp_tracker";
  public static final String L = "event_tracker";
  public static final String M = "tracker";
  public static final String N = "animation";
  public static final String O = "o";
  public static final String P = "cls_btn";
  public static final String Q = "cls_pos";
  public static final String R = "imp_min";
  public static final String S = "imp_cls";
  public static final String T = "expire";
  public static final String U = "rc";
  public static final String V = "pkg";
  public static final String W = "mz_url";
  public static final String X = "vav";
  public static final String Y = "imp_progress";
  public static final String Z = "border";
  public static final String a = "/.dm/";
  public static final String aa = "background";
  public static final String ab = "color";
  public static final String ac = "visible";
  public static final String ad = "interstitial_timeout";
  public static final String ae = "code";
  public static final String af = "text";
  public static final String ag = "refresh";
  public static final String ah = "disable";
  public static final String ai = "dis_time";
  public static final String aj = "ors";
  public static final String ak = "version";
  public static final String al = "config";
  public static final String am = "freq_max";
  public static final String an = "freq_reset";
  public static final String ao = "cached_max";
  public static final String ap = "sp_timeout";
  public static final String aq = "image_url";
  private static f ar = new f(j.class.getSimpleName());
  public static final String b = "dm.file";
  public static final String c = "sid";
  public static final String d = "dmid";
  public static final String e = "cid";
  public static final String f = "ad";
  public static final String g = "error";
  public static final String h = "control";
  public static final String i = "freq";
  public static final String j = "cache";
  public static final String k = "debug";
  public static final String l = "id";
  public static final String m = "format";
  public static final String n = "width";
  public static final String o = "height";
  public static final String p = "adWidth";
  public static final String q = "adHeight";
  public static final String r = "adop";
  public static final String s = "ct";
  public static final String t = "url";
  public static final String u = "content";
  public static final String v = "base_url";
  public static final String w = "expandable";
  public static final String x = "render";
  public static final String y = "ct";
  public static final String z = "url";
  private String aA = null;
  private String as;
  private String at;
  private String au;
  private c av;
  private d aw;
  private a ax;
  private Context ay;
  private JSONArray az;
  
  private j() {}
  
  public static j a(Context paramContext, String paramString)
  {
    j localJ = new j();
    ay = paramContext;
    if (localJ.c(paramString))
    {
      ar.a("Ad/Error response is ok.");
      return localJ;
    }
    return null;
  }
  
  public static j a(String paramString)
  {
    return a(null, paramString);
  }
  
  private boolean c(String paramString)
  {
    for (;;)
    {
      try
      {
        as = paramString;
        Object localObject = new JSONObject(new JSONTokener(paramString));
        at = ((JSONObject)localObject).optString("sid", null);
        d.a("/.dm/", "dm.file", ((JSONObject)localObject).optString("dmid", null));
        au = ((JSONObject)localObject).optString("cid", null);
        paramString = ((JSONObject)localObject).optJSONObject("ad");
        JSONObject localJSONObject1 = ((JSONObject)localObject).optJSONObject("error");
        JSONObject localJSONObject2 = ((JSONObject)localObject).optJSONObject("control");
        az = ((JSONObject)localObject).optJSONArray("cache");
        localObject = ((JSONObject)localObject).optString("debug");
        if (!h.e((String)localObject)) {
          Log.d(f.b(), (String)localObject);
        }
        if (paramString != null)
        {
          av = new c(paramString);
          if (localJSONObject2 != null) {
            ax = new a(localJSONObject2);
          }
          if (av == null) {
            break;
          }
          cn.domob.android.e.a.a(ay, av.E());
          break;
        }
        if (localJSONObject1 != null) {
          aw = new d(localJSONObject1);
        } else {
          ar.e("There is no ad response or error response.");
        }
      }
      catch (Exception paramString)
      {
        ar.a(paramString);
        return false;
      }
    }
    return true;
  }
  
  public String a()
  {
    return as;
  }
  
  public String b()
  {
    return at;
  }
  
  public void b(String paramString)
  {
    aA = paramString;
  }
  
  public String c()
  {
    return au;
  }
  
  public c d()
  {
    return av;
  }
  
  public d e()
  {
    return aw;
  }
  
  public a f()
  {
    return ax;
  }
  
  public JSONArray g()
  {
    return az;
  }
  
  public String h()
  {
    return aA;
  }
  
  public class a
  {
    private boolean b = false;
    private int c;
    private boolean d;
    private int e;
    private String f;
    private String g;
    
    public a(JSONObject paramJSONObject)
    {
      if (paramJSONObject != null)
      {
        if (paramJSONObject.has("refresh"))
        {
          c = paramJSONObject.optInt("refresh");
          b = true;
        }
        d = paramJSONObject.optBoolean("disable", false);
        e = paramJSONObject.optInt("dis_time", 0);
        Object localObject = paramJSONObject.optJSONObject("ors");
        if (localObject != null)
        {
          f = ((JSONObject)localObject).optString("version", "1");
          g = ((JSONObject)localObject).optString("config", "{\"com.admogo.AdMogoLayout\":\"1\",\"com.guohead.sdk.GHView\":\"2\",\"com.adview.AdViewLayout\":\"3\",\"appfactory.cn.adplatform.AdSageLayout\":\"4\"}");
        }
        int i = paramJSONObject.optInt("sp_timeout", -1);
        if ((i > -1) && (j.a(j.this) != null))
        {
          localObject = new HashMap();
          ((HashMap)localObject).put("timeout", Integer.valueOf(i));
          new cn.domob.android.ads.c.a(j.a(j.this), "domob_config").a((HashMap)localObject);
        }
        cn.domob.android.e.a.a(paramJSONObject.optInt("freq_max", 20));
        if (paramJSONObject.optBoolean("freq_reset", false)) {
          cn.domob.android.e.a.b(j.a(j.this));
        }
        i = paramJSONObject.optInt("cached_max", 20);
        a.a.a.a.a.a.a(j.a(j.this), i);
      }
    }
    
    public int a()
    {
      return c;
    }
    
    public boolean b()
    {
      return d;
    }
    
    public int c()
    {
      return e;
    }
    
    public boolean d()
    {
      return b;
    }
    
    public String e()
    {
      return f;
    }
    
    public String f()
    {
      return g;
    }
  }
  
  public class b
  {
    public static final boolean b = true;
    public final String a = "#7f000000";
    private boolean d = true;
    private int e = Color.parseColor("#7f000000");
    
    public b(JSONObject paramJSONObject)
    {
      if (paramJSONObject != null)
      {
        d = paramJSONObject.optBoolean("visible", true);
        this$1 = paramJSONObject.optString("color");
        if (!h.e(j.this)) {
          e = a(j.this);
        }
      }
    }
    
    private int a(String paramString)
    {
      try
      {
        int i = Color.parseColor(paramString);
        return i;
      }
      catch (IllegalArgumentException paramString)
      {
        j.i().a(paramString);
      }
      return Color.parseColor("#7f000000");
    }
    
    public boolean a()
    {
      return d;
    }
    
    public int b()
    {
      return e;
    }
  }
  
  public class c
  {
    private boolean A;
    private String B;
    private JSONArray C;
    private JSONObject D;
    private HashMap<String, String[]> E;
    private j.b F;
    private j.b G;
    private int H;
    private int I = -1;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private a o;
    private String p;
    private String q;
    private String r;
    private String s;
    private int t;
    private String u;
    private boolean v;
    private int[] w;
    private float x;
    private float y;
    private long z;
    
    public c(JSONObject paramJSONObject)
    {
      if (paramJSONObject != null)
      {
        b = paramJSONObject.optString("id", null);
        c = paramJSONObject.optString("image_url", null);
        d = paramJSONObject.optString("format", "domob");
        e = paramJSONObject.optString("ct", null);
        f = paramJSONObject.optString("url", null);
        g = paramJSONObject.optString("base_url", null);
        h = paramJSONObject.optString("content", null);
        i = paramJSONObject.optInt("width", 0);
        j = paramJSONObject.optInt("height", 0);
        k = paramJSONObject.optInt("adWidth", 0);
        l = paramJSONObject.optInt("adHeight", 0);
        c(paramJSONObject.optString("adop"));
        JSONObject localJSONObject = paramJSONObject.optJSONObject("expandable");
        if (localJSONObject != null) {
          o = new a(localJSONObject);
        }
        p = paramJSONObject.optString("click_tracker", null);
        q = paramJSONObject.optString("imp_tracker", null);
        r = paramJSONObject.optString("event_tracker", null);
        s = paramJSONObject.optString("tracker", null);
        t = paramJSONObject.optInt("animation", 1);
        u = paramJSONObject.optString("o", "");
        v = paramJSONObject.optBoolean("cls_btn", true);
        w = b(paramJSONObject.optString("cls_pos", null));
        x = paramJSONObject.optInt("imp_min", 0);
        x = ((float)paramJSONObject.optDouble("imp_min", 0.0D));
        y = ((float)paramJSONObject.optDouble("imp_cls", 0.0D));
        z = paramJSONObject.optLong("expire", System.currentTimeMillis() / 1000L + 172800L);
        A = paramJSONObject.optBoolean("rc", false);
        B = paramJSONObject.optString("pkg", null);
        C = paramJSONObject.optJSONArray("freq");
        D = paramJSONObject.optJSONObject("vav");
        E = a(paramJSONObject.optJSONObject("imp_progress"));
        F = new j.b(j.this, paramJSONObject.optJSONObject("border"));
        G = new j.b(j.this, paramJSONObject.optJSONObject("background"));
        H = paramJSONObject.optInt("interstitial_timeout", 10000);
      }
    }
    
    private HashMap<String, String[]> a(JSONObject paramJSONObject)
    {
      localHashMap = new HashMap();
      if (paramJSONObject != null) {
        try
        {
          Iterator localIterator = paramJSONObject.keys();
          while (localIterator.hasNext())
          {
            String str = localIterator.next().toString();
            JSONArray localJSONArray = paramJSONObject.getJSONArray(str);
            String[] arrayOfString2 = null;
            String[] arrayOfString1 = arrayOfString2;
            if (!h.e(str))
            {
              arrayOfString1 = arrayOfString2;
              if (localJSONArray != null)
              {
                arrayOfString2 = new String[localJSONArray.length()];
                int i1 = 0;
                for (;;)
                {
                  arrayOfString1 = arrayOfString2;
                  if (i1 >= arrayOfString2.length) {
                    break;
                  }
                  arrayOfString2[i1] = localJSONArray.getString(i1);
                  i1 += 1;
                }
              }
            }
            localHashMap.put(str, arrayOfString1);
          }
          return localHashMap;
        }
        catch (JSONException paramJSONObject)
        {
          j.i().a(paramJSONObject);
        }
      }
    }
    
    private int[] b(String paramString)
    {
      int[] arrayOfInt = new int[2];
      int[] tmp5_4 = arrayOfInt;
      tmp5_4[0] = 0;
      int[] tmp9_5 = tmp5_4;
      tmp9_5[1] = 0;
      tmp9_5;
      if (!h.e(paramString))
      {
        paramString = paramString.split(",");
        if ((paramString != null) && (paramString.length == 2)) {}
        try
        {
          arrayOfInt[0] = Integer.parseInt(paramString[0]);
          arrayOfInt[1] = Integer.parseInt(paramString[1]);
          return arrayOfInt;
        }
        catch (NumberFormatException paramString)
        {
          j.i().a(paramString);
          return arrayOfInt;
        }
      }
      return null;
    }
    
    private void c(String paramString)
    {
      int i2 = 0;
      m = 0;
      n = 0;
      if ((!h.e(paramString)) && (paramString.contains(":")))
      {
        paramString = paramString.split(":");
        if (paramString.length != 2) {}
      }
      for (;;)
      {
        try
        {
          int i1 = Integer.parseInt(paramString[0]);
          int i3;
          j.i().a(paramString);
        }
        catch (NumberFormatException paramString)
        {
          try
          {
            i3 = Integer.parseInt(paramString[1]);
            i2 = i3;
            i3 = h.a(i1, i2);
            m = (i1 / i3);
            n = (i2 / i3);
            return;
          }
          catch (NumberFormatException paramString)
          {
            for (;;) {}
          }
          paramString = paramString;
          i1 = 0;
        }
      }
    }
    
    public long A()
    {
      return z;
    }
    
    public boolean B()
    {
      return A;
    }
    
    public String C()
    {
      return B;
    }
    
    public int D()
    {
      return I;
    }
    
    public JSONArray E()
    {
      return C;
    }
    
    public JSONObject F()
    {
      return D;
    }
    
    public HashMap<String, String[]> G()
    {
      return E;
    }
    
    public j.b H()
    {
      return F;
    }
    
    public j.b I()
    {
      return G;
    }
    
    public int J()
    {
      return H;
    }
    
    public String a()
    {
      return b;
    }
    
    public void a(int paramInt)
    {
      I = paramInt;
    }
    
    public void a(String paramString)
    {
      c = paramString;
    }
    
    public String b()
    {
      return d;
    }
    
    public int c()
    {
      return i;
    }
    
    public int d()
    {
      return j;
    }
    
    public String e()
    {
      return c;
    }
    
    public int f()
    {
      return k;
    }
    
    public int g()
    {
      return l;
    }
    
    public int h()
    {
      return m;
    }
    
    public int i()
    {
      return n;
    }
    
    public String j()
    {
      return f;
    }
    
    public String k()
    {
      return e;
    }
    
    public String l()
    {
      return g;
    }
    
    public String m()
    {
      return h;
    }
    
    public a n()
    {
      return o;
    }
    
    public String o()
    {
      return p;
    }
    
    public String p()
    {
      return q;
    }
    
    public String q()
    {
      return r;
    }
    
    public String r()
    {
      return s;
    }
    
    public int s()
    {
      return t;
    }
    
    public String t()
    {
      return u;
    }
    
    public boolean u()
    {
      return v;
    }
    
    public int[] v()
    {
      return w;
    }
    
    public float w()
    {
      return x;
    }
    
    public boolean x()
    {
      return x != 0.0F;
    }
    
    public float y()
    {
      return y;
    }
    
    public boolean z()
    {
      return y != 0.0F;
    }
    
    public class a
    {
      private String b;
      private String c;
      private String d;
      private String e;
      private String f;
      private String g;
      private boolean h;
      private int i;
      private boolean j;
      private boolean k;
      private int l;
      private int m;
      
      a(JSONObject paramJSONObject)
      {
        if (paramJSONObject != null)
        {
          b = paramJSONObject.optString("render", "fs");
          c = paramJSONObject.optString("ct", null);
          d = paramJSONObject.optString("url", null);
          f = paramJSONObject.optString("content", null);
          e = paramJSONObject.optString("base_url", null);
          g = paramJSONObject.optString("o", "h");
          h = paramJSONObject.optBoolean("preload", true);
          i = paramJSONObject.optInt("timeout", 5);
          j = paramJSONObject.optBoolean("autoplay", false);
          k = paramJSONObject.optBoolean("cls_btn", true);
          l = paramJSONObject.optInt("width", -1);
          m = paramJSONObject.optInt("height", -1);
        }
      }
      
      public String a()
      {
        return b;
      }
      
      public String b()
      {
        return c;
      }
      
      public String c()
      {
        return d;
      }
      
      public String d()
      {
        return e;
      }
      
      public String e()
      {
        return f;
      }
      
      public String f()
      {
        return g;
      }
      
      public boolean g()
      {
        return h;
      }
      
      public int h()
      {
        return i;
      }
      
      public boolean i()
      {
        return j;
      }
      
      public boolean j()
      {
        return k;
      }
      
      public int k()
      {
        return l;
      }
      
      public int l()
      {
        return m;
      }
    }
  }
  
  public class d
  {
    private int b;
    private String c;
    
    public d(JSONObject paramJSONObject)
    {
      if (paramJSONObject != null)
      {
        b = paramJSONObject.optInt("code", 0);
        c = paramJSONObject.optString("text", null);
      }
    }
    
    public int a()
    {
      return b;
    }
    
    public String b()
    {
      return c;
    }
  }
}
