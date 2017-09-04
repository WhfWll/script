package cn.domob.android.j;

import cn.domob.android.i.f;
import cn.domob.android.i.h;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class b
{
  private static final String A = "full";
  private static final String B = "mute";
  private static final String C = "btn_space";
  private static final String D = "btn_show";
  private static final String E = "btns";
  private static final String F = "id";
  private static final String G = "type";
  private static final String H = "index";
  private static final String I = "action";
  private static final String J = "images";
  private static final String K = "tracker";
  private static final String L = "本视频已在Wi-Fi环境加载";
  private static final boolean M = true;
  private static final boolean N = true;
  private static final boolean O = false;
  private static final boolean P = false;
  private static final long Q = 0L;
  private static final int R = 0;
  private static final int S = 1;
  private static final int T = 0;
  private static int[] U = { 0, 0 };
  protected static final int a = 0;
  protected static final int b = 1;
  protected static final int c = 2;
  protected static final int d = 0;
  protected static final int e = 1;
  protected static final int f = 2;
  protected static final String g = "goto";
  protected static final String h = "replay";
  protected static final String i = "download";
  protected static final String j = "custom";
  private static f k = new f(b.class.getSimpleName());
  private static final String l = "auto_close";
  private static final String m = "auto_close_delay";
  private static final String n = "detail";
  private static final String o = "detail_preload";
  private static final String p = "ui";
  private static final String q = "play_min";
  private static final String r = "countdown";
  private static final String s = "prompt";
  private static final String t = "logo";
  private static final String u = "close";
  private static final String v = "actions";
  private static final String w = "visible";
  private static final String x = "offset";
  private static final String y = "content";
  private static final String z = "status";
  private boolean V = true;
  private long W = 0L;
  private boolean X = false;
  private int Y = 0;
  private String Z;
  private a aa;
  
  public b(JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = null;
    if (paramJSONObject != null)
    {
      V = paramJSONObject.optBoolean("auto_close", true);
      W = paramJSONObject.optLong("auto_close_delay", 0L);
      Z = paramJSONObject.optString("detail");
      X = paramJSONObject.optBoolean("detail_preload", false);
      Y = paramJSONObject.optInt("play_min", 0);
      localJSONObject = paramJSONObject.optJSONObject("ui");
    }
    aa = new a(localJSONObject);
  }
  
  protected boolean a()
  {
    return V;
  }
  
  protected long b()
  {
    return W;
  }
  
  public String c()
  {
    return Z;
  }
  
  protected boolean d()
  {
    return X;
  }
  
  protected a e()
  {
    return aa;
  }
  
  protected int f()
  {
    return Y;
  }
  
  protected b.a.a g()
  {
    return e().j();
  }
  
  protected class a
  {
    private boolean b = true;
    private int[] c = b.h();
    private boolean d = true;
    private int[] e = b.h();
    private String f = "本视频已在Wi-Fi环境加载";
    private boolean g = true;
    private int[] h = b.h();
    private boolean i = true;
    private int[] j = b.h();
    private a k;
    
    a(JSONObject paramJSONObject)
    {
      this$1 = null;
      if (paramJSONObject != null)
      {
        this$1 = paramJSONObject.optJSONObject("countdown");
        if (b.this != null)
        {
          b = optBoolean("visible", true);
          c = a(b.this);
        }
        this$1 = paramJSONObject.optJSONObject("prompt");
        if (b.this != null)
        {
          d = optBoolean("visible", true);
          e = a(b.this);
          f = optString("content", "本视频已在Wi-Fi环境加载");
        }
        this$1 = paramJSONObject.optJSONObject("logo");
        if (b.this != null)
        {
          g = optBoolean("visible", true);
          h = a(b.this);
        }
        this$1 = paramJSONObject.optJSONObject("close");
        if (b.this != null)
        {
          i = optBoolean("visible", true);
          j = a(b.this);
        }
        this$1 = paramJSONObject.optJSONObject("actions");
      }
      k = new a(b.this);
    }
    
    private int[] a(JSONObject paramJSONObject)
    {
      paramJSONObject = paramJSONObject.optJSONArray("offset");
      if ((paramJSONObject != null) && (paramJSONObject.length() == 2))
      {
        int[] arrayOfInt = new int[2];
        int m = 0;
        while (m < paramJSONObject.length()) {
          try
          {
            arrayOfInt[m] = paramJSONObject.getInt(m);
            m += 1;
          }
          catch (JSONException paramJSONObject)
          {
            b.i().a(paramJSONObject);
            return b.h();
          }
        }
        return arrayOfInt;
      }
      return b.h();
    }
    
    protected boolean a()
    {
      return b;
    }
    
    protected int[] b()
    {
      return c;
    }
    
    protected boolean c()
    {
      return d;
    }
    
    protected int[] d()
    {
      return e;
    }
    
    protected String e()
    {
      return f;
    }
    
    protected boolean f()
    {
      return g;
    }
    
    protected int[] g()
    {
      return h;
    }
    
    protected boolean h()
    {
      return i;
    }
    
    protected int[] i()
    {
      return j;
    }
    
    protected a j()
    {
      return k;
    }
    
    class a
    {
      private int b = 0;
      private boolean c = true;
      private boolean d = true;
      private boolean e = true;
      private boolean f = false;
      private int g = 0;
      private int h = 1;
      private ArrayList<a> i = new ArrayList();
      
      a(JSONObject paramJSONObject)
      {
        if (paramJSONObject != null)
        {
          b = paramJSONObject.optInt("status", 0);
          if ((b != 0) && (b != 1) && (b != 2)) {
            b = 0;
          }
          this$1 = paramJSONObject.optJSONObject("full");
          int j;
          if (b.a.this != null)
          {
            c = optBoolean("visible", true);
            if (1 != optInt("status", 0))
            {
              bool1 = true;
              d = bool1;
            }
          }
          else
          {
            this$1 = paramJSONObject.optJSONObject("mute");
            if (b.a.this != null)
            {
              e = optBoolean("visible", true);
              g = optInt("status", 0);
              if ((g != 0) && (g != 1) && (g != 2)) {
                g = 0;
              }
            }
            h = paramJSONObject.optInt("btn_space", 1);
            if (h >= 0) {
              break label362;
            }
            j = 1;
            label227:
            h = j;
            if (paramJSONObject.optInt("btn_show", 0) != 1) {
              break label370;
            }
          }
          label362:
          label370:
          for (boolean bool1 = bool2;; bool1 = false)
          {
            f = bool1;
            this$1 = paramJSONObject.optJSONArray("btns");
            if (b.a.this == null) {
              return;
            }
            j = k;
            while (j < length())
            {
              try
              {
                paramJSONObject = new a(getJSONObject(j));
                String str = paramJSONObject.b();
                if ((str != null) && ((str.equals("goto")) || (str.equals("replay")) || (str.equals("download")) || (str.equals("custom")))) {
                  i.add(paramJSONObject);
                }
              }
              catch (JSONException paramJSONObject)
              {
                for (;;)
                {
                  b.i().a(paramJSONObject);
                }
              }
              j += 1;
            }
            bool1 = false;
            break;
            j = h;
            break label227;
          }
        }
      }
      
      protected int a()
      {
        return b;
      }
      
      protected boolean b()
      {
        return c;
      }
      
      protected boolean c()
      {
        return d;
      }
      
      protected boolean d()
      {
        return e;
      }
      
      protected int e()
      {
        return g;
      }
      
      protected int f()
      {
        return h;
      }
      
      protected boolean g()
      {
        return f;
      }
      
      protected ArrayList<a> h()
      {
        return i;
      }
      
      class a
      {
        private String b;
        private String c;
        private int d = 0;
        private String e;
        private String[] f;
        private String[] g;
        
        a(JSONObject paramJSONObject)
        {
          if (paramJSONObject != null)
          {
            b = paramJSONObject.optString("id");
            c = paramJSONObject.optString("type");
            d = paramJSONObject.optInt("index", 0);
            e = paramJSONObject.optString("action");
            f = a(paramJSONObject.optJSONArray("images"));
            if (f.length != 2) {
              f = null;
            }
            g = a(paramJSONObject.optJSONArray("tracker"));
          }
        }
        
        private String[] a(JSONArray paramJSONArray)
        {
          ArrayList localArrayList = new ArrayList();
          if (paramJSONArray != null)
          {
            int i = 0;
            for (;;)
            {
              if (i >= paramJSONArray.length()) {
                break label69;
              }
              Object localObject = null;
              try
              {
                String str = paramJSONArray.getString(i);
                localObject = str;
              }
              catch (JSONException localJSONException)
              {
                for (;;)
                {
                  b.i().a(localJSONException);
                }
              }
              if (!h.e(localObject)) {
                localArrayList.add(localObject);
              }
              i += 1;
            }
          }
          label69:
          return (String[])localArrayList.toArray(new String[0]);
        }
        
        protected String a()
        {
          return b;
        }
        
        protected String b()
        {
          return c;
        }
        
        protected int c()
        {
          return d;
        }
        
        protected String d()
        {
          return e;
        }
        
        protected String[] e()
        {
          return f;
        }
        
        protected String[] f()
        {
          return g;
        }
      }
    }
  }
}
