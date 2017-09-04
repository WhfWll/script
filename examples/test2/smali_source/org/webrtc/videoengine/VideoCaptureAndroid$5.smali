.class Lorg/webrtc/videoengine/VideoCaptureAndroid$5;
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
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$5;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iput-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$5;->val$result:Ljava/util/concurrent/Exchanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$5;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$5;->val$result:Ljava/util/concurrent/Exchanger;

    # invokes: Lorg/webrtc/videoengine/VideoCaptureAndroid;->setPreviewDisplayOnCameraThread(Landroid/view/SurfaceHolder;Ljava/util/concurrent/Exchanger;)V
    invoke-static {v0, v1, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$400(Lorg/webrtc/videoengine/VideoCaptureAndroid;Landroid/view/SurfaceHolder;Ljava/util/concurrent/Exchanger;)V

    return-void
.end method
