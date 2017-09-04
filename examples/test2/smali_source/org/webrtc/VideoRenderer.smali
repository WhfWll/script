.class public Lorg/webrtc/VideoRenderer;
.super Ljava/lang/Object;


# instance fields
.field private final callbacks:Lorg/webrtc/VideoRenderer$Callbacks;

.field final nativeVideoRenderer:J


# direct methods
.method private constructor <init>(J)V
    .registers 4
    .param p1, "nativeVideoRenderer"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/webrtc/VideoRenderer;->nativeVideoRenderer:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/VideoRenderer;->callbacks:Lorg/webrtc/VideoRenderer$Callbacks;

    return-void
.end method

.method public constructor <init>(Lorg/webrtc/VideoRenderer$Callbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lorg/webrtc/VideoRenderer$Callbacks;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/webrtc/VideoRenderer;->nativeWrapVideoRenderer(Lorg/webrtc/VideoRenderer$Callbacks;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/VideoRenderer;->nativeVideoRenderer:J

    iput-object p1, p0, Lorg/webrtc/VideoRenderer;->callbacks:Lorg/webrtc/VideoRenderer$Callbacks;

    return-void
.end method

.method public static createGui(II)Lorg/webrtc/VideoRenderer;
    .registers 6
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    invoke-static {p0, p1}, Lorg/webrtc/VideoRenderer;->nativeCreateGuiVideoRenderer(II)J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lorg/webrtc/VideoRenderer;

    invoke-direct {v0, v2, v3}, Lorg/webrtc/VideoRenderer;-><init>(J)V

    goto :goto_b
.end method

.method private static native freeGuiVideoRenderer(J)V
.end method

.method private static native freeWrappedVideoRenderer(J)V
.end method

.method private static native nativeCreateGuiVideoRenderer(II)J
.end method

.method private static native nativeWrapVideoRenderer(Lorg/webrtc/VideoRenderer$Callbacks;)J
.end method


# virtual methods
.method public dispose()V
    .registers 3

    iget-object v0, p0, Lorg/webrtc/VideoRenderer;->callbacks:Lorg/webrtc/VideoRenderer$Callbacks;

    if-nez v0, :cond_a

    iget-wide v0, p0, Lorg/webrtc/VideoRenderer;->nativeVideoRenderer:J

    invoke-static {v0, v1}, Lorg/webrtc/VideoRenderer;->freeGuiVideoRenderer(J)V

    :goto_9
    return-void

    :cond_a
    iget-wide v0, p0, Lorg/webrtc/VideoRenderer;->nativeVideoRenderer:J

    invoke-static {v0, v1}, Lorg/webrtc/VideoRenderer;->freeWrappedVideoRenderer(J)V

    goto :goto_9
.end method
