.class Lorg/webrtc/VideoRendererGui$YuvImageRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/webrtc/VideoRenderer$Callbacks;


# instance fields
.field private copyTimeNs:J

.field private drawTimeNs:J

.field frameToRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lorg/webrtc/VideoRenderer$I420Frame;",
            ">;"
        }
    .end annotation
.end field

.field private framesDropped:I

.field private framesReceived:I

.field private framesRendered:I

.field private id:I

.field private mirror:Z

.field private oesProgram:I

.field private oesTexture:I

.field private rendererType:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

.field private scalingType:Lorg/webrtc/VideoRendererGui$ScalingType;

.field private screenHeight:I

.field private screenWidth:I

.field seenFrame:Z

.field private stMatrix:[F

.field private startTimeNs:J

.field private surface:Landroid/opengl/GLSurfaceView;

.field private texBottom:F

.field private texLeft:F

.field private texRight:F

.field private texTop:F

.field private textureCoords:Ljava/nio/FloatBuffer;

.field private textureFrameToRender:Lorg/webrtc/VideoRenderer$I420Frame;

.field private textureVertices:Ljava/nio/FloatBuffer;

.field private final updateTextureLock:Ljava/lang/Object;

.field private updateTextureProperties:Z

.field private videoHeight:I

.field private videoWidth:I

.field private yuvFrameToRender:Lorg/webrtc/VideoRenderer$I420Frame;

.field private yuvProgram:I

.field private yuvTextures:[I


# direct methods
.method private constructor <init>(Landroid/opengl/GLSurfaceView;IIIIILorg/webrtc/VideoRendererGui$ScalingType;Z)V
    .registers 12
    .param p1, "surface"    # Landroid/opengl/GLSurfaceView;
    .param p2, "id"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "scalingType"    # Lorg/webrtc/VideoRendererGui$ScalingType;
    .param p8, "mirror"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_b6

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvTextures:[I

    const/4 v0, -0x1

    iput v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->oesTexture:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->stMatrix:[F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->startTimeNs:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateTextureLock:Ljava/lang/Object;

    const-string v0, "VideoRendererGui"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "YuvImageRenderer.Create id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->surface:Landroid/opengl/GLSurfaceView;

    iput p2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->id:I

    iput-object p7, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->scalingType:Lorg/webrtc/VideoRendererGui$ScalingType;

    iput-boolean p8, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->mirror:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->frameToRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    add-int/lit8 v0, p3, -0x32

    int-to-float v0, v0

    const/high16 v1, 0x42480000

    div-float/2addr v0, v1

    iput v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texLeft:F

    rsub-int/lit8 v0, p4, 0x32

    int-to-float v0, v0

    const/high16 v1, 0x42480000

    div-float/2addr v0, v1

    iput v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texTop:F

    const/high16 v0, 0x3f800000

    add-int v1, p3, p5

    add-int/lit8 v1, v1, -0x32

    int-to-float v1, v1

    const/high16 v2, 0x42480000

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texRight:F

    const/high16 v0, -0x40800000

    rsub-int/lit8 v1, p4, 0x32

    sub-int/2addr v1, p6

    int-to-float v1, v1

    const/high16 v2, 0x42480000

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texBottom:F

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texLeft:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texTop:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texLeft:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texBottom:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texRight:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texTop:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texRight:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texBottom:F

    aput v2, v0, v1

    # invokes: Lorg/webrtc/VideoRendererGui;->directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;
    invoke-static {v0}, Lorg/webrtc/VideoRendererGui;->access$000([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->textureVertices:Ljava/nio/FloatBuffer;

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_c0

    # invokes: Lorg/webrtc/VideoRendererGui;->directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;
    invoke-static {v0}, Lorg/webrtc/VideoRendererGui;->access$000([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->textureCoords:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateTextureProperties:Z

    return-void

    nop

    :array_b6
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_c0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000
        0x3f800000
        0x0
        0x3f800000
        0x3f800000
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/opengl/GLSurfaceView;IIIIILorg/webrtc/VideoRendererGui$ScalingType;ZLorg/webrtc/VideoRendererGui$1;)V
    .registers 10
    .param p1, "x0"    # Landroid/opengl/GLSurfaceView;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lorg/webrtc/VideoRendererGui$ScalingType;
    .param p8, "x7"    # Z

    .prologue
    invoke-direct/range {p0 .. p8}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;-><init>(Landroid/opengl/GLSurfaceView;IIIIILorg/webrtc/VideoRendererGui$ScalingType;Z)V

    return-void
.end method

.method static synthetic access$800(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;II)V
    .registers 3
    .param p0, "x0"    # Lorg/webrtc/VideoRendererGui$YuvImageRenderer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->createTextures(II)V

    return-void
.end method

.method static synthetic access$900(Lorg/webrtc/VideoRendererGui$YuvImageRenderer;)V
    .registers 1
    .param p0, "x0"    # Lorg/webrtc/VideoRendererGui$YuvImageRenderer;

    .prologue
    invoke-direct {p0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->draw()V

    return-void
.end method

.method private checkAdjustTextureCoords()V
    .registers 16

    const/4 v1, 0x0

    const/4 v11, 0x1

    const/high16 v13, 0x40000000

    const/high16 v12, 0x3f800000

    iget-boolean v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateTextureProperties:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->scalingType:Lorg/webrtc/VideoRendererGui$ScalingType;

    sget-object v2, Lorg/webrtc/VideoRendererGui$ScalingType;->SCALE_FILL:Lorg/webrtc/VideoRendererGui$ScalingType;

    if-ne v0, v2, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v7, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateTextureLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_14
    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texRight:F

    iget v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texLeft:F

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texTop:F

    iget v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texBottom:F

    sub-float v5, v4, v3

    iget v6, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->screenWidth:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v13

    sub-float v6, v2, v0

    iget v8, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->screenHeight:I

    int-to-float v8, v8

    mul-float/2addr v6, v8

    div-float/2addr v6, v13

    const-string v8, "VideoRendererGui"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ID: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Display: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " x "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Video: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " x "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v8, v5, v12

    if-lez v8, :cond_158

    cmpl-float v8, v6, v12

    if-lez v8, :cond_158

    iget v8, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoWidth:I

    if-le v8, v11, :cond_158

    iget v8, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoHeight:I

    if-le v8, v11, :cond_158

    div-float v8, v5, v6

    iget v9, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoWidth:I

    int-to-float v9, v9

    iget v10, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget-object v10, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->scalingType:Lorg/webrtc/VideoRendererGui$ScalingType;

    sget-object v11, Lorg/webrtc/VideoRendererGui$ScalingType;->SCALE_ASPECT_FIT:Lorg/webrtc/VideoRendererGui$ScalingType;

    if-ne v10, v11, :cond_186

    cmpl-float v10, v8, v9

    if-lez v10, :cond_161

    mul-float/2addr v6, v9

    sub-float/2addr v5, v6

    # getter for: Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;
    invoke-static {}, Lorg/webrtc/VideoRendererGui;->access$200()Lorg/webrtc/VideoRendererGui;

    move-result-object v6

    # getter for: Lorg/webrtc/VideoRendererGui;->screenWidth:I
    invoke-static {v6}, Lorg/webrtc/VideoRendererGui;->access$300(Lorg/webrtc/VideoRendererGui;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v3, v5

    move v5, v3

    move v6, v4

    move v3, v0

    move v4, v2

    :goto_a1
    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->scalingType:Lorg/webrtc/VideoRendererGui$ScalingType;

    sget-object v2, Lorg/webrtc/VideoRendererGui$ScalingType;->SCALE_ASPECT_FILL:Lorg/webrtc/VideoRendererGui$ScalingType;

    if-ne v0, v2, :cond_182

    cmpl-float v0, v8, v9

    if-lez v0, :cond_176

    div-float v0, v9, v8

    sub-float v0, v12, v0

    div-float/2addr v0, v13

    move v2, v0

    move v0, v1

    :goto_b2
    const-string v1, "VideoRendererGui"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  Texture vertices: ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") - ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v8, 0x0

    aput v5, v1, v8

    const/4 v8, 0x1

    aput v4, v1, v8

    const/4 v8, 0x2

    aput v5, v1, v8

    const/4 v5, 0x3

    aput v3, v1, v5

    const/4 v5, 0x4

    aput v6, v1, v5

    const/4 v5, 0x5

    aput v4, v1, v5

    const/4 v4, 0x6

    aput v6, v1, v4

    const/4 v4, 0x7

    aput v3, v1, v4

    # invokes: Lorg/webrtc/VideoRendererGui;->directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;
    invoke-static {v1}, Lorg/webrtc/VideoRendererGui;->access$000([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->textureVertices:Ljava/nio/FloatBuffer;

    const-string v1, "VideoRendererGui"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Texture UV offsets: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-float v1, v12, v0

    iget-boolean v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->mirror:Z

    if-eqz v3, :cond_17e

    sub-float v1, v12, v0

    :goto_132
    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v4, 0x2

    aput v1, v3, v4

    const/4 v1, 0x3

    sub-float v4, v12, v2

    aput v4, v3, v1

    const/4 v1, 0x4

    aput v0, v3, v1

    const/4 v1, 0x5

    aput v2, v3, v1

    const/4 v1, 0x6

    aput v0, v3, v1

    const/4 v0, 0x7

    sub-float v1, v12, v2

    aput v1, v3, v0

    # invokes: Lorg/webrtc/VideoRendererGui;->directNativeFloatBuffer([F)Ljava/nio/FloatBuffer;
    invoke-static {v3}, Lorg/webrtc/VideoRendererGui;->access$000([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->textureCoords:Ljava/nio/FloatBuffer;

    :cond_158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateTextureProperties:Z

    monitor-exit v7
    :try_end_15c
    .catchall {:try_start_14 .. :try_end_15c} :catchall_15e

    goto/16 :goto_10

    :catchall_15e
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_161
    div-float/2addr v5, v9

    sub-float v5, v6, v5

    :try_start_164
    # getter for: Lorg/webrtc/VideoRendererGui;->instance:Lorg/webrtc/VideoRendererGui;
    invoke-static {}, Lorg/webrtc/VideoRendererGui;->access$200()Lorg/webrtc/VideoRendererGui;

    move-result-object v6

    # getter for: Lorg/webrtc/VideoRendererGui;->screenHeight:I
    invoke-static {v6}, Lorg/webrtc/VideoRendererGui;->access$400(Lorg/webrtc/VideoRendererGui;)I
    :try_end_16b
    .catchall {:try_start_164 .. :try_end_16b} :catchall_15e

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v2, v5

    add-float/2addr v0, v5

    move v5, v3

    move v6, v4

    move v3, v0

    move v4, v2

    goto/16 :goto_a1

    :cond_176
    div-float v0, v8, v9

    sub-float v0, v12, v0

    div-float/2addr v0, v13

    move v2, v1

    goto/16 :goto_b2

    :cond_17e
    move v14, v1

    move v1, v0

    move v0, v14

    goto :goto_132

    :cond_182
    move v2, v1

    move v0, v1

    goto/16 :goto_b2

    :cond_186
    move v5, v3

    move v6, v4

    move v3, v0

    move v4, v2

    goto/16 :goto_a1
.end method

.method private createTextures(II)V
    .registers 16
    .param p1, "yuvProgram"    # I
    .param p2, "oesProgram"    # I

    .prologue
    const/4 v12, 0x3

    const v11, 0x47012f00

    const v10, 0x46180400

    const/4 v1, 0x0

    const/16 v0, 0xde1

    const-string v2, "VideoRendererGui"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  YuvImageRenderer.createTextures "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on GL thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvProgram:I

    iput p2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->oesProgram:I

    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvTextures:[I

    invoke-static {v12, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    move v9, v1

    :goto_3c
    if-ge v9, v12, :cond_73

    const v2, 0x84c0

    add-int/2addr v2, v9

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvTextures:[I

    aget v2, v2, v9

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x1909

    const/16 v3, 0x80

    const/16 v4, 0x80

    const/16 v6, 0x1909

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v2, 0x2801

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    invoke-static {v0, v2, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    invoke-static {v0, v2, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_3c

    :cond_73
    # invokes: Lorg/webrtc/VideoRendererGui;->checkNoGLES2Error()V
    invoke-static {}, Lorg/webrtc/VideoRendererGui;->access$100()V

    return-void
.end method

.method private draw()V
    .registers 17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->seenFrame:Z

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->checkAdjustTextureCoords()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->frameToRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v13

    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->frameToRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/webrtc/VideoRenderer$I420Frame;

    move-object v11, v0

    if-eqz v11, :cond_2f

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->startTimeNs:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2f

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->startTimeNs:J

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rendererType:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    sget-object v3, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;->RENDERER_YUV:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    if-ne v2, v3, :cond_7e

    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 v2, 0x0

    move v12, v2

    :goto_40
    const/4 v2, 0x3

    if-ge v12, v2, :cond_b1

    const v2, 0x84c0

    add-int/2addr v2, v12

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvTextures:[I

    aget v3, v3, v12

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    if-eqz v11, :cond_70

    if-nez v12, :cond_74

    iget v5, v11, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    :goto_5b
    if-nez v12, :cond_79

    iget v6, v11, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    :goto_5f
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1909

    const/4 v7, 0x0

    const/16 v8, 0x1909

    const/16 v9, 0x1401

    iget-object v10, v11, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v10, v10, v12

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_70
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_40

    :cond_74
    iget v2, v11, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    div-int/lit8 v5, v2, 0x2

    goto :goto_5b

    :cond_79
    iget v2, v11, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    div-int/lit8 v6, v2, 0x2

    goto :goto_5f

    :cond_7e
    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->oesProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    if-eqz v11, :cond_a1

    iget v2, v11, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->oesTexture:I

    iget-object v2, v11, Lorg/webrtc/VideoRenderer$I420Frame;->textureObject:Ljava/lang/Object;

    instance-of v2, v2, Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_a1

    iget-object v2, v11, Lorg/webrtc/VideoRenderer$I420Frame;->textureObject:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->stMatrix:[F

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    :cond_a1
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v2, 0x8d65

    move-object/from16 v0, p0

    iget v3, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->oesTexture:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_b1
    if-eqz v11, :cond_ba

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->frameToRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    :cond_ba
    monitor-exit v13
    :try_end_bb
    .catchall {:try_start_13 .. :try_end_bb} :catchall_102

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rendererType:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    sget-object v3, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;->RENDERER_YUV:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    if-ne v2, v3, :cond_ed

    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvProgram:I

    const-string v3, "y_tex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvProgram:I

    const-string v3, "u_tex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvProgram:I

    const-string v3, "v_tex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_ed
    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvProgram:I

    const-string v3, "in_pos"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_105

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not get attrib location for in_pos"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_102
    move-exception v2

    monitor-exit v13

    throw v2

    :cond_105
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->textureVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget v3, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvProgram:I

    const-string v4, "in_tc"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_129

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not get attrib location for in_tc"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_129
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->textureCoords:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    # invokes: Lorg/webrtc/VideoRendererGui;->checkNoGLES2Error()V
    invoke-static {}, Lorg/webrtc/VideoRendererGui;->access$100()V

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesRendered:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesRendered:I

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->drawTimeNs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v14

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->drawTimeNs:J

    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesRendered:I

    rem-int/lit16 v2, v2, 0x96

    if-nez v2, :cond_6

    invoke-direct/range {p0 .. p0}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->logStatistics()V

    goto/16 :goto_6
.end method

.method private logStatistics()V
    .registers 9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->startTimeNs:J

    sub-long/2addr v0, v2

    const-string v2, "VideoRendererGui"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rendererType:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Frames received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesReceived:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Dropped: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesDropped:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Rendered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesRendered:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesReceived:I

    if-lez v2, :cond_be

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesRendered:I

    if-lez v2, :cond_be

    const-string v2, "VideoRendererGui"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Duration: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-double v4, v0

    const-wide v6, 0x412e848000000000L

    div-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms. FPS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesRendered:I

    int-to-float v4, v4

    float-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L

    mul-double/2addr v4, v6

    long-to-double v0, v0

    div-double v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VideoRendererGui"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Draw time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->drawTimeNs:J

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesRendered:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " us. Copy time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->copyTimeNs:J

    iget v4, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesReceived:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " us"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    return-void
.end method


# virtual methods
.method public declared-synchronized renderFrame(Lorg/webrtc/VideoRenderer$I420Frame;)V
    .registers 8
    .param p1, "frame"    # Lorg/webrtc/VideoRenderer$I420Frame;

    .prologue
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesReceived:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesReceived:I

    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvFrameToRender:Lorg/webrtc/VideoRenderer$I420Frame;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->textureFrameToRender:Lorg/webrtc/VideoRenderer$I420Frame;

    if-nez v2, :cond_1b

    :cond_13
    iget v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesDropped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesDropped:I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_76

    :goto_19
    monitor-exit p0

    return-void

    :cond_1b
    :try_start_1b
    iget-boolean v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    if-eqz v2, :cond_ac

    iget-object v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget v3, p1, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    if-ne v2, v3, :cond_3e

    iget-object v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v3, p1, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    div-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_3e

    iget-object v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget v3, p1, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    div-int/lit8 v3, v3, 0x2

    if-eq v2, v3, :cond_79

    :cond_3e
    const-string v0, "VideoRendererGui"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect strides "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_1b .. :try_end_75} :catchall_76

    goto :goto_19

    :catchall_76
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_79
    :try_start_79
    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    iget-object v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvFrameToRender:Lorg/webrtc/VideoRenderer$I420Frame;

    iget v3, v3, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    if-ne v2, v3, :cond_89

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    iget-object v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvFrameToRender:Lorg/webrtc/VideoRenderer$I420Frame;

    iget v3, v3, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    if-eq v2, v3, :cond_ac

    :cond_89
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong frame size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ac
    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->frameToRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-lez v2, :cond_bc

    iget v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesDropped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->framesDropped:I

    goto/16 :goto_19

    :cond_bc
    iget-boolean v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    if-eqz v2, :cond_e5

    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvFrameToRender:Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-virtual {v2, p1}, Lorg/webrtc/VideoRenderer$I420Frame;->copyFrom(Lorg/webrtc/VideoRenderer$I420Frame;)Lorg/webrtc/VideoRenderer$I420Frame;

    sget-object v2, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;->RENDERER_YUV:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    iput-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rendererType:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->frameToRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvFrameToRender:Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :goto_d0
    iget-wide v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->copyTimeNs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->copyTimeNs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->seenFrame:Z

    iget-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->surface:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto/16 :goto_19

    :cond_e5
    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->textureFrameToRender:Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-virtual {v2, p1}, Lorg/webrtc/VideoRenderer$I420Frame;->copyFrom(Lorg/webrtc/VideoRenderer$I420Frame;)Lorg/webrtc/VideoRenderer$I420Frame;

    sget-object v2, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;->RENDERER_TEXTURE:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    iput-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->rendererType:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->frameToRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v3, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->textureFrameToRender:Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_f5
    .catchall {:try_start_79 .. :try_end_f5} :catchall_76

    goto :goto_d0
.end method

.method public setPosition(IIIILorg/webrtc/VideoRendererGui$ScalingType;)V
    .registers 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "scalingType"    # Lorg/webrtc/VideoRendererGui$ScalingType;

    .prologue
    const/high16 v3, 0x42480000

    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateTextureLock:Ljava/lang/Object;

    monitor-enter v1

    add-int/lit8 v0, p1, -0x32

    int-to-float v0, v0

    div-float/2addr v0, v3

    :try_start_9
    iput v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texLeft:F

    rsub-int/lit8 v0, p2, 0x32

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texTop:F

    const/high16 v0, 0x3f800000

    add-int v2, p1, p3

    add-int/lit8 v2, v2, -0x32

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texRight:F

    const/high16 v0, -0x40800000

    rsub-int/lit8 v2, p2, 0x32

    sub-int/2addr v2, p4

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->texBottom:F

    iput-object p5, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->scalingType:Lorg/webrtc/VideoRendererGui$ScalingType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateTextureProperties:Z

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setScreenSize(II)V
    .registers 5
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I

    .prologue
    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateTextureLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->screenWidth:I

    iput p2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->screenHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateTextureProperties:Z

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setSize(II)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x1

    const-string v0, "VideoRendererGui"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". YuvImageRenderer.setSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoWidth:I

    iput p2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->videoHeight:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    div-int/lit8 v1, p1, 0x2

    aput v1, v0, v3

    const/4 v1, 0x2

    div-int/lit8 v2, p1, 0x2

    aput v2, v0, v1

    iget-object v1, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->frameToRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1

    :try_start_41
    iget-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->frameToRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    new-instance v2, Lorg/webrtc/VideoRenderer$I420Frame;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v0, v3}, Lorg/webrtc/VideoRenderer$I420Frame;-><init>(II[I[Ljava/nio/ByteBuffer;)V

    iput-object v2, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->yuvFrameToRender:Lorg/webrtc/VideoRenderer$I420Frame;

    new-instance v0, Lorg/webrtc/VideoRenderer$I420Frame;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p1, p2, v2, v3}, Lorg/webrtc/VideoRenderer$I420Frame;-><init>(IILjava/lang/Object;I)V

    iput-object v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->textureFrameToRender:Lorg/webrtc/VideoRenderer$I420Frame;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer;->updateTextureProperties:Z

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_41 .. :try_end_5b} :catchall_5c

    return-void

    :catchall_5c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
