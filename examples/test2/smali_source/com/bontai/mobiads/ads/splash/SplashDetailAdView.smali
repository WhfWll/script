.class public Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;
.super Lcom/bontai/mobiads/ads/AdView;
.source "SplashDetailAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$MyWebViewDownLoadListener;,
        Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$SplashBitmapLoadCallBack;,
        Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$xWebChromeClient;
    }
.end annotation


# instance fields
.field private bigPicDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

.field private bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/ProgressDialog;

.field private splashAdListener:Lcom/bontai/mobiads/ads/splash/SplashAdListener;

.field private targetImgUrl:Ljava/lang/String;

.field private targetUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;

    const v1, 0x117

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/bontai/mobiads/ads/entity/AdDomain;)V
    .registers 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "adDomain"    # Lcom/bontai/mobiads/ads/entity/AdDomain;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/bontai/mobiads/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object p1, p0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;->context:Landroid/content/Context;

    .line 56
    invoke-virtual {p2}, Lcom/bontai/mobiads/ads/entity/AdDomain;->getTargetUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;->targetUrl:Ljava/lang/String;

    .line 57
    invoke-virtual {p2}, Lcom/bontai/mobiads/ads/entity/AdDomain;->getTargetImgUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;->targetImgUrl:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/bontai/mobiads/ads/BitmapHelp;->getBitmapUtils(Landroid/content/Context;)Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;->bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

    .line 59
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;->bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

    if-nez v0, :cond_21

    .line 60
    invoke-static {p1}, Lcom/bontai/mobiads/ads/BitmapHelp;->getBitmapUtils(Landroid/content/Context;)Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;->bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

    .line 63
    :cond_21
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-direct {v0}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;-><init>()V

    iput-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;->bigPicDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .line 64
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;->bigPicDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapConfig(Landroid/graphics/Bitmap$Config;)V

    .line 65
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;->bigPicDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->getScreenSize(Landroid/content/Context;)Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)V

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;)V
    .registers 1

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;->dismiss()V

    return-void
.end method

.method static synthetic access$2(Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;->context:Landroid/content/Context;

    return-object v0
.end method

.method private native dismiss()V
.end method

.method private native showH5Ad(Landroid/view/View;[Landroid/view/animation/AnimationSet;)V
.end method

.method private native showImgAd(Landroid/view/View;[Landroid/view/animation/AnimationSet;)V
.end method


# virtual methods
.method public native getSplashAdListener()Lcom/bontai/mobiads/ads/splash/SplashAdListener;
.end method

.method public native setSplashAdListener(Lcom/bontai/mobiads/ads/splash/SplashAdListener;)V
.end method

.method public native splash(Landroid/content/Context;Landroid/view/View;)V
.end method
