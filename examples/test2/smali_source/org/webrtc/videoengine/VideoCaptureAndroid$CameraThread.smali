.class Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;
.super Ljava/lang/Thread;


# instance fields
.field private handlerExchanger:Ljava/util/concurrent/Exchanger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Exchanger",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;


# direct methods
.method public constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Exchanger",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "handlerExchanger":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<Landroid/os/Handler;>;"
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;->handlerExchanger:Ljava/util/concurrent/Exchanger;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;->handlerExchanger:Ljava/util/concurrent/Exchanger;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    # invokes: Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$000(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
