.class public Lcom/bontai/mobiads/ads/activity/SplashDetailADActivity;
.super Landroid/app/Activity;
.source "SplashDetailADActivity.java"


# instance fields
.field private btnClose:Landroid/widget/ImageView;

.field private splashDetailAd:Lcom/bontai/mobiads/ads/splash/SplashDetailAd;

.field private splashDetailLL:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/activity/SplashDetailADActivity;

    const v1, 0xef

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/bontai/mobiads/ads/activity/SplashDetailADActivity;)V
    .registers 1

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/bontai/mobiads/ads/activity/SplashDetailADActivity;->jump()V

    return-void
.end method

.method static synthetic access$1(Lcom/bontai/mobiads/ads/activity/SplashDetailADActivity;)Lcom/bontai/mobiads/ads/splash/SplashDetailAd;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bontai/mobiads/ads/activity/SplashDetailADActivity;->splashDetailAd:Lcom/bontai/mobiads/ads/splash/SplashDetailAd;

    return-object v0
.end method

.method static synthetic access$2(Lcom/bontai/mobiads/ads/activity/SplashDetailADActivity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bontai/mobiads/ads/activity/SplashDetailADActivity;->splashDetailLL:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private native jump()V
.end method

.method private native viewInited()V
.end method


# virtual methods
.method protected native onCreate(Landroid/os/Bundle;)V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end method

.method protected native onDestroy()V
.end method

.method protected native onPause()V
.end method
