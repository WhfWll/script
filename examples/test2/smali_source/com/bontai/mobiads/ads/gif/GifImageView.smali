.class public Lcom/bontai/mobiads/ads/gif/GifImageView;
.super Landroid/widget/ImageView;
.source "GifImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bontai/mobiads/ads/gif/GifImageView$OnAnimationStop;,
        Lcom/bontai/mobiads/ads/gif/GifImageView$OnFrameAvailable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GifDecoderView"


# instance fields
.field private animating:Z

.field private animationStopCallback:Lcom/bontai/mobiads/ads/gif/GifImageView$OnAnimationStop;

.field private animationThread:Ljava/lang/Thread;

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field private frameCallback:Lcom/bontai/mobiads/ads/gif/GifImageView$OnFrameAvailable;

.field private framesDisplayDuration:J

.field private gifDecoder:Lcom/bontai/mobiads/ads/gif/GifDecoder;

.field private final handler:Landroid/os/Handler;

.field private renderFrame:Z

.field private shouldClear:Z

.field private tmpBitmap:Landroid/graphics/Bitmap;

.field private final updateResults:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/gif/GifImageView;

    const v1, 0xf8

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->handler:Landroid/os/Handler;

    .line 21
    iput-object v2, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->frameCallback:Lcom/bontai/mobiads/ads/gif/GifImageView$OnFrameAvailable;

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->framesDisplayDuration:J

    .line 23
    iput-object v2, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->animationStopCallback:Lcom/bontai/mobiads/ads/gif/GifImageView$OnAnimationStop;

    .line 25
    new-instance v0, Lcom/bontai/mobiads/ads/gif/GifImageView$1;

    invoke-direct {v0, p0}, Lcom/bontai/mobiads/ads/gif/GifImageView$1;-><init>(Lcom/bontai/mobiads/ads/gif/GifImageView;)V

    iput-object v0, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->updateResults:Ljava/lang/Runnable;

    .line 34
    new-instance v0, Lcom/bontai/mobiads/ads/gif/GifImageView$2;

    invoke-direct {v0, p0}, Lcom/bontai/mobiads/ads/gif/GifImageView$2;-><init>(Lcom/bontai/mobiads/ads/gif/GifImageView;)V

    iput-object v0, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->handler:Landroid/os/Handler;

    .line 21
    iput-object v2, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->frameCallback:Lcom/bontai/mobiads/ads/gif/GifImageView$OnFrameAvailable;

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->framesDisplayDuration:J

    .line 23
    iput-object v2, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->animationStopCallback:Lcom/bontai/mobiads/ads/gif/GifImageView$OnAnimationStop;

    .line 25
    new-instance v0, Lcom/bontai/mobiads/ads/gif/GifImageView$1;

    invoke-direct {v0, p0}, Lcom/bontai/mobiads/ads/gif/GifImageView$1;-><init>(Lcom/bontai/mobiads/ads/gif/GifImageView;)V

    iput-object v0, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->updateResults:Ljava/lang/Runnable;

    .line 34
    new-instance v0, Lcom/bontai/mobiads/ads/gif/GifImageView$2;

    invoke-direct {v0, p0}, Lcom/bontai/mobiads/ads/gif/GifImageView$2;-><init>(Lcom/bontai/mobiads/ads/gif/GifImageView;)V

    iput-object v0, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/bontai/mobiads/ads/gif/GifImageView;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/bontai/mobiads/ads/gif/GifImageView;Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 15
    iput-object p1, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$2(Lcom/bontai/mobiads/ads/gif/GifImageView;Lcom/bontai/mobiads/ads/gif/GifDecoder;)V
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->gifDecoder:Lcom/bontai/mobiads/ads/gif/GifDecoder;

    return-void
.end method

.method static synthetic access$3(Lcom/bontai/mobiads/ads/gif/GifImageView;Ljava/lang/Thread;)V
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$4(Lcom/bontai/mobiads/ads/gif/GifImageView;Z)V
    .registers 2

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/bontai/mobiads/ads/gif/GifImageView;->shouldClear:Z

    return-void
.end method

.method private native canStart()Z
.end method

.method private native startAnimationThread()V
.end method


# virtual methods
.method public native clear()V
.end method

.method public native getFramesDisplayDuration()J
.end method

.method public native getGifHeight()I
.end method

.method public native getGifWidth()I
.end method

.method public native getOnAnimationStop()Lcom/bontai/mobiads/ads/gif/GifImageView$OnAnimationStop;
.end method

.method public native getOnFrameAvailable()Lcom/bontai/mobiads/ads/gif/GifImageView$OnFrameAvailable;
.end method

.method public native gotoFrame(I)V
.end method

.method public native isAnimating()Z
.end method

.method protected native onDetachedFromWindow()V
.end method

.method public native resetAnimation()V
.end method

.method public native run()V
.end method

.method public native setBytes([B)V
.end method

.method public native setFramesDisplayDuration(J)V
.end method

.method public native setOnAnimationStop(Lcom/bontai/mobiads/ads/gif/GifImageView$OnAnimationStop;)V
.end method

.method public native setOnFrameAvailable(Lcom/bontai/mobiads/ads/gif/GifImageView$OnFrameAvailable;)V
.end method

.method public native startAnimation()V
.end method

.method public native stopAnimation()V
.end method
