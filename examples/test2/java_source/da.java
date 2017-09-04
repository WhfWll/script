import android.os.Looper;
import com.arrownock.exception.ArrownockException;
import com.arrownock.live.IAnLiveEventListener;
import com.arrownock.live.VideoView;
import java.util.LinkedList;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.DataChannel;
import org.webrtc.IceCandidate;
import org.webrtc.MediaStream;
import org.webrtc.PeerConnection.IceConnectionState;
import org.webrtc.PeerConnection.IceGatheringState;
import org.webrtc.PeerConnection.Observer;
import org.webrtc.PeerConnection.SignalingState;
import org.webrtc.VideoRenderer;
import org.webrtc.VideoTrack;

final class da
  implements PeerConnection.Observer
{
  da(cy paramCy) {}
  
  public final void onAddStream(MediaStream paramMediaStream)
  {
    Looper.prepare();
    cy.a(a, new VideoView(cy.a(a)));
    cy.a(a).a(a);
    if (videoTracks.size() == 1)
    {
      cy.a(a, (VideoTrack)videoTracks.get(0));
      cy.a(a, new VideoRenderer(new ct(cy.a(a)).a(cw.c, false)));
      cy.a(a).addRenderer(cy.a(a));
    }
  }
  
  public final void onDataChannel(DataChannel paramDataChannel)
  {
    cy.a(a, paramDataChannel);
    cy.a(a).registerObserver(a);
    cy.a(a);
  }
  
  public final void onIceCandidate(IceCandidate paramIceCandidate)
  {
    JSONObject localJSONObject;
    if (!cy.a(a)) {
      localJSONObject = new JSONObject();
    }
    try
    {
      localJSONObject.put("type", "candidate");
      localJSONObject.put("label", sdpMLineIndex);
      localJSONObject.put("id", sdpMid);
      localJSONObject.put("candidate", sdp);
      cy.a(a).sendICECandidate(cy.a(a), localJSONObject.toString());
      return;
    }
    catch (JSONException paramIceCandidate)
    {
      for (;;)
      {
        paramIceCandidate.printStackTrace();
      }
    }
  }
  
  public final void onIceConnectionChange(PeerConnection.IceConnectionState paramIceConnectionState)
  {
    switch (paramIceConnectionState.ordinal())
    {
    }
    do
    {
      do
      {
        return;
        cy.a(a, true);
        cy.a(a).onRemotePartyConnected(cy.a(a));
      } while ((cy.a(a).getVideoWidth() <= 0) || (cy.a(a).getVideoHeight() <= 0));
      cy.a(a).onRemotePartyVideoViewReady(cy.a(a), cy.a(a));
      return;
      cy.a(a).onError(cy.a(a), new ArrownockException("Failed to establish connection", 2308));
      a.c();
      return;
    } while ((!cy.a(a)) || (cy.a(a) == null));
    a.c();
    cy.a(a).onRemotePartyDisconnected(cy.a(a));
  }
  
  public final void onIceGatheringChange(PeerConnection.IceGatheringState paramIceGatheringState) {}
  
  public final void onRemoveStream(MediaStream paramMediaStream)
  {
    cy.a(a).onRemotePartyDisconnected(cy.a(a));
    cy.a(a, false);
  }
  
  public final void onRenegotiationNeeded()
  {
    cy.a(a, false);
  }
  
  public final void onSignalingChange(PeerConnection.SignalingState paramSignalingState) {}
}
