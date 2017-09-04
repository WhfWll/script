.class public Lcom/bontai/mobiads/ads/gif/GifHeader;
.super Ljava/lang/Object;
.source "GifHeader.java"


# instance fields
.field bgColor:I

.field bgIndex:I

.field currentFrame:Lcom/bontai/mobiads/ads/gif/GifFrame;

.field frameCount:I

.field frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bontai/mobiads/ads/gif/GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field gct:[I

.field gctFlag:Z

.field gctSize:I

.field height:I

.field loopCount:I

.field pixelAspect:I

.field status:I

.field width:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/gif/GifHeader;

    const v1, 0xf4

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bontai/mobiads/ads/gif/GifHeader;->gct:[I

    .line 32
    iput v1, p0, Lcom/bontai/mobiads/ads/gif/GifHeader;->status:I

    .line 33
    iput v1, p0, Lcom/bontai/mobiads/ads/gif/GifHeader;->frameCount:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bontai/mobiads/ads/gif/GifHeader;->frames:Ljava/util/List;

    .line 55
    iput v1, p0, Lcom/bontai/mobiads/ads/gif/GifHeader;->loopCount:I

    .line 29
    return-void
.end method


# virtual methods
.method public native getHeight()I
.end method

.method public native getNumFrames()I
.end method

.method public native getStatus()I
.end method

.method public native getWidth()I
.end method
