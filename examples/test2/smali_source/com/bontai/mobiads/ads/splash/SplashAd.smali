.class public Lcom/bontai/mobiads/ads/splash/SplashAd;
.super Ljava/lang/Object;
.source "SplashAd.java"


# instance fields
.field private adDomain:Lcom/bontai/mobiads/ads/entity/AdDomain;

.field private context:Landroid/content/Context;

.field private isAdShowing:Z

.field private isSplashAdReady:Z

.field private mAdView:Lcom/bontai/mobiads/ads/splash/SplashAdView;

.field private placementNo:Ljava/lang/String;

.field private splashAdListener:Lcom/bontai/mobiads/ads/splash/SplashAdListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/splash/SplashAd;

    const v1, 0x102

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "placementNo"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/bontai/mobiads/ads/splash/SplashAd;->isSplashAdReady:Z

    .line 27
    iput-boolean v0, p0, Lcom/bontai/mobiads/ads/splash/SplashAd;->isAdShowing:Z

    .line 30
    iput-object p1, p0, Lcom/bontai/mobiads/ads/splash/SplashAd;->context:Landroid/content/Context;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bontai/mobiads/ads/splash/SplashAd;->isSplashAdReady:Z

    .line 32
    iput-object p2, p0, Lcom/bontai/mobiads/ads/splash/SplashAd;->placementNo:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/bontai/mobiads/ads/splash/SplashAdView;

    iget-object v1, p0, Lcom/bontai/mobiads/ads/splash/SplashAd;->placementNo:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/bontai/mobiads/ads/splash/SplashAdView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashAd;->mAdView:Lcom/bontai/mobiads/ads/splash/SplashAdView;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/bontai/mobiads/ads/splash/SplashAd;)Lcom/bontai/mobiads/ads/splash/SplashAdView;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bontai/mobiads/ads/splash/SplashAd;->mAdView:Lcom/bontai/mobiads/ads/splash/SplashAdView;

    return-object v0
.end method


# virtual methods
.method public native backToFrontSplash(Landroid/content/Context;Landroid/view/View;II)V
.end method

.method public native closeSplashAd()V
.end method

.method public native displaySkipButton()V
.end method

.method public native getCurrAdDomain()Lcom/bontai/mobiads/ads/entity/AdDomain;
.end method

.method public native getPlacementNo()Ljava/lang/String;
.end method

.method public native isNeedShowAd()Z
.end method

.method public native isNeedShowAgain()Z
.end method

.method public native isSplashAdReady()Z
.end method

.method public native jumpDetail(Lcom/bontai/mobiads/ads/entity/AdDomain;)V
.end method

.method public native setKeyword(Ljava/lang/String;)V
.end method

.method public native setSplashAdListener(Lcom/bontai/mobiads/ads/splash/SplashAdListener;)V
.end method

.method public native setUserBirthdayStr(Ljava/lang/String;)V
.end method

.method public native setUserGender(Ljava/lang/String;)V
.end method

.method public native setUserPostcode(Ljava/lang/String;)V
.end method

.method public native splash(Landroid/content/Context;Landroid/view/View;II)V
.end method
