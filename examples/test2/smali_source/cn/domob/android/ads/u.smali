.class Lcn/domob/android/ads/u;
.super Lcn/domob/android/ads/DomobAdView;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/DomobAdEventListener;


# static fields
.field private static r:Lcn/domob/android/i/f;


# instance fields
.field protected p:Z

.field protected q:Z

.field private s:Lcn/domob/android/ads/DomobInterstitialAd;

.field private t:Lcn/domob/android/ads/DomobInterstitialAdListener;

.field private u:Lcn/domob/android/ads/v$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/u;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/u;->r:Lcn/domob/android/i/f;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 35
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;Z)V

    .line 24
    iput-boolean v6, p0, Lcn/domob/android/ads/u;->p:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/u;->q:Z

    .line 36
    iget-object v0, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_1d

    .line 37
    iget-object v0, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, v6}, Lcn/domob/android/ads/g;->a(Z)V

    .line 38
    iget-object v0, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, v6}, Lcn/domob/android/ads/g;->b(Z)V

    .line 41
    :cond_1d
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->c:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/u;->b:I

    .line 42
    return-void
.end method

.method private t()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 126
    iget-object v1, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    iget-object v1, v1, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->b()Ljava/lang/String;

    move-result-object v1

    .line 127
    const-string v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 128
    iget-object v1, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    iget-object v1, v1, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->c()I

    move-result v1

    .line 129
    iget-object v2, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    iget-object v2, v2, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v2}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j$c;->d()I

    move-result v2

    .line 130
    const/16 v3, 0x258

    if-ne v1, v3, :cond_35

    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_3d

    :cond_35
    const/16 v3, 0x12c

    if-ne v1, v3, :cond_3e

    const/16 v1, 0xfa

    if-ne v2, v1, :cond_3e

    .line 137
    :cond_3d
    :goto_3d
    return v0

    .line 133
    :cond_3e
    sget-object v0, Lcn/domob/android/ads/u;->r:Lcn/domob/android/i/f;

    const-string v1, "video ad size is not 600x500 or 300x250"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method private u()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 144
    iget-object v1, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    iget-object v1, v1, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->b()Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string v2, "domob"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 148
    const/4 v1, 0x0

    .line 149
    iget-object v2, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->B()Lcn/domob/android/ads/j;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j$c;->t()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {v2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 153
    iget-object v3, p0, Lcn/domob/android/ads/u;->c:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/b/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 162
    :cond_36
    :goto_36
    return v0

    .line 156
    :cond_37
    sget-object v0, Lcn/domob/android/ads/u;->r:Lcn/domob/android/i/f;

    const-string v2, "Ad response carrying the current direction and the direction of mobile inconsistencies"

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    move v0, v1

    goto :goto_36

    .line 159
    :cond_40
    sget-object v0, Lcn/domob/android/ads/u;->r:Lcn/domob/android/i/f;

    const-string v2, "ad response not contain interstitial orientation"

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    move v0, v1

    goto :goto_36
.end method

.method private v()V
    .registers 3

    .prologue
    .line 169
    sget-object v0, Lcn/domob/android/ads/u;->r:Lcn/domob/android/i/f;

    const-string v1, "give up showing interstitial ad"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/u;->p:Z

    .line 171
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, p0, v0}, Lcn/domob/android/ads/u;->onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 172
    return-void
.end method

.method private w()Z
    .registers 3

    .prologue
    .line 210
    iget-object v0, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->B()Lcn/domob/android/ads/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method a(Lcn/domob/android/ads/DomobInterstitialAdListener;Lcn/domob/android/ads/DomobInterstitialAd;)V
    .registers 3

    .prologue
    .line 243
    iput-object p2, p0, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/DomobInterstitialAd;

    .line 244
    iput-object p1, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    .line 245
    return-void
.end method

.method protected a(Lcn/domob/android/ads/n;)V
    .registers 2

    .prologue
    .line 216
    return-void
.end method

