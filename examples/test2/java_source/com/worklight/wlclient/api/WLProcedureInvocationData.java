package com.worklight.wlclient.api;

import com.bangcle.andjni.JniLib;
import java.util.Map;

public class WLProcedureInvocationData
{
  private String adapter;
  private boolean compressResponse = false;
  private Object[] parameters;
  private String procedure;
  
  static
  {
    JniLib.a(WLProcedureInvocationData.class, 1234);
  }
  
  public WLProcedureInvocationData(String paramString1, String paramString2)
  {
    adapter = paramString1;
    procedure = paramString2;
  }
  
  public WLProcedureInvocationData(String paramString1, String paramString2, boolean paramBoolean)
  {
    adapter = paramString1;
    procedure = paramString2;
    compressResponse = paramBoolean;
  }
  
  native Map<String, String> getInvocationDataMap();
  
  public native void setCompressResponse(boolean paramBoolean);
  
  public native void setParameters(Object[] paramArrayOfObject);
}
