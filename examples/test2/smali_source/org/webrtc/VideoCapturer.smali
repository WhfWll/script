.class public Lorg/webrtc/VideoCapturer;
.super Ljava/lang/Object;


# instance fields
.field private nativeVideoCapturer:J


# direct methods
.method private constructor <init>(J)V
    .registers 4
    .param p1, "nativeVideoCapturer"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/webrtc/VideoCapturer;->nativeVideoCapturer:J

    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/webrtc/VideoCapturer;
    .registers 5
    .param p0, "deviceName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/webrtc/VideoCapturer;->nativeCreateVideoCapturer(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lorg/webrtc/VideoCapturer;

    invoke-direct {v0, v2, v3}, Lorg/webrtc/VideoCapturer;-><init>(J)V

    goto :goto_b
.end method

.method private static native free(J)V
.end method

.method private static native nativeCreateVideoCapturer(Ljava/lang/String;)J
.end method


# virtual methods
.method public dispose()V
    .registers 5

    iget-wide v0, p0, Lorg/webrtc/VideoCapturer;->nativeVideoCapturer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    iget-wide v0, p0, Lorg/webrtc/VideoCapturer;->nativeVideoCapturer:J

    invoke-static {v0, v1}, Lorg/webrtc/VideoCapturer;->free(J)V

    :cond_d
    return-void
.end method

.method takeNativeVideoCapturer()J
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lorg/webrtc/VideoCapturer;->nativeVideoCapturer:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Capturer can only be taken once!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-wide v0, p0, Lorg/webrtc/VideoCapturer;->nativeVideoCapturer:J

    iput-wide v2, p0, Lorg/webrtc/VideoCapturer;->nativeVideoCapturer:J

    return-wide v0
.end method
