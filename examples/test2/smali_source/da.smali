.class final Lda;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/webrtc/PeerConnection$Observer;


# instance fields
.field private synthetic a:Lcy;


# direct methods
.method constructor <init>(Lcy;)V
    .registers 2

    iput-object p1, p0, Lda;->a:Lcy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAddStream(Lorg/webrtc/MediaStream;)V
    .registers 7
    .param p1, "stream"    # Lorg/webrtc/MediaStream;

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lda;->a:Lcy;

    new-instance v1, Lcom/arrownock/live/VideoView;

    iget-object v2, p0, Lda;->a:Lcy;

    invoke-static {v2}, Lcy;->a(Lcy;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/arrownock/live/VideoView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcy;->a(Lcy;Lcom/arrownock/live/VideoView;)Lcom/arrownock/live/VideoView;

    iget-object v0, p0, Lda;->a:Lcy;

    invoke-static {v0}, Lcy;->a(Lcy;)Lcom/arrownock/live/VideoView;

    move-result-object v0

    iget-object v1, p0, Lda;->a:Lcy;

    invoke-virtual {v0, v1}, Lcom/arrownock/live/VideoView;->a(Lbj;)V

    iget-object v0, p1, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5f

    iget-object v1, p0, Lda;->a:Lcy;

    iget-object v0, p1, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoTrack;

    invoke-static {v1, v0}, Lcy;->a(Lcy;Lorg/webrtc/VideoTrack;)Lorg/webrtc/VideoTrack;

    iget-object v0, p0, Lda;->a:Lcy;

    new-instance v1, Lorg/webrtc/VideoRenderer;

    new-instance v2, Lct;

    iget-object v3, p0, Lda;->a:Lcy;

    invoke-static {v3}, Lcy;->a(Lcy;)Lcom/arrownock/live/VideoView;

    move-result-object v3

    invoke-direct {v2, v3}, Lct;-><init>(Lcom/arrownock/live/VideoView;)V

    sget-object v3, Lcw;->c:Lcw;

    invoke-virtual {v2, v3, v4}, Lct;->a(Lcw;Z)Lcx;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/webrtc/VideoRenderer;-><init>(Lorg/webrtc/VideoRenderer$Callbacks;)V

    invoke-static {v0, v1}, Lcy;->a(Lcy;Lorg/webrtc/VideoRenderer;)Lorg/webrtc/VideoRenderer;

    iget-object v0, p0, Lda;->a:Lcy;

    invoke-static {v0}, Lcy;->a(Lcy;)Lorg/webrtc/VideoTrack;

    move-result-object v0

    iget-object v1, p0, Lda;->a:Lcy;

    invoke-static {v1}, Lcy;->a(Lcy;)Lorg/webrtc/VideoRenderer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/webrtc/VideoTrack;->addRenderer(Lorg/webrtc/VideoRenderer;)V

    :cond_5f
    return-void
.end method

.method public final onDataChannel(Lorg/webrtc/DataChannel;)V
    .registers 4
    .param p1, "dataChannel"    # Lorg/webrtc/DataChannel;

    .prologue
    iget-object v0, p0, Lda;->a:Lcy;

    invoke-static {v0, p1}, Lcy;->a(Lcy;Lorg/webrtc/DataChannel;)Lorg/webrtc/DataChannel;

    iget-object v0, p0, Lda;->a:Lcy;

    invoke-static {v0}, Lcy;->a(Lcy;)Lorg/webrtc/DataChannel;

    move-result-object v0

    iget-object v1, p0, Lda;->a:Lcy;

    invoke-virtual {v0, v1}, Lorg/webrtc/DataChannel;->registerObserver(Lorg/webrtc/DataChannel$Observer;)V

    iget-object v0, p0, Lda;->a:Lcy;

    invoke-static {v0}, Lcy;->a(Lcy;)V

    return-void
.end method

.method public final onIceCandidate(Lorg/webrtc/IceCandidate;)V
    .registers 5
    .param p1, "candidate"    # Lorg/webrtc/IceCandidate;

    .prologue
    iget-object v0, p0, Lda;->a:Lcy;

    invoke-static {v0}, Lcy;->a(Lcy;)Z

    move-result v0

    if-nez v0, :cond_3c

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_d
    const-string v0, "type"

    const-string v2, "candidate"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "label"

    iget v2, p1, Lorg/webrtc/IceCandidate;->sdpMLineIndex:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "id"

    iget-object v2, p1, Lorg/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "candidate"

    iget-object v2, p1, Lorg/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_29} :catch_3d

    :goto_29
    iget-object v0, p0, Lda;->a:Lcy;

    invoke-static {v0}, Lcy;->a(Lcy;)Lbh;

    move-result-object v0

    iget-object v2, p0, Lda;->a:Lcy;

    invoke-static {v2}, Lcy;->a(Lcy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lbh;->sendICECandidate(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    return-void

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_29
.end method

.method public final onIceConnectionChange(Lorg/webrtc/PeerConnection$IceConnectionState;)V
    .registers 7
    .param p1, "state"    # Lorg/webrtc/PeerConnection$IceConnectionState;

    .prologue
    invoke-virtual {p1}, Lorg/webrtc/PeerConnection$IceConnectionState;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_90

    :cond_7
    :goto_7
    :pswitch_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lda;->a:Lcy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcy;->a(Lcy;Z)Z

    iget-object v0, p0, Lda;->a:Lcy;

    invoke-static {v0}, Lcy;->a(Lcy;)Lcom/arrownock/live/IAnLiveEventListener;

    move-result-object v0

    iget-object v1, p0, Lda;->a:Lcy;

    invoke-static {v1}, Lcy;->a(Lcy;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/arrownock/live/IAnLiveEventListener;->onRemotePartyConnected(Ljava/lang/String;)V

    iget-object v0, p0, Lda;->a:Lcy;

    invoke-static {v0}, Lcy;->a(Lcy;)Lcom/arrownock/live/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arrownock/live/VideoView;->getVideoWidth()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lda;->a:Lcy;

    invoke-static {v0}, Lcy;->a(Lcy;)Lcom/arrownock/live/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arrownock/live/VideoView;->getVideoHeight()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lda;->a:Lcy;

    invoke-static {v0}, Lcy;->a(Lcy;)Lcom/arrownock/live/IAnLiveEventListener;

    move-result-object v0

    iget-object v1, p0, Lda;->a:Lcy;

    invoke-static {v1}, Lcy;->a(Lcy;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lda;->a:Lcy;

    invoke-static {v2}, Lcy;->a(Lcy;)Lcom/arrownock/live/VideoView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/arrownock/live/IAnLiveEventListener;->onRemotePartyVideoViewReady(Ljava/lang/String;Lcom/arrownock/live/VideoView;)V

    goto :goto_7

    :pswitch_4b
    iget-object v0, p0, Lda;->a:Lcy;

    invoke-static {v0}, Lcy;->a(Lcy;)Lcom/arrownock/live/IAnLiveEventListener;

    move-result-object v0

    iget-object v1, p0, Lda;->a:Lcy;

    invoke-static {v1}, Lcy;->a(Lcy;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    const-string v3, "Failed to establish connection"

    const/16 v4, 0x904

    invoke-direct {v2, v3, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/arrownock/live/IAnLiveEventListener;->onError(Ljava/lang/String;Lcom/arrownock/exception/ArrownockException;)V

    iget-object v0, p0, Lda;->a:Lcy;

    invoke-virtual {v0}, Lcy;->c()V

    goto :goto_7

    :pswitch_69
    iget-object v0, p0, Lda;->a:Lcy;

    invoke-static {v0}, Lcy;->a(Lcy;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lda;->a:Lcy;

    invoke-static {v0}, Lcy;->a(Lcy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lda;->a:Lcy;

    invoke-virtual {v0}, Lcy;->c()V

    iget-object v0, p0, Lda;->a:Lcy;

    invoke-static {v0}, Lcy;->a(Lcy;)Lcom/arrownock/live/IAnLiveEventListener;

    move-result-object v0

    iget-object v1, p0, Lda;->a:Lcy;

    invoke-static {v1}, Lcy;->a(Lcy;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/arrownock/live/IAnLiveEventListener;->onRemotePartyDisconnected(Ljava/lang/String;)V

    goto/16 :goto_7

    nop

    :pswitch_data_90
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_4b
        :pswitch_69
    .end packed-switch
.end method

.method public final onIceGatheringChange(Lorg/webrtc/PeerConnection$IceGatheringState;)V
    .registers 2

    return-void
.end method

.method public final onRemoveStream(Lorg/webrtc/MediaStream;)V
    .registers 4

    .prologue
    iget-object v0, p0, Lda;->a:Lcy;

    invoke-static {v0}, Lcy;->a(Lcy;)Lcom/arrownock/live/IAnLiveEventListener;

    move-result-object v0

    iget-object v1, p0, Lda;->a:Lcy;

    invoke-static {v1}, Lcy;->a(Lcy;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/arrownock/live/IAnLiveEventListener;->onRemotePartyDisconnected(Ljava/lang/String;)V

    iget-object v0, p0, Lda;->a:Lcy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcy;->a(Lcy;Z)Z

    return-void
.end method

.method public final onRenegotiationNeeded()V
    .registers 3

    iget-object v0, p0, Lda;->a:Lcy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcy;->a(Lcy;Z)Z

    return-void
.end method

.method public final onSignalingChange(Lorg/webrtc/PeerConnection$SignalingState;)V
    .registers 2

    return-void
.end method
