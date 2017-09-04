package org.webrtc;

public class SessionDescription
{
  public final String description;
  public final SessionDescription.Type type;
  
  public SessionDescription(SessionDescription.Type paramType, String paramString)
  {
    type = paramType;
    description = paramString;
  }
}
