.class public Lorg/webrtc/VideoRenderer$I420Frame;
.super Ljava/lang/Object;


# instance fields
.field public final height:I

.field public textureId:I

.field public textureObject:Ljava/lang/Object;

.field public final width:I

.field public final yuvFrame:Z

.field public final yuvPlanes:[Ljava/nio/ByteBuffer;

.field public final yuvStrides:[I


# direct methods
.method public constructor <init>(IILjava/lang/Object;I)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "textureObject"    # Ljava/lang/Object;
    .param p4, "textureId"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    iput p2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    iput-object v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    iput-object v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->textureObject:Ljava/lang/Object;

    iput p4, p0, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    return-void
.end method

.method public constructor <init>(II[I[Ljava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "yuvStrides"    # [I
    .param p4, "yuvPlanes"    # [Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    iput p2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    iput-object p3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    if-nez p4, :cond_2c

    const/4 v0, 0x3

    new-array p4, v0, [Ljava/nio/ByteBuffer;

    aget v0, p3, v2

    mul-int/2addr v0, p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, p4, v2

    aget v0, p3, v1

    mul-int/2addr v0, p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, p4, v1

    aget v0, p3, v3

    mul-int/2addr v0, p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, p4, v3

    :cond_2c
    iput-object p4, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    iput-boolean v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    return-void
.end method

.method private copyPlane(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/webrtc/VideoRenderer$I420Frame;)Lorg/webrtc/VideoRenderer$I420Frame;
    .registers 7
    .param p1, "source"    # Lorg/webrtc/VideoRenderer$I420Frame;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    if-eqz v0, :cond_6a

    iget-boolean v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    iget-object v1, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    iget v1, p1, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    if-ne v0, v1, :cond_21

    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    iget v1, p1, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    if-eq v0, v1, :cond_48

    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mismatched dimensions!  Source: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/webrtc/VideoRenderer$I420Frame;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", destination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/webrtc/VideoRenderer$I420Frame;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    iget-object v0, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v2

    iget-object v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/webrtc/VideoRenderer$I420Frame;->copyPlane(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    iget-object v0, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v3

    iget-object v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v3

    invoke-direct {p0, v0, v1}, Lorg/webrtc/VideoRenderer$I420Frame;->copyPlane(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    iget-object v0, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v4

    iget-object v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v4

    invoke-direct {p0, v0, v1}, Lorg/webrtc/VideoRenderer$I420Frame;->copyPlane(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    :goto_69
    return-object p0

    :cond_6a
    iget-boolean v0, p1, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    if-nez v0, :cond_7b

    iget-boolean v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    if-nez v0, :cond_7b

    iget-object v0, p1, Lorg/webrtc/VideoRenderer$I420Frame;->textureObject:Ljava/lang/Object;

    iput-object v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->textureObject:Ljava/lang/Object;

    iget v0, p1, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    iput v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    goto :goto_69

    :cond_7b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mismatched frame types!  Source: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/webrtc/VideoRenderer$I420Frame;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", destination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/webrtc/VideoRenderer$I420Frame;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyFrom([B)Lorg/webrtc/VideoRenderer$I420Frame;
    .registers 8
    .param p1, "yuvData"    # [B

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    array-length v0, p1

    iget v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    iget v3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_24

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong arrays size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iget-boolean v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    if-nez v0, :cond_30

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can not feed yuv data to texture frame"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    iget v2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    mul-int/2addr v0, v2

    new-array v2, v5, [Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    div-int/lit8 v4, v0, 0x4

    invoke-static {p1, v0, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    div-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v0

    div-int/lit8 v0, v0, 0x4

    invoke-static {p1, v4, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v2, v3

    move v0, v1

    :goto_53
    if-ge v0, v5, :cond_7e

    iget-object v3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v0

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_7e
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
