.class public Lorg/webrtc/MediaSource;
.super Ljava/lang/Object;


# instance fields
.field final nativeSource:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "nativeSource"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/webrtc/MediaSource;->nativeSource:J

    return-void
.end method

.method private static native free(J)V
.end method

.method private static native nativeState(J)Lorg/webrtc/MediaSource$State;
.end method


# virtual methods
.method public dispose()V
    .registers 3

    iget-wide v0, p0, Lorg/webrtc/MediaSource;->nativeSource:J

    invoke-static {v0, v1}, Lorg/webrtc/MediaSource;->free(J)V

    return-void
.end method

.method public state()Lorg/webrtc/MediaSource$State;
    .registers 3

    iget-wide v0, p0, Lorg/webrtc/MediaSource;->nativeSource:J

    invoke-static {v0, v1}, Lorg/webrtc/MediaSource;->nativeState(J)Lorg/webrtc/MediaSource$State;

    move-result-object v0

    return-object v0
.end method