.method b(Landroid/content/Context;)V
    .registers 14

    .prologue
    const/4 v11, -0x1

    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v1}, Lcn/domob/android/ads/g;->B()Lcn/domob/android/ads/j;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v4

    .line 74
    invoke-virtual {v4}, Lcn/domob/android/ads/j$c;->u()Z

    move-result v3

    .line 75
    invoke-virtual {v4}, Lcn/domob/android/ads/j$c;->w()F

    move-result v5

    .line 76
    invoke-virtual {v4}, Lcn/domob/android/ads/j$c;->y()F

    move-result v6

    .line 77
    invoke-virtual {v4}, Lcn/domob/android/ads/j$c;->H()Lcn/domob/android/ads/j$b;

    move-result-object v7

    .line 78
    invoke-virtual {v7}, Lcn/domob/android/ads/j$b;->a()Z

    move-result v2

    .line 79
    invoke-virtual {v4}, Lcn/domob/android/ads/j$c;->I()Lcn/domob/android/ads/j$b;

    move-result-object v8

    .line 80
    invoke-virtual {v8}, Lcn/domob/android/ads/j$b;->a()Z

    move-result v1

    .line 82
    iget-object v9, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    iget-object v9, v9, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    invoke-virtual {v9}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v9

    invoke-virtual {v9}, Lcn/domob/android/ads/j$c;->b()Ljava/lang/String;

    move-result-object v9

    .line 83
    const-string v10, "domob"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b2

    .line 84
    iput v11, p0, Lcn/domob/android/ads/u;->i:I

    .line 85
    iput v11, p0, Lcn/domob/android/ads/u;->j:I

    move v1, v0

    move v2, v0

    .line 90
    :goto_42
    new-instance v3, Lcn/domob/android/ads/v$a;

    invoke-direct {v3, p1}, Lcn/domob/android/ads/v$a;-><init>(Landroid/content/Context;)V

    iget v9, p0, Lcn/domob/android/ads/u;->i:I

    iget v10, p0, Lcn/domob/android/ads/u;->j:I

    invoke-virtual {v3, v9, v10}, Lcn/domob/android/ads/v$a;->a(II)Lcn/domob/android/ads/v$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/domob/android/ads/v$a;->a(Z)Lcn/domob/android/ads/v$a;

    move-result-object v2

    const-string v3, "rectangle"

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/v$a;->a(Ljava/lang/String;)Lcn/domob/android/ads/v$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/v$a;->b(Z)Lcn/domob/android/ads/v$a;

    move-result-object v1

    invoke-virtual {v7}, Lcn/domob/android/ads/j$b;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/v$a;->a(I)Lcn/domob/android/ads/v$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/v$a;->c(Z)Lcn/domob/android/ads/v$a;

    move-result-object v0

    invoke-virtual {v8}, Lcn/domob/android/ads/j$b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/v$a;->b(I)Lcn/domob/android/ads/v$a;

    move-result-object v0

    invoke-virtual {v4}, Lcn/domob/android/ads/j$c;->x()Z

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcn/domob/android/ads/v$a;->a(ZF)Lcn/domob/android/ads/v$a;

    move-result-object v0

    invoke-virtual {v4}, Lcn/domob/android/ads/j$c;->z()Z

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcn/domob/android/ads/v$a;->b(ZF)Lcn/domob/android/ads/v$a;

    move-result-object v0

    new-instance v1, Lcn/domob/android/ads/u$2;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/u$2;-><init>(Lcn/domob/android/ads/u;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/v$a;->a(Lcn/domob/android/ads/v$c;)Lcn/domob/android/ads/v$a;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/u;->u:Lcn/domob/android/ads/v$a;

    .line 112
    invoke-direct {p0}, Lcn/domob/android/ads/u;->u()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-direct {p0}, Lcn/domob/android/ads/u;->t()Z

    move-result v0

    if-nez v0, :cond_a6

    .line 113
    :cond_98
    invoke-direct {p0}, Lcn/domob/android/ads/u;->v()V

    .line 117
    :goto_9b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/u;->q:Z

    .line 119
    sget-object v0, Lcn/domob/android/ads/u;->r:Lcn/domob/android/i/f;

    const-string v1, "the ad is showing and change mIsAdShow to true"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    return-void

    .line 115
    :cond_a6
    iget-object v0, p0, Lcn/domob/android/ads/u;->u:Lcn/domob/android/ads/v$a;

    iget-object v1, p0, Lcn/domob/android/ads/u;->g:Lcn/domob/android/ads/n;

    invoke-virtual {v1}, Lcn/domob/android/ads/n;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/v$a;->a(Landroid/view/View;)V

    goto :goto_9b

    :cond_b2
    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_42
.end method

.method protected b(Lcn/domob/android/ads/n;)V
    .registers 2

    .prologue
    .line 228
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcn/domob/android/ads/u;->u:Lcn/domob/android/ads/v$a;

    if-eqz v0, :cond_9

    .line 221
    iget-object v0, p0, Lcn/domob/android/ads/u;->u:Lcn/domob/android/ads/v$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/v$a;->a()V

    .line 223
    :cond_9
    return-void
.end method

.method l()V
    .registers 1

    .prologue
    .line 46
    invoke-super {p0, p0}, Lcn/domob/android/ads/DomobAdView;->setAdEventListener(Lcn/domob/android/ads/DomobAdEventListener;)V

    .line 47
    invoke-super {p0}, Lcn/domob/android/ads/DomobAdView;->requestRefreshAd()V

    .line 48
    return-void
.end method

.method m()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcn/domob/android/ads/u;->p:Z

    return v0
.end method

.method protected n()V
    .registers 7

    .prologue
    .line 175
    iget-object v0, p0, Lcn/domob/android/ads/u;->g:Lcn/domob/android/ads/n;

    invoke-virtual {v0}, Lcn/domob/android/ads/n;->d()V

    .line 176
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_e

    .line 177
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdPresent()V

    .line 180
    :cond_e
    invoke-direct {p0}, Lcn/domob/android/ads/u;->w()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 181
    iget-object v0, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    iget-object v1, p0, Lcn/domob/android/ads/u;->g:Lcn/domob/android/ads/n;

    invoke-virtual {v1}, Lcn/domob/android/ads/n;->c()Lcn/domob/android/ads/j;

    move-result-object v1

    const-string v2, "s"

    const-string v3, "s"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/lang/String;Ljava/lang/String;J)V

    .line 183
    :cond_25
    return-void
