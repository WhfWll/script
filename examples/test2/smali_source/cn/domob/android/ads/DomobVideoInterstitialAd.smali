.class public Lcn/domob/android/ads/DomobVideoInterstitialAd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/i/f;


# instance fields
.field private b:Lcn/domob/android/ads/G;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/DomobVideoInterstitialAd;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;
    .param p4, "maxSecureAreaWidth"    # I
    .param p5, "maxSecureAreaHeight"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcn/domob/android/ads/G;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p4}, Lcn/domob/android/i/g;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p5}, Lcn/domob/android/i/g;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcn/domob/android/ads/DomobAdView$a;->g:Lcn/domob/android/ads/DomobAdView$a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/G;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/DomobAdView$a;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->b:Lcn/domob/android/ads/G;

    .line 38
    return-void
.end method

.method private a(Landroid/content/Context;Lcn/domob/android/ads/DomobSceneInfo;)Lcn/domob/android/ads/G$a;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 93
    .line 94
    instance-of v0, p2, Lcn/domob/android/ads/DomobVideoInterstitialSceneInfo;

    if-eqz v0, :cond_29

    .line 95
    check-cast p2, Lcn/domob/android/ads/DomobVideoInterstitialSceneInfo;

    .line 99
    :goto_7
    new-instance v0, Lcn/domob/android/ads/G$a;

    invoke-direct {v0}, Lcn/domob/android/ads/G$a;-><init>()V

    .line 100
    const-string v1, "domob_close_interstitial.png"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/G$a;->b(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p1, v2}, Lcn/domob/android/ads/G$a;->b(Landroid/content/Context;I)V

    .line 102
    invoke-virtual {v0, p1, v2}, Lcn/domob/android/ads/G$a;->c(Landroid/content/Context;I)V

    .line 103
    invoke-virtual {p2}, Lcn/domob/android/ads/DomobVideoInterstitialSceneInfo;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/G$a;->c(I)V

    .line 105
    invoke-virtual {p2}, Lcn/domob/android/ads/DomobVideoInterstitialSceneInfo;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    .line 107
    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/DomobVideoInterstitialAd;->a(Landroid/content/Context;Lcn/domob/android/ads/G$a;)V

    .line 112
    :cond_28
    :goto_28
    return-object v0

    .line 97
    :cond_29
    new-instance p2, Lcn/domob/android/ads/DomobVideoInterstitialSceneInfo;

    invoke-direct {p2}, Lcn/domob/android/ads/DomobVideoInterstitialSceneInfo;-><init>()V

    goto :goto_7

    .line 108
    :cond_2f
    invoke-virtual {p2}, Lcn/domob/android/ads/DomobVideoInterstitialSceneInfo;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_28

    .line 110
    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/DomobVideoInterstitialAd;->b(Landroid/content/Context;Lcn/domob/android/ads/G$a;)V

    goto :goto_28
.end method

.method private a(Landroid/content/Context;Lcn/domob/android/ads/G$a;)V
    .registers 4

    .prologue
    .line 122
    const/16 v0, 0x22

    invoke-virtual {p2, p1, v0}, Lcn/domob/android/ads/G$a;->a(Landroid/content/Context;I)V

    .line 124
    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Lcn/domob/android/ads/G$a;->d(Landroid/content/Context;I)V

    .line 125
    return-void
.end method

.method private b(Landroid/content/Context;Lcn/domob/android/ads/G$a;)V
    .registers 4

    .prologue
    .line 134
    const/16 v0, 0x1e

    invoke-virtual {p2, p1, v0}, Lcn/domob/android/ads/G$a;->d(Landroid/content/Context;I)V

    .line 136
    const/16 v0, 0xc

    invoke-virtual {p2, p1, v0}, Lcn/domob/android/ads/G$a;->a(Landroid/content/Context;I)V

    .line 137
    return-void
.end method


# virtual methods
.method public changeScene(Lcn/domob/android/ads/DomobSceneInfo;)V
    .registers 4
    .param p1, "sceneInfo"    # Lcn/domob/android/ads/DomobSceneInfo;

    .prologue
    .line 83
    sget-object v0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->a:Lcn/domob/android/i/f;

    const-string v1, "scene change"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {p1}, Lcn/domob/android/ads/DomobSceneInfo;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcn/domob/android/ads/DomobVideoInterstitialAd;->a(Landroid/content/Context;Lcn/domob/android/ads/DomobSceneInfo;)Lcn/domob/android/ads/G$a;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/domob/android/ads/G;->b(Lcn/domob/android/ads/DomobSceneInfo;Lcn/domob/android/ads/G$a;)V

    .line 85
    return-void
.end method

.method public closeVideoInterstitialAd()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->q()V

    .line 144
    return-void
.end method

.method public isVideoInterstitialAdReady()Z
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->l()Z

    move-result v0

    return v0
.end method

.method public loadVideoInterstitialAd()V
    .registers 4

    .prologue
    .line 44
    iget-object v0, p0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->l()Z

    move-result v0

    if-nez v0, :cond_e

    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->n()V

    .line 49
    :cond_d
    :goto_d
    return-void

    .line 46
    :cond_e
    iget-object v0, p0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 47
    sget-object v0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->a:Lcn/domob/android/i/f;

    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "the last ad didn\'t show, so please show it before request the next ad"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public setKeyword(Ljava/lang/String;)V
    .registers 3
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/G;->setKeyword(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .registers 3
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/G;->setUserBirthdayStr(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .registers 3
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/G;->setUserGender(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .registers 3
    .param p1, "pc"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/G;->setUserPostcode(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setVideoInterstitialAdListener(Lcn/domob/android/ads/DomobVideoInterstitialAdListener;)V
    .registers 3
    .param p1, "VideoInterstitialAdListener"    # Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    .prologue
    .line 57
    iget-object v0, p0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/G;->a(Lcn/domob/android/ads/DomobVideoInterstitialAdListener;)V

    .line 58
    return-void
.end method

.method public showVideoInterstitialAd(Lcn/domob/android/ads/DomobSceneInfo;)V
    .registers 4
    .param p1, "sceneInfo"    # Lcn/domob/android/ads/DomobSceneInfo;

    .prologue
    .line 71
    iget-object v0, p0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->m()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 72
    sget-object v0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->a:Lcn/domob/android/i/f;

    const-string v1, "Show VideoInterstitial View."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {p1}, Lcn/domob/android/ads/DomobSceneInfo;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcn/domob/android/ads/DomobVideoInterstitialAd;->a(Landroid/content/Context;Lcn/domob/android/ads/DomobSceneInfo;)Lcn/domob/android/ads/G$a;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/domob/android/ads/G;->a(Lcn/domob/android/ads/DomobSceneInfo;Lcn/domob/android/ads/G$a;)V

    .line 77
    :goto_1c
    return-void

    .line 75
    :cond_1d
    sget-object v0, Lcn/domob/android/ads/DomobVideoInterstitialAd;->a:Lcn/domob/android/i/f;

    const-string v1, "VideoInterstitial ad is not ready"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1c
.end method
