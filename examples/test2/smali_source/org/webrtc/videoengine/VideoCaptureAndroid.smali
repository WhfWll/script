.class public Lorg/webrtc/videoengine/VideoCaptureAndroid;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "anLive"

.field private static localPreview:Landroid/view/SurfaceHolder;


# instance fields
.field private averageDurationMs:D

.field private camera:Landroid/hardware/Camera;

.field private cameraGlTextures:[I

.field private cameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private cameraThread:Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;

.field private cameraThreadHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private frameCount:I

.field private frameDropRatio:I

.field private final id:I

.field private final info:Landroid/hardware/Camera$CameraInfo;

.field private lastCaptureTimeMs:J

.field private final native_capturer:J

.field private final numCaptureBuffers:I


# direct methods
.method public constructor <init>(IJ)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "native_capturer"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraGlTextures:[I

    const/4 v0, 0x3

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->numCaptureBuffers:I

    iput p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    iput-wide p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->native_capturer:J

    invoke-static {}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->GetContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:Landroid/content/Context;

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    return-void
.end method

.method private static native GetContext()Landroid/content/Context;
.end method

.method private native ProvideCameraFrame([BIIJJ)V
.end method

.method static synthetic access$000(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Ljava/util/concurrent/Exchanger;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/webrtc/videoengine/VideoCaptureAndroid;IIIILjava/util/concurrent/Exchanger;)V
    .registers 6
    .param p0, "x0"    # Lorg/webrtc/videoengine/VideoCaptureAndroid;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/util/concurrent/Exchanger;

    .prologue
    invoke-direct/range {p0 .. p5}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->startCaptureOnCameraThread(IIIILjava/util/concurrent/Exchanger;)V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V
    .registers 2
    .param p0, "x0"    # Lorg/webrtc/videoengine/VideoCaptureAndroid;
    .param p1, "x1"    # Ljava/util/concurrent/Exchanger;

    .prologue
    invoke-direct {p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->stopCaptureOnCameraThread(Ljava/util/concurrent/Exchanger;)V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/videoengine/VideoCaptureAndroid;ILjava/util/concurrent/Exchanger;)V
    .registers 3
    .param p0, "x0"    # Lorg/webrtc/videoengine/VideoCaptureAndroid;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/concurrent/Exchanger;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->setPreviewRotationOnCameraThread(ILjava/util/concurrent/Exchanger;)V

    return-void
.end method

.method static synthetic access$400(Lorg/webrtc/videoengine/VideoCaptureAndroid;Landroid/view/SurfaceHolder;Ljava/util/concurrent/Exchanger;)V
    .registers 3
    .param p0, "x0"    # Lorg/webrtc/videoengine/VideoCaptureAndroid;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;
    .param p2, "x2"    # Ljava/util/concurrent/Exchanger;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->setPreviewDisplayOnCameraThread(Landroid/view/SurfaceHolder;Ljava/util/concurrent/Exchanger;)V

    return-void
.end method

.method private static exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Exchanger",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "exchanger":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/Exchanger;->exchange(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getDeviceOrientation()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:Landroid/content/Context;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    move v0, v1

    :goto_1b
    return v0

    :pswitch_1c
    const/16 v0, 0x5a

    goto :goto_1b

    :pswitch_1f
    const/16 v0, 0xb4

    goto :goto_1b

    :pswitch_22
    const/16 v0, 0x10e

    goto :goto_1b

    :cond_25
    move v0, v1

    goto :goto_1b

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method public static setLocalPreview(Landroid/view/SurfaceHolder;)V
    .registers 1
    .param p0, "localPreview"    # Landroid/view/SurfaceHolder;

    .prologue
    sput-object p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    return-void
.end method

.method private setPreviewDisplayOnCameraThread(Landroid/view/SurfaceHolder;Ljava/util/concurrent/Exchanger;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceHolder;",
            "Ljava/util/concurrent/Exchanger",
            "<",
            "Ljava/io/IOException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "result":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<Ljava/io/IOException;>;"
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_a

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-static {p2, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method private declared-synchronized setPreviewRotation(I)V
    .registers 5
    .param p1, "rotation"    # I

    .prologue
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1f

    if-nez v0, :cond_b

    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    new-instance v0, Ljava/util/concurrent/Exchanger;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger;-><init>()V

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/videoengine/VideoCaptureAndroid$3;

    invoke-direct {v2, p0, p1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$3;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;ILjava/util/concurrent/Exchanger;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1f

    goto :goto_9

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPreviewRotationOnCameraThread(ILjava/util/concurrent/Exchanger;)V
    .registers 6
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Exchanger",
            "<",
            "Ljava/io/IOException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "result":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<Ljava/io/IOException;>;"
    const-string v0, "anLive"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPreviewRotation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    rsub-int v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .end local p1    # "rotation":I
    :cond_1f
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized startCapture(IIII)Z
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "min_mfps"    # I
    .param p4, "max_mfps"    # I

    .prologue
    monitor-enter p0

    :try_start_1
    const-string v0, "anLive"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startCapture: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThread:Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;

    if-nez v0, :cond_3b

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_46

    :cond_3b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Camera thread already started!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_46
    :try_start_46
    new-instance v0, Ljava/util/concurrent/Exchanger;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger;-><init>()V

    new-instance v1, Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;

    invoke-direct {v1, p0, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V

    iput-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThread:Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThread:Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;

    invoke-virtual {v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;->start()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v6, Ljava/util/concurrent/Exchanger;

    invoke-direct {v6}, Ljava/util/concurrent/Exchanger;-><init>()V

    iget-object v7, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;IIIILjava/util/concurrent/Exchanger;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_82
    .catchall {:try_start_46 .. :try_end_82} :catchall_43

    move-result v0

    monitor-exit p0

    return v0
.end method

.method private startCaptureOnCameraThread(IIIILjava/util/concurrent/Exchanger;)V
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "min_mfps"    # I
    .param p4, "max_mfps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/concurrent/Exchanger",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "result":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<Ljava/lang/Boolean;>;"
    const/4 v6, 0x1

    const/4 v1, 0x0

    :try_start_2
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_c3

    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_2e

    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    sget-object v2, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    :cond_2e
    :goto_2e
    const-string v0, "anLive"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera orientation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " .Device orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->getDeviceOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v0, "anLive"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "isVideoStabilizationSupported: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_7c

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    :cond_7c
    invoke-virtual {v3, p1, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    invoke-virtual {v3, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v4

    const v0, 0x7fffffff

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameDropRatio:I

    move v2, v1

    :goto_8c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a5

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v5, 0x0

    aget v5, v0, v5

    if-ne v5, p3, :cond_14c

    const/4 v5, 0x1

    aget v5, v0, v5

    if-ne v5, p4, :cond_14c

    const/4 v0, 0x1

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameDropRatio:I

    :cond_a5
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameDropRatio:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_169

    const-string v0, "anLive"

    const-string v2, "Can not find camera fps range"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Can not find camera fps range"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p5, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c2} :catch_128
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_c2} :catch_1f0

    :goto_c2
    return-void

    :cond_c3
    const/4 v0, 0x1

    :try_start_c4
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraGlTextures:[I

    const/4 v0, 0x1

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraGlTextures:[I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const v0, 0x8d65

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraGlTextures:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v0, 0x8d65

    const/16 v2, 0x2801

    const v3, 0x46180400

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v0, 0x8d65

    const/16 v2, 0x2800

    const v3, 0x46180400

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v0, 0x8d65

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v0, 0x8d65

    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraGlTextures:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_11f} :catch_121
    .catch Ljava/lang/RuntimeException; {:try_start_c4 .. :try_end_11f} :catch_1f0

    goto/16 :goto_2e

    :catch_121
    move-exception v0

    :try_start_122
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_128} :catch_128
    .catch Ljava/lang/RuntimeException; {:try_start_122 .. :try_end_128} :catch_1f0

    :catch_128
    move-exception v0

    :goto_129
    const-string v2, "anLive"

    const-string v3, "startCapture failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_143

    new-instance v0, Ljava/util/concurrent/Exchanger;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger;-><init>()V

    invoke-direct {p0, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->stopCaptureOnCameraThread(Ljava/util/concurrent/Exchanger;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_143
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p5, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c2

    :cond_14c
    const/4 v5, 0x0

    :try_start_14d
    aget v5, v0, v5

    rem-int/2addr v5, p3

    if-nez v5, :cond_164

    const/4 v5, 0x1

    aget v5, v0, v5

    rem-int/2addr v5, p4

    if-nez v5, :cond_164

    const/4 v5, 0x1

    aget v0, v0, v5

    div-int/2addr v0, p4

    iget v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameDropRatio:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameDropRatio:I

    :cond_164
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_8c

    :cond_169
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameDropRatio:I

    if-le v0, v6, :cond_183

    const-string v0, "anLive"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Frame dropper is enabled. Ratio: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameDropRatio:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_183
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameDropRatio:I

    mul-int/2addr p3, v0

    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameDropRatio:I

    mul-int/2addr p4, v0

    const-string v0, "anLive"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Camera preview mfps range: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, p3, p4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    mul-int v0, p1, p2

    const/16 v2, 0x11

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    mul-int/2addr v0, v2

    div-int/lit8 v2, v0, 0x8

    move v0, v1

    :goto_1c0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_1cd

    iget-object v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    new-array v4, v2, [B

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c0

    :cond_1cd
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameCount:I

    const v0, 0x49742400

    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameDropRatio:I

    div-int v2, p4, v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    iput-wide v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->averageDurationMs:D

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p5, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1ee
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_1ee} :catch_128
    .catch Ljava/lang/RuntimeException; {:try_start_14d .. :try_end_1ee} :catch_1f0

    goto/16 :goto_c2

    :catch_1f0
    move-exception v0

    goto/16 :goto_129
.end method

.method private declared-synchronized stopCapture()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "anLive"

    const-string v1, "stopCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/Exchanger;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger;-><init>()V

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;

    invoke-direct {v2, p0, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_41

    move-result v0

    :try_start_26
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThread:Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;

    invoke-virtual {v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;->join()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_3a
    .catchall {:try_start_26 .. :try_end_2b} :catchall_41

    const/4 v1, 0x0

    :try_start_2c
    iput-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThread:Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;

    const-string v1, "anLive"

    const-string v2, "stopCapture done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_41

    monitor-exit p0

    return v0

    :catch_3a
    move-exception v0

    :try_start_3b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopCaptureOnCameraThread(Ljava/util/concurrent/Exchanger;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Exchanger",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Camera is already stopped!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :try_start_d
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3f

    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    :cond_27
    :goto_27
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :goto_3e
    return-void

    :cond_3f
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraGlTextures:[I

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraGlTextures:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraGlTextures:[I
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_56} :catch_57
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_56} :catch_6e

    goto :goto_27

    :catch_57
    move-exception v0

    :goto_58
    const-string v1, "anLive"

    const-string v2, "Failed to stop camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_3e

    :catch_6e
    move-exception v0

    goto :goto_58
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 13
    .param p1, "data"    # [B
    .param p2, "callbackCamera"    # Landroid/hardware/Camera;

    .prologue
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThread:Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Camera callback not on camera thread?!?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_15

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eq v0, p2, :cond_21

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected camera in callback!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameCount:I

    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameDropRatio:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_39

    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameCount:I

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameDropRatio:I

    rem-int/2addr v0, v1

    if-lez v0, :cond_39

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_14

    :cond_39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameCount:I

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameDropRatio:I

    if-le v0, v1, :cond_94

    iget-wide v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->lastCaptureTimeMs:J

    sub-long v0, v4, v0

    long-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL

    iget-wide v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->averageDurationMs:D

    mul-double/2addr v2, v6

    const-wide v6, 0x3fb999999999999aL

    mul-double/2addr v6, v0

    add-double/2addr v2, v6

    iput-wide v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->averageDurationMs:D

    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->frameCount:I

    rem-int/lit8 v2, v2, 0x1e

    if-nez v2, :cond_94

    const-string v2, "anLive"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Camera TS "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ". Duration: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    double-to-int v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms. FPS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v6, 0x408f400000000000L

    iget-wide v8, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->averageDurationMs:D

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L

    add-double/2addr v6, v8

    double-to-int v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    iput-wide v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->lastCaptureTimeMs:J

    invoke-direct {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->getDeviceOrientation()I

    move-result v0

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_a2

    rsub-int v0, v0, 0x168

    :cond_a2
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v3, v0, 0x168

    array-length v2, p1

    iget-wide v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->native_capturer:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ProvideCameraFrame([BIIJJ)V

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_14
.end method

.method public declared-synchronized surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    monitor-enter p0

    :try_start_1
    const-string v0, "anLive"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoCaptureAndroid::surfaceChanged ignored: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    monitor-enter p0

    :try_start_1
    const-string v0, "anLive"

    const-string v1, "VideoCaptureAndroid::surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_30

    if-nez v0, :cond_12

    :cond_10
    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    new-instance v0, Ljava/util/concurrent/Exchanger;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger;-><init>()V

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/videoengine/VideoCaptureAndroid$4;

    invoke-direct {v2, p0, p1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$4;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Landroid/view/SurfaceHolder;Ljava/util/concurrent/Exchanger;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    if-eqz v0, :cond_10

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 5

    .prologue
    monitor-enter p0

    :try_start_1
    const-string v0, "anLive"

    const-string v1, "VideoCaptureAndroid::surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_30

    if-nez v0, :cond_12

    :cond_10
    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    new-instance v0, Ljava/util/concurrent/Exchanger;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger;-><init>()V

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/videoengine/VideoCaptureAndroid$5;

    invoke-direct {v2, p0, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$5;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    if-eqz v0, :cond_10

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method
