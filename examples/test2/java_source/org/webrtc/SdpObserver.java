package org.webrtc;

public abstract interface SdpObserver
{
  public abstract void onCreateFailure(String paramString);
  
  public abstract void onCreateSuccess(SessionDescription paramSessionDescription);
  
  public abstract void onSetFailure(String paramString);
  
  public abstract void onSetSuccess();
}
