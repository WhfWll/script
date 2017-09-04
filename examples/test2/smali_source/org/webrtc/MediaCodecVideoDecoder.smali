.class Lorg/webrtc/MediaCodecVideoDecoder;
.super Ljava/lang/Object;


# static fields
.field private static final COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m:I = 0x7fa30c04

.field private static final CURRENT_SDK_VERSION:I

.field private static final DEQUEUE_INPUT_TIMEOUT:I = 0x7a120

.field private static final EGL14_SDK_VERSION:I = 0x11

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoDecoder"

.field private static final VP8_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field private static final supportedColorList:[I

.field private static final supportedHwCodecPrefixes:[Ljava/lang/String;

.field private static final supportedSwCodecPrefixes:[Ljava/lang/String;


# instance fields
.field private colorFormat:I

.field private eglContext:Landroid/opengl/EGLContext;

.field private eglDisplay:Landroid/opengl/EGLDisplay;

.field private eglSurface:Landroid/opengl/EGLSurface;

.field private height:I

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private mediaCodec:Landroid/media/MediaCodec;

.field private mediaCodecThread:Ljava/lang/Thread;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private sliceHeight:I

.field private stMatrix:[F

.field private stride:I

.field private surface:Landroid/view/Surface;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureID:I

.field private useSurface:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "OMX.qcom."

    aput-object v1, v0, v2

    const-string v1, "OMX.Nvidia."

    aput-object v1, v0, v3

    sput-object v0, Lorg/webrtc/MediaCodecVideoDecoder;->supportedHwCodecPrefixes:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "OMX.google."

    aput-object v1, v0, v2

    sput-object v0, Lorg/webrtc/MediaCodecVideoDecoder;->supportedSwCodecPrefixes:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lorg/webrtc/MediaCodecVideoDecoder;->supportedColorList:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lorg/webrtc/MediaCodecVideoDecoder;->CURRENT_SDK_VERSION:I

    return-void

    :array_24
    .array-data 4
        0x13
        0x15
        0x7fa30c00
        0x7fa30c04
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->textureID:I

    iput-object v1, p0, Lorg/webrtc/MediaCodecVideoDecoder;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v1, p0, Lorg/webrtc/MediaCodecVideoDecoder;->surface:Landroid/view/Surface;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->stMatrix:[F

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglContext:Landroid/opengl/EGLContext;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglSurface:Landroid/opengl/EGLSurface;

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_49

    const-string v1, "MediaCodecVideoDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": EGL Error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_49
    return-void
.end method

.method private checkGlError(Ljava/lang/String;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_47

    const-string v1, "MediaCodecVideoDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": GL Error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": GL Error: 0x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_47
    return-void
.end method

.method private checkOnMediaCodecThread()V
    .registers 5

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_37

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaCodecVideoDecoder previously operated on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but is now called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    return-void
.end method

.method private dequeueInputBuffer()I
    .registers 5

    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoDecoder;->checkOnMediaCodecThread()V

    :try_start_3
    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/32 v2, 0x7a120

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_b} :catch_d

    move-result v0

    :goto_c
    return v0

    :catch_d
    move-exception v0

    const-string v1, "MediaCodecVideoDecoder"

    const-string v2, "dequeueIntputBuffer failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x2

    goto :goto_c
.end method

.method private dequeueOutputBuffer(I)Lorg/webrtc/MediaCodecVideoDecoder$DecoderOutputBufferInfo;
    .registers 16
    .param p1, "dequeueTimeoutUs"    # I

    .prologue
    const-wide/16 v12, -0x1

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, -0x3

    const/4 v6, 0x0

    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoDecoder;->checkOnMediaCodecThread()V

    :try_start_9
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    int-to-long v2, p1

    invoke-virtual {v0, v4, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    :goto_15
    if-eq v1, v8, :cond_19

    if-ne v1, v9, :cond_12e

    :cond_19
    if-ne v1, v8, :cond_42

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    const-string v0, "MediaCodecVideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output buffers changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    :goto_3a
    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    int-to-long v2, p1

    invoke-virtual {v0, v4, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    goto :goto_15

    :cond_42
    if-ne v1, v9, :cond_3a

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v0, "MediaCodecVideoDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Format changed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "width"

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->width:I

    const-string v0, "height"

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->height:I

    iget-boolean v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->useSurface:Z

    if-nez v0, :cond_c4

    const-string v0, "color-format"

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const-string v0, "color-format"

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->colorFormat:I

    const-string v0, "MediaCodecVideoDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Color: 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/webrtc/MediaCodecVideoDecoder;->colorFormat:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lorg/webrtc/MediaCodecVideoDecoder;->supportedColorList:[I

    array-length v3, v2

    move v0, v6

    :goto_a4
    if-ge v0, v3, :cond_13e

    aget v5, v2, v0

    iget v7, p0, Lorg/webrtc/MediaCodecVideoDecoder;->colorFormat:I

    if-ne v7, v5, :cond_c1

    const/4 v0, 0x1

    :goto_ad
    if-nez v0, :cond_c4

    const-string v0, "MediaCodecVideoDecoder"

    const-string v1, "Non supported color format"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/webrtc/MediaCodecVideoDecoder$DecoderOutputBufferInfo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lorg/webrtc/MediaCodecVideoDecoder$DecoderOutputBufferInfo;-><init>(IIIJ)V

    :goto_c0
    return-object v0

    :cond_c1
    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    :cond_c4
    const-string v0, "stride"

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d4

    const-string v0, "stride"

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->stride:I

    :cond_d4
    const-string v0, "slice-height"

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    const-string v0, "slice-height"

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->sliceHeight:I

    :cond_e4
    const-string v0, "MediaCodecVideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Frame stride and slice height: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->stride:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->sliceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->width:I

    iget v1, p0, Lorg/webrtc/MediaCodecVideoDecoder;->stride:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->stride:I

    iget v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->height:I

    iget v1, p0, Lorg/webrtc/MediaCodecVideoDecoder;->sliceHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->sliceHeight:I
    :try_end_11a
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_11a} :catch_11c

    goto/16 :goto_3a

    :catch_11c
    move-exception v0

    const-string v1, "MediaCodecVideoDecoder"

    const-string v2, "dequeueOutputBuffer failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lorg/webrtc/MediaCodecVideoDecoder$DecoderOutputBufferInfo;

    move v1, v10

    move v2, v6

    move v3, v6

    move-wide v4, v12

    invoke-direct/range {v0 .. v5}, Lorg/webrtc/MediaCodecVideoDecoder$DecoderOutputBufferInfo;-><init>(IIIJ)V

    goto :goto_c0

    :cond_12e
    if-ltz v1, :cond_13c

    :try_start_130
    new-instance v0, Lorg/webrtc/MediaCodecVideoDecoder$DecoderOutputBufferInfo;

    iget v2, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct/range {v0 .. v5}, Lorg/webrtc/MediaCodecVideoDecoder$DecoderOutputBufferInfo;-><init>(IIIJ)V
    :try_end_13b
    .catch Ljava/lang/IllegalStateException; {:try_start_130 .. :try_end_13b} :catch_11c

    goto :goto_c0

    :cond_13c
    const/4 v0, 0x0

    goto :goto_c0

    :cond_13e
    move v0, v6

    goto/16 :goto_ad
.end method

.method private eglRelease()V
    .registers 3

    const-string v0, "MediaCodecVideoDecoder"

    const-string v1, "EGL release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    :cond_23
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglContext:Landroid/opengl/EGLContext;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglSurface:Landroid/opengl/EGLSurface;

    return-void
.end method

.method private eglSetup(Landroid/opengl/EGLContext;II)V
    .registers 15
    .param p1, "sharedContext"    # Landroid/opengl/EGLContext;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-string v0, "MediaCodecVideoDecoder"

    const-string v1, "EGL setup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_f

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    :cond_f
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-array v0, v9, [I

    iget-object v1, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v2, v0, v8}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_35

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_a4

    new-array v3, v8, [Landroid/opengl/EGLConfig;

    new-array v6, v8, [I

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_53

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to find RGB888 EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    new-array v0, v10, [I

    fill-array-data v0, :array_be

    iget-object v1, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    invoke-static {v1, v4, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglContext:Landroid/opengl/EGLContext;

    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lorg/webrtc/MediaCodecVideoDecoder;->checkEglError(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_73

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null EGL context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3057

    aput v1, v0, v2

    aput p2, v0, v8

    const/16 v1, 0x3056

    aput v1, v0, v9

    aput p3, v0, v10

    const/4 v1, 0x4

    const/16 v4, 0x3038

    aput v4, v0, v1

    iget-object v1, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v3, v3, v2

    invoke-static {v1, v3, v0, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglSurface:Landroid/opengl/EGLSurface;

    const-string v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lorg/webrtc/MediaCodecVideoDecoder;->checkEglError(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_a2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EGL surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a2
    return-void

    nop

    :array_a4
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    :array_be
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private static findVp8Decoder(Z)Lorg/webrtc/MediaCodecVideoDecoder$DecoderProperties;
    .registers 15
    .param p0, "useSwCodec"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_a

    move-object v0, v3

    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lorg/webrtc/MediaCodecVideoDecoder;->supportedHwCodecPrefixes:[Ljava/lang/String;

    if-eqz p0, :cond_10

    sget-object v0, Lorg/webrtc/MediaCodecVideoDecoder;->supportedSwCodecPrefixes:[Ljava/lang/String;

    :cond_10
    move v1, v2

    :goto_11
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v4

    if-ge v1, v4, :cond_d1

    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_cd

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v4, v2

    :goto_27
    if-ge v4, v7, :cond_d6

    aget-object v8, v6, v4

    const-string v9, "video/x-vnd.on2.vp8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_86

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    :goto_38
    if-eqz v6, :cond_cd

    const-string v4, "MediaCodecVideoDecoder"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found candidate decoder "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v7, v0

    move v4, v2

    :goto_50
    if-ge v4, v7, :cond_d4

    aget-object v8, v0, v4

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_89

    const/4 v4, 0x1

    :goto_5b
    if-eqz v4, :cond_cd

    const-string v4, "video/x-vnd.on2.vp8"

    invoke-virtual {v5, v4}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v7

    iget-object v5, v7, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v8, v5

    move v4, v2

    :goto_67
    if-ge v4, v8, :cond_8c

    aget v9, v5, v4

    const-string v10, "MediaCodecVideoDecoder"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "   Color: 0x"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    :cond_86
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    :cond_8c
    sget-object v8, Lorg/webrtc/MediaCodecVideoDecoder;->supportedColorList:[I

    array-length v9, v8

    move v4, v2

    :goto_90
    if-ge v4, v9, :cond_cd

    aget v10, v8, v4

    iget-object v11, v7, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v12, v11

    move v5, v2

    :goto_98
    if-ge v5, v12, :cond_ca

    aget v13, v11, v5

    if-ne v13, v10, :cond_c7

    const-string v0, "MediaCodecVideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found target decoder "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Color: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/webrtc/MediaCodecVideoDecoder$DecoderProperties;

    invoke-direct {v0, v6, v13}, Lorg/webrtc/MediaCodecVideoDecoder$DecoderProperties;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_9

    :cond_c7
    add-int/lit8 v5, v5, 0x1

    goto :goto_98

    :cond_ca
    add-int/lit8 v4, v4, 0x1

    goto :goto_90

    :cond_cd
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_11

    :cond_d1
    move-object v0, v3

    goto/16 :goto_9

    :cond_d4
    move v4, v2

    goto :goto_5b

    :cond_d6
    move-object v6, v3

    goto/16 :goto_38
.end method

.method private initDecode(IIZZLandroid/opengl/EGLContext;)Z
    .registers 14
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "useSwCodec"    # Z
    .param p4, "useSurface"    # Z
    .param p5, "sharedContext"    # Landroid/opengl/EGLContext;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    if-eqz v3, :cond_f

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Forgot to release()?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-eqz p4, :cond_1b

    if-nez p5, :cond_1b

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No shared EGL context."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    invoke-static {p3}, Lorg/webrtc/MediaCodecVideoDecoder;->findVp8Decoder(Z)Lorg/webrtc/MediaCodecVideoDecoder$DecoderProperties;

    move-result-object v3

    if-nez v3, :cond_29

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find HW VP8 decoder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    const-string v4, "MediaCodecVideoDecoder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Java initDecode: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Color: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lorg/webrtc/MediaCodecVideoDecoder$DecoderProperties;->colorFormat:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Use Surface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Use SW codec: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_81

    const-string v4, "MediaCodecVideoDecoder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Decoder shared EGL Context: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    :try_start_87
    iput p1, p0, Lorg/webrtc/MediaCodecVideoDecoder;->width:I

    iput p2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->height:I

    iput-boolean p4, p0, Lorg/webrtc/MediaCodecVideoDecoder;->useSurface:Z

    iput p1, p0, Lorg/webrtc/MediaCodecVideoDecoder;->stride:I

    iput p2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->sliceHeight:I

    if-eqz p4, :cond_112

    invoke-direct {p0, p5, p1, p2}, Lorg/webrtc/MediaCodecVideoDecoder;->eglSetup(Landroid/opengl/EGLContext;II)V

    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoDecoder;->makeCurrent()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v4, "glGenTextures"

    invoke-direct {p0, v4}, Lorg/webrtc/MediaCodecVideoDecoder;->checkGlError(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget v2, v2, v4

    iput v2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->textureID:I

    const v2, 0x8d65

    iget v4, p0, Lorg/webrtc/MediaCodecVideoDecoder;->textureID:I

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v2, "glBindTexture mTextureID"

    invoke-direct {p0, v2}, Lorg/webrtc/MediaCodecVideoDecoder;->checkGlError(Ljava/lang/String;)V

    const v2, 0x8d65

    const/16 v4, 0x2801

    const/high16 v5, 0x46180000

    invoke-static {v2, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v2, 0x8d65

    const/16 v4, 0x2800

    const v5, 0x46180400

    invoke-static {v2, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v2, 0x8d65

    const/16 v4, 0x2802

    const v5, 0x812f

    invoke-static {v2, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v2, 0x8d65

    const/16 v4, 0x2803

    const v5, 0x812f

    invoke-static {v2, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v2, "glTexParameter"

    invoke-direct {p0, v2}, Lorg/webrtc/MediaCodecVideoDecoder;->checkGlError(Ljava/lang/String;)V

    const-string v2, "MediaCodecVideoDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Video decoder TextureID = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lorg/webrtc/MediaCodecVideoDecoder;->textureID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget v4, p0, Lorg/webrtc/MediaCodecVideoDecoder;->textureID:I

    invoke-direct {v2, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v2, Landroid/view/Surface;

    iget-object v4, p0, Lorg/webrtc/MediaCodecVideoDecoder;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->surface:Landroid/view/Surface;

    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->surface:Landroid/view/Surface;

    :cond_112
    const-string v4, "video/x-vnd.on2.vp8"

    invoke-static {v4, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    if-nez p4, :cond_121

    const-string v5, "color-format"

    iget v6, v3, Lorg/webrtc/MediaCodecVideoDecoder$DecoderProperties;->colorFormat:I

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_121
    const-string v5, "MediaCodecVideoDecoder"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  Format: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v3, Lorg/webrtc/MediaCodecVideoDecoder$DecoderProperties;->codecName:Ljava/lang/String;

    invoke-static {v5}, Lorg/webrtc/MediaCodecVideoEncoder;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v5, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v5, :cond_142

    :goto_141
    return v0

    :cond_142
    iget-object v5, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    iget v2, v3, Lorg/webrtc/MediaCodecVideoDecoder$DecoderProperties;->colorFormat:I

    iput v2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->colorFormat:I

    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    const-string v2, "MediaCodecVideoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Input buffers: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/webrtc/MediaCodecVideoDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Output buffers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/MediaCodecVideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_186
    .catch Ljava/lang/IllegalStateException; {:try_start_87 .. :try_end_186} :catch_188

    move v0, v1

    goto :goto_141

    :catch_188
    move-exception v1

    const-string v2, "MediaCodecVideoDecoder"

    const-string v3, "initDecode failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_141
.end method

.method private static isEGL14Supported()Z
    .registers 3

    const-string v0, "MediaCodecVideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lorg/webrtc/MediaCodecVideoDecoder;->CURRENT_SDK_VERSION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lorg/webrtc/MediaCodecVideoDecoder;->CURRENT_SDK_VERSION:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private static isPlatformSupported()Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/webrtc/MediaCodecVideoDecoder;->findVp8Decoder(Z)Lorg/webrtc/MediaCodecVideoDecoder$DecoderProperties;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private makeCurrent()V
    .registers 5

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lorg/webrtc/MediaCodecVideoDecoder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    return-void
.end method

.method private queueInputBuffer(IIJ)Z
    .registers 14
    .param p1, "inputBufferIndex"    # I
    .param p2, "size"    # I
    .param p3, "timestampUs"    # J

    .prologue
    const/4 v7, 0x0

    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoDecoder;->checkOnMediaCodecThread()V

    :try_start_4
    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_1d} :catch_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :catch_1f
    move-exception v0

    const-string v1, "MediaCodecVideoDecoder"

    const-string v2, "decode failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    goto :goto_1e
.end method

.method private release()V
    .registers 7

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "MediaCodecVideoDecoder"

    const-string v1, "Java releaseDecoder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoDecoder;->checkOnMediaCodecThread()V

    :try_start_d
    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_17} :catch_50

    :goto_17
    iput-object v3, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    iput-object v3, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    iget-boolean v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->useSurface:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iget v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->textureID:I

    if-ltz v0, :cond_4c

    new-array v0, v5, [I

    iget v1, p0, Lorg/webrtc/MediaCodecVideoDecoder;->textureID:I

    aput v1, v0, v4

    const-string v1, "MediaCodecVideoDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Delete video decoder TextureID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/webrtc/MediaCodecVideoDecoder;->textureID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v0, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const-string v0, "glDeleteTextures"

    invoke-direct {p0, v0}, Lorg/webrtc/MediaCodecVideoDecoder;->checkGlError(Ljava/lang/String;)V

    :cond_4c
    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoDecoder;->eglRelease()V

    :cond_4f
    return-void

    :catch_50
    move-exception v0

    const-string v1, "MediaCodecVideoDecoder"

    const-string v2, "release failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method private releaseOutputBuffer(IZ)Z
    .registers 6
    .param p1, "index"    # I
    .param p2, "render"    # Z

    .prologue
    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoDecoder;->checkOnMediaCodecThread()V

    :try_start_3
    iget-boolean v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->useSurface:Z

    if-nez v0, :cond_8

    const/4 p2, 0x0

    :cond_8
    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_d} :catch_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :catch_f
    move-exception v0

    const-string v1, "MediaCodecVideoDecoder"

    const-string v2, "releaseOutputBuffer failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_e
.end method
