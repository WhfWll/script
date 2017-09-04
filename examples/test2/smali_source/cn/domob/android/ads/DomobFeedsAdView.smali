.class public Lcn/domob/android/ads/DomobFeedsAdView;
.super Lcn/domob/android/ads/u;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/DomobInterstitialAdListener;


# static fields
.field private static r:Lcn/domob/android/i/f;


# instance fields
.field private s:Lcn/domob/android/ads/DomobFeedsAdListener;

.field private t:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/DomobFeedsAdView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/DomobFeedsAdView;->r:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "320x240"

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/domob/android/ads/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->t:Landroid/os/Handler;

    .line 44
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->f:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->b:I

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcn/domob/android/ads/DomobFeedsAdView;->a(Lcn/domob/android/ads/DomobInterstitialAdListener;Lcn/domob/android/ads/DomobInterstitialAd;)V

    .line 46
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobFeedsAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobFeedsAdView;->setBackgroundColor(I)V

    .line 48
    invoke-direct {p0}, Lcn/domob/android/ads/DomobFeedsAdView;->t()V

    .line 49
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobFeedsAdView;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->t:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized c(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 81
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->q:Z

    .line 82
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->a:Lcn/domob/android/ads/g;

    iput-object p1, v0, Lcn/domob/android/ads/g;->b:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/DomobFeedsAdView$2;

    invoke-direct {v1, p0, p1}, Lcn/domob/android/ads/DomobFeedsAdView$2;-><init>(Lcn/domob/android/ads/DomobFeedsAdView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_16

    .line 141
    monitor-exit p0

    return-void

    .line 81
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private t()V
    .registers 3

    .prologue
    .line 55
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcn/domob/android/ads/DomobFeedsAdView;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobFeedsAdView;->addView(Landroid/view/View;)V

    .line 57
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 150
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->p:Z

    if-eqz v0, :cond_11

    .line 151
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobFeedsAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 152
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 153
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobFeedsAdView;->invalidate()V

    .line 154
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobFeedsAdView;->p()V

    .line 156
    :cond_11
    return-void
.end method

.method public closeFeedsAd()V
    .registers 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobFeedsAdView;->close()V

    .line 145
    return-void
.end method

.method public isFeedsAdReady()Z
    .registers 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobFeedsAdView;->m()Z

    move-result v0

    return v0
.end method

.method public loadFeedsAd()V
    .registers 4

    .prologue
    .line 171
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobFeedsAdView;->isFeedsAdReady()Z

    move-result v0

    if-nez v0, :cond_a

    .line 172
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobFeedsAdView;->l()V

    .line 176
    :cond_9
    :goto_9
    return-void

    .line 173
    :cond_a
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobFeedsAdView;->r()Z

    move-result v0

    if-nez v0, :cond_9

    .line 174
    sget-object v0, Lcn/domob/android/ads/DomobFeedsAdView;->r:Lcn/domob/android/i/f;

    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "the last ad didn\'t show, so please show it before request the next ad"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V
    .registers 3
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 295
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    if-eqz v0, :cond_9

    .line 296
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/DomobFeedsAdListener;->onFeedsAdClicked(Lcn/domob/android/ads/DomobFeedsAdView;)V

    .line 298
    :cond_9
    return-void
.end method

.method public bridge synthetic onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .registers 3
    .param p1, "x0"    # Lcn/domob/android/ads/DomobAdView;
    .param p2, "x1"    # Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcn/domob/android/ads/u;->onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    return-void
.end method

.method public bridge synthetic onDomobAdOverlayDismissed(Lcn/domob/android/ads/DomobAdView;)V
    .registers 2
    .param p1, "x0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcn/domob/android/ads/u;->onDomobAdOverlayDismissed(Lcn/domob/android/ads/DomobAdView;)V

    return-void
.end method

.method public bridge synthetic onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V
    .registers 2
    .param p1, "x0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcn/domob/android/ads/u;->onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V

    return-void
.end method

.method public bridge synthetic onDomobAdRequiresCurrentContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Lcn/domob/android/ads/u;->onDomobAdRequiresCurrentContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V
    .registers 2
    .param p1, "x0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcn/domob/android/ads/u;->onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V

    return-void
.end method

.method public bridge synthetic onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V
    .registers 2
    .param p1, "x0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcn/domob/android/ads/u;->onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V

    return-void
.end method

.method public onInterstitialAdClicked(Lcn/domob/android/ads/DomobInterstitialAd;)V
    .registers 2
    .param p1, "interstitialAd"    # Lcn/domob/android/ads/DomobInterstitialAd;

    .prologue
    .line 291
    return-void
.end method

.method public onInterstitialAdDismiss()V
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    if-eqz v0, :cond_9

    .line 262
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobFeedsAdListener;->onFeedsAdDismiss()V

    .line 264
    :cond_9
    return-void
.end method

.method public onInterstitialAdFailed(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .registers 3
    .param p1, "code"    # Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    .prologue
    .line 247
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    if-eqz v0, :cond_9

    .line 248
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    invoke-interface {v0, p1}, Lcn/domob/android/ads/DomobFeedsAdListener;->onFeedsAdFailed(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 250
    :cond_9
    return-void
.end method

.method public onInterstitialAdLeaveApplication()V
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    if-eqz v0, :cond_9

    .line 283
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobFeedsAdListener;->onFeedsAdLeaveApplication()V

    .line 285
    :cond_9
    return-void
.end method

.method public onInterstitialAdPresent()V
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    if-eqz v0, :cond_9

    .line 255
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobFeedsAdListener;->onFeedsAdPresent()V

    .line 257
    :cond_9
    return-void
.end method

.method public onInterstitialAdReady()V
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    if-eqz v0, :cond_9

    .line 241
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobFeedsAdListener;->onFeedsAdReady()V

    .line 243
    :cond_9
    return-void
.end method

.method public onLandingPageClose()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    if-eqz v0, :cond_9

    .line 276
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobFeedsAdListener;->onLandingPageClose()V

    .line 278
    :cond_9
    return-void
.end method

.method public onLandingPageOpen()V
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    if-eqz v0, :cond_9

    .line 269
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobFeedsAdListener;->onLandingPageOpen()V

    .line 271
    :cond_9
    return-void
.end method

.method public setFeedsAdListener(Lcn/domob/android/ads/DomobFeedsAdListener;)V
    .registers 2
    .param p1, "feedsAdListener"    # Lcn/domob/android/ads/DomobFeedsAdListener;

    .prologue
    .line 164
    iput-object p1, p0, Lcn/domob/android/ads/DomobFeedsAdView;->s:Lcn/domob/android/ads/DomobFeedsAdListener;

    .line 165
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .registers 2
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcn/domob/android/ads/u;->setKeyword(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .registers 2
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcn/domob/android/ads/u;->setUserBirthdayStr(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .registers 2
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcn/domob/android/ads/u;->setUserGender(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .registers 2
    .param p1, "pc"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcn/domob/android/ads/u;->setUserPostcode(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public showAd(Lcn/domob/android/ads/n;[Landroid/view/animation/AnimationSet;)V
    .registers 6
    .param p1, "adapter"    # Lcn/domob/android/ads/n;
    .param p2, "animationPair"    # [Landroid/view/animation/AnimationSet;

    .prologue
    .line 61
    iput-object p1, p0, Lcn/domob/android/ads/DomobFeedsAdView;->g:Lcn/domob/android/ads/n;

    .line 62
    invoke-virtual {p1}, Lcn/domob/android/ads/n;->b()Landroid/view/View;

    move-result-object v1

    .line 65
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcn/domob/android/ads/DomobFeedsAdView$1;

    invoke-direct {v2, p0, v1}, Lcn/domob/android/ads/DomobFeedsAdView$1;-><init>(Lcn/domob/android/ads/DomobFeedsAdView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->D()V

    .line 78
    return-void
.end method

.method public showFeedsAd(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobFeedsAdView;->r()Z

    move-result v0

    if-nez v0, :cond_11

    .line 192
    sget-object v0, Lcn/domob/android/ads/DomobFeedsAdView;->r:Lcn/domob/android/i/f;

    const-string v1, "Show Feeds View."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p1}, Lcn/domob/android/ads/DomobFeedsAdView;->c(Landroid/content/Context;)V

    .line 197
    :goto_10
    return-void

    .line 195
    :cond_11
    sget-object v0, Lcn/domob/android/ads/DomobFeedsAdView;->r:Lcn/domob/android/i/f;

    const-string v1, "Feeds ad is not ready or ad is showing"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10
.end method
