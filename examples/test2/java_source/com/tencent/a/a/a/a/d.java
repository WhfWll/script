package com.tencent.a.a.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.util.Log;

final class d
  extends f
{
  public d(Context paramContext)
  {
    super(paramContext);
  }
  
  protected final void a(String paramString)
  {
    try
    {
      Log.i("MID", "write mid to sharedPreferences");
      SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
      localEditor.putString(h.f("4kU71lN96TJUomD1vOU9lgj9Tw=="), paramString);
      localEditor.commit();
      return;
    }
    finally {}
  }
  
  protected final boolean a()
  {
    return true;
  }
  
  protected final String b()
  {
    try
    {
      Log.i("MID", "read mid from sharedPreferences");
      String str = PreferenceManager.getDefaultSharedPreferences(a).getString(h.f("4kU71lN96TJUomD1vOU9lgj9Tw=="), null);
      return str;
    }
    finally {}
  }
}
