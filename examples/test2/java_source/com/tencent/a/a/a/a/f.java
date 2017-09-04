package com.tencent.a.a.a.a;

import android.content.Context;

public abstract class f
{
  protected Context a = null;
  
  protected f(Context paramContext)
  {
    a = paramContext;
  }
  
  public final void a(c paramC)
  {
    if (paramC == null) {}
    do
    {
      return;
      paramC = paramC.toString();
    } while (!a());
    a(h.g(paramC));
  }
  
  protected abstract void a(String paramString);
  
  protected abstract boolean a();
  
  protected abstract String b();
  
  public final c o()
  {
    c localC = null;
    if (a()) {}
    for (String str = h.f(b());; str = null)
    {
      if (str != null) {
        localC = c.e(str);
      }
      return localC;
    }
  }
}
