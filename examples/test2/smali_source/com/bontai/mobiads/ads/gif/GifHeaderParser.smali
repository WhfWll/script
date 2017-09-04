.class public Lcom/bontai/mobiads/ads/gif/GifHeaderParser;
.super Ljava/lang/Object;
.source "GifHeaderParser.java"


# static fields
.field static final DEFAULT_FRAME_DELAY:I = 0xa

.field private static final MAX_BLOCK_SIZE:I = 0x100

.field static final MIN_FRAME_DELAY:I = 0x2

.field public static final TAG:Ljava/lang/String; = "GifHeaderParser"


# instance fields
.field private final block:[B

.field private blockSize:I

.field private header:Lcom/bontai/mobiads/ads/gif/GifHeader;

.field private rawData:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/gif/GifHeaderParser;

    const v1, 0xf5

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bontai/mobiads/ads/gif/GifHeaderParser;->block:[B

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/bontai/mobiads/ads/gif/GifHeaderParser;->blockSize:I

    .line 32
    return-void
.end method

.method private native err()Z
.end method

.method private native read()I
.end method

.method private native readBitmap()V
.end method

.method private native readBlock()I
.end method

.method private native readColorTable(I)[I
.end method

.method private native readContents()V
.end method

.method private native readContents(I)V
.end method

.method private native readGraphicControlExt()V
.end method

.method private native readHeader()V
.end method

.method private native readLSD()V
.end method

.method private native readNetscapeExt()V
.end method

.method private native readShort()I
.end method

.method private native reset()V
.end method

.method private native skip()V
.end method

.method private native skipImageData()V
.end method


# virtual methods
.method public native clear()V
.end method

.method public native isAnimated()Z
.end method

.method public native parseHeader()Lcom/bontai/mobiads/ads/gif/GifHeader;
.end method

.method public native setData(Ljava/nio/ByteBuffer;)Lcom/bontai/mobiads/ads/gif/GifHeaderParser;
.end method

.method public native setData([B)Lcom/bontai/mobiads/ads/gif/GifHeaderParser;
.end method
