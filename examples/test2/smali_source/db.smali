.class final Ldb;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/webrtc/SdpObserver;


# instance fields
.field private synthetic a:Lcy;


# direct methods
.method constructor <init>(Lcy;)V
    .registers 2

    iput-object p1, p0, Ldb;->a:Lcy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateFailure(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    const-string v0, "anLive"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create SDP failure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCreateSuccess(Lorg/webrtc/SessionDescription;)V
    .registers 6
    .param p1, "origSdp"    # Lorg/webrtc/SessionDescription;

    .prologue
    new-instance v0, Lorg/webrtc/SessionDescription;

    iget-object v1, p1, Lorg/webrtc/SessionDescription;->type:Lorg/webrtc/SessionDescription$Type;

    iget-object v2, p0, Ldb;->a:Lcy;

    iget-object v3, p1, Lorg/webrtc/SessionDescription;->description:Ljava/lang/String;

    invoke-static {v2, v3}, Lcy;->a(Lcy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/webrtc/SessionDescription;-><init>(Lorg/webrtc/SessionDescription$Type;Ljava/lang/String;)V

    iget-object v1, p0, Ldb;->a:Lcy;

    invoke-static {v1}, Lcy;->a(Lcy;)Lorg/webrtc/PeerConnection;

    move-result-object v1

    iget-object v2, p0, Ldb;->a:Lcy;

    invoke-static {v2}, Lcy;->a(Lcy;)Ldb;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/webrtc/PeerConnection;->setLocalDescription(Lorg/webrtc/SdpObserver;Lorg/webrtc/SessionDescription;)V

    iget-object v1, v0, Lorg/webrtc/SessionDescription;->type:Lorg/webrtc/SessionDescription$Type;

    sget-object v2, Lorg/webrtc/SessionDescription$Type;->ANSWER:Lorg/webrtc/SessionDescription$Type;

    if-ne v1, v2, :cond_3c

    iget-object v1, p0, Ldb;->a:Lcy;

    invoke-static {v1}, Lcy;->a(Lcy;)Lbh;

    move-result-object v1

    iget-object v2, p0, Ldb;->a:Lcy;

    invoke-static {v2}, Lcy;->a(Lcy;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lorg/webrtc/SessionDescription;->description:Ljava/lang/String;

    iget-object v3, p0, Ldb;->a:Lcy;

    invoke-static {v3}, Lcy;->a(Lcy;)I

    move-result v3

    invoke-interface {v1, v2, v0, v3}, Lbh;->sendAnswer(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    iget-object v1, v0, Lorg/webrtc/SessionDescription;->type:Lorg/webrtc/SessionDescription$Type;

    sget-object v2, Lorg/webrtc/SessionDescription$Type;->OFFER:Lorg/webrtc/SessionDescription$Type;

    if-ne v1, v2, :cond_3b

    iget-object v1, p0, Ldb;->a:Lcy;

    invoke-static {v1}, Lcy;->a(Lcy;)Lbh;

    move-result-object v1

    iget-object v2, p0, Ldb;->a:Lcy;

    invoke-static {v2}, Lcy;->a(Lcy;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lorg/webrtc/SessionDescription;->description:Ljava/lang/String;

    iget-object v3, p0, Ldb;->a:Lcy;

    invoke-static {v3}, Lcy;->a(Lcy;)I

    move-result v3

    invoke-interface {v1, v2, v0, v3}, Lbh;->sendOffer(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3b
.end method

.method public final onSetFailure(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    const-string v0, "anLive"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set SDP failure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSetSuccess()V
    .registers 1

    return-void
.end method
