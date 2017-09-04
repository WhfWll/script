.class public Lorg/webrtc/MediaStreamTrack;
.super Ljava/lang/Object;


# instance fields
.field final nativeTrack:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "nativeTrack"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/webrtc/MediaStreamTrack;->nativeTrack:J

    return-void
.end method

.method private static native free(J)V
.end method

.method private static native nativeEnabled(J)Z
.end method

.method private static native nativeId(J)Ljava/lang/String;
.end method

.method private static native nativeKind(J)Ljava/lang/String;
.end method

.method private static native nativeSetEnabled(JZ)Z
.end method

.method private static native nativeSetState(JI)Z
.end method

.method private static native nativeState(J)Lorg/webrtc/MediaStreamTrack$State;
.end method


# virtual methods
.method public dispose()V
    .registers 3

    iget-wide v0, p0, Lorg/webrtc/MediaStreamTrack;->nativeTrack:J

    invoke-static {v0, v1}, Lorg/webrtc/MediaStreamTrack;->free(J)V

    return-void
.end method

.method public enabled()Z
    .registers 3

    iget-wide v0, p0, Lorg/webrtc/MediaStreamTrack;->nativeTrack:J

    invoke-static {v0, v1}, Lorg/webrtc/MediaStreamTrack;->nativeEnabled(J)Z

    move-result v0

    return v0
.end method

.method public id()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Lorg/webrtc/MediaStreamTrack;->nativeTrack:J

    invoke-static {v0, v1}, Lorg/webrtc/MediaStreamTrack;->nativeId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public kind()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Lorg/webrtc/MediaStreamTrack;->nativeTrack:J

    invoke-static {v0, v1}, Lorg/webrtc/MediaStreamTrack;->nativeKind(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    iget-wide v0, p0, Lorg/webrtc/MediaStreamTrack;->nativeTrack:J

    invoke-static {v0, v1, p1}, Lorg/webrtc/MediaStreamTrack;->nativeSetEnabled(JZ)Z

    move-result v0

    return v0
.end method

.method public setState(Lorg/webrtc/MediaStreamTrack$State;)Z
    .registers 5
    .param p1, "newState"    # Lorg/webrtc/MediaStreamTrack$State;

    .prologue
    iget-wide v0, p0, Lorg/webrtc/MediaStreamTrack;->nativeTrack:J

    invoke-virtual {p1}, Lorg/webrtc/MediaStreamTrack$State;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/webrtc/MediaStreamTrack;->nativeSetState(JI)Z

    move-result v0

    return v0
.end method

.method public state()Lorg/webrtc/MediaStreamTrack$State;
    .registers 3

    iget-wide v0, p0, Lorg/webrtc/MediaStreamTrack;->nativeTrack:J

    invoke-static {v0, v1}, Lorg/webrtc/MediaStreamTrack;->nativeState(J)Lorg/webrtc/MediaStreamTrack$State;

    move-result-object v0

    return-object v0
.end method
