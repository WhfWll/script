import android.util.Log;
import org.webrtc.PeerConnection;
import org.webrtc.SdpObserver;
import org.webrtc.SessionDescription;
import org.webrtc.SessionDescription.Type;

final class db
  implements SdpObserver
{
  db(cy paramCy) {}
  
  public final void onCreateFailure(String paramString)
  {
    Log.e("anLive", "create SDP failure: " + paramString);
  }
  
  public final void onCreateSuccess(SessionDescription paramSessionDescription)
  {
    paramSessionDescription = new SessionDescription(type, cy.a(a, description));
    cy.a(a).setLocalDescription(cy.a(a), paramSessionDescription);
    if (type == SessionDescription.Type.ANSWER) {
      cy.a(a).sendAnswer(cy.a(a), description, cy.a(a));
    }
    while (type != SessionDescription.Type.OFFER) {
      return;
    }
    cy.a(a).sendOffer(cy.a(a), description, cy.a(a));
  }
  
  public final void onSetFailure(String paramString)
  {
    Log.e("anLive", "set SDP failure: " + paramString);
  }
  
  public final void onSetSuccess() {}
}