.end method

.method protected o()V
    .registers 7

    .prologue
    .line 186
    invoke-direct {p0}, Lcn/domob/android/ads/u;->w()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 187
    iget-object v0, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    iget-object v1, p0, Lcn/domob/android/ads/u;->g:Lcn/domob/android/ads/n;

    invoke-virtual {v1}, Lcn/domob/android/ads/n;->c()Lcn/domob/android/ads/j;

    move-result-object v1

    const-string v2, "m"

    const-string v3, "s"

    iget-object v4, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v4}, Lcn/domob/android/ads/g;->g()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/lang/String;Ljava/lang/String;J)V

    .line 190
    :cond_1b
    return-void
.end method

.method public onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V
    .registers 4
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 293
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/DomobInterstitialAd;

    if-eqz v0, :cond_16

    .line 294
    sget-object v0, Lcn/domob/android/ads/u;->r:Lcn/domob/android/i/f;

    const-string v1, "Notify user clicks on the interstitial or feeds ad."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    iget-object v1, p0, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/DomobInterstitialAd;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdClicked(Lcn/domob/android/ads/DomobInterstitialAd;)V

    .line 297
    :cond_16
    return-void
.end method

.method public onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .registers 5
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;
    .param p2, "code"    # Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    .prologue
    .line 261
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_10

    .line 262
    sget-object v0, Lcn/domob/android/ads/u;->r:Lcn/domob/android/i/f;

    const-string v1, "Notify interstitial or feeds ad failed."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0, p2}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdFailed(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 265
    :cond_10
    return-void
.end method

.method public onDomobAdOverlayDismissed(Lcn/domob/android/ads/DomobAdView;)V
    .registers 4
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 277
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_10

    .line 278
    sget-object v0, Lcn/domob/android/ads/u;->r:Lcn/domob/android/i/f;

    const-string v1, "Notify interstitial or feeds ad landing page close."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onLandingPageClose()V

    .line 281
    :cond_10
    return-void
.end method

.method public onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V
    .registers 4
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 269
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_10

    .line 270
    sget-object v0, Lcn/domob/android/ads/u;->r:Lcn/domob/android/i/f;

    const-string v1, "Notify interstitial or feeds ad landing page open."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onLandingPageOpen()V

    .line 273
    :cond_10
    return-void
.end method

.method public onDomobAdRequiresCurrentContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    iget-object v0, v0, Lcn/domob/android/ads/g;->b:Landroid/content/Context;

    return-object v0
.end method

.method public onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V
    .registers 4
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/u;->p:Z

    .line 250
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_1d

    .line 251
    sget-object v0, Lcn/domob/android/ads/u;->r:Lcn/domob/android/i/f;

    const-string v1, "Notify interstitial or feeds ad ready."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/u;->q:Z

    .line 254
    sget-object v0, Lcn/domob/android/ads/u;->r:Lcn/domob/android/i/f;

    const-string v1, "ad already received and change show status to false"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdReady()V

    .line 257
    :cond_1d
    return-void
.end method

.method public onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V
    .registers 4
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 285
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_10

    .line 286
    sget-object v0, Lcn/domob/android/ads/u;->r:Lcn/domob/android/i/f;

    const-string v1, "Notify interstitial or feeds ad leaving application."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdLeaveApplication()V

    .line 289
    :cond_10
    return-void
.end method

.method protected p()V
    .registers 7

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/u;->p:Z

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/u;->q:Z

    .line 195
    iget-object v0, p0, Lcn/domob/android/ads/u;->g:Lcn/domob/android/ads/n;

    invoke-virtual {v0}, Lcn/domob/android/ads/n;->e()V

    .line 196
    invoke-direct {p0}, Lcn/domob/android/ads/u;->w()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 197
    iget-object v0, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    iget-object v1, p0, Lcn/domob/android/ads/u;->g:Lcn/domob/android/ads/n;

    invoke-virtual {v1}, Lcn/domob/android/ads/n;->c()Lcn/domob/android/ads/j;

    move-result-object v1

    const-string v2, "f"

    const-string v3, "s"

    iget-object v4, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v4}, Lcn/domob/android/ads/g;->g()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/lang/String;Ljava/lang/String;J)V

    .line 200
    :cond_26
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_2f

    .line 201
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdDismiss()V

    .line 203
    :cond_2f
    return-void
.end method

.method q()Z
    .registers 2

    .prologue
    .line 231
    iget-boolean v0, p0, Lcn/domob/android/ads/u;->p:Z

    return v0
.end method

.method r()Z
    .registers 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lcn/domob/android/ads/u;->q:Z

    return v0
.end method

.method s()Lcn/domob/android/ads/DomobInterstitialAdListener;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcn/domob/android/ads/u;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    return-object v0
.end method

.method public showAd(Lcn/domob/android/ads/n;[Landroid/view/animation/AnimationSet;)V
    .registers 5
    .param p1, "adapter"    # Lcn/domob/android/ads/n;
    .param p2, "animationPair"    # [Landroid/view/animation/AnimationSet;

    .prologue
    .line 56
    iput-object p1, p0, Lcn/domob/android/ads/u;->g:Lcn/domob/android/ads/n;

    .line 57
    iget-object v0, p0, Lcn/domob/android/ads/u;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/u$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/u$1;-><init>(Lcn/domob/android/ads/u;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 65
    iget-object v0, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->D()V

    .line 66
    return-void
.end method
