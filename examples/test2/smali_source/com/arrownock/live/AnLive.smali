.class public Lcom/arrownock/live/AnLive;
.super Ljava/lang/Object;

# interfaces
.implements Lbj;


# static fields
.field private static a:Lcom/arrownock/live/AnLive;


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Lbh;

.field private a:Lbi;

.field private a:Lcom/arrownock/live/IAnLiveEventListener;

.field private a:Lcom/arrownock/live/IStartCallCallback;

.field private a:Lcom/arrownock/live/LocalVideoView;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lorg/webrtc/AudioSource;

.field private a:Lorg/webrtc/AudioTrack;

.field private a:Lorg/webrtc/MediaStream;

.field private a:Lorg/webrtc/PeerConnectionFactory;

.field private a:Lorg/webrtc/VideoCapturer;

.field private a:Lorg/webrtc/VideoRenderer;

.field private a:Lorg/webrtc/VideoSource;

.field private a:Lorg/webrtc/VideoTrack;

.field private a:Z

.field private b:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcy;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/live/AnLive;

    const v1, 0xd3

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/AnLive;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lbh;Lcom/arrownock/live/IAnLiveEventListener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "signalController"    # Lbh;
    .param p3, "listener"    # Lcom/arrownock/live/IAnLiveEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lbh;

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/IAnLiveEventListener;

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/LocalVideoView;

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/IStartCallCallback;

    iput-boolean v1, p0, Lcom/arrownock/live/AnLive;->a:Z

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Ljava/util/Map;

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lorg/webrtc/VideoCapturer;

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lorg/webrtc/VideoSource;

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lorg/webrtc/VideoTrack;

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lorg/webrtc/VideoRenderer;

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lorg/webrtc/AudioSource;

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lorg/webrtc/AudioTrack;

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lorg/webrtc/MediaStream;

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lorg/webrtc/PeerConnectionFactory;

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->b:Ljava/util/Map;

    iput v1, p0, Lcom/arrownock/live/AnLive;->a:I

    new-instance v0, Lbi;

    invoke-direct {v0, p0}, Lbi;-><init>(Lcom/arrownock/live/AnLive;)V

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lbi;

    if-nez p2, :cond_41

    new-instance v0, Lcom/arrownock/exception/ArrownockException;

    const-string v1, "anIM instance cannot be null"

    const/16 v2, 0x515

    invoke-direct {v0, v1, v2}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_41
    if-nez p3, :cond_4d

    new-instance v0, Lcom/arrownock/exception/ArrownockException;

    const-string v1, "AnLiveEventListener cannot be null"

    const/16 v2, 0x516

    invoke-direct {v0, v1, v2}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4d
    invoke-static {}, Lorg/webrtc/VideoRendererGui;->getEGLContext()Landroid/opengl/EGLContext;

    move-result-object v0

    invoke-static {p1, v2, v2, v1, v0}, Lorg/webrtc/PeerConnectionFactory;->initializeAndroidGlobals(Ljava/lang/Object;ZZZLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    new-instance v0, Lcom/arrownock/exception/ArrownockException;

    const-string v1, "Failed to initialize video media component."

    const/16 v2, 0x902

    invoke-direct {v0, v1, v2}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_61
    iput-object p2, p0, Lcom/arrownock/live/AnLive;->a:Lbh;

    iget-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lbh;

    iget-object v1, p0, Lcom/arrownock/live/AnLive;->a:Lbi;

    invoke-interface {v0, v1}, Lbh;->setCallbacks(Lbi;)V

    iput-object p3, p0, Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/IAnLiveEventListener;

    iput-object p1, p0, Lcom/arrownock/live/AnLive;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->b:Ljava/util/Map;

    const-string v0, "logcat:"

    sget-object v1, Lorg/webrtc/Logging$TraceLevel;->TRACE_ERROR:Lorg/webrtc/Logging$TraceLevel;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lorg/webrtc/Logging$Severity;->LS_ERROR:Lorg/webrtc/Logging$Severity;

    invoke-static {v0, v1, v2}, Lorg/webrtc/Logging;->enableTracing(Ljava/lang/String;Ljava/util/EnumSet;Lorg/webrtc/Logging$Severity;)V

    return-void
.end method

.method private native a(Z)Lcom/arrownock/live/LocalVideoView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method private native declared-synchronized a()V
.end method

.method public static synthetic a(Lcom/arrownock/live/AnLive;)V
    .registers 1

    invoke-direct {p0}, Lcom/arrownock/live/AnLive;->c()V

    return-void
.end method

.method private native a(Ljava/lang/String;ZLjava/util/Map;Lcom/arrownock/live/IStartCallCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/arrownock/live/IStartCallCallback;",
            ")V"
        }
    .end annotation
.end method

.method public static synthetic access$100(Lcom/arrownock/live/AnLive;)Lcom/arrownock/live/IStartCallCallback;
    .registers 2
    .param p0, "x0"    # Lcom/arrownock/live/AnLive;

    .prologue
    iget-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/IStartCallCallback;

    return-object v0
.end method

.method public static synthetic access$1000(Lcom/arrownock/live/AnLive;)V
    .registers 1
    .param p0, "x0"    # Lcom/arrownock/live/AnLive;

    .prologue
    invoke-direct {p0}, Lcom/arrownock/live/AnLive;->a()V

    return-void
.end method

.method public static synthetic access$102(Lcom/arrownock/live/AnLive;Lcom/arrownock/live/IStartCallCallback;)Lcom/arrownock/live/IStartCallCallback;
    .registers 3
    .param p0, "x0"    # Lcom/arrownock/live/AnLive;

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/IStartCallCallback;

    return-object v0
.end method

.method public static synthetic access$202(Lcom/arrownock/live/AnLive;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/arrownock/live/AnLive;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/arrownock/live/AnLive;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/arrownock/live/AnLive;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/arrownock/live/AnLive;

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arrownock/live/AnLive;->a:Z

    return v0
.end method

.method public static synthetic access$400(Lcom/arrownock/live/AnLive;)Lbh;
    .registers 2
    .param p0, "x0"    # Lcom/arrownock/live/AnLive;

    .prologue
    iget-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lbh;

    return-object v0
.end method

.method public static synthetic access$502(Lcom/arrownock/live/AnLive;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/arrownock/live/AnLive;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/arrownock/live/AnLive;->c:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/arrownock/live/AnLive;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/arrownock/live/AnLive;

    .prologue
    iget-object v0, p0, Lcom/arrownock/live/AnLive;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$700(Lcom/arrownock/live/AnLive;Ljava/lang/String;)Lcy;
    .registers 6
    .param p0, "x0"    # Lcom/arrownock/live/AnLive;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/arrownock/live/AnLive;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcy;

    if-nez v0, :cond_21

    new-instance v0, Lcy;

    iget-object v1, p0, Lcom/arrownock/live/AnLive;->a:Lbh;

    iget-object v2, p0, Lcom/arrownock/live/AnLive;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/IAnLiveEventListener;

    invoke-direct {v0, v1, p1, v2, v3}, Lcy;-><init>(Lbh;Ljava/lang/String;Landroid/content/Context;Lcom/arrownock/live/IAnLiveEventListener;)V

    iget-object v1, p0, Lcom/arrownock/live/AnLive;->a:Lorg/webrtc/PeerConnectionFactory;

    iget-object v2, p0, Lcom/arrownock/live/AnLive;->a:Lorg/webrtc/MediaStream;

    invoke-virtual {v0, v1, v2}, Lcy;->a(Lorg/webrtc/PeerConnectionFactory;Lorg/webrtc/MediaStream;)Lorg/webrtc/PeerConnection;

    iget-object v1, p0, Lcom/arrownock/live/AnLive;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    iget v1, p0, Lcom/arrownock/live/AnLive;->a:I

    invoke-virtual {v0, v1}, Lcy;->a(I)V

    return-object v0
.end method

.method public static synthetic access$802(Lcom/arrownock/live/AnLive;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/arrownock/live/AnLive;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/arrownock/live/AnLive;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/arrownock/live/AnLive;)Lcom/arrownock/live/IAnLiveEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/arrownock/live/AnLive;

    .prologue
    iget-object v0, p0, Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/IAnLiveEventListener;

    return-object v0
.end method

.method private native declared-synchronized b()V
.end method

.method private native declared-synchronized c()V
.end method

.method public static native initialize(Landroid/content/Context;Lbh;Lcom/arrownock/live/IAnLiveEventListener;)Lcom/arrownock/live/AnLive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method


# virtual methods
.method public native answer(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native getCurrentSessionType()Ljava/lang/String;
.end method

.method public native hangup()V
.end method

.method public native isOnCall()Z
.end method

.method public native onVideoSizeChanged(IIZZ)V
.end method

.method public native setAudioState(Lcom/arrownock/live/AudioState;)V
.end method

.method public native setVideoState(Lcom/arrownock/live/VideoState;)V
.end method

.method public native videoCall(Ljava/lang/String;ZLjava/util/Map;Lcom/arrownock/live/IStartCallCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/arrownock/live/IStartCallCallback;",
            ")V"
        }
    .end annotation
.end method

.method public native voiceCall(Ljava/lang/String;Ljava/util/Map;Lcom/arrownock/live/IStartCallCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/arrownock/live/IStartCallCallback;",
            ")V"
        }
    .end annotation
.end method
