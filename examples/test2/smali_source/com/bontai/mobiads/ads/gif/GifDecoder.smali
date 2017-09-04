.class Lcom/bontai/mobiads/ads/gif/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bontai/mobiads/ads/gif/GifDecoder$BitmapProvider;
    }
.end annotation


# static fields
.field private static final BYTES_PER_INTEGER:I = 0x4

.field private static final DISPOSAL_BACKGROUND:I = 0x2

.field private static final DISPOSAL_NONE:I = 0x1

.field private static final DISPOSAL_PREVIOUS:I = 0x3

.field private static final DISPOSAL_UNSPECIFIED:I = 0x0

.field private static final INITIAL_FRAME_POINTER:I = -0x1

.field static final LOOP_FOREVER:I = -0x1

.field private static final MAX_STACK_SIZE:I = 0x1000

.field private static final NULL_CODE:I = -0x1

.field static final STATUS_FORMAT_ERROR:I = 0x1

.field static final STATUS_OK:I = 0x0

.field static final STATUS_OPEN_ERROR:I = 0x2

.field static final STATUS_PARTIAL_DECODE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final WORK_BUFFER_SIZE:I = 0x4000


# instance fields
.field private act:[I

.field private bitmapProvider:Lcom/bontai/mobiads/ads/gif/GifDecoder$BitmapProvider;

.field private block:[B

.field private downsampledHeight:I

.field private downsampledWidth:I

.field private framePointer:I

.field private header:Lcom/bontai/mobiads/ads/gif/GifHeader;

.field private isFirstFrameTransparent:Z

.field private loopIndex:I

.field private mainPixels:[B

.field private mainScratch:[I

.field private parser:Lcom/bontai/mobiads/ads/gif/GifHeaderParser;

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Landroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private sampleSize:I

.field private savePrevious:Z

.field private status:I

.field private suffix:[B

.field private workBuffer:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private workBufferPosition:I

.field private workBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/gif/GifDecoder;

    const v1, 0xf3

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    .line 113
    const-class v0, Lcom/bontai/mobiads/ads/gif/GifDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bontai/mobiads/ads/gif/GifDecoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 201
    new-instance v0, Lcom/bontai/mobiads/ads/gif/SimpleBitmapProvider;

    invoke-direct {v0}, Lcom/bontai/mobiads/ads/gif/SimpleBitmapProvider;-><init>()V

    invoke-direct {p0, v0}, Lcom/bontai/mobiads/ads/gif/GifDecoder;-><init>(Lcom/bontai/mobiads/ads/gif/GifDecoder$BitmapProvider;)V

    .line 202
    return-void
.end method

.method constructor <init>(Lcom/bontai/mobiads/ads/gif/GifDecoder$BitmapProvider;)V
    .registers 3
    .param p1, "provider"    # Lcom/bontai/mobiads/ads/gif/GifDecoder$BitmapProvider;

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v0, p0, Lcom/bontai/mobiads/ads/gif/GifDecoder;->workBufferSize:I

    .line 116
    iput v0, p0, Lcom/bontai/mobiads/ads/gif/GifDecoder;->workBufferPosition:I

    .line 196
    iput-object p1, p0, Lcom/bontai/mobiads/ads/gif/GifDecoder;->bitmapProvider:Lcom/bontai/mobiads/ads/gif/GifDecoder$BitmapProvider;

    .line 197
    new-instance v0, Lcom/bontai/mobiads/ads/gif/GifHeader;

    invoke-direct {v0}, Lcom/bontai/mobiads/ads/gif/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/bontai/mobiads/ads/gif/GifDecoder;->header:Lcom/bontai/mobiads/ads/gif/GifHeader;

    .line 198
    return-void
.end method

.method constructor <init>(Lcom/bontai/mobiads/ads/gif/GifDecoder$BitmapProvider;Lcom/bontai/mobiads/ads/gif/GifHeader;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "provider"    # Lcom/bontai/mobiads/ads/gif/GifDecoder$BitmapProvider;
    .param p2, "gifHeader"    # Lcom/bontai/mobiads/ads/gif/GifHeader;
    .param p3, "rawData"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bontai/mobiads/ads/gif/GifDecoder;-><init>(Lcom/bontai/mobiads/ads/gif/GifDecoder$BitmapProvider;Lcom/bontai/mobiads/ads/gif/GifHeader;Ljava/nio/ByteBuffer;I)V

    .line 187
    return-void
.end method

.method constructor <init>(Lcom/bontai/mobiads/ads/gif/GifDecoder$BitmapProvider;Lcom/bontai/mobiads/ads/gif/GifHeader;Ljava/nio/ByteBuffer;I)V
    .registers 5
    .param p1, "provider"    # Lcom/bontai/mobiads/ads/gif/GifDecoder$BitmapProvider;
    .param p2, "gifHeader"    # Lcom/bontai/mobiads/ads/gif/GifHeader;
    .param p3, "rawData"    # Ljava/nio/ByteBuffer;
    .param p4, "sampleSize"    # I

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/bontai/mobiads/ads/gif/GifDecoder;-><init>(Lcom/bontai/mobiads/ads/gif/GifDecoder$BitmapProvider;)V

    .line 192
    invoke-virtual {p0, p2, p3, p4}, Lcom/bontai/mobiads/ads/gif/GifDecoder;->setData(Lcom/bontai/mobiads/ads/gif/GifHeader;Ljava/nio/ByteBuffer;I)V

    .line 193
    return-void
.end method

.method private native averageColorsNear(III)I
.end method

.method private native decodeBitmapData(Lcom/bontai/mobiads/ads/gif/GifFrame;)V
.end method

.method private native getHeaderParser()Lcom/bontai/mobiads/ads/gif/GifHeaderParser;
.end method

.method private native getNextBitmap()Landroid/graphics/Bitmap;
.end method

.method private native readBlock()I
.end method

.method private native readByte()I
.end method

.method private native readChunkIfNeeded()V
.end method

.method private static native setAlpha(Landroid/graphics/Bitmap;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation
.end method

.method private native setPixels(Lcom/bontai/mobiads/ads/gif/GifFrame;Lcom/bontai/mobiads/ads/gif/GifFrame;)Landroid/graphics/Bitmap;
.end method


# virtual methods
.method native advance()Z
.end method

.method native clear()V
.end method

.method native getByteSize()I
.end method

.method native getCurrentFrameIndex()I
.end method

.method native getData()Ljava/nio/ByteBuffer;
.end method

.method native getDelay(I)I
.end method

.method native getFrameCount()I
.end method

.method native getHeight()I
.end method

.method native getLoopCount()I
.end method

.method native getLoopIndex()I
.end method

.method native getNextDelay()I
.end method

.method native declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
.end method

.method native getStatus()I
.end method

.method native getWidth()I
.end method

.method native read(Ljava/io/InputStream;I)I
.end method

.method native declared-synchronized read([B)I
.end method

.method native resetFrameIndex()V
.end method

.method native resetLoopIndex()V
.end method

.method native declared-synchronized setData(Lcom/bontai/mobiads/ads/gif/GifHeader;Ljava/nio/ByteBuffer;)V
.end method

.method native declared-synchronized setData(Lcom/bontai/mobiads/ads/gif/GifHeader;Ljava/nio/ByteBuffer;I)V
.end method

.method native declared-synchronized setData(Lcom/bontai/mobiads/ads/gif/GifHeader;[B)V
.end method

.method native setFrameIndex(I)Z
.end method
