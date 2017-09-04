.class public final Lcx;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/webrtc/VideoRenderer$Callbacks;


# instance fields
.field private a:F

.field private a:I

.field private a:J

.field private a:Lcom/arrownock/live/VideoView;

.field private synthetic a:Lct;

.field private a:Lcv;

.field private a:Lcw;

.field private final a:Ljava/lang/Object;

.field private a:Ljava/nio/FloatBuffer;

.field private a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lorg/webrtc/VideoRenderer$I420Frame;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lorg/webrtc/VideoRenderer$I420Frame;

.field private a:Z

.field private a:[F

.field private a:[I

.field private b:F

.field private b:I

.field private b:J

.field private b:Ljava/nio/FloatBuffer;

.field private b:Lorg/webrtc/VideoRenderer$I420Frame;

.field private b:Z

.field private c:F

.field private c:I

.field private c:J

.field private c:Z

.field private d:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>(Lct;Lcom/arrownock/live/VideoView;ILcw;Z)V
    .registers 14

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000

    const/high16 v3, -0x40800000

    iput-object p1, p0, Lcx;->a:Lct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v7, [I

    fill-array-data v0, :array_9a

    iput-object v0, p0, Lcx;->a:[I

    const/4 v0, -0x1

    iput v0, p0, Lcx;->d:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcx;->a:[F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcx;->a:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcx;->a:Ljava/lang/Object;

    const-string v0, "MediaStreamsRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "YuvImageRenderer.Create id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcx;->a:Lcom/arrownock/live/VideoView;

    iput p3, p0, Lcx;->a:I

    iput-object p4, p0, Lcx;->a:Lcw;

    iput-boolean p5, p0, Lcx;->a:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    iput v3, p0, Lcx;->a:F

    iput v4, p0, Lcx;->c:F

    invoke-static {v4, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcx;->b:F

    invoke-static {v3, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcx;->d:F

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcx;->a:F

    aput v1, v0, v5

    iget v1, p0, Lcx;->c:F

    aput v1, v0, v6

    const/4 v1, 0x2

    iget v2, p0, Lcx;->a:F

    aput v2, v0, v1

    iget v1, p0, Lcx;->d:F

    aput v1, v0, v7

    const/4 v1, 0x4

    iget v2, p0, Lcx;->b:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcx;->c:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcx;->b:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcx;->d:F

    aput v2, v0, v1

    invoke-static {v0}, Lct;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcx;->a:Ljava/nio/FloatBuffer;

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_a4

    invoke-static {v0}, Lct;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcx;->b:Ljava/nio/FloatBuffer;

    iput-boolean v5, p0, Lcx;->c:Z

    return-void

    nop

    :array_9a
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_a4
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

.method synthetic constructor <init>(Lct;Lcom/arrownock/live/VideoView;ILcw;ZB)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcx;-><init>(Lct;Lcom/arrownock/live/VideoView;ILcw;Z)V

    return-void
.end method

.method static synthetic a(Lcx;)V
    .registers 18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcx;->b:Z

    if-eqz v2, :cond_3f1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcx;->c:Z

    if-eqz v2, :cond_196

    move-object/from16 v0, p0

    iget-object v9, v0, Lcx;->a:Ljava/lang/Object;

    monitor-enter v9

    :try_start_11
    move-object/from16 v0, p0

    iget v4, v0, Lcx;->b:F

    move-object/from16 v0, p0

    iget v7, v0, Lcx;->a:F

    move-object/from16 v0, p0

    iget v6, v0, Lcx;->c:F

    move-object/from16 v0, p0

    iget v5, v0, Lcx;->d:F

    const/4 v3, 0x0

    const/4 v2, 0x0

    sub-float v8, v4, v7

    move-object/from16 v0, p0

    iget v10, v0, Lcx;->h:I

    int-to-float v10, v10

    mul-float/2addr v8, v10

    const/high16 v10, 0x40000000

    div-float/2addr v8, v10

    sub-float v10, v6, v5

    move-object/from16 v0, p0

    iget v11, v0, Lcx;->i:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    const-string v11, "MediaStreamsRenderer"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ID: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcx;->a:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Display: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " x "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Video: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcx;->j:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " x "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcx;->k:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v11, 0x3f800000

    cmpl-float v11, v8, v11

    if-lez v11, :cond_190

    const/high16 v11, 0x3f800000

    cmpl-float v11, v10, v11

    if-lez v11, :cond_190

    move-object/from16 v0, p0

    iget v11, v0, Lcx;->j:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_190

    move-object/from16 v0, p0

    iget v11, v0, Lcx;->k:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_190

    div-float v11, v8, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcx;->j:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcx;->k:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcx;->a:Lcw;

    sget-object v14, Lcw;->a:Lcw;

    if-ne v13, v14, :cond_3fd

    cmpl-float v13, v11, v12

    if-lez v13, :cond_200

    mul-float/2addr v10, v12

    sub-float/2addr v8, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcx;->h:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    sub-float/2addr v4, v8

    add-float/2addr v7, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    :goto_c2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcx;->a:Lcw;

    sget-object v10, Lcw;->b:Lcw;

    if-ne v4, v10, :cond_3f9

    cmpl-float v4, v11, v12

    if-lez v4, :cond_211

    const/high16 v2, 0x3f800000

    div-float v4, v12, v11

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000

    div-float/2addr v2, v4

    move v4, v2

    move v2, v3

    :goto_d8
    const-string v3, "MediaStreamsRenderer"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  Texture vertices: ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") - ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v10, 0x0

    aput v8, v3, v10

    const/4 v10, 0x1

    aput v7, v3, v10

    const/4 v10, 0x2

    aput v8, v3, v10

    const/4 v8, 0x3

    aput v6, v3, v8

    const/4 v8, 0x4

    aput v5, v3, v8

    const/4 v8, 0x5

    aput v7, v3, v8

    const/4 v7, 0x6

    aput v5, v3, v7

    const/4 v5, 0x7

    aput v6, v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcx;->a:Lct;

    invoke-static {v3}, Lct;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcx;->a:Ljava/nio/FloatBuffer;

    const-string v3, "MediaStreamsRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  Texture UV offsets: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, 0x3f800000

    sub-float/2addr v3, v2

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcx;->a:Z

    if-eqz v5, :cond_3f2

    const/high16 v3, 0x3f800000

    sub-float/2addr v3, v2

    :goto_162
    const/16 v5, 0x8

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    const/4 v6, 0x2

    aput v3, v5, v6

    const/4 v3, 0x3

    const/high16 v6, 0x3f800000

    sub-float/2addr v6, v4

    aput v6, v5, v3

    const/4 v3, 0x4

    aput v2, v5, v3

    const/4 v3, 0x5

    aput v4, v5, v3

    const/4 v3, 0x6

    aput v2, v5, v3

    const/4 v2, 0x7

    const/high16 v3, 0x3f800000

    sub-float/2addr v3, v4

    aput v3, v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcx;->a:Lct;

    invoke-static {v5}, Lct;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcx;->b:Ljava/nio/FloatBuffer;

    :cond_190
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcx;->c:Z

    monitor-exit v9
    :try_end_196
    .catchall {:try_start_11 .. :try_end_196} :catchall_21d

    :cond_196
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v13

    :try_start_19f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/webrtc/VideoRenderer$I420Frame;

    move-object v11, v0

    if-eqz v11, :cond_1bb

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcx;->a:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1bb

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcx;->a:J

    :cond_1bb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcx;->a:Lcv;

    sget-object v3, Lcv;->a:Lcv;

    if-ne v2, v3, :cond_22a

    move-object/from16 v0, p0

    iget v2, v0, Lcx;->b:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 v2, 0x0

    move v12, v2

    :goto_1cc
    const/4 v2, 0x3

    if-ge v12, v2, :cond_25d

    const v2, 0x84c0

    add-int/2addr v2, v12

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcx;->a:[I

    aget v3, v3, v12

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    if-eqz v11, :cond_1fc

    if-nez v12, :cond_220

    iget v5, v11, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    :goto_1e7
    if-nez v12, :cond_225

    iget v6, v11, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    :goto_1eb
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1909

    const/4 v7, 0x0

    const/16 v8, 0x1909

    const/16 v9, 0x1401

    iget-object v10, v11, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v10, v10, v12

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    :try_end_1fc
    .catchall {:try_start_19f .. :try_end_1fc} :catchall_2ae

    :cond_1fc
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_1cc

    :cond_200
    div-float/2addr v8, v12

    sub-float v8, v10, v8

    :try_start_203
    move-object/from16 v0, p0

    iget v10, v0, Lcx;->i:I
    :try_end_207
    .catchall {:try_start_203 .. :try_end_207} :catchall_21d

    int-to-float v10, v10

    div-float/2addr v8, v10

    sub-float/2addr v6, v8

    add-float/2addr v5, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    goto/16 :goto_c2

    :cond_211
    const/high16 v3, 0x3f800000

    div-float v4, v11, v12

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    move v4, v2

    move v2, v3

    goto/16 :goto_d8

    :catchall_21d
    move-exception v2

    monitor-exit v9

    throw v2

    :cond_220
    :try_start_220
    iget v2, v11, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    div-int/lit8 v5, v2, 0x2

    goto :goto_1e7

    :cond_225
    iget v2, v11, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    div-int/lit8 v6, v2, 0x2

    goto :goto_1eb

    :cond_22a
    move-object/from16 v0, p0

    iget v2, v0, Lcx;->c:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    if-eqz v11, :cond_24d

    iget v2, v11, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    move-object/from16 v0, p0

    iput v2, v0, Lcx;->d:I

    iget-object v2, v11, Lorg/webrtc/VideoRenderer$I420Frame;->textureObject:Ljava/lang/Object;

    instance-of v2, v2, Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_24d

    iget-object v2, v11, Lorg/webrtc/VideoRenderer$I420Frame;->textureObject:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcx;->a:[F

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    :cond_24d
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v2, 0x8d65

    move-object/from16 v0, p0

    iget v3, v0, Lcx;->d:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_25d
    if-eqz v11, :cond_266

    move-object/from16 v0, p0

    iget-object v2, v0, Lcx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    :cond_266
    monitor-exit v13
    :try_end_267
    .catchall {:try_start_220 .. :try_end_267} :catchall_2ae

    move-object/from16 v0, p0

    iget-object v2, v0, Lcx;->a:Lcv;

    sget-object v3, Lcv;->a:Lcv;

    if-ne v2, v3, :cond_299

    move-object/from16 v0, p0

    iget v2, v0, Lcx;->b:I

    const-string v3, "y_tex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    move-object/from16 v0, p0

    iget v2, v0, Lcx;->b:I

    const-string v3, "u_tex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    move-object/from16 v0, p0

    iget v2, v0, Lcx;->b:I

    const-string v3, "v_tex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_299
    move-object/from16 v0, p0

    iget v2, v0, Lcx;->b:I

    const-string v3, "in_pos"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2b1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not get attrib location for in_pos"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_2ae
    move-exception v2

    monitor-exit v13

    throw v2

    :cond_2b1
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcx;->a:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcx;->b:I

    const-string v4, "in_tc"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2d5

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not get attrib location for in_tc"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2d5
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcx;->b:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcx;->a:Lct;

    invoke-static {}, Lct;->a()V

    if-eqz v11, :cond_3f1

    move-object/from16 v0, p0

    iget v2, v0, Lcx;->g:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcx;->g:I

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcx;->b:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v14

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcx;->b:J

    move-object/from16 v0, p0

    iget v2, v0, Lcx;->g:I

    rem-int/lit16 v2, v2, 0x96

    if-nez v2, :cond_3f1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcx;->a:J

    sub-long/2addr v2, v4

    const-string v4, "MediaStreamsRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v6, v0, Lcx;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcx;->a:Lcv;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Frames received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcx;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Dropped: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcx;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Rendered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcx;->g:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v4, v0, Lcx;->e:I

    if-lez v4, :cond_3f1

    move-object/from16 v0, p0

    iget v4, v0, Lcx;->g:I

    if-lez v4, :cond_3f1

    const-string v4, "MediaStreamsRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Duration: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-double v6, v2

    const-wide v8, 0x412e848000000000L

    div-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms. FPS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcx;->g:I

    int-to-float v6, v6

    float-to-double v6, v6

    const-wide v8, 0x41cdcd6500000000L

    mul-double/2addr v6, v8

    long-to-double v2, v2

    div-double v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaStreamsRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Draw time: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcx;->b:J

    move-object/from16 v0, p0

    iget v6, v0, Lcx;->g:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " us. Copy time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcx;->c:J

    move-object/from16 v0, p0

    iget v6, v0, Lcx;->e:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " us"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f1
    return-void

    :cond_3f2
    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto/16 :goto_162

    :cond_3f9
    move v4, v2

    move v2, v3

    goto/16 :goto_d8

    :cond_3fd
    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    goto/16 :goto_c2
.end method

.method static synthetic a(Lcx;II)V
    .registers 16

    const/4 v12, 0x3

    const v11, 0x47012f00

    const v10, 0x46180400

    const/4 v1, 0x0

    const/16 v0, 0xde1

    const-string v2, "MediaStreamsRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  YuvImageRenderer.createTextures "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcx;->a:I

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

    iput p1, p0, Lcx;->b:I

    iput p2, p0, Lcx;->c:I

    iget-object v2, p0, Lcx;->a:[I

    invoke-static {v12, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    move v9, v1

    :goto_3c
    if-ge v9, v12, :cond_73

    const v2, 0x84c0

    add-int/2addr v2, v9

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, p0, Lcx;->a:[I

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
    iget-object v0, p0, Lcx;->a:Lct;

    invoke-static {}, Lct;->a()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 5

    iget-object v1, p0, Lcx;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcx;->h:I

    iput p2, p0, Lcx;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcx;->c:Z

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized renderFrame(Lorg/webrtc/VideoRenderer$I420Frame;)V
    .registers 8
    .param p1, "frame"    # Lorg/webrtc/VideoRenderer$I420Frame;

    .prologue
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget v2, p0, Lcx;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcx;->e:I

    iget-object v2, p0, Lcx;->a:Lorg/webrtc/VideoRenderer$I420Frame;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcx;->b:Lorg/webrtc/VideoRenderer$I420Frame;

    if-nez v2, :cond_1b

    :cond_13
    iget v0, p0, Lcx;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcx;->f:I
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
    const-string v0, "MediaStreamsRenderer"

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

    iget-object v3, p0, Lcx;->a:Lorg/webrtc/VideoRenderer$I420Frame;

    iget v3, v3, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    if-ne v2, v3, :cond_89

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    iget-object v3, p0, Lcx;->a:Lorg/webrtc/VideoRenderer$I420Frame;

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
    iget-object v2, p0, Lcx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-lez v2, :cond_bc

    iget v0, p0, Lcx;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcx;->f:I

    goto/16 :goto_19

    :cond_bc
    iget-boolean v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    if-eqz v2, :cond_e5

    iget-object v2, p0, Lcx;->a:Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-virtual {v2, p1}, Lorg/webrtc/VideoRenderer$I420Frame;->copyFrom(Lorg/webrtc/VideoRenderer$I420Frame;)Lorg/webrtc/VideoRenderer$I420Frame;

    sget-object v2, Lcv;->a:Lcv;

    iput-object v2, p0, Lcx;->a:Lcv;

    iget-object v2, p0, Lcx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v3, p0, Lcx;->a:Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :goto_d0
    iget-wide v2, p0, Lcx;->c:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcx;->c:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcx;->b:Z

    iget-object v0, p0, Lcx;->a:Lcom/arrownock/live/VideoView;

    invoke-virtual {v0}, Lcom/arrownock/live/VideoView;->requestRender()V

    goto/16 :goto_19

    :cond_e5
    iget-object v2, p0, Lcx;->b:Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-virtual {v2, p1}, Lorg/webrtc/VideoRenderer$I420Frame;->copyFrom(Lorg/webrtc/VideoRenderer$I420Frame;)Lorg/webrtc/VideoRenderer$I420Frame;

    sget-object v2, Lcv;->b:Lcv;

    iput-object v2, p0, Lcx;->a:Lcv;

    iget-object v2, p0, Lcx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v3, p0, Lcx;->b:Lorg/webrtc/VideoRenderer$I420Frame;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_f5
    .catchall {:try_start_79 .. :try_end_f5} :catchall_76

    goto :goto_d0
.end method

.method public final setSize(II)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x1

    const-string v0, "MediaStreamsRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcx;->a:I

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

    iget-object v0, p0, Lcx;->a:Lcom/arrownock/live/VideoView;

    invoke-virtual {v0, p1, p2}, Lcom/arrownock/live/VideoView;->a(II)V

    iput p1, p0, Lcx;->j:I

    iput p2, p0, Lcx;->k:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    div-int/lit8 v1, p1, 0x2

    aput v1, v0, v3

    const/4 v1, 0x2

    div-int/lit8 v2, p1, 0x2

    aput v2, v0, v1

    iget-object v1, p0, Lcx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1

    :try_start_46
    iget-object v2, p0, Lcx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    new-instance v2, Lorg/webrtc/VideoRenderer$I420Frame;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v0, v3}, Lorg/webrtc/VideoRenderer$I420Frame;-><init>(II[I[Ljava/nio/ByteBuffer;)V

    iput-object v2, p0, Lcx;->a:Lorg/webrtc/VideoRenderer$I420Frame;

    new-instance v0, Lorg/webrtc/VideoRenderer$I420Frame;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p1, p2, v2, v3}, Lorg/webrtc/VideoRenderer$I420Frame;-><init>(IILjava/lang/Object;I)V

    iput-object v0, p0, Lcx;->b:Lorg/webrtc/VideoRenderer$I420Frame;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcx;->c:Z

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_46 .. :try_end_60} :catchall_61

    return-void

    :catchall_61
    move-exception v0

    monitor-exit v1

    throw v0
.end method
