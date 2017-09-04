.class public Lcn/domob/android/ads/DomobInterstitialAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobInterstitialAd$BorderType;
    }
.end annotation


# static fields
.field public static final INTERSITIAL_SIZE_300X250:Ljava/lang/String; = "300x250"

.field public static final INTERSITIAL_SIZE_600X500:Ljava/lang/String; = "600x500"

.field public static final INTERSITIAL_SIZE_FULL_SCREEN:Ljava/lang/String;

.field private static a:Lcn/domob/android/i/f;


# instance fields
.field private b:Lcn/domob/android/ads/u;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/DomobInterstitialAd;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/DomobInterstitialAd;->a:Lcn/domob/android/i/f;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/ads/DomobInterstitialAd;->INTERSITIAL_SIZE_FULL_SCREEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcn/domob/android/ads/u;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcn/domob/android/ads/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/u;

    .line 37
    return-void
.end method

.method private domobAdDismiss()V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/u;

    iget-object v0, v0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    const-string v1, "mogo_dismiss"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->j(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private domobAdImpression()V
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/u;

    iget-object v0, v0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    const-string v1, "mogo_imp"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->j(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method private domobAdLoad()V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/u;

    iget-object v0, v0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    const-string v1, "mogo_load"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->j(Ljava/lang/String;)V

    .line 125
    return-void
.end method


# virtual methods
.method public isInterstitialAdReady()Z
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0}, Lcn/domob/android/ads/u;->m()Z

    move-result v0

    return v0
.end method

.method public loadInterstitialAd()V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0}, Lcn/domob/android/ads/u;->q()Z

    move-result v0

    if-nez v0, :cond_e

    .line 44
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0}, Lcn/domob/android/ads/u;->l()V

    .line 49
    :cond_d
    :goto_d
    return-void

    .line 45
    :cond_e
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0}, Lcn/domob/android/ads/u;->r()Z

    move-result v0

    if-nez v0, :cond_d

    .line 46
    sget-object v0, Lcn/domob/android/ads/DomobInterstitialAd;->a:Lcn/domob/android/i/f;

    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "the last ad didn\'t show, so please show it before request the next ad"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public setInterstitialAdListener(Lcn/domob/android/ads/DomobInterstitialAdListener;)V
    .registers 3
    .param p1, "interstitialAdListener"    # Lcn/domob/android/ads/DomobInterstitialAdListener;

    .prologue
    .line 57
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0, p1, p0}, Lcn/domob/android/ads/u;->a(Lcn/domob/android/ads/DomobInterstitialAdListener;Lcn/domob/android/ads/DomobInterstitialAd;)V

    .line 58
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .registers 3
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/u;->setKeyword(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .registers 3
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/u;->setUserBirthdayStr(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .registers 3
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/u;->setUserGender(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .registers 3
    .param p1, "pc"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/u;->setUserPostcode(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public showInterstitialAd(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0}, Lcn/domob/android/ads/u;->r()Z

    move-result v0

    if-nez v0, :cond_15

    .line 74
    sget-object v0, Lcn/domob/android/ads/DomobInterstitialAd;->a:Lcn/domob/android/i/f;

    const-string v1, "Show Interstitial View."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcn/domob/android/ads/DomobInterstitialAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/u;->b(Landroid/content/Context;)V

    .line 79
    :goto_14
    return-void

    .line 77
    :cond_15
    sget-object v0, Lcn/domob/android/ads/DomobInterstitialAd;->a:Lcn/domob/android/i/f;

    const-string v1, "Interstial ad is not ready"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14
.end method
