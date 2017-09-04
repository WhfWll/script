.class public Lorg/webrtc/VideoRendererGui;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final CURRENT_SDK_VERSION:I

.field private static final EGL14_SDK_VERSION:I = 0x11

.field private static final OES_FRAGMENT_SHADER_STRING:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

.field private static final TAG:Ljava/lang/String; = "VideoRendererGui"

.field private static eglContext:Landroid/opengl/EGLContext;

.field private static instance:Lorg/webrtc/VideoRendererGui;


# instance fields
.field private final VERTEX_SHADER_STRING:Ljava/lang/String;

.field private final YUV_FRAGMENT_SHADER_STRING:Ljava/lang/String;

.field private oesProgram:I

.field private onSurfaceCreatedCalled:Z

.field private screenHeight:I

.field private screenWidth:I

.field private surface:Landroid/opengl/GLSurfaceView;

.field private yuvImageRenderers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/webrtc/VideoRendererGui$YuvImageRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private yuvProgram:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    sput-object v0, Lorg/webrtc/VideoRendererGui;->eglContext:Landroid/opengl/EGLContext;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lorg/webrtc/VideoRendererGui;->CURRENT_SDK_VERSION:I

    return-void
.end method

.method private constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .registers 3
    .param p1, "surface"    # Landroid/opengl/GLSurfaceView;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec2 in_tc;\n\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc = in_tc;\n}\n"

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui;->VERTEX_SHADER_STRING:Ljava/lang/String;

    const-string v0, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui;->YUV_FRAGMENT_SHADER_STRING:Ljava/lang/String;

    iput-object p1, p0, Lorg/webrtc/VideoRendererGui;->surface:Landroid/opengl/GLSurfaceView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    invoke-virtual {p1, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    return-void
.end method

.method private static abortUnless(ZLjava/lang/String;)V
    .registers 3
    .param p0, "condition"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method

.method static synthetic access$000([F)Ljava/nio/FloatBuffer;
    .registers 2
    .param p0, "x0"    # [F

    .prologue
    invoke-static {p0}, Lorg/webrtc/VideoRendererGui;->directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()V
    .registers 0

    invoke-static {}, Lorg/webrtc/VideoRendererGui;->checkNoGLES2Error()V

    return-void
.end method

.method static synthetic access$200()Lorg/webrtc/VideoRendererGui;
    .registers 1

    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    return-object v0
.end method

.method static synthetic access$300(Lorg/webrtc/VideoRendererGui;)I
    .registers 2
    .param p0, "x0"    # Lorg/webrtc/VideoRendererGui;

    .prologue
    iget v0, p0, Lorg/webrtc/VideoRendererGui;->screenWidth:I

    return v0
.end method

.method static synthetic access$400(Lorg/webrtc/VideoRendererGui;)I
    .registers 2
    .param p0, "x0"    # Lorg/webrtc/VideoRendererGui;

    .prologue
    iget v0, p0, Lorg/webrtc/VideoRendererGui;->screenHeight:I

    return v0
.end method

.method static synthetic access$600(Lorg/webrtc/VideoRendererGui;)I
    .registers 2
    .param p0, "x0"    # Lorg/webrtc/VideoRendererGui;

    .prologue
    iget v0, p0, Lorg/webrtc/VideoRendererGui;->yuvProgram:I

    return v0
.end method

.method static synthetic access$700(Lorg/webrtc/VideoRendererGui;)I
    .registers 2
    .param p0, "x0"    # Lorg/webrtc/VideoRendererGui;

    .prologue
    iget v0, p0, Lorg/webrtc/VideoRendererGui;->oesProgram:I

    return v0
.end method

.method private static checkNoGLES2Error()V
    .registers 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    if-nez v1, :cond_1a

    const/4 v0, 0x1

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GLES20 error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/VideoRendererGui;->abortUnless(ZLjava/lang/String;)V

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static create(IIIILorg/webrtc/VideoRendererGui$ScalingType;Z)Lorg/webrtc/VideoRendererGui$YuvImageRenderer;
    .registers 16
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "scalingType"    # Lorg/webrtc/VideoRendererGui$ScalingType;
    .param p5, "mirror"    # Z

    .prologue
    const/16 v1, 0x64

    if-ltz p0, :cond_1a

    if-gt p0, v1, :cond_1a

    if-ltz p1, :cond_1a

    if-gt p1, v1, :cond_1a

    if-ltz p2, :cond_1a

    if-gt p2, v1, :cond_1a

    if-ltz p3, :cond_1a

    if-gt p3, v1, :cond_1a

    add-int v0, p0, p2

    if-gt v0, v1, :cond_1a

    add-int v0, p1, p3

    if-le v0, v1, :cond_22

    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Incorrect window parameters."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to create yuv renderer before setting GLSurfaceView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    new-instance v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    sget-object v1, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v1, v1, Lorg/webrtc/VideoRendererGui;->surface:Landroid/opengl/GLSurfaceView;

    sget-object v2, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v2, v2, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v9}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;-><init>(Landroid/opengl/GLSurfaceView;IIIIILorg/webrtc/VideoRendererGui$ScalingType;ZLorg/webrtc/VideoRendererGui$1;)V

    sget-object v1, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v1, v1, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_4b
    sget-object v2, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-boolean v2, v2, Lorg/webrtc/VideoRendererGui;->onSurfaceCreatedCalled:Z

    if-eqz v2, :cond_66

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v3, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v3, v3, Lorg/webrtc/VideoRendererGui;->surface:Landroid/opengl/GLSurfaceView;

    new-instance v4, Lorg/webrtc/VideoRendererGui$1;

    invoke-direct {v4, v0, v2}, Lorg/webrtc/VideoRendererGui$1;-><init>(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_63
    .catchall {:try_start_4b .. :try_end_63} :catchall_76

    :try_start_63
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_66} :catch_6f
    .catchall {:try_start_63 .. :try_end_66} :catchall_76

    :cond_66
    :try_start_66
    sget-object v2, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v2, v2, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-object v0

    :catch_6f
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static createGui(IIIILorg/webrtc/VideoRendererGui$ScalingType;Z)Lorg/webrtc/VideoRenderer;
    .registers 8
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "scalingType"    # Lorg/webrtc/VideoRendererGui$ScalingType;
    .param p5, "mirror"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static/range {p0 .. p5}, Lorg/webrtc/VideoRendererGui;->create(IIIILorg/webrtc/VideoRendererGui$ScalingType;Z)Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    move-result-object v0

    new-instance v1, Lorg/webrtc/VideoRenderer;

    invoke-direct {v1, v0}, Lorg/webrtc/VideoRenderer;-><init>(Lorg/webrtc/VideoRenderer$Callbacks;)V

    return-object v1
.end method

.method public static createGuiRenderer(IIIILorg/webrtc/VideoRendererGui$ScalingType;Z)Lorg/webrtc/VideoRenderer$Callbacks;
    .registers 7
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "scalingType"    # Lorg/webrtc/VideoRendererGui$ScalingType;
    .param p5, "mirror"    # Z

    .prologue
    invoke-static/range {p0 .. p5}, Lorg/webrtc/VideoRendererGui;->create(IIIILorg/webrtc/VideoRendererGui$ScalingType;Z)Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    move-result-object v0

    return-object v0
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lorg/webrtc/VideoRendererGui;->loadShader(ILjava/lang/String;)I

    move-result v0

    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lorg/webrtc/VideoRendererGui;->loadShader(ILjava/lang/String;)I

    move-result v1

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    if-nez v2, :cond_1e

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not create program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v4, [I

    aput v3, v0, v3

    const v1, 0x8b82

    invoke-static {v2, v1, v0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, v0, v3

    if-eq v0, v4, :cond_57

    const-string v0, "VideoRendererGui"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Could not link program: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    invoke-static {}, Lorg/webrtc/VideoRendererGui;->checkNoGLES2Error()V

    return v2
.end method

.method private static directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;
    .registers 3
    .param p0, "array"    # [F

    .prologue
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static getEGLContext()Landroid/opengl/EGLContext;
    .registers 1

    sget-object v0, Lorg/webrtc/VideoRendererGui;->eglContext:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method private loadShader(ILjava/lang/String;)I
    .registers 8
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [I

    aput v3, v0, v3

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v0, v0, v3

    if-eq v0, v4, :cond_46

    const-string v0, "VideoRendererGui"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not compile shader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    invoke-static {}, Lorg/webrtc/VideoRendererGui;->checkNoGLES2Error()V

    return v1
.end method

.method public static setView(Landroid/opengl/GLSurfaceView;)V
    .registers 3
    .param p0, "surface"    # Landroid/opengl/GLSurfaceView;

    .prologue
    const-string v0, "VideoRendererGui"

    const-string v1, "VideoRendererGui.setView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/webrtc/VideoRendererGui;

    invoke-direct {v0, p0}, Lorg/webrtc/VideoRendererGui;-><init>(Landroid/opengl/GLSurfaceView;)V

    sput-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    return-void
.end method

.method public static update(Lorg/webrtc/VideoRenderer$Callbacks;IIIILorg/webrtc/VideoRendererGui$ScalingType;)V
    .registers 14
    .param p0, "renderer"    # Lorg/webrtc/VideoRenderer$Callbacks;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "scalingType"    # Lorg/webrtc/VideoRendererGui$ScalingType;

    .prologue
    const-string v0, "VideoRendererGui"

    const-string v1, "VideoRendererGui.update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to update yuv renderer before setting GLSurfaceView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v6, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_18
    sget-object v0, Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;

    iget-object v0, v0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_20
    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    if-ne v0, p0, :cond_20

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->setPosition(IIIILorg/webrtc/VideoRendererGui$ScalingType;)V
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_37

    goto :goto_20

    :catchall_37
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_3a
    :try_start_3a
    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_37

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5

    .prologue
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v1, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    # invokes: Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->draw()V
    invoke-static {v0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->access$900(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;)V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1e

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_21
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1e

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 9
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    const-string v0, "VideoRendererGui"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoRendererGui.onSurfaceChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lorg/webrtc/VideoRendererGui;->screenWidth:I

    iput p3, p0, Lorg/webrtc/VideoRendererGui;->screenHeight:I

    invoke-static {v3, v3, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v1, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_2f
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    iget v3, p0, Lorg/webrtc/VideoRendererGui;->screenWidth:I

    iget v4, p0, Lorg/webrtc/VideoRendererGui;->screenHeight:I

    invoke-virtual {v0, v3, v4}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->setScreenSize(II)V
    :try_end_48
    .catchall {:try_start_2f .. :try_end_48} :catchall_49

    goto :goto_35

    :catchall_49
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4c
    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 9

    .prologue
    const v5, 0x3e19999a

    const-string v0, "VideoRendererGui"

    const-string v1, "VideoRendererGui.onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lorg/webrtc/VideoRendererGui;->CURRENT_SDK_VERSION:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2c

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    sput-object v0, Lorg/webrtc/VideoRendererGui;->eglContext:Landroid/opengl/EGLContext;

    const-string v0, "VideoRendererGui"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoRendererGui EGL Context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/webrtc/VideoRendererGui;->eglContext:Landroid/opengl/EGLContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const-string v0, "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec2 in_tc;\n\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc = in_tc;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    invoke-direct {p0, v0, v1}, Lorg/webrtc/VideoRendererGui;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/VideoRendererGui;->yuvProgram:I

    const-string v0, "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec2 in_tc;\n\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc = in_tc;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    invoke-direct {p0, v0, v1}, Lorg/webrtc/VideoRendererGui;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/VideoRendererGui;->oesProgram:I

    iget-object v1, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_43
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui;->yuvImageRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    iget v3, p0, Lorg/webrtc/VideoRendererGui;->yuvProgram:I

    iget v4, p0, Lorg/webrtc/VideoRendererGui;->oesProgram:I

    # invokes: Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->createTextures(II)V
    invoke-static {v0, v3, v4}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->access$800(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;II)V
    :try_end_5c
    .catchall {:try_start_43 .. :try_end_5c} :catchall_5d

    goto :goto_49

    :catchall_5d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_60
    const/4 v0, 0x1

    :try_start_61
    iput-boolean v0, p0, Lorg/webrtc/VideoRendererGui;->onSurfaceCreatedCalled:Z

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_5d

    invoke-static {}, Lorg/webrtc/VideoRendererGui;->checkNoGLES2Error()V

    const/high16 v0, 0x3f800000

    invoke-static {v5, v5, v5, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    return-void
.end method
