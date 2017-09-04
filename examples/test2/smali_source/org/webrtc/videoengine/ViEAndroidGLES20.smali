.class public Lorg/webrtc/videoengine/ViEAndroidGLES20;
.super Landroid/opengl/GLSurfaceView;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private nativeFunctionsRegisted:Z

.field private nativeObject:J

.field private openGLCreated:Z

.field private surfaceCreated:Z

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "WEBRTC-JR"

    sput-object v0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeObject:J

    iput v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->viewWidth:I

    iput v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->viewHeight:I

    invoke-direct {p0, v2, v2, v2}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->init(ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z
    .param p3, "depth"    # I
    .param p4, "stencil"    # I

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeObject:J

    iput v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->viewWidth:I

    iput v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->viewHeight:I

    invoke-direct {p0, p2, p3, p4}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->init(ZII)V

    return-void
.end method

.method private native CreateOpenGLNative(JII)I
.end method

.method private native DrawNative(J)V
.end method

.method public static IsSupported(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static UseOpenGL2(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "renderWindow"    # Ljava/lang/Object;

    .prologue
    const-class v0, Lorg/webrtc/videoengine/ViEAndroidGLES20;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGL10;

    .prologue
    invoke-static {p0, p1}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .registers 7
    .param p0, "prompt"    # Ljava/lang/String;
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;

    .prologue
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_21

    sget-object v1, Lorg/webrtc/videoengine/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_21
    return-void
.end method

.method private init(ZII)V
    .registers 12
    .param p1, "translucent"    # Z
    .param p2, "depth"    # I
    .param p3, "stencil"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v7, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_e
    new-instance v0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ContextFactory;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/webrtc/videoengine/ViEAndroidGLES20$ContextFactory;-><init>(Lorg/webrtc/videoengine/ViEAndroidGLES20$1;)V

    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    if-eqz p1, :cond_2d

    new-instance v0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;-><init>(IIIIII)V

    :goto_23
    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    invoke-virtual {p0, p0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v7}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->setRenderMode(I)V

    return-void

    :cond_2d
    new-instance v0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;

    const/4 v2, 0x6

    move v1, v4

    move v3, v4

    move v4, v7

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;-><init>(IIIIII)V

    goto :goto_23
.end method


# virtual methods
.method public DeRegisterNativeObject()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iput-boolean v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    iput-boolean v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeObject:J

    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public ReDraw()V
    .registers 2

    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->requestRender()V

    :cond_7
    return-void
.end method

.method public RegisterNativeObject(J)V
    .registers 4
    .param p1, "nativeObject"    # J

    .prologue
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iput-wide p1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeObject:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 6

    .prologue
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    if-nez v0, :cond_13

    :cond_d
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    if-nez v0, :cond_26

    iget-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeObject:J

    iget v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->viewWidth:I

    iget v3, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->viewHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    :cond_26
    iget-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeObject:J

    invoke-direct {p0, v0, v1}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->DrawNative(J)V

    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_12
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 7
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    iput p2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->viewWidth:I

    iput p3, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->viewHeight:I

    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeObject:J

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result v0

    if-nez v0, :cond_1a

    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    :cond_1a
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3

    return-void
.end method
