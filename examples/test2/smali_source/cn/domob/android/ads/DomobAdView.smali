.class public Lcn/domob/android/ads/DomobAdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobAdView$a;
    }
.end annotation


# static fields
.field public static final INLINE_SIZE_300X250:Ljava/lang/String; = "300x250"

.field public static final INLINE_SIZE_320X50:Ljava/lang/String; = "320x50"

.field public static final INLINE_SIZE_600X500:Ljava/lang/String; = "600x500"

.field public static final INLINE_SIZE_600X94:Ljava/lang/String; = "600x94"

.field public static final INLINE_SIZE_728X90:Ljava/lang/String; = "728x90"

.field public static final INLINE_SIZE_FLEXIBLE:Ljava/lang/String; = "FLEXIBLE_BANNER"

.field private static p:Lcn/domob/android/i/f; = null

.field private static final r:Ljava/lang/String; = "0x90"

.field private static final s:Ljava/lang/String; = "0x50"


# instance fields
.field protected a:Lcn/domob/android/ads/g;

.field protected b:I

.field protected c:Landroid/content/Context;

.field protected d:Z

.field protected e:Z

.field protected f:Lcn/domob/android/ads/H;

.field protected g:Lcn/domob/android/ads/n;

.field protected h:Ljava/lang/String;

.field protected i:I

.field protected j:I

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Lcn/domob/android/ads/DomobAdListener;

.field protected o:Lcn/domob/android/ads/DomobAdEventListener;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 116
    const-string v4, "320x50"

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v4, "FLEXIBLE_BANNER"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;
    .param p4, "size"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;
    .param p4, "size"    # Ljava/lang/String;
    .param p5, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;Z)V

    .line 121
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;Z)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;
    .param p4, "size"    # Ljava/lang/String;
    .param p5, "attrs"    # Landroid/util/AttributeSet;
    .param p6, "needCloseHardware"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1, p5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    .line 34
    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->d:Z

    .line 36
    iput-boolean v2, p0, Lcn/domob/android/ads/DomobAdView;->e:Z

    .line 40
    iput v1, p0, Lcn/domob/android/ads/DomobAdView;->i:I

    .line 41
    iput v1, p0, Lcn/domob/android/ads/DomobAdView;->j:I

    .line 42
    iput-boolean v2, p0, Lcn/domob/android/ads/DomobAdView;->k:Z

    .line 43
    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->l:Z

    .line 44
    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->m:Z

    .line 47
    iput-boolean v2, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    .line 127
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->c:Landroid/content/Context;

    .line 128
    new-instance v0, Lcn/domob/android/ads/H;

    invoke-direct {v0, p1}, Lcn/domob/android/ads/H;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    .line 131
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/H;->setVisibility(I)V

    .line 132
    invoke-virtual {p0, p2, p3}, Lcn/domob/android/ads/DomobAdView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdView;->addView(Landroid/view/View;)V

    .line 135
    invoke-virtual {p0, p4}, Lcn/domob/android/ads/DomobAdView;->setAdSize(Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->b:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->b:I

    .line 139
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->a(Landroid/content/Context;)V

    .line 140
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->H()V

    .line 141
    if-eqz p6, :cond_53

    .line 142
    invoke-static {p0}, Lcn/domob/android/i/g;->a(Landroid/view/View;)V

    .line 143
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    const-string v1, "close hardware"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 145
    :cond_53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;
    .param p4, "isRefreshable"    # Z

    .prologue
    const/4 v6, 0x0

    .line 84
    const-string v4, "FLEXIBLE_BANNER"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 86
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_1b

    if-nez p4, :cond_1b

    .line 87
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, v6}, Lcn/domob/android/ads/g;->a(Z)V

    .line 88
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, v6}, Lcn/domob/android/ads/g;->b(Z)V

    .line 90
    :cond_1b
    return-void
.end method

