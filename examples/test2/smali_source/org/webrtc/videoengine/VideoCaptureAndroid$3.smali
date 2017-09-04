.class Lorg/webrtc/videoengine/VideoCaptureAndroid$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

.field final synthetic val$result:Ljava/util/concurrent/Exchanger;

.field final synthetic val$rotation:I


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;ILjava/util/concurrent/Exchanger;)V
    .registers 4

    .prologue
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$3;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iput p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$3;->val$rotation:I

    iput-object p3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$3;->val$result:Ljava/util/concurrent/Exchanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$3;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$3;->val$rotation:I

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$3;->val$result:Ljava/util/concurrent/Exchanger;

    # invokes: Lorg/webrtc/videoengine/VideoCaptureAndroid;->setPreviewRotationOnCameraThread(ILjava/util/concurrent/Exchanger;)V
    invoke-static {v0, v1, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$300(Lorg/webrtc/videoengine/VideoCaptureAndroid;ILjava/util/concurrent/Exchanger;)V

    return-void
.end method
