package com.tl.uic.model;

import com.bangcle.andjni.JniLib;
import java.io.Serializable;
import org.json.JSONObject;

public class JSONMessage
  implements Serializable
{
  private static final long serialVersionUID = 3976757161355685264L;
  private String jsonData;
  private int logLevel;
  private long size;
  
  static
  {
    JniLib.a(JSONMessage.class, 1043);
  }
  
  public JSONMessage()
  {
    logLevel = 0;
    jsonData = "";
    size = 0L;
  }
  
  public JSONMessage(ClientMessageHeader paramClientMessageHeader)
  {
    logLevel = paramClientMessageHeader.getLogLevel();
    jsonData = paramClientMessageHeader.getJSON().toString();
    size = 0L;
  }
  
  public final native Boolean clean();
  
  public final native boolean equals(Object paramObject);
  
  public final native String getJsonData();
  
  public final native int getLogLevel();
  
  public final native long getSize();
  
  public final native int hashCode();
  
  public final native void setJsonData(String paramString);
  
  public final native void setLogLevel(int paramInt);
  
  public final native void setSize(long paramLong);
  
  public final native String toString();
}
