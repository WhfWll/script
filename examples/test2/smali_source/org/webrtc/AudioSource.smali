.class public Lorg/webrtc/AudioSource;
.super Lorg/webrtc/MediaSource;


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "nativeSource"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/webrtc/MediaSource;-><init>(J)V

    return-void
.end method
