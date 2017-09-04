.class public Lcn/domob/android/ads/DomobPreRollAd;
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
    .line 19
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/DomobPreRollAd;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/DomobPreRollAd;->a:Lcn/domob/android/i/f;

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
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
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

    sget-object v5, Lcn/domob/android/ads/DomobAdView$a;->h:Lcn/domob/android/ads/DomobAdView$a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/G;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/DomobAdView$a;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobPreRollAd;->b:Lcn/domob/android/ads/G;

    .line 39
    return-void
.end method

.method private a(Lcn/domob/android/ads/DomobSceneInfo;)Lcn/domob/android/ads/G$a;
    .registers 4

    .prologue
    .line 84
    .line 85
    instance-of v0, p1, Lcn/domob/android/ads/DomobPreRollSceneInfo;

    if-eqz v0, :cond_35

    .line 86
    check-cast p1, Lcn/domob/android/ads/DomobPreRollSceneInfo;

    .line 90
    :goto_6
    new-instance v0, Lcn/domob/android/ads/G$a;

    invoke-direct {v0}, Lcn/domob/android/ads/G$a;-><init>()V

    .line 91
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/G$a;->c(I)V

    .line 92
    const-string v1, "domob_close.png"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/G$a;->b(Ljava/lang/String;)V

    .line 93
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/G$a;->l(I)V

    .line 94
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobPreRollSceneInfo;->a()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 95
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobPreRollSceneInfo;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/G$a;->b(Z)V

    .line 96
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobPreRollSceneInfo;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/G$a;->h(I)V

    .line 97
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobPreRollSceneInfo;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/G$a;->i(I)V

    .line 99
    :cond_34
    return-object v0

    .line 88
    :cond_35
    new-instance p1, Lcn/domob/android/ads/DomobPreRollSceneInfo;

    invoke-direct {p1}, Lcn/domob/android/ads/DomobPreRollSceneInfo;-><init>()V

    goto :goto_6
.end method


# virtual methods
.method public changeScene(Lcn/domob/android/ads/DomobSceneInfo;)V
    .registers 4
    .param p1, "sceneInfo"    # Lcn/domob/android/ads/DomobSceneInfo;

    .prologue
    .line 106
    sget-object v0, Lcn/domob/android/ads/DomobPreRollAd;->a:Lcn/domob/android/i/f;

    const-string v1, "scene change"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcn/domob/android/ads/DomobPreRollAd;->b:Lcn/domob/android/ads/G;

    invoke-direct {p0, p1}, Lcn/domob/android/ads/DomobPreRollAd;->a(Lcn/domob/android/ads/DomobSceneInfo;)Lcn/domob/android/ads/G$a;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/domob/android/ads/G;->b(Lcn/domob/android/ads/DomobSceneInfo;Lcn/domob/android/ads/G$a;)V

    .line 108
    return-void
.end method

.method public closePreRollAd(Z)V
    .registers 4
    .param p1, "needCallbackOnAdDismiss"    # Z

    .prologue
    .line 123
    iget-object v1, p0, Lcn/domob/android/ads/DomobPreRollAd;->b:Lcn/domob/android/ads/G;

    if-nez p1, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v0}, Lcn/domob/android/ads/G;->a(Z)V

    .line 124
    return-void

    .line 123
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPreRollAdReady()Z
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcn/domob/android/ads/DomobPreRollAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->l()Z

    move-result v0

    return v0
.end method

.method public loadPreRollAd()V
    .registers 4

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/DomobPreRollAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->l()Z

    move-result v0

    if-nez v0, :cond_e

    .line 46
    iget-object v0, p0, Lcn/domob/android/ads/DomobPreRollAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->n()V

    .line 50
    :cond_d
    :goto_d
    return-void

    .line 47
    :cond_e
    iget-object v0, p0, Lcn/domob/android/ads/DomobPreRollAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 48
    sget-object v0, Lcn/domob/android/ads/DomobPreRollAd;->a:Lcn/domob/android/i/f;

    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "the last ad didn\'t show, so please show it before request the next ad"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public setCountdownTotalSeconds(I)V
    .registers 3
    .param p1, "countdownTotalSeconds"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcn/domob/android/ads/DomobPreRollAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/G;->a(I)V

    .line 115
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .registers 3
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcn/domob/android/ads/DomobPreRollAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/G;->setKeyword(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public setProRollAdListener(Lcn/domob/android/ads/DomobPreRollAdListener;)V
    .registers 3
    .param p1, "ProRellAdListener"    # Lcn/domob/android/ads/DomobPreRollAdListener;

    .prologue
    .line 58
    iget-object v0, p0, Lcn/domob/android/ads/DomobPreRollAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/G;->a(Lcn/domob/android/ads/DomobPreRollAdListener;)V

    .line 59
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .registers 3
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcn/domob/android/ads/DomobPreRollAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/G;->setUserBirthdayStr(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .registers 3
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcn/domob/android/ads/DomobPreRollAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/G;->setUserGender(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .registers 3
    .param p1, "pc"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcn/domob/android/ads/DomobPreRollAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/G;->setUserPostcode(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public showPreRollAd(Lcn/domob/android/ads/DomobSceneInfo;)V
    .registers 4
    .param p1, "sceneInfo"    # Lcn/domob/android/ads/DomobSceneInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcn/domob/android/ads/DomobPreRollAd;->b:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->m()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 73
    sget-object v0, Lcn/domob/android/ads/DomobPreRollAd;->a:Lcn/domob/android/i/f;

    const-string v1, "Show PreRoll View."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcn/domob/android/ads/DomobPreRollAd;->b:Lcn/domob/android/ads/G;

    invoke-direct {p0, p1}, Lcn/domob/android/ads/DomobPreRollAd;->a(Lcn/domob/android/ads/DomobSceneInfo;)Lcn/domob/android/ads/G$a;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/domob/android/ads/G;->a(Lcn/domob/android/ads/DomobSceneInfo;Lcn/domob/android/ads/G$a;)V

    .line 78
    :goto_18
    return-void

    .line 76
    :cond_19
    sget-object v0, Lcn/domob/android/ads/DomobPreRollAd;->a:Lcn/domob/android/i/f;

    const-string v1, "PreRoll ad is not ready"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_18
.end method
