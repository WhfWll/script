.class public final Lct;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final e:I


# instance fields
.field private a:I

.field private a:Lcom/arrownock/live/VideoView;

.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcx;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lct;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/arrownock/live/VideoView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lct;->a:Lcom/arrownock/live/VideoView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/arrownock/live/VideoView;->setPreserveEGLContextOnPause(Z)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/arrownock/live/VideoView;->setEGLContextClientVersion(I)V

    invoke-virtual {p1, p0}, Lcom/arrownock/live/VideoView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/arrownock/live/VideoView;->setRenderMode(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lct;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(ILjava/lang/String;)I
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [I

    aput v3, v0, v3

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v0, v0, v3

    if-eq v0, v4, :cond_46

    const-string v0, "MediaStreamsRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not compile shader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    invoke-static {}, Lct;->b()V

    return v1
.end method

.method static synthetic a(Lct;)I
    .registers 2

    iget v0, p0, Lct;->c:I

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v0, 0x8b31

    invoke-static {v0, p0}, Lct;->a(ILjava/lang/String;)I

    move-result v0

    const v1, 0x8b30

    invoke-static {v1, p1}, Lct;->a(ILjava/lang/String;)I

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

    const-string v0, "MediaStreamsRenderer"

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
    invoke-static {}, Lct;->b()V

    return v2
.end method

.method static synthetic a([F)Ljava/nio/FloatBuffer;
    .registers 3

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

.method static synthetic a()V
    .registers 0

    invoke-static {}, Lct;->b()V

    return-void
.end method

.method static synthetic b(Lct;)I
    .registers 2

    iget v0, p0, Lct;->d:I

    return v0
.end method

.method private static b()V
    .registers 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    if-nez v1, :cond_1e

    const/4 v0, 0x1

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GLES20 error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_7

    :cond_20
    return-void
.end method

.method static synthetic c(Lct;)I
    .registers 2

    iget v0, p0, Lct;->a:I

    return v0
.end method

.method static synthetic d(Lct;)I
    .registers 2

    iget v0, p0, Lct;->b:I

    return v0
.end method


# virtual methods
.method public final a(Lcw;Z)Lcx;
    .registers 10

    new-instance v0, Lcx;

    iget-object v2, p0, Lct;->a:Lcom/arrownock/live/VideoView;

    iget-object v1, p0, Lct;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcx;-><init>(Lct;Lcom/arrownock/live/VideoView;ILcw;ZB)V

    iget-object v1, p0, Lct;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_14
    iget-boolean v2, p0, Lct;->a:Z

    if-eqz v2, :cond_2b

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v3, p0, Lct;->a:Lcom/arrownock/live/VideoView;

    new-instance v4, Lcu;

    invoke-direct {v4, p0, v0, v2}, Lcu;-><init>(Lct;Lcx;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Lcom/arrownock/live/VideoView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_39

    :try_start_28
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_32
    .catchall {:try_start_28 .. :try_end_2b} :catchall_39

    :cond_2b
    :try_start_2b
    iget-object v2, p0, Lct;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-object v0

    :catch_32
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5

    .prologue
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v1, p0, Lct;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lct;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcx;

    invoke-static {v0}, Lcx;->a(Lcx;)V
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

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 9
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    iput p2, p0, Lct;->a:I

    iput p3, p0, Lct;->b:I

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v1, p0, Lct;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lct;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcx;

    iget v3, p0, Lct;->a:I

    iget v4, p0, Lct;->b:I

    invoke-virtual {v0, v3, v4}, Lcx;->a(II)V
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_25

    goto :goto_11

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 9

    .prologue
    const v5, 0x3e19999a

    sget v0, Lct;->e:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_c

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    :cond_c
    const-string v0, "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec2 in_tc;\n\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc = in_tc;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    invoke-static {v0, v1}, Lct;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lct;->c:I

    const-string v0, "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec2 in_tc;\n\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc = in_tc;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    invoke-static {v0, v1}, Lct;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lct;->d:I

    iget-object v1, p0, Lct;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_23
    iget-object v0, p0, Lct;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcx;

    iget v3, p0, Lct;->c:I

    iget v4, p0, Lct;->d:I

    invoke-static {v0, v3, v4}, Lcx;->a(Lcx;II)V
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_3d

    goto :goto_29

    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_40
    const/4 v0, 0x1

    :try_start_41
    iput-boolean v0, p0, Lct;->a:Z

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3d

    invoke-static {}, Lct;->b()V

    const/high16 v0, 0x3f800000

    invoke-static {v5, v5, v5, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    return-void
.end method
