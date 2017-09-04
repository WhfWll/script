package cn.domob.android.ads;

import android.content.Context;

public class DomobUpdater
{
  public DomobUpdater() {}
  
  public static void checkUpdate(Context paramContext, String paramString)
  {
    new C(paramContext, new g(paramString)).a();
  }
}
