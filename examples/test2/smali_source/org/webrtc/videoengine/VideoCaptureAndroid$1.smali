.class Lorg/webrtc/videoengine/VideoCaptureAndroid$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

.field final synthetic val$height:I

.field final synthetic val$max_mfps:I

.field final synthetic val$min_mfps:I

.field final synthetic val$result:Ljava/util/concurrent/Exchanger;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;IIIILjava/util/concurrent/Exchanger;)V
    .registers 7

    .prologue
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iput p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$width:I

    iput p3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$height:I

    iput p4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$min_mfps:I

    iput p5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$max_mfps:I

    iput-object p6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$result:Ljava/util/concurrent/Exchanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$width:I

    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$height:I

    iget v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$min_mfps:I

    iget v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$max_mfps:I

    iget-object v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$result:Ljava/util/concurrent/Exchanger;

    # invokes: Lorg/webrtc/videoengine/VideoCaptureAndroid;->startCaptureOnCameraThread(IIIILjava/util/concurrent/Exchanger;)V
    invoke-static/range {v0 .. v5}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$100(Lorg/webrtc/videoengine/VideoCaptureAndroid;IIIILjava/util/concurrent/Exchanger;)V

    return-void
.end method
