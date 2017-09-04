package com.tencent.a.a.a.a;

import android.content.Context;
import android.provider.Settings.System;
import android.util.Log;

public final class e
  extends f
{
  public e(Context paramContext)
  {
    super(paramContext);
  }
  
  protected final void a(String paramString)
  {
    try
    {
      Log.i("MID", "write mid to Settings.System");
      Settings.System.putString(a.getContentResolver(), h.f("4kU71lN96TJUomD1vOU9lgj9Tw=="), paramString);
      return;
    }
    finally {}
  }
  
  protected final boolean a()
  {
    return h.a(a, "android.permission.WRITE_SETTINGS");
  }
  
  protected final String b()
  {
    try
    {
      Log.i("MID", "read mid from Settings.System");
      String str = Settings.System.getString(a.getContentResolver(), h.f("4kU71lN96TJUomD1vOU9lgj9Tw=="));
      return str;
    }
    finally {}
  }
}
