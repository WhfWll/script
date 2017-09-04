package com.sdu.didi.openapi.ss;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;

public class e
{
  private Context a;
  private final Resources b;
  
  public e(Context paramContext)
  {
    a = paramContext;
    b = a.getResources();
  }
  
  public int a(String paramString)
  {
    int i = b.getIdentifier(paramString, "id", a.getPackageName());
    if (i == 0) {
      throw new Resources.NotFoundException(paramString);
    }
    return i;
  }
  
  public int b(String paramString)
  {
    int i = b.getIdentifier(paramString, "drawable", a.getPackageName());
    if (i == 0) {
      throw new Resources.NotFoundException(paramString);
    }
    return i;
  }
  
  public int c(String paramString)
  {
    int i = b.getIdentifier(paramString, "layout", a.getPackageName());
    if (i == 0) {
      throw new Resources.NotFoundException(paramString);
    }
    return i;
  }
}
