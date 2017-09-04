.class public Lcom/bontai/mobiads/ads/splash/SplashAdView;
.super Lcom/bontai/mobiads/ads/AdView;
.source "SplashAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bontai/mobiads/ads/splash/SplashAdView$SplashBitmapLoadCallBack;
    }
.end annotation


# instance fields
.field private adDetailDialog:Lcom/bontai/mobiads/ads/ADDialog;

.field private adDomain:Lcom/bontai/mobiads/ads/entity/AdDomain;

.field private adSplashDialog:Lcom/bontai/mobiads/ads/ADDialog;

.field private adSplashFramelayout:Landroid/widget/FrameLayout;

.field private bigPicDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

.field private bitmapUtils:Lcom/lidroid/xutils/BitmapUtils;

.field private btnClose:Landroid/widget/ImageView;

.field private context:Landroid/content/Context;

.field private dismissHandler:Landroid/os/Handler;

.field private dismissThread:Ljava/lang/Runnable;

.field private placementNo:Ljava/lang/String;

.field private rootll:Landroid/widget/LinearLayout;

.field private splashAdListener:Lcom/bontai/mobiads/ads/splash/SplashAdListener;

.field private splashAdView:Lcom/bontai/mobiads/ads/splash/SplashAdView;

.field private splashBackgroundView:Lcom/bontai/mobiads/ads/gif/GifImageView;

.field private splashDetailAd:Lcom/bontai/mobiads/ads/splash/SplashDetailAd;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/splash/SplashAdView;

    const v1, 0x110

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/bontai/mobiads/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    iput-object p1, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView;->context:Landroid/content/Context;

    .line 96
    invoke-virtual {p0, p1}, Lcom/bontai/mobiads/ads/splash/SplashAdView;->initImageLoader(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p0}, Lcom/bontai/mobiads/ads/splash/SplashAdView;->displaySkipButton()V

    .line 98
    const/16 v0, 0x404

    invoke-virtual {p0, v0}, Lcom/bontai/mobiads/ads/splash/SplashAdView;->setSystemUiVisibility(I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "placementNo"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/bontai/mobiads/ads/splash/SplashAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    iput-object p2, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView;->placementNo:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/bontai/mobiads/ads/splash/SplashAdView;)V
    .registers 1

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/bontai/mobiads/ads/splash/SplashAdView;->next()V

    return-void
.end method

.method static synthetic access$1(Lcom/bontai/mobiads/ads/splash/SplashAdView;)Lcom/bontai/mobiads/ads/entity/AdDomain;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView;->adDomain:Lcom/bontai/mobiads/ads/entity/AdDomain;

    return-object v0
.end method

.method static synthetic access$10(Lcom/bontai/mobiads/ads/splash/SplashAdView;)Lcom/bontai/mobiads/ads/splash/SplashDetailAd;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView;->splashDetailAd:Lcom/bontai/mobiads/ads/splash/SplashDetailAd;

    return-object v0
.end method

.method static synthetic access$11(Lcom/bontai/mobiads/ads/splash/SplashAdView;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12(Lcom/bontai/mobiads/ads/splash/SplashAdView;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView;->rootll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/bontai/mobiads/ads/splash/SplashAdView;)Lcom/bontai/mobiads/ads/ADDialog;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView;->adDetailDialog:Lcom/bontai/mobiads/ads/ADDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/bontai/mobiads/ads/splash/SplashAdView;)Lcom/bontai/mobiads/ads/gif/GifImageView;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView;->splashBackgroundView:Lcom/bontai/mobiads/ads/gif/GifImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/bontai/mobiads/ads/splash/SplashAdView;)V
    .registers 1

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/bontai/mobiads/ads/splash/SplashAdView;->enterDetailPage()V

    return-void
.end method

.method static synthetic access$4(Lcom/bontai/mobiads/ads/splash/SplashAdView;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView;->dismissHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/bontai/mobiads/ads/splash/SplashAdView;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView;->dismissThread:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/bontai/mobiads/ads/splash/SplashAdView;)Lcom/bontai/mobiads/ads/splash/SplashAdListener;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView;->splashAdListener:Lcom/bontai/mobiads/ads/splash/SplashAdListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/bontai/mobiads/ads/splash/SplashAdView;)Lcom/bontai/mobiads/ads/ADDialog;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView;->adSplashDialog:Lcom/bontai/mobiads/ads/ADDialog;

    return-object v0
.end method

.method static synthetic access$8(Lcom/bontai/mobiads/ads/splash/SplashAdView;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView;->adSplashFramelayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$9(Lcom/bontai/mobiads/ads/splash/SplashAdView;)V
    .registers 1

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/bontai/mobiads/ads/splash/SplashAdView;->closeAdDetail()V

    return-void
.end method

.method private native closeAdDetail()V
.end method

.method private native enterDetailPage()V
.end method

.method private native init(Landroid/view/View;II)V
.end method

.method private native initUI(Landroid/view/View;II)V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end method

.method private native next()V
.end method


# virtual methods
.method public native close()V
.end method

.method public native displaySkipButton()V
.end method

.method public native initImageLoader(Landroid/content/Context;)V
.end method

.method public native jumbDetailClick()V
.end method

.method public native splash(Landroid/view/View;Lcom/bontai/mobiads/ads/splash/SplashAdListener;II)V
.end method
