package cn.dbox.core.bean;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class d
{
  private static cn.dbox.core.h.d a = new cn.dbox.core.h.d(d.class.getSimpleName());
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private ArrayList<String> h;
  private String i;
  private int j;
  private ArrayList<String> k;
  private a l;
  private ArrayList<a> m;
  
  public d(String paramString1, String paramString2)
  {
    d = paramString2;
    e = paramString1;
  }
  
  /* Error */
  public d(String paramString1, String paramString2, JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 5
    //   3: aload_0
    //   4: invokespecial 46	java/lang/Object:<init>	()V
    //   7: aload_0
    //   8: aload_1
    //   9: putfield 57	cn/dbox/core/bean/d:b	Ljava/lang/String;
    //   12: aload_0
    //   13: aload_2
    //   14: putfield 59	cn/dbox/core/bean/d:c	Ljava/lang/String;
    //   17: aload_0
    //   18: aload_3
    //   19: ldc 61
    //   21: invokevirtual 67	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   24: putfield 48	cn/dbox/core/bean/d:d	Ljava/lang/String;
    //   27: aload_0
    //   28: aload_3
    //   29: ldc 69
    //   31: invokevirtual 67	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   34: putfield 50	cn/dbox/core/bean/d:e	Ljava/lang/String;
    //   37: aload_0
    //   38: aload_3
    //   39: ldc 71
    //   41: invokevirtual 67	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   44: putfield 73	cn/dbox/core/bean/d:f	Ljava/lang/String;
    //   47: aload_0
    //   48: aload_3
    //   49: ldc 75
    //   51: invokevirtual 67	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   54: putfield 77	cn/dbox/core/bean/d:g	Ljava/lang/String;
    //   57: aload_0
    //   58: aload_3
    //   59: ldc 79
    //   61: invokevirtual 83	org/json/JSONObject:optInt	(Ljava/lang/String;)I
    //   64: putfield 85	cn/dbox/core/bean/d:j	I
    //   67: aload_0
    //   68: aload_3
    //   69: ldc 87
    //   71: invokevirtual 67	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   74: putfield 89	cn/dbox/core/bean/d:i	Ljava/lang/String;
    //   77: aload_0
    //   78: new 6	cn/dbox/core/bean/d$a
    //   81: dup
    //   82: aload_0
    //   83: aload_3
    //   84: ldc 91
    //   86: invokevirtual 95	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   89: invokespecial 98	cn/dbox/core/bean/d$a:<init>	(Lcn/dbox/core/bean/d;Lorg/json/JSONObject;)V
    //   92: putfield 100	cn/dbox/core/bean/d:l	Lcn/dbox/core/bean/d$a;
    //   95: aload_0
    //   96: new 102	java/util/ArrayList
    //   99: dup
    //   100: invokespecial 103	java/util/ArrayList:<init>	()V
    //   103: putfield 105	cn/dbox/core/bean/d:h	Ljava/util/ArrayList;
    //   106: aload_0
    //   107: new 102	java/util/ArrayList
    //   110: dup
    //   111: invokespecial 103	java/util/ArrayList:<init>	()V
    //   114: putfield 107	cn/dbox/core/bean/d:k	Ljava/util/ArrayList;
    //   117: new 109	org/json/JSONArray
    //   120: dup
    //   121: aload_3
    //   122: ldc 111
    //   124: invokevirtual 114	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   127: invokespecial 115	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   130: astore_1
    //   131: iconst_0
    //   132: istore 4
    //   134: aload_1
    //   135: invokevirtual 119	org/json/JSONArray:length	()I
    //   138: istore 6
    //   140: iload 4
    //   142: iload 6
    //   144: if_icmpge +48 -> 192
    //   147: aload_0
    //   148: getfield 107	cn/dbox/core/bean/d:k	Ljava/util/ArrayList;
    //   151: aload_1
    //   152: iload 4
    //   154: invokevirtual 122	org/json/JSONArray:getString	(I)Ljava/lang/String;
    //   157: invokevirtual 126	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   160: pop
    //   161: iload 4
    //   163: iconst_1
    //   164: iadd
    //   165: istore 4
    //   167: goto -33 -> 134
    //   170: astore_2
    //   171: getstatic 42	cn/dbox/core/bean/d:a	Lcn/dbox/core/h/d;
    //   174: aload_2
    //   175: invokevirtual 129	cn/dbox/core/h/d:a	(Ljava/lang/Throwable;)V
    //   178: goto -17 -> 161
    //   181: astore_1
    //   182: getstatic 42	cn/dbox/core/bean/d:a	Lcn/dbox/core/h/d;
    //   185: aload_1
    //   186: invokevirtual 132	org/json/JSONException:toString	()Ljava/lang/String;
    //   189: invokevirtual 134	cn/dbox/core/h/d:b	(Ljava/lang/String;)V
    //   192: new 109	org/json/JSONArray
    //   195: dup
    //   196: aload_3
    //   197: ldc -120
    //   199: invokevirtual 114	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   202: invokespecial 115	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   205: astore_1
    //   206: iload 5
    //   208: istore 4
    //   210: aload_1
    //   211: invokevirtual 119	org/json/JSONArray:length	()I
    //   214: istore 5
    //   216: iload 4
    //   218: iload 5
    //   220: if_icmpge +48 -> 268
    //   223: aload_0
    //   224: getfield 105	cn/dbox/core/bean/d:h	Ljava/util/ArrayList;
    //   227: aload_1
    //   228: iload 4
    //   230: invokevirtual 122	org/json/JSONArray:getString	(I)Ljava/lang/String;
    //   233: invokevirtual 126	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   236: pop
    //   237: iload 4
    //   239: iconst_1
    //   240: iadd
    //   241: istore 4
    //   243: goto -33 -> 210
    //   246: astore_2
    //   247: getstatic 42	cn/dbox/core/bean/d:a	Lcn/dbox/core/h/d;
    //   250: aload_2
    //   251: invokevirtual 129	cn/dbox/core/h/d:a	(Ljava/lang/Throwable;)V
    //   254: goto -17 -> 237
    //   257: astore_1
    //   258: getstatic 42	cn/dbox/core/bean/d:a	Lcn/dbox/core/h/d;
    //   261: aload_1
    //   262: invokevirtual 132	org/json/JSONException:toString	()Ljava/lang/String;
    //   265: invokevirtual 134	cn/dbox/core/h/d:b	(Ljava/lang/String;)V
    //   268: return
    //   269: astore_1
    //   270: getstatic 42	cn/dbox/core/bean/d:a	Lcn/dbox/core/h/d;
    //   273: aload_1
    //   274: invokevirtual 129	cn/dbox/core/h/d:a	(Ljava/lang/Throwable;)V
    //   277: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	278	0	this	d
    //   0	278	1	paramString1	String
    //   0	278	2	paramString2	String
    //   0	278	3	paramJSONObject	JSONObject
    //   132	110	4	n	int
    //   1	220	5	i1	int
    //   138	7	6	i2	int
    // Exception table:
    //   from	to	target	type
    //   147	161	170	org/json/JSONException
    //   117	131	181	org/json/JSONException
    //   134	140	181	org/json/JSONException
    //   171	178	181	org/json/JSONException
    //   223	237	246	org/json/JSONException
    //   192	206	257	org/json/JSONException
    //   210	216	257	org/json/JSONException
    //   247	254	257	org/json/JSONException
    //   7	117	269	java/lang/Exception
    //   117	131	269	java/lang/Exception
    //   134	140	269	java/lang/Exception
    //   147	161	269	java/lang/Exception
    //   171	178	269	java/lang/Exception
    //   182	192	269	java/lang/Exception
    //   192	206	269	java/lang/Exception
    //   210	216	269	java/lang/Exception
    //   223	237	269	java/lang/Exception
    //   247	254	269	java/lang/Exception
    //   258	268	269	java/lang/Exception
  }
  
  public String a()
  {
    return b;
  }
  
  public void a(ArrayList<a> paramArrayList)
  {
    m = paramArrayList;
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
  
  public ArrayList<String> f()
  {
    return h;
  }
  
  public String g()
  {
    return i;
  }
  
  public int h()
  {
    return j;
  }
  
  public ArrayList<String> i()
  {
    return k;
  }
  
  public String j()
  {
    return g;
  }
  
  public a k()
  {
    return l;
  }
  
  public ArrayList<a> l()
  {
    return m;
  }
  
  public String toString()
  {
    return "ContainerInfo [mContainerId=" + d + ", mContainerName=" + e + ", mContainerLogo=" + f + ", mContainerLayout=" + g + ", mContainerTags=" + h + ", mContainerUrl=" + i + ", mContainePageSize=" + j + ", mContainerAdids=" + k + ", mSEAdInfos=" + m + ", mContainerHeaderInfo=" + l + "]";
  }
  
  public class a
  {
    private int b;
    private ArrayList<String> c;
    private ArrayList<a> d;
    
    public a(JSONObject paramJSONObject)
    {
      if (paramJSONObject != null)
      {
        b = paramJSONObject.optInt("interval");
        c = new ArrayList();
        try
        {
          this$1 = new JSONArray(paramJSONObject.getString("adids"));
          int i = 0;
          for (;;)
          {
            int j = length();
            if (i < j) {
              try
              {
                c.add(getString(i));
                i += 1;
              }
              catch (JSONException paramJSONObject)
              {
                for (;;)
                {
                  d.m().a(paramJSONObject);
                }
              }
            }
          }
          return;
        }
        catch (JSONException this$1)
        {
          d.m().b(d.this.toString());
        }
      }
    }
    
    public int a()
    {
      return b;
    }
    
    public void a(ArrayList<a> paramArrayList)
    {
      d = paramArrayList;
    }
    
    public ArrayList<String> b()
    {
      return c;
    }
    
    public ArrayList<a> c()
    {
      return d;
    }
    
    public String toString()
    {
      return "ContainerInfoHeader [mInterval=" + b + ", mContainerHeaderAdids=" + c + "]";
    }
  }
}
