package com.tl.uic.model;

import com.bangcle.andjni.JniLib;
import java.io.Serializable;
import org.json.JSONObject;

public class ClientState
  extends ClientMessageHeader
  implements JsonBase, Serializable
{
  private static final long serialVersionUID = 1149075321417838161L;
  private MobileState mobileState;
  
  static
  {
    JniLib.a(ClientState.class, 1037);
  }
  
  public ClientState()
  {
    setMessageType(MessageType.CLIENT_STATE);
  }
  
  public final native Boolean clean();
  
  public final native boolean equals(Object paramObject);
  
  public final native JSONObject getJSON();
  
  public final native MobileState getMobileState();
  
  public final native int hashCode();
  
  public final native void setMobileState(MobileState paramMobileState);
}
