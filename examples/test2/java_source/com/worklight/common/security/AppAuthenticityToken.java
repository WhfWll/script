package com.worklight.common.security;

import android.content.Context;

public class AppAuthenticityToken
{
  public AppAuthenticityToken()
  {
    System.loadLibrary("authjni");
  }
  
  public native String a1(Context paramContext, String paramString);
}
