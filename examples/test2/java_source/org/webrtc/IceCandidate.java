package org.webrtc;

public class IceCandidate
{
  public final String sdp;
  public final int sdpMLineIndex;
  public final String sdpMid;
  
  public IceCandidate(String paramString1, int paramInt, String paramString2)
  {
    sdpMid = paramString1;
    sdpMLineIndex = paramInt;
    sdp = paramString2;
  }
  
  public String toString()
  {
    return sdpMid + ":" + sdpMLineIndex + ":" + sdp;
  }
}
