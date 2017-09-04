.class public Lorg/webrtc/VideoSource;
.super Lorg/webrtc/MediaSource;


# instance fields
.field private nativeVideoFormatAtStop:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "nativeSource"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/webrtc/MediaSource;-><init>(J)V

    return-void
.end method

.method private static native freeNativeVideoFormat(J)V
.end method

.method private static native restart(JJ)V
.end method

.method private static native stop(J)J
.end method


# virtual methods
.method public dispose()V
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lorg/webrtc/VideoSource;->nativeVideoFormatAtStop:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    iget-wide v0, p0, Lorg/webrtc/VideoSource;->nativeVideoFormatAtStop:J

    invoke-static {v0, v1}, Lorg/webrtc/VideoSource;->freeNativeVideoFormat(J)V

    iput-wide v2, p0, Lorg/webrtc/VideoSource;->nativeVideoFormatAtStop:J

    :cond_f
    invoke-super {p0}, Lorg/webrtc/MediaSource;->dispose()V

    return-void
.end method

.method public restart()V
    .registers 5

    iget-wide v0, p0, Lorg/webrtc/VideoSource;->nativeSource:J

    iget-wide v2, p0, Lorg/webrtc/VideoSource;->nativeVideoFormatAtStop:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/VideoSource;->restart(JJ)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/VideoSource;->nativeVideoFormatAtStop:J

    return-void
.end method

.method public stop()V
    .registers 3

    iget-wide v0, p0, Lorg/webrtc/VideoSource;->nativeSource:J

    invoke-static {v0, v1}, Lorg/webrtc/VideoSource;->stop(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/VideoSource;->nativeVideoFormatAtStop:J

    return-void
.end method
