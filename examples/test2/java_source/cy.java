import android.content.Context;
import android.util.Log;
import com.arrownock.live.AudioState;
import com.arrownock.live.IAnLiveEventListener;
import com.arrownock.live.VideoState;
import com.arrownock.live.VideoView;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.AudioTrack;
import org.webrtc.DataChannel;
import org.webrtc.DataChannel.Buffer;
import org.webrtc.DataChannel.Init;
import org.webrtc.DataChannel.Observer;
import org.webrtc.DataChannel.State;
import org.webrtc.IceCandidate;
import org.webrtc.MediaConstraints;
import org.webrtc.MediaConstraints.KeyValuePair;
import org.webrtc.MediaStream;
import org.webrtc.PeerConnection;
import org.webrtc.PeerConnection.IceServer;
import org.webrtc.PeerConnectionFactory;
import org.webrtc.SessionDescription;
import org.webrtc.SessionDescription.Type;
import org.webrtc.VideoRenderer;
import org.webrtc.VideoTrack;

public final class cy
  implements bj, DataChannel.Observer
{
  private int jdField_a_of_type_Int = 0;
  private Context jdField_a_of_type_AndroidContentContext = null;
  private bh jdField_a_of_type_Bh = null;
  private IAnLiveEventListener jdField_a_of_type_ComArrownockLiveIAnLiveEventListener = null;
  private VideoView jdField_a_of_type_ComArrownockLiveVideoView = null;
  private da jdField_a_of_type_Da = new da(this);
  private db jdField_a_of_type_Db = new db(this);
  private String jdField_a_of_type_JavaLangString = "PeerConnectionManager";
  private DataChannel jdField_a_of_type_OrgWebrtcDataChannel = null;
  private MediaConstraints jdField_a_of_type_OrgWebrtcMediaConstraints = null;
  private MediaStream jdField_a_of_type_OrgWebrtcMediaStream = null;
  private PeerConnection jdField_a_of_type_OrgWebrtcPeerConnection = null;
  private VideoRenderer jdField_a_of_type_OrgWebrtcVideoRenderer = null;
  private VideoTrack jdField_a_of_type_OrgWebrtcVideoTrack = null;
  private boolean jdField_a_of_type_Boolean = false;
  private String b = null;
  
  public cy(bh paramBh, String paramString, Context paramContext, IAnLiveEventListener paramIAnLiveEventListener)
  {
    jdField_a_of_type_OrgWebrtcMediaConstraints.mandatory.add(new MediaConstraints.KeyValuePair("OfferToReceiveAudio", "true"));
    jdField_a_of_type_OrgWebrtcMediaConstraints.mandatory.add(new MediaConstraints.KeyValuePair("OfferToReceiveVideo", "true"));
    b = paramString;
    jdField_a_of_type_Bh = paramBh;
    jdField_a_of_type_AndroidContentContext = paramContext;
    jdField_a_of_type_ComArrownockLiveIAnLiveEventListener = paramIAnLiveEventListener;
  }
  
  private String a(String paramString)
  {
    int m = 0;
    String[] arrayOfString = paramString.split("\n");
    String str = null;
    Object localObject = Pattern.compile("^a=rtpmap:(\\d+) ISAC/16000[\r]?$");
    int i = 0;
    int j = -1;
    if ((i < arrayOfString.length) && ((j == -1) || (str == null)))
    {
      int k;
      if (arrayOfString[i].startsWith("m=audio ")) {
        k = i;
      }
      for (;;)
      {
        i += 1;
        j = k;
        break;
        Matcher localMatcher = ((Pattern)localObject).matcher(arrayOfString[i]);
        k = j;
        if (localMatcher.matches())
        {
          str = localMatcher.group(1);
          k = j;
        }
      }
    }
    if (j == -1)
    {
      Log.d(jdField_a_of_type_JavaLangString, "No m=audio line, so can't prefer iSAC");
      return paramString;
    }
    if (str == null)
    {
      Log.d(jdField_a_of_type_JavaLangString, "No ISAC/16000 line, so can't prefer iSAC");
      return paramString;
    }
    paramString = arrayOfString[j].split(" ");
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append(paramString[0]).append(" ");
    ((StringBuilder)localObject).append(paramString[1]).append(" ");
    i = 3;
    ((StringBuilder)localObject).append(paramString[2]).append(" ");
    ((StringBuilder)localObject).append(str).append(" ");
    while (i < paramString.length)
    {
      if (!paramString[i].equals(str)) {
        ((StringBuilder)localObject).append(paramString[i]).append(" ");
      }
      i += 1;
    }
    arrayOfString[j] = ((StringBuilder)localObject).toString();
    paramString = new StringBuilder();
    j = arrayOfString.length;
    i = m;
    while (i < j)
    {
      paramString.append(arrayOfString[i]).append("\n");
      i += 1;
    }
    return paramString.toString();
  }
  
  /* Error */
  private static MediaConstraints a(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: ifnonnull +7 -> 10
    //   6: aconst_null
    //   7: astore_0
    //   8: aload_0
    //   9: areturn
    //   10: new 74	org/webrtc/MediaConstraints
    //   13: dup
    //   14: invokespecial 75	org/webrtc/MediaConstraints:<init>	()V
    //   17: astore_3
    //   18: new 178	org/json/JSONObject
    //   21: dup
    //   22: aload_0
    //   23: invokespecial 181	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   26: astore_0
    //   27: aload_0
    //   28: ldc -74
    //   30: invokevirtual 186	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   33: astore 4
    //   35: aload 4
    //   37: ifnull +71 -> 108
    //   40: aload 4
    //   42: invokevirtual 190	org/json/JSONObject:names	()Lorg/json/JSONArray;
    //   45: astore 5
    //   47: aload 5
    //   49: ifnull +59 -> 108
    //   52: iconst_0
    //   53: istore_1
    //   54: iload_1
    //   55: aload 5
    //   57: invokevirtual 196	org/json/JSONArray:length	()I
    //   60: if_icmpge +48 -> 108
    //   63: aload 5
    //   65: iload_1
    //   66: invokevirtual 199	org/json/JSONArray:getString	(I)Ljava/lang/String;
    //   69: astore 6
    //   71: aload 4
    //   73: aload 6
    //   75: invokevirtual 201	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   78: astore 7
    //   80: aload_3
    //   81: getfield 79	org/webrtc/MediaConstraints:mandatory	Ljava/util/List;
    //   84: new 81	org/webrtc/MediaConstraints$KeyValuePair
    //   87: dup
    //   88: aload 6
    //   90: aload 7
    //   92: invokespecial 88	org/webrtc/MediaConstraints$KeyValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   95: invokeinterface 94 2 0
    //   100: pop
    //   101: iload_1
    //   102: iconst_1
    //   103: iadd
    //   104: istore_1
    //   105: goto -51 -> 54
    //   108: aload_0
    //   109: ldc -53
    //   111: invokevirtual 207	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   114: astore 4
    //   116: aload_3
    //   117: astore_0
    //   118: aload 4
    //   120: ifnull -112 -> 8
    //   123: iload_2
    //   124: istore_1
    //   125: aload_3
    //   126: astore_0
    //   127: iload_1
    //   128: aload 4
    //   130: invokevirtual 196	org/json/JSONArray:length	()I
    //   133: if_icmpge -125 -> 8
    //   136: aload 4
    //   138: iload_1
    //   139: invokevirtual 211	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   142: astore 5
    //   144: aload 5
    //   146: invokevirtual 190	org/json/JSONObject:names	()Lorg/json/JSONArray;
    //   149: iconst_0
    //   150: invokevirtual 199	org/json/JSONArray:getString	(I)Ljava/lang/String;
    //   153: astore_0
    //   154: aload 5
    //   156: aload_0
    //   157: invokevirtual 201	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   160: astore 5
    //   162: aload_3
    //   163: getfield 213	org/webrtc/MediaConstraints:optional	Ljava/util/List;
    //   166: new 81	org/webrtc/MediaConstraints$KeyValuePair
    //   169: dup
    //   170: aload_0
    //   171: aload 5
    //   173: invokespecial 88	org/webrtc/MediaConstraints$KeyValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   176: invokeinterface 94 2 0
    //   181: pop
    //   182: iload_1
    //   183: iconst_1
    //   184: iadd
    //   185: istore_1
    //   186: goto -61 -> 125
    //   189: astore_0
    //   190: new 215	java/lang/RuntimeException
    //   193: dup
    //   194: aload_0
    //   195: invokespecial 218	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   198: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	199	0	paramString	String
    //   53	133	1	i	int
    //   1	123	2	j	int
    //   17	146	3	localMediaConstraints	MediaConstraints
    //   33	104	4	localObject1	Object
    //   45	127	5	localObject2	Object
    //   69	20	6	str1	String
    //   78	13	7	str2	String
    // Exception table:
    //   from	to	target	type
    //   10	35	189	org/json/JSONException
    //   40	47	189	org/json/JSONException
    //   54	101	189	org/json/JSONException
    //   108	116	189	org/json/JSONException
    //   127	182	189	org/json/JSONException
  }
  
  private void d()
  {
    HashMap localHashMap;
    if (jdField_a_of_type_OrgWebrtcMediaStream != null)
    {
      if ((jdField_a_of_type_OrgWebrtcMediaStream.videoTracks != null) && (jdField_a_of_type_OrgWebrtcMediaStream.videoTracks.size() > 0) && (jdField_a_of_type_OrgWebrtcMediaStream.videoTracks.get(0) != null))
      {
        if (!((VideoTrack)jdField_a_of_type_OrgWebrtcMediaStream.videoTracks.get(0)).enabled()) {
          break label200;
        }
        str = "on";
        localHashMap = new HashMap();
        localHashMap.put("type", "video");
        localHashMap.put("data", str);
        a(localHashMap);
      }
      if ((jdField_a_of_type_OrgWebrtcMediaStream.audioTracks != null) && (jdField_a_of_type_OrgWebrtcMediaStream.audioTracks.size() > 0) && (jdField_a_of_type_OrgWebrtcMediaStream.audioTracks.get(0) != null)) {
        if (!((AudioTrack)jdField_a_of_type_OrgWebrtcMediaStream.audioTracks.get(0)).enabled()) {
          break label207;
        }
      }
    }
    label200:
    label207:
    for (String str = "on";; str = "off")
    {
      localHashMap = new HashMap();
      localHashMap.put("type", "audio");
      localHashMap.put("data", str);
      a(localHashMap);
      return;
      str = "off";
      break;
    }
  }
  
  public final PeerConnection a(PeerConnectionFactory paramPeerConnectionFactory, MediaStream paramMediaStream)
  {
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(new PeerConnection.IceServer("stun:10.1.215.152:3478", "", ""));
    jdField_a_of_type_OrgWebrtcPeerConnection = paramPeerConnectionFactory.createPeerConnection(localLinkedList, a("{\"mandatory\": {\"DtlsSrtpKeyAgreement\": true}, \"optional\": [{\"RtpDataChannels\":true}]}"), jdField_a_of_type_Da);
    jdField_a_of_type_OrgWebrtcPeerConnection.addStream(paramMediaStream);
    jdField_a_of_type_OrgWebrtcMediaStream = paramMediaStream;
    return jdField_a_of_type_OrgWebrtcPeerConnection;
  }
  
  public final void a()
  {
    if ((jdField_a_of_type_OrgWebrtcPeerConnection != null) && (!jdField_a_of_type_Boolean))
    {
      DataChannel.Init localInit = new DataChannel.Init();
      negotiated = false;
      ordered = false;
      jdField_a_of_type_OrgWebrtcDataChannel = jdField_a_of_type_OrgWebrtcPeerConnection.createDataChannel("anLiveDataChannel", localInit);
      jdField_a_of_type_OrgWebrtcDataChannel.registerObserver(this);
      jdField_a_of_type_OrgWebrtcPeerConnection.createOffer(jdField_a_of_type_Db, jdField_a_of_type_OrgWebrtcMediaConstraints);
    }
  }
  
  public final void a(int paramInt)
  {
    jdField_a_of_type_Int = paramInt;
  }
  
  public final void a(Map<String, String> paramMap)
  {
    if ((jdField_a_of_type_OrgWebrtcDataChannel != null) && (jdField_a_of_type_OrgWebrtcDataChannel.state() == DataChannel.State.OPEN) && (paramMap != null) && (paramMap.size() > 0)) {}
    try
    {
      paramMap = new DataChannel.Buffer(ByteBuffer.wrap(new JSONObject(paramMap).toString().getBytes("UTF-8")), false);
      jdField_a_of_type_OrgWebrtcDataChannel.send(paramMap);
      return;
    }
    catch (Exception paramMap) {}
  }
  
  public final void a(JSONObject paramJSONObject)
  {
    if ((jdField_a_of_type_OrgWebrtcPeerConnection != null) && (!jdField_a_of_type_Boolean)) {}
    try
    {
      paramJSONObject = new IceCandidate((String)paramJSONObject.get("id"), paramJSONObject.getInt("label"), (String)paramJSONObject.get("candidate"));
      jdField_a_of_type_OrgWebrtcPeerConnection.addIceCandidate(paramJSONObject);
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  public final void a(SessionDescription.Type paramType, String paramString)
  {
    if ((jdField_a_of_type_OrgWebrtcPeerConnection != null) && (!jdField_a_of_type_Boolean)) {}
    try
    {
      paramType = new SessionDescription(paramType, a(paramString));
      jdField_a_of_type_OrgWebrtcPeerConnection.setRemoteDescription(jdField_a_of_type_Db, paramType);
      return;
    }
    catch (Exception paramType)
    {
      paramType.printStackTrace();
    }
  }
  
  public final void b()
  {
    if ((jdField_a_of_type_OrgWebrtcPeerConnection != null) && (!jdField_a_of_type_Boolean)) {
      jdField_a_of_type_OrgWebrtcPeerConnection.createAnswer(jdField_a_of_type_Db, jdField_a_of_type_OrgWebrtcMediaConstraints);
    }
  }
  
  public final void c()
  {
    try
    {
      if (jdField_a_of_type_OrgWebrtcPeerConnection != null)
      {
        jdField_a_of_type_OrgWebrtcPeerConnection.dispose();
        jdField_a_of_type_OrgWebrtcPeerConnection = null;
        jdField_a_of_type_Boolean = false;
      }
      jdField_a_of_type_OrgWebrtcMediaStream = null;
      return;
    }
    finally {}
  }
  
  public final void onMessage(DataChannel.Buffer paramBuffer)
  {
    Object localObject;
    if ((jdField_a_of_type_ComArrownockLiveIAnLiveEventListener != null) && (paramBuffer != null) && (data != null))
    {
      localObject = new byte[data.remaining()];
      data.get((byte[])localObject);
      paramBuffer = new String((byte[])localObject, Charset.forName("UTF-8"));
    }
    try
    {
      localObject = new JSONObject(paramBuffer);
      paramBuffer = ((JSONObject)localObject).getString("type");
      localObject = ((JSONObject)localObject).getString("data");
      if ("video".equals(paramBuffer))
      {
        if ("on".equals(localObject))
        {
          jdField_a_of_type_ComArrownockLiveIAnLiveEventListener.onRemotePartyVideoStateChanged(b, VideoState.ON);
          return;
        }
        if ("off".equals(localObject)) {
          jdField_a_of_type_ComArrownockLiveIAnLiveEventListener.onRemotePartyVideoStateChanged(b, VideoState.OFF);
        }
      }
      else if ("audio".equals(paramBuffer))
      {
        if ("on".equals(localObject))
        {
          jdField_a_of_type_ComArrownockLiveIAnLiveEventListener.onRemotePartyAudioStateChanged(b, AudioState.ON);
          return;
        }
        if ("off".equals(localObject)) {
          jdField_a_of_type_ComArrownockLiveIAnLiveEventListener.onRemotePartyAudioStateChanged(b, AudioState.OFF);
        }
      }
      return;
    }
    catch (JSONException paramBuffer) {}
  }
  
  public final void onStateChange()
  {
    switch (cz.a[jdField_a_of_type_OrgWebrtcDataChannel.state().ordinal()])
    {
    case 1: 
    case 3: 
    default: 
      return;
    case 2: 
      d();
      return;
    }
    jdField_a_of_type_OrgWebrtcDataChannel = null;
  }
  
  public final void onVideoSizeChanged(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((!paramBoolean1) && (jdField_a_of_type_ComArrownockLiveIAnLiveEventListener != null) && (b != null) && (jdField_a_of_type_ComArrownockLiveVideoView != null))
    {
      if (paramBoolean2) {
        jdField_a_of_type_ComArrownockLiveIAnLiveEventListener.onRemotePartyVideoViewReady(b, jdField_a_of_type_ComArrownockLiveVideoView);
      }
    }
    else {
      return;
    }
    jdField_a_of_type_ComArrownockLiveIAnLiveEventListener.onRemotePartyVideoSizeChanged(b, paramInt1, paramInt2);
  }
}
