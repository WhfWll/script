.class Lorg/webrtc/videoengine/VideoCaptureAndroid$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

.field final synthetic val$result:Ljava/util/concurrent/Exchanger;


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V
    .registers 3

    .prologue
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iput-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;->val$result:Ljava/util/concurrent/Exchanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;->val$result:Ljava/util/concurrent/Exchanger;

    # invokes: Lorg/webrtc/videoengine/VideoCaptureAndroid;->stopCaptureOnCameraThread(Ljava/util/concurrent/Exchanger;)V
    invoke-static {v0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$200(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V

    return-void
.end method
