package cn.domob.android.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import cn.domob.android.i.d;
import cn.domob.android.i.f;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

class s
{
  static final String a = "pb[update]";
  static final String b = "domob_update_info";
  static final String c = "ipb";
  static final String d = "info_md5";
  static final String e = "n";
  static final String f = "nt";
  static final String g = "vc";
  static final String h = "vn";
  static final String i = "u";
  static final String j = "s";
  static final String k = "md5";
  static final String l = "ul";
  static final String m = "f";
  static final String n = "sk";
  static final String o = "nrt";
  static final String p = "nri";
  static final String q = "next_time";
  static final String r = "skip_vc";
  private static f s = new f(s.class.getSimpleName());
  
  private s() {}
  
  protected static void a(String paramString, Context paramContext)
  {
    s localS = new s();
    boolean bool = false;
    try
    {
      localS.b(paramString, paramContext);
      bool = true;
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        s.a(paramString);
      }
    }
    s.a("ExtraInfo parse and update/non-update result return " + bool);
  }
  
  private boolean a(SharedPreferences paramSharedPreferences, StringBuilder paramStringBuilder)
  {
    boolean bool2 = false;
    try
    {
      SharedPreferences.Editor localEditor = paramSharedPreferences.edit();
      paramSharedPreferences = paramSharedPreferences.getString("info_md5", null);
      paramStringBuilder = d.b(paramStringBuilder.toString());
      boolean bool1;
      if (paramSharedPreferences != null)
      {
        bool1 = bool2;
        if (paramStringBuilder != null)
        {
          bool1 = bool2;
          if (paramStringBuilder.equals(paramSharedPreferences)) {}
        }
      }
      else
      {
        localEditor.putString("info_md5", paramStringBuilder);
        localEditor.commit();
        bool1 = true;
      }
      return bool1;
    }
    catch (Exception paramSharedPreferences) {}
    return false;
  }
  
  private boolean b(String paramString, Context paramContext)
  {
    try
    {
      paramString = new JSONObject(new JSONTokener(paramString));
    }
    catch (JSONException paramString)
    {
      synchronized (paramContext.getSharedPreferences("domob_update_info", 0))
      {
        SharedPreferences.Editor localEditor;
        int i1;
        String str1;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        boolean bool1;
        boolean bool2;
        int i2;
        int i3;
        for (;;)
        {
          localEditor = ???.edit();
          localEditor.putString("ipb", h.a().a(paramContext));
          localEditor.commit();
          paramString = paramString.optJSONObject("pb[update]");
          if (paramString == null) {
            break label514;
          }
          paramContext = paramString.optString("n", null);
          i1 = paramString.optInt("nt", 0);
          str1 = paramString.optString("vc", null);
          str2 = paramString.optString("vn", null);
          str3 = paramString.optString("u", null);
          str4 = paramString.optString("s", null);
          str5 = paramString.optString("md5", "");
          str6 = paramString.optString("ul", null);
          bool1 = paramString.optBoolean("f", false);
          bool2 = paramString.optBoolean("sk", false);
          i2 = paramString.optInt("nrt", 0);
          i3 = paramString.optInt("nri", 3);
          if ((paramContext == null) || (str1 == null) || (str2 == null) || (str3 == null) || (str4 == null) || (str6 == null)) {
            break label514;
          }
          if (Pattern.compile("^(\\d)+$").matcher(str1).find()) {
            break;
          }
          s.e("version code在匹配正则表达式时失败，不符合version code规则，version code为：" + str1);
          return true;
          paramString = paramString;
          s.a(paramString);
          paramString = null;
        }
        if (a(???, new StringBuilder().append(paramContext).append(i1).append(str1).append(str2).append(str3).append(str4).append(str5).append(str6).append(bool1).append(bool2).append(i2).append(i3)))
        {
          s.a("更新本地更新信息");
          localEditor.putString("n", paramContext);
          localEditor.putInt("nt", i1);
          localEditor.putString("vc", str1);
          localEditor.putString("vn", str2);
          localEditor.putString("u", str3);
          localEditor.putString("s", str4);
          localEditor.putString("md5", str5);
          localEditor.putString("ul", str6);
          localEditor.putBoolean("f", bool1);
          localEditor.putBoolean("sk", bool2);
          localEditor.putInt("nrt", i2);
          localEditor.putInt("nri", i3);
          localEditor.putLong("next_time", System.currentTimeMillis());
          localEditor.commit();
          label514:
          return true;
        }
        s.a("不需要需要更新本地更新信息");
      }
    }
  }
}