.method private c(Lcn/domob/android/ads/n;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->i()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 340
    invoke-virtual {p1}, Lcn/domob/android/ads/n;->c()Lcn/domob/android/ads/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->s()I

    move-result v0

    .line 341
    packed-switch v0, :pswitch_data_5e

    .line 355
    add-int/lit8 v0, v0, -0x2

    .line 356
    if-ltz v0, :cond_4f

    invoke-static {}, Lcn/domob/android/ads/L$a;->values()[Lcn/domob/android/ads/L$a;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4f

    .line 358
    invoke-static {}, Lcn/domob/android/ads/L$a;->values()[Lcn/domob/android/ads/L$a;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-static {v0}, Lcn/domob/android/ads/L;->a(Lcn/domob/android/ads/L$a;)[Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/domob/android/ads/DomobAdView;->showAd(Lcn/domob/android/ads/n;[Landroid/view/animation/AnimationSet;)V

    .line 370
    :goto_30
    return-void

    .line 344
    :pswitch_31
    invoke-virtual {p0, p1, v2}, Lcn/domob/android/ads/DomobAdView;->showAd(Lcn/domob/android/ads/n;[Landroid/view/animation/AnimationSet;)V

    goto :goto_30

    .line 348
    :pswitch_35
    invoke-static {}, Lcn/domob/android/ads/L$a;->values()[Lcn/domob/android/ads/L$a;

    move-result-object v0

    array-length v0, v0

    .line 349
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 350
    invoke-static {}, Lcn/domob/android/ads/L$a;->values()[Lcn/domob/android/ads/L$a;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-static {v0}, Lcn/domob/android/ads/L;->a(Lcn/domob/android/ads/L$a;)[Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/domob/android/ads/DomobAdView;->showAd(Lcn/domob/android/ads/n;[Landroid/view/animation/AnimationSet;)V

    goto :goto_30

    .line 362
    :cond_4f
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    const-string v1, "Invalid animation type index."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, p1, v2}, Lcn/domob/android/ads/DomobAdView;->showAd(Lcn/domob/android/ads/n;[Landroid/view/animation/AnimationSet;)V

    goto :goto_30

    .line 368
    :cond_5a
    invoke-virtual {p0, p1, v2}, Lcn/domob/android/ads/DomobAdView;->showAd(Lcn/domob/android/ads/n;[Landroid/view/animation/AnimationSet;)V

    goto :goto_30

    .line 341
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_31
        :pswitch_35
    .end packed-switch
.end method

.method private domobAdDismiss()V
    .registers 3

    .prologue
    .line 681
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    const-string v1, "mogo_dismiss"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->j(Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method private domobAdImpression()V
    .registers 3

    .prologue
    .line 674
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    const-string v1, "mogo_imp"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->j(Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method private domobAdLoad()V
    .registers 3

    .prologue
    .line 667
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    const-string v1, "mogo_load"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->j(Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method static synthetic k()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    return-object v0
.end method

.method private l()V
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_f

    .line 484
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->A()Z

    move-result v0

    if-nez v0, :cond_f

    .line 485
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->requestRefreshAd()V

    .line 488
    :cond_f
    return-void
.end method

.method private needCleanWhenDetached(Z)V
    .registers 2
    .param p1, "isClean"    # Z

    .prologue
    .line 656
    iput-boolean p1, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    .line 657
    return-void
.end method


# virtual methods
.method protected a(Lcn/domob/android/ads/n;)V
    .registers 8

    .prologue
    .line 464
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {p1}, Lcn/domob/android/ads/n;->c()Lcn/domob/android/ads/j;

    move-result-object v1

    const-string v2, "s"

    const-string v3, "s"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/lang/String;Ljava/lang/String;J)V

    .line 468
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 178
    new-instance v0, Lcn/domob/android/ads/g;

    invoke-direct {v0, p0, p1, p2}, Lcn/domob/android/ads/g;-><init>(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    .line 179
    return-void
.end method

.method protected a()Z
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Landroid/content/Context;

    invoke-static {v0, p0}, Lcn/domob/android/i/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method protected a(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 254
    :try_start_0
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 255
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 259
    :goto_c
    return v0

    .line 257
    :catch_d
    move-exception v0

    .line 258
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 259
    const/4 v0, 0x1

    goto :goto_c
.end method

.method protected b()Landroid/content/Context;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Landroid/content/Context;

    return-object v0
.end method

.method protected b(Lcn/domob/android/ads/n;)V
    .registers 2

    .prologue
    .line 476
    invoke-virtual {p1}, Lcn/domob/android/ads/n;->d()V

    .line 477
    return-void
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 272
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Z

    return v0
.end method

.method public clean()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 606
    :try_start_1
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v1}, Lcn/domob/android/ads/g;->b()V

    .line 607
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    const-string v2, "Clean DomobAdView."

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v1}, Lcn/domob/android/ads/H;->getChildCount()I

    move-result v2

    .line 609
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WebView to DESTROY."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    move v1, v0

    .line 610
    :goto_2c
    if-ge v1, v2, :cond_5e

    .line 612
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/H;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/domob/android/ads/a;

    if-eqz v0, :cond_4c

    .line 613
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/H;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/a;

    .line 614
    if-eqz v0, :cond_50

    .line 615
    iget-object v3, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/H;->removeView(Landroid/view/View;)V

    .line 616
    invoke-virtual {v0}, Lcn/domob/android/ads/a;->destroy()V

    .line 610
    :cond_4c
    :goto_4c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2c

    .line 620
    :cond_50
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    const-string v3, "WebView has already been destroyed."

    invoke-virtual {v0, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_57} :catch_58

    goto :goto_4c

    .line 624
    :catch_58
    move-exception v0

    .line 625
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 627
    :cond_5e
    return-void
.end method

.method public close()V
    .registers 1

    .prologue
    .line 472
    return-void
.end method

.method protected d()Z
    .registers 2

    .prologue
    .line 276
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Z

    return v0
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 280
    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->b:I

    return v0
.end method

.method protected f()Lcn/domob/android/ads/DomobAdListener;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->n:Lcn/domob/android/ads/DomobAdListener;

    return-object v0
.end method

.method protected g()Lcn/domob/android/ads/DomobAdEventListener;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    return-object v0
.end method

.method protected h()Lcn/domob/android/ads/n;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->g:Lcn/domob/android/ads/n;

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected j()Z
    .registers 4

    .prologue
    .line 317
    const/4 v2, 0x1

    .line 318
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 319
    :goto_5
    if-eqz v1, :cond_1d

    .line 321
    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_d

    move v0, v2

    .line 330
    :goto_c
    return v0

    :cond_d
    move-object v0, v1

    .line 324
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_18

    .line 325
    const/4 v0, 0x0

    .line 326
    goto :goto_c

    .line 328
    :cond_18
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_5

    :cond_1d
    move v0, v2

    goto :goto_c
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 591
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_20

    .line 592
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->a(Z)V

    .line 593
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->c(Z)V

    .line 594
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/g;->h(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, p2}, Lcn/domob/android/ads/g;->i(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->F()V

    .line 599
    :goto_1f
    return-void

    .line 598
    :cond_20
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    const-string v1, "mAdController is not initialized!"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 209
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 211
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    const-string v1, "onAttachedToWindow"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    const-string v1, "Start to load AD."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->l()V

    .line 214
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 219
    :try_start_1
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    const-string v2, "onDetachedFromWindow"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v1}, Lcn/domob/android/ads/g;->b()V

    .line 221
    iget-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    if-eqz v1, :cond_6d

    .line 222
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    const-string v2, "Clean DomobAdView."

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v1}, Lcn/domob/android/ads/H;->getChildCount()I

    move-result v2

    .line 224
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WebView to DESTROY."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    move v1, v0

    .line 225
    :goto_37
    if-ge v1, v2, :cond_74

    .line 227
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/H;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/domob/android/ads/a;

    if-eqz v0, :cond_57

    .line 228
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/H;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/a;

    .line 229
    if-eqz v0, :cond_5b

    .line 230
    iget-object v3, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/H;->removeView(Landroid/view/View;)V

    .line 231
    invoke-virtual {v0}, Lcn/domob/android/ads/a;->destroy()V

    .line 225
    :cond_57
    :goto_57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_37

    .line 235
    :cond_5b
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    const-string v3, "WebView has already been destroyed."

    invoke-virtual {v0, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_62} :catch_63
    .catchall {:try_start_1 .. :try_end_62} :catchall_78

    goto :goto_57

    .line 245
    :catch_63
    move-exception v0

    .line 246
    :try_start_64
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_78

    .line 248
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 250
    :goto_6c
    return-void

    .line 240
    :cond_6d
    :try_start_6d
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    const-string v1, "ad detached from window, but do not clean flipper"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_74} :catch_63
    .catchall {:try_start_6d .. :try_end_74} :catchall_78

    .line 248
    :cond_74
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    goto :goto_6c

    :catchall_78
    move-exception v0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    throw v0
.end method

.method public onDomobAdClicked()V
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    if-eqz v0, :cond_9

    .line 715
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V

    .line 717
    :cond_9
    return-void
.end method

.method public onDomobAdFailed(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .registers 3
    .param p1, "code"    # Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    .prologue
    .line 686
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    if-eqz v0, :cond_9

    .line 687
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    invoke-interface {v0, p0, p1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 689
    :cond_9
    return-void
.end method

.method public onDomobAdOverlayDismissed()V
    .registers 2

    .prologue
    .line 700
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    if-eqz v0, :cond_9

    .line 701
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdOverlayDismissed(Lcn/domob/android/ads/DomobAdView;)V

    .line 703
    :cond_9
    return-void
.end method

.method public onDomobAdOverlayPresented()V
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    if-eqz v0, :cond_9

    .line 694
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V

    .line 696
    :cond_9
    return-void
.end method

.method public onDomobAdRequiresCurrentContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 721
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    if-eqz v0, :cond_b

    .line 722
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdRequiresCurrentContext()Landroid/content/Context;

    move-result-object v0

    .line 724
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onDomobAdReturned(Lcn/domob/android/ads/n;)V
    .registers 2
    .param p1, "adAdapter"    # Lcn/domob/android/ads/n;

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcn/domob/android/ads/DomobAdView;->c(Lcn/domob/android/ads/n;)V

    .line 731
    return-void
.end method

.method public onDomobLeaveApplication()V
    .registers 2

    .prologue
    .line 707
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    if-eqz v0, :cond_9

    .line 708
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V

    .line 710
    :cond_9
    return-void
.end method

.method public onProcessActionType(Ljava/lang/String;)V
    .registers 2
    .param p1, "actionType"    # Ljava/lang/String;

    .prologue
    .line 661
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 184
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 185
    iput-boolean p1, p0, Lcn/domob/android/ads/DomobAdView;->e:Z

    .line 187
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_36

    .line 188
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Z

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Z

    if-eqz v0, :cond_3d

    .line 189
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->A()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 190
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->e()V

    .line 198
    :cond_36
    :goto_36
    return-void

    .line 192
    :cond_37
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->k()V

    goto :goto_36

    .line 194
    :cond_3d
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Z

    if-eqz v0, :cond_45

    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Z

    if-nez v0, :cond_36

    .line 195
    :cond_45
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->c()V

    goto :goto_36
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 7
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 203
    sget-object v3, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWindowVisibilityChanged:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_25

    move v0, v1

    :goto_15
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 204
    if-nez p1, :cond_27

    :goto_22
    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->d:Z

    .line 205
    return-void

    :cond_25
    move v0, v2

    .line 203
    goto :goto_15

    :cond_27
    move v1, v2

    .line 204
    goto :goto_22
.end method

.method public orientationChanged()V
    .registers 3

    .prologue
    .line 638
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    const-string v1, "0x50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    const-string v1, "0x90"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 641
    :cond_20
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->u(Landroid/content/Context;)I

    move-result v0

    .line 642
    iget v1, p0, Lcn/domob/android/ads/DomobAdView;->i:I

    if-eqz v1, :cond_36

    iget v1, p0, Lcn/domob/android/ads/DomobAdView;->i:I

    if-eq v1, v0, :cond_36

    .line 643
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->onDetachedFromWindow()V

    .line 644
    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->i:I

    .line 645
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->requestRefreshAd()V

    .line 648
    :cond_36
    return-void
.end method

.method public requestRefreshAd()V
    .registers 2

    .prologue
    .line 574
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_11

    .line 575
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->j()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 576
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->C()V

    .line 579
    :cond_11
    return-void
.end method

.method public setAdEventListener(Lcn/domob/android/ads/DomobAdEventListener;)V
    .registers 2
    .param p1, "eventListener"    # Lcn/domob/android/ads/DomobAdEventListener;

    .prologue
    .line 567
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    .line 568
    return-void
.end method

.method public setAdSize(Ljava/lang/String;)V
    .registers 3
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 157
    if-eqz p1, :cond_1f

    .line 158
    const-string v0, "FLEXIBLE_BANNER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 159
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 160
    const-string v0, "0x90"

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    .line 171
    :goto_16
    return-void

    .line 162
    :cond_17
    const-string v0, "0x50"

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    goto :goto_16

    .line 165
    :cond_1c
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    goto :goto_16

    .line 169
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    goto :goto_16
.end method

.method public setCreativeRect(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 310
    iput p1, p0, Lcn/domob/android/ads/DomobAdView;->i:I

    .line 311
    iput p2, p0, Lcn/domob/android/ads/DomobAdView;->j:I

    .line 312
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .registers 3
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 505
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/g;->b(Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public setOnAdListener(Lcn/domob/android/ads/DomobAdListener;)V
    .registers 2
    .param p1, "adListener"    # Lcn/domob/android/ads/DomobAdListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 556
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->n:Lcn/domob/android/ads/DomobAdListener;

    .line 557
    return-void
.end method

.method public setRefreshable(Z)V
    .registers 3
    .param p1, "refreshable"    # Z

    .prologue
    .line 544
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_9

    .line 545
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/g;->a(Z)V

    .line 547
    :cond_9
    return-void
.end method

.method public setSpots(Ljava/lang/String;)V
    .registers 3
    .param p1, "spot"    # Ljava/lang/String;

    .prologue
    .line 494
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_9

    .line 495
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/g;->f(Ljava/lang/String;)V

    .line 497
    :cond_9
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .registers 3
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 525
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/g;->e(Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .registers 3
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 515
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/g;->d(Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .registers 3
    .param p1, "pc"    # Ljava/lang/String;

    .prologue
    .line 535
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/g;->c(Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public showAd(Lcn/domob/android/ads/n;[Landroid/view/animation/AnimationSet;)V
    .registers 6
    .param p1, "adapter"    # Lcn/domob/android/ads/n;
    .param p2, "animationPair"    # [Landroid/view/animation/AnimationSet;

    .prologue
    .line 381
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/i/f;

    const-string v1, "Switch AD with/without animation."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 382
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->g:Lcn/domob/android/ads/n;

    .line 383
    invoke-virtual {p1}, Lcn/domob/android/ads/n;->b()Landroid/view/View;

    move-result-object v1

    .line 386
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcn/domob/android/ads/DomobAdView$1;

    invoke-direct {v2, p0, p2, v1, p1}, Lcn/domob/android/ads/DomobAdView$1;-><init>(Lcn/domob/android/ads/DomobAdView;[Landroid/view/animation/AnimationSet;Landroid/view/View;Lcn/domob/android/ads/n;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 452
    invoke-virtual {p0, p1}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/n;)V

    .line 453
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->D()V

    .line 454
    return-void
.end method
