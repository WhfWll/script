.class public Lcom/bontai/mobiads/ads/splash/SplashDetailAd;
.super Ljava/lang/Object;
.source "SplashDetailAd.java"


# instance fields
.field private splashDetailAdView:Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/splash/SplashDetailAd;

    const v1, 0x111

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/bontai/mobiads/ads/entity/AdDomain;)V
    .registers 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "adDomain"    # Lcom/bontai/mobiads/ads/entity/AdDomain;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;

    invoke-direct {v0, p1, p2}, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;-><init>(Landroid/app/Activity;Lcom/bontai/mobiads/ads/entity/AdDomain;)V

    iput-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashDetailAd;->splashDetailAdView:Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;

    .line 14
    return-void
.end method


# virtual methods
.method public native setSplashAdListener(Lcom/bontai/mobiads/ads/splash/SplashAdListener;)V
.end method

.method public native splash(Landroid/content/Context;Landroid/view/View;)V
.end method
