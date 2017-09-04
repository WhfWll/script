.class public Lorg/webrtc/AudioTrack;
.super Lorg/webrtc/MediaStreamTrack;


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "nativeTrack"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/webrtc/MediaStreamTrack;-><init>(J)V

    return-void
.end method
