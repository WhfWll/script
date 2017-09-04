package com.tl.uic.model;

import com.bangcle.andjni.JniLib;
import java.io.Serializable;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

public class Session
  implements JsonBase, Serializable
{
  private static final long serialVersionUID = -5461457368043986640L;
  private ClientEnvironment clientEnvironment;
  private List<JSONMessage> messages = new CopyOnWriteArrayList();
  private String sessionID;
  private long sessionStartTime;
  
  static
  {
    JniLib.a(Session.class, 1049);
  }
  
  public Session() {}
  
  public final native Boolean clean();
  
  public final native Boolean cleanMessages();
  
  public final native ClientEnvironment getClientEnvironment();
  
  public final native JSONObject getJSON();
  
  public final native List<JSONMessage> getMessages();
  
  public final native String getSessionID();
  
  public final native long getSessionStartTime();
  
  public final native void setClientEnvironment(ClientEnvironment paramClientEnvironment);
  
  public final native void setMessages(List<JSONMessage> paramList);
  
  public final native void setSessionID(String paramString);
  
  public final native void setSessionStartTime(long paramLong);
}
