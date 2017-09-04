.class Lcn/domob/android/ads/G;
.super Lcn/domob/android/ads/DomobAdView;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/DomobAdEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/G$a;
    }
.end annotation


# static fields
.field private static final B:I = 0x4d1

.field private static p:Lcn/domob/android/i/f; = null

.field private static final q:I = 0x10

.field private static final r:I = 0x9

.field private static final s:I = 0x6

.field private static final t:I = 0x5


# instance fields
.field private A:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Lcn/domob/android/ads/c/d;

.field private I:Lcn/domob/android/ads/c/d;

.field private J:Lcn/domob/android/ads/c/d;

.field private K:Z

.field private u:Landroid/os/Handler;

.field private v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

.field private w:Lcn/domob/android/ads/DomobPreRollAdListener;

.field private x:Lcn/domob/android/ads/G$a;

.field private y:Lcn/domob/android/a/a/a;

.field private z:Lcn/domob/android/j/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/G;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/DomobAdView$a;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/G;->u:Landroid/os/Handler;

    .line 47
    iput-boolean v2, p0, Lcn/domob/android/ads/G;->A:Z

    .line 53
    iput-boolean v2, p0, Lcn/domob/android/ads/G;->C:Z

    .line 57
    iput-boolean v2, p0, Lcn/domob/android/ads/G;->D:Z

    .line 61
    iput-boolean v2, p0, Lcn/domob/android/ads/G;->E:Z

    .line 65
    iput-boolean v2, p0, Lcn/domob/android/ads/G;->F:Z

    .line 69
    iput-boolean v2, p0, Lcn/domob/android/ads/G;->G:Z

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/G;->K:Z

    .line 114
    iget-object v0, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_2c

    .line 115
    iget-object v0, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/g;->a(Z)V

    .line 116
    iget-object v0, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/g;->b(Z)V

    .line 118
    :cond_2c
    invoke-virtual {p5}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/G;->b:I

    .line 119
    return-void
.end method

.method private a(Landroid/widget/ImageButton;)Lcn/domob/android/ads/c/d$b;
    .registers 3

    .prologue
    .line 103
    new-instance v0, Lcn/domob/android/ads/G$3;

    invoke-direct {v0, p0, p1}, Lcn/domob/android/ads/G$3;-><init>(Lcn/domob/android/ads/G;Landroid/widget/ImageButton;)V

    return-object v0
.end method

.method private a(J)Lcn/domob/android/ads/c/d;
    .registers 6

    .prologue
    .line 77
    new-instance v0, Lcn/domob/android/ads/c/d;

    iget-object v1, p0, Lcn/domob/android/ads/G;->u:Landroid/os/Handler;

    new-instance v2, Lcn/domob/android/ads/G$1;

    invoke-direct {v2, p0, p1, p2}, Lcn/domob/android/ads/G$1;-><init>(Lcn/domob/android/ads/G;J)V

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/c/d;-><init>(Landroid/os/Handler;Lcn/domob/android/ads/c/d$b;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcn/domob/android/ads/G$a;Landroid/widget/RelativeLayout;)V
    .registers 10

    .prologue
    .line 475
    invoke-direct {p0}, Lcn/domob/android/ads/G;->t()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p2}, Lcn/domob/android/ads/G$a;->z()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->g()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_14
    long-to-int v0, v0

    .line 477
    if-gtz v0, :cond_20

    .line 504
    :goto_17
    return-void

    .line 475
    :cond_18
    invoke-virtual {p2}, Lcn/domob/android/ads/G$a;->z()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_14

    .line 480
    :cond_20
    invoke-virtual {p2}, Lcn/domob/android/ads/G$a;->u()I

    move-result v1

    .line 481
    invoke-virtual {p2}, Lcn/domob/android/ads/G$a;->v()I

    move-result v2

    .line 482
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcn/domob/android/ads/G;->c:Landroid/content/Context;

    invoke-virtual {p2, v4}, Lcn/domob/android/ads/G$a;->d(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcn/domob/android/ads/G;->c:Landroid/content/Context;

    invoke-virtual {p2, v5}, Lcn/domob/android/ads/G$a;->e(Landroid/content/Context;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 484
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 485
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 487
    new-instance v1, Lcn/domob/android/a/a/a;

    invoke-direct {v1, p1, v0}, Lcn/domob/android/a/a/a;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcn/domob/android/ads/G;->y:Lcn/domob/android/a/a/a;

    .line 488
    iget-object v0, p0, Lcn/domob/android/ads/G;->y:Lcn/domob/android/a/a/a;

    new-instance v1, Lcn/domob/android/ads/G$8;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/G$8;-><init>(Lcn/domob/android/ads/G;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/a/a/a;->a(Lcn/domob/android/a/a/a$a;)V

    .line 502
    iget-object v0, p0, Lcn/domob/android/ads/G;->y:Lcn/domob/android/a/a/a;

    invoke-virtual {p3, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    iget-object v0, p0, Lcn/domob/android/ads/G;->y:Lcn/domob/android/a/a/a;

    invoke-virtual {v0}, Lcn/domob/android/a/a/a;->b()V

    goto :goto_17
.end method

.method private a(Lcn/domob/android/a/a/b;Lcn/domob/android/ads/G$a;)V
    .registers 4

    .prologue
    .line 378
    new-instance v0, Lcn/domob/android/ads/G$6;

    invoke-direct {v0, p0, p2}, Lcn/domob/android/ads/G$6;-><init>(Lcn/domob/android/ads/G;Lcn/domob/android/ads/G$a;)V

    invoke-virtual {p1, v0}, Lcn/domob/android/a/a/b;->a(Lcn/domob/android/a/a/b$a;)V

    .line 390
    return-void
.end method

.method private a(Lcn/domob/android/ads/G$a;)V
    .registers 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x6

    const/16 v7, 0x4d1

    .line 260
    iput-object p1, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    .line 261
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1d5

    .line 262
    iget-object v0, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->i()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    .line 265
    invoke-direct {p0, p1}, Lcn/domob/android/ads/G;->d(Lcn/domob/android/ads/G$a;)V

    .line 268
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->r()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 269
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->r()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 270
    new-instance v2, Lcn/domob/android/a/a/b;

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->i()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/domob/android/a/a/b;-><init>(Landroid/content/Context;)V

    .line 271
    invoke-direct {p0, v2, p1}, Lcn/domob/android/ads/G;->a(Lcn/domob/android/a/a/b;Lcn/domob/android/ads/G$a;)V

    .line 272
    invoke-virtual {p1, v2}, Lcn/domob/android/ads/G$a;->a(Landroid/widget/RelativeLayout;)V

    .line 273
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->r()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 274
    sget-object v3, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v4, "secure area parent relativeLyaout width:%d\uff0c height:%d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 277
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 278
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 279
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->w()I

    move-result v3

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->x()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 281
    sget-object v3, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v4, "secure area width:%d height:%d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->w()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->x()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->s()I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 283
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->t()I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 284
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 285
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 286
    invoke-virtual {v2, v0, v1}, Lcn/domob/android/a/a/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->k()I

    move-result v2

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->l()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 291
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 292
    iget-object v2, p0, Lcn/domob/android/ads/G;->g:Lcn/domob/android/ads/n;

    invoke-virtual {v2}, Lcn/domob/android/ads/n;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    iget-object v1, p0, Lcn/domob/android/ads/G;->g:Lcn/domob/android/ads/n;

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->k()I

    move-result v2

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->l()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/n;->a(II)V

    .line 296
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->d()Z

    move-result v1

    if-nez v1, :cond_e7

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->A()Z

    move-result v1

    if-eqz v1, :cond_154

    .line 297
    :cond_e7
    iget-object v1, p0, Lcn/domob/android/ads/G;->g:Lcn/domob/android/ads/n;

    invoke-virtual {v1}, Lcn/domob/android/ads/n;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setId(I)V

    .line 298
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/domob/android/ads/G$a;->b(Landroid/content/Context;)I

    move-result v1

    .line 299
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->i()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/domob/android/ads/G$a;->c(Landroid/content/Context;)I

    move-result v2

    .line 300
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 301
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->j()I

    move-result v4

    if-ne v4, v9, :cond_16d

    .line 302
    const/4 v1, 0x7

    invoke-virtual {v3, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 303
    invoke-virtual {v3, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 319
    :cond_112
    :goto_112
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->i()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 320
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 321
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->i()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/domob/android/i/d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    new-instance v2, Lcn/domob/android/ads/G$5;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/G$5;-><init>(Lcn/domob/android/ads/G;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    invoke-direct {p0}, Lcn/domob/android/ads/G;->t()Z

    move-result v2

    if-nez v2, :cond_1bb

    .line 332
    new-instance v2, Lcn/domob/android/ads/c/d;

    iget-object v3, p0, Lcn/domob/android/ads/G;->u:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcn/domob/android/ads/G;->a(Landroid/widget/ImageButton;)Lcn/domob/android/ads/c/d$b;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcn/domob/android/ads/c/d;-><init>(Landroid/os/Handler;Lcn/domob/android/ads/c/d$b;)V

    iput-object v2, p0, Lcn/domob/android/ads/G;->J:Lcn/domob/android/ads/c/d;

    .line 335
    iget-object v1, p0, Lcn/domob/android/ads/G;->J:Lcn/domob/android/ads/c/d;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/c/d;->a(J)V

    .line 353
    :cond_154
    :goto_154
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->A()Z

    move-result v1

    if-eqz v1, :cond_163

    iget-boolean v1, p0, Lcn/domob/android/ads/G;->E:Z

    if-nez v1, :cond_163

    .line 354
    iget-object v1, p0, Lcn/domob/android/ads/G;->c:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcn/domob/android/ads/G;->a(Landroid/content/Context;Lcn/domob/android/ads/G$a;Landroid/widget/RelativeLayout;)V

    .line 357
    :cond_163
    invoke-direct {p0}, Lcn/domob/android/ads/G;->t()Z

    move-result v0

    if-nez v0, :cond_16c

    .line 358
    invoke-direct {p0, p1}, Lcn/domob/android/ads/G;->e(Lcn/domob/android/ads/G$a;)V

    .line 366
    :cond_16c
    :goto_16c
    return-void

    .line 304
    :cond_16d
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->j()I

    move-result v4

    if-ne v4, v11, :cond_192

    .line 305
    invoke-virtual {v3, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 306
    const/4 v1, 0x7

    invoke-virtual {v3, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 307
    neg-int v1, v2

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->i()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 309
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v1

    neg-int v1, v1

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_112

    .line 311
    :cond_192
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->j()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_112

    .line 312
    invoke-virtual {v3, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 313
    const/4 v2, 0x7

    invoke-virtual {v3, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 314
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->i()Landroid/content/Context;

    move-result-object v2

    const/16 v4, 0xc

    invoke-static {v2, v4}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v2

    neg-int v2, v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 316
    neg-int v1, v1

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->i()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_112

    .line 341
    :cond_1bb
    iget-object v2, p0, Lcn/domob/android/ads/G;->J:Lcn/domob/android/ads/c/d;

    if-eqz v2, :cond_154

    .line 343
    iget-object v2, p0, Lcn/domob/android/ads/G;->J:Lcn/domob/android/ads/c/d;

    invoke-virtual {v2}, Lcn/domob/android/ads/c/d;->g()Z

    move-result v2

    if-eqz v2, :cond_1cb

    .line 345
    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_154

    .line 348
    :cond_1cb
    iget-object v2, p0, Lcn/domob/android/ads/G;->J:Lcn/domob/android/ads/c/d;

    invoke-direct {p0, v1}, Lcn/domob/android/ads/G;->a(Landroid/widget/ImageButton;)Lcn/domob/android/ads/c/d$b;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/c/d;->a(Lcn/domob/android/ads/c/d$b;)V

    goto :goto_154

    .line 361
    :cond_1d5
    invoke-virtual {p0}, Lcn/domob/android/ads/G;->q()V

    .line 362
    iget-boolean v0, p0, Lcn/domob/android/ads/G;->C:Z

    if-eqz v0, :cond_16c

    iget-boolean v0, p0, Lcn/domob/android/ads/G;->D:Z

    if-eqz v0, :cond_16c

    .line 363
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, p0, v0}, Lcn/domob/android/ads/G;->onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_16c
.end method

.method private a(Lcn/domob/android/ads/G$a;IIII)V
    .registers 12

    .prologue
    .line 544
    const-string v0, "ad area width:%d height:%d, ad proportions width:%d, height:%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 546
    if-lez p2, :cond_a0

    if-lez p3, :cond_a0

    if-lez p4, :cond_a0

    if-lez p5, :cond_a0

    .line 547
    mul-int v0, p2, p5

    mul-int v2, p4, p3

    if-le v0, v2, :cond_7e

    .line 549
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v2, "Advertising area can be filled with too wide"

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 551
    rem-int v0, p3, p5

    sub-int v0, p3, v0

    .line 553
    int-to-double v2, v0

    const-wide/high16 v4, 0x4008000000000000L

    mul-double/2addr v2, v4

    int-to-double v4, p3

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4b

    move p3, v0

    .line 557
    :cond_4b
    mul-int v0, p3, p4

    div-int/2addr v0, p5

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/G$a;->d(I)V

    .line 559
    invoke-virtual {p1, p3}, Lcn/domob/android/ads/G$a;->e(I)V

    .line 574
    :goto_54
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 578
    :goto_59
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v1, "after corrected, ad width:%d, height:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->k()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->l()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 580
    return-void

    .line 562
    :cond_7e
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v2, "Advertising area can be filled with too high"

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 564
    rem-int v0, p2, p4

    sub-int v0, p2, v0

    .line 566
    int-to-double v2, v0

    const-wide/high16 v4, 0x4008000000000000L

    mul-double/2addr v2, v4

    int-to-double v4, p2

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_96

    move p2, v0

    .line 570
    :cond_96
    invoke-virtual {p1, p2}, Lcn/domob/android/ads/G$a;->d(I)V

    .line 572
    mul-int v0, p2, p5

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/G$a;->e(I)V

    goto :goto_54

    .line 576
    :cond_a0
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_59
.end method

.method static synthetic a(Lcn/domob/android/ads/G;)V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/domob/android/ads/G;->u()V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/G;Lcn/domob/android/ads/G$a;)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcn/domob/android/ads/G;->c(Lcn/domob/android/ads/G$a;)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/G;Ljava/lang/String;J)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/G;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private a(Lcn/domob/android/ads/c/d;)V
    .registers 2

    .prologue
    .line 712
    if-eqz p1, :cond_5

    .line 713
    invoke-virtual {p1}, Lcn/domob/android/ads/c/d;->f()V

    .line 716
    :cond_5
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 735
    iget-object v0, p0, Lcn/domob/android/ads/G;->g:Lcn/domob/android/ads/n;

    invoke-virtual {p0}, Lcn/domob/android/ads/G;->o()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/domob/android/ads/n;->a(Ljava/util/HashMap;Ljava/lang/String;J)V

    .line 736
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/G;Z)Z
    .registers 2

    .prologue
    .line 31
    iput-boolean p1, p0, Lcn/domob/android/ads/G;->K:Z

    return p1
.end method

.method private b(Lcn/domob/android/ads/G$a;)V
    .registers 5

    .prologue
    .line 398
    new-instance v0, Lcn/domob/android/j/c;

    iget-object v1, p0, Lcn/domob/android/ads/G;->c:Landroid/content/Context;

    new-instance v2, Lcn/domob/android/ads/G$7;

    invoke-direct {v2, p0, p1}, Lcn/domob/android/ads/G$7;-><init>(Lcn/domob/android/ads/G;Lcn/domob/android/ads/G$a;)V

    invoke-direct {v0, v1, v2}, Lcn/domob/android/j/c;-><init>(Landroid/content/Context;Lcn/domob/android/j/c$a;)V

    iput-object v0, p0, Lcn/domob/android/ads/G;->z:Lcn/domob/android/j/c;

    .line 412
    iget-object v0, p0, Lcn/domob/android/ads/G;->z:Lcn/domob/android/j/c;

    invoke-virtual {v0}, Lcn/domob/android/j/c;->a()V

    .line 413
    return-void
.end method

.method static synthetic b(Lcn/domob/android/ads/G;)Z
    .registers 2

    .prologue
    .line 31
    iget-boolean v0, p0, Lcn/domob/android/ads/G;->K:Z

    return v0
.end method

.method private c(Lcn/domob/android/ads/G$a;)V
    .registers 3

    .prologue
    .line 422
    invoke-direct {p0}, Lcn/domob/android/ads/G;->t()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 423
    iget-object v0, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->f()V

    .line 424
    iget-object v0, p0, Lcn/domob/android/ads/G;->y:Lcn/domob/android/a/a/a;

    if-eqz v0, :cond_14

    .line 425
    iget-object v0, p0, Lcn/domob/android/ads/G;->y:Lcn/domob/android/a/a/a;

    invoke-virtual {v0}, Lcn/domob/android/a/a/a;->d()V

    .line 427
    :cond_14
    iget-object v0, p0, Lcn/domob/android/ads/G;->H:Lcn/domob/android/ads/c/d;

    if-eqz v0, :cond_1d

    .line 428
    iget-object v0, p0, Lcn/domob/android/ads/G;->H:Lcn/domob/android/ads/c/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d;->c()V

    .line 430
    :cond_1d
    iget-object v0, p0, Lcn/domob/android/ads/G;->J:Lcn/domob/android/ads/c/d;

    if-eqz v0, :cond_26

    .line 431
    iget-object v0, p0, Lcn/domob/android/ads/G;->J:Lcn/domob/android/ads/c/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d;->c()V

    .line 433
    :cond_26
    iget-object v0, p0, Lcn/domob/android/ads/G;->I:Lcn/domob/android/ads/c/d;

    if-eqz v0, :cond_2f

    .line 434
    iget-object v0, p0, Lcn/domob/android/ads/G;->I:Lcn/domob/android/ads/c/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d;->c()V

    .line 437
    :cond_2f
    return-void
.end method

.method private d(Lcn/domob/android/ads/G$a;)V
    .registers 8

    .prologue
    .line 512
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->w()I

    move-result v0

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->o()I

    move-result v1

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->p()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    sub-int v2, v0, v1

    .line 513
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->x()I

    move-result v0

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->n()I

    move-result v1

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->m()I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x2

    sub-int v3, v0, v1

    .line 514
    iget-object v0, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->B()Lcn/domob/android/ads/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->h()I

    move-result v4

    .line 515
    iget-object v0, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->B()Lcn/domob/android/ads/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->i()I

    move-result v5

    .line 517
    if-lez v4, :cond_42

    if-gtz v5, :cond_50

    .line 518
    :cond_42
    iget v0, p0, Lcn/domob/android/ads/G;->b:I

    sget-object v1, Lcn/domob/android/ads/DomobAdView$a;->h:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_56

    .line 519
    const/16 v4, 0x10

    .line 520
    const/16 v5, 0x9

    :cond_50
    :goto_50
    move-object v0, p0

    move-object v1, p1

    .line 526
    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/G;->a(Lcn/domob/android/ads/G$a;IIII)V

    .line 527
    return-void

    .line 521
    :cond_56
    iget v0, p0, Lcn/domob/android/ads/G;->b:I

    sget-object v1, Lcn/domob/android/ads/DomobAdView$a;->g:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_50

    .line 522
    const/4 v4, 0x6

    .line 523
    const/4 v5, 0x5

    goto :goto_50
.end method

.method private e(Lcn/domob/android/ads/G$a;)V
    .registers 6

    .prologue
    .line 589
    iget-object v0, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/g;->a(J)V

    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/G;->D:Z

    .line 593
    iget-object v0, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/G$a;->g()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->A()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 594
    invoke-direct {p0}, Lcn/domob/android/ads/G;->s()Lcn/domob/android/ads/c/d;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/G;->I:Lcn/domob/android/ads/c/d;

    .line 595
    iget-object v0, p0, Lcn/domob/android/ads/G;->I:Lcn/domob/android/ads/c/d;

    iget-object v1, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v1}, Lcn/domob/android/ads/G$a;->h()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/c/d;->a(J)V

    .line 598
    :cond_2c
    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->e()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 599
    iget-object v0, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/G$a;->f()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/G;->a(J)Lcn/domob/android/ads/c/d;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/G;->H:Lcn/domob/android/ads/c/d;

    .line 600
    iget-object v0, p0, Lcn/domob/android/ads/G;->H:Lcn/domob/android/ads/c/d;

    invoke-virtual {p1}, Lcn/domob/android/ads/G$a;->f()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/c/d;->a(J)V

    .line 603
    :cond_49
    const-string v0, "s"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcn/domob/android/ads/G;->a(Ljava/lang/String;J)V

    .line 605
    iget-object v0, p0, Lcn/domob/android/ads/G;->g:Lcn/domob/android/ads/n;

    invoke-virtual {v0}, Lcn/domob/android/ads/n;->d()V

    .line 607
    iget-object v0, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/G;->b(Lcn/domob/android/ads/G$a;)V

    .line 609
    iget-object v0, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    if-eqz v0, :cond_64

    .line 610
    iget-object v0, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobPreRollAdListener;->onPreRollAdPresent()V

    .line 614
    :cond_63
    :goto_63
    return-void

    .line 611
    :cond_64
    iget-object v0, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    if-eqz v0, :cond_63

    .line 612
    iget-object v0, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobVideoInterstitialAdListener;->onVideoInterstitialAdPresent()V

    goto :goto_63
.end method

.method static synthetic r()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    return-object v0
.end method

.method private s()Lcn/domob/android/ads/c/d;
    .registers 4

    .prologue
    .line 90
    new-instance v0, Lcn/domob/android/ads/c/d;

    iget-object v1, p0, Lcn/domob/android/ads/G;->u:Landroid/os/Handler;

    new-instance v2, Lcn/domob/android/ads/G$2;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/G$2;-><init>(Lcn/domob/android/ads/G;)V

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/c/d;-><init>(Landroid/os/Handler;Lcn/domob/android/ads/c/d$b;)V

    return-object v0
.end method

.method private t()Z
    .registers 2

    .prologue
    .line 171
    iget-boolean v0, p0, Lcn/domob/android/ads/G;->D:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcn/domob/android/ads/G;->C:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private u()V
    .registers 7

    .prologue
    .line 444
    invoke-direct {p0}, Lcn/domob/android/ads/G;->t()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 445
    iget-object v0, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->d()V

    .line 446
    iget-object v0, p0, Lcn/domob/android/ads/G;->y:Lcn/domob/android/a/a/a;

    if-eqz v0, :cond_39

    .line 447
    iget-object v0, p0, Lcn/domob/android/ads/G;->y:Lcn/domob/android/a/a/a;

    invoke-virtual {v0}, Lcn/domob/android/a/a/a;->c()V

    .line 448
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countdown timeing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v2}, Lcn/domob/android/ads/G$a;->h()I

    move-result v2

    iget-object v3, p0, Lcn/domob/android/ads/G;->y:Lcn/domob/android/a/a/a;

    invoke-virtual {v3}, Lcn/domob/android/a/a/a;->a()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 450
    :cond_39
    iget-object v0, p0, Lcn/domob/android/ads/G;->H:Lcn/domob/android/ads/c/d;

    if-eqz v0, :cond_68

    .line 451
    iget-object v0, p0, Lcn/domob/android/ads/G;->H:Lcn/domob/android/ads/c/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d;->b()V

    .line 452
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "impReport timeing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v2}, Lcn/domob/android/ads/G$a;->f()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcn/domob/android/ads/G;->H:Lcn/domob/android/ads/c/d;

    invoke-virtual {v4}, Lcn/domob/android/ads/c/d;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 454
    :cond_68
    iget-object v0, p0, Lcn/domob/android/ads/G;->I:Lcn/domob/android/ads/c/d;

    if-eqz v0, :cond_97

    .line 455
    iget-object v0, p0, Lcn/domob/android/ads/G;->I:Lcn/domob/android/ads/c/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d;->b()V

    .line 456
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoClose timeing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v2}, Lcn/domob/android/ads/G$a;->f()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcn/domob/android/ads/G;->I:Lcn/domob/android/ads/c/d;

    invoke-virtual {v4}, Lcn/domob/android/ads/c/d;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 458
    :cond_97
    iget-object v0, p0, Lcn/domob/android/ads/G;->J:Lcn/domob/android/ads/c/d;

    if-eqz v0, :cond_c6

    .line 459
    iget-object v0, p0, Lcn/domob/android/ads/G;->J:Lcn/domob/android/ads/c/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d;->b()V

    .line 460
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closebutton timeing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v2}, Lcn/domob/android/ads/G$a;->f()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcn/domob/android/ads/G;->J:Lcn/domob/android/ads/c/d;

    invoke-virtual {v4}, Lcn/domob/android/ads/c/d;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 462
    :cond_c6
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controller timeing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 464
    :cond_e4
    return-void
.end method

.method private v()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 722
    iput-boolean v0, p0, Lcn/domob/android/ads/G;->G:Z

    .line 723
    iput-boolean v0, p0, Lcn/domob/android/ads/G;->F:Z

    .line 724
    iget-object v0, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    if-eqz v0, :cond_f

    .line 725
    iget-object v0, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobVideoInterstitialAdListener;->onVideoInterstitialAdDismiss()V

    .line 729
    :cond_e
    :goto_e
    return-void

    .line 726
    :cond_f
    iget-object v0, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    if-eqz v0, :cond_e

    .line 727
    iget-object v0, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobPreRollAdListener;->onPreRollAdDismiss()V

    goto :goto_e
.end method

.method private w()V
    .registers 2

    .prologue
    .line 762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/G;->E:Z

    .line 763
    iget-object v0, p0, Lcn/domob/android/ads/G;->y:Lcn/domob/android/a/a/a;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/G;->a(Landroid/view/View;)V

    .line 764
    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 3

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/G;->A:Z

    .line 144
    iget-object v0, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/g;->b(I)V

    .line 145
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 654
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 656
    :try_start_8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 657
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_12

    .line 662
    :cond_11
    :goto_11
    return-void

    .line 658
    :catch_12
    move-exception v0

    .line 659
    sget-object v1, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method protected a(Lcn/domob/android/ads/DomobPreRollAdListener;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    .line 128
    return-void
.end method

.method protected a(Lcn/domob/android/ads/DomobSceneInfo;Lcn/domob/android/ads/G$a;)V
    .registers 11

    .prologue
    const/high16 v5, 0x447a0000

    .line 204
    iget-object v0, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->B()Lcn/domob/android/ads/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    .line 207
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobSceneInfo;->f()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/domob/android/ads/G$a;->a(Landroid/view/ViewGroup;)V

    .line 208
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobSceneInfo;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/domob/android/ads/G$a;->a(Landroid/content/Context;)V

    .line 209
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobSceneInfo;->i()I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/domob/android/ads/G$a;->j(I)V

    .line 210
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobSceneInfo;->j()I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/domob/android/ads/G$a;->k(I)V

    .line 211
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobSceneInfo;->g()I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/domob/android/ads/G$a;->f(I)V

    .line 212
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobSceneInfo;->h()I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/domob/android/ads/G$a;->g(I)V

    .line 213
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobSceneInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/domob/android/ads/G$a;->a(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Lcn/domob/android/ads/G$a;->A()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 217
    iget-boolean v0, p0, Lcn/domob/android/ads/G;->A:Z

    if-eqz v0, :cond_91

    .line 218
    iget-object v0, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->I()I

    move-result v0

    .line 228
    :goto_4d
    invoke-virtual {p2, v0}, Lcn/domob/android/ads/G$a;->m(I)V

    .line 232
    :cond_50
    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->u()Z

    move-result v0

    .line 233
    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->w()F

    move-result v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 234
    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->x()Z

    move-result v3

    .line 235
    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->y()F

    move-result v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 236
    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->z()Z

    move-result v5

    .line 237
    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->b()Ljava/lang/String;

    move-result-object v1

    .line 238
    iget-object v6, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    invoke-virtual {p1}, Lcn/domob/android/ads/DomobSceneInfo;->e()Landroid/content/Context;

    move-result-object v7

    iput-object v7, v6, Lcn/domob/android/ads/g;->b:Landroid/content/Context;

    .line 239
    const-string v6, "video"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 241
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcn/domob/android/ads/G$a;->b(Z)V

    .line 243
    :cond_80
    if-eqz v5, :cond_85

    .line 244
    invoke-virtual {p2, v4}, Lcn/domob/android/ads/G$a;->b(I)V

    .line 246
    :cond_85
    if-eqz v3, :cond_8a

    .line 247
    invoke-virtual {p2, v2}, Lcn/domob/android/ads/G$a;->a(I)V

    .line 249
    :cond_8a
    invoke-virtual {p2, v0}, Lcn/domob/android/ads/G$a;->a(Z)V

    .line 251
    invoke-direct {p0, p2}, Lcn/domob/android/ads/G;->a(Lcn/domob/android/ads/G$a;)V

    .line 252
    return-void

    .line 221
    :cond_91
    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->z()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 222
    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->y()F

    move-result v0

    float-to-int v0, v0

    goto :goto_4d

    .line 225
    :cond_9d
    const/4 v0, 0x3

    goto :goto_4d
.end method

.method protected a(Lcn/domob/android/ads/DomobVideoInterstitialAdListener;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    .line 137
    return-void
.end method

.method protected a(Z)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 691
    iget-boolean v0, p0, Lcn/domob/android/ads/G;->C:Z

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcn/domob/android/ads/G;->D:Z

    if-nez v0, :cond_4e

    .line 692
    iput-boolean v1, p0, Lcn/domob/android/ads/G;->E:Z

    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/G;->G:Z

    .line 694
    iget-object v0, p0, Lcn/domob/android/ads/G;->z:Lcn/domob/android/j/c;

    if-eqz v0, :cond_17

    .line 695
    iget-object v0, p0, Lcn/domob/android/ads/G;->z:Lcn/domob/android/j/c;

    invoke-virtual {v0}, Lcn/domob/android/j/c;->b()V

    .line 697
    :cond_17
    iput-boolean v1, p0, Lcn/domob/android/ads/G;->D:Z

    .line 698
    iput-boolean v1, p0, Lcn/domob/android/ads/G;->C:Z

    .line 699
    iget-object v0, p0, Lcn/domob/android/ads/G;->H:Lcn/domob/android/ads/c/d;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/G;->a(Lcn/domob/android/ads/c/d;)V

    .line 700
    iget-object v0, p0, Lcn/domob/android/ads/G;->I:Lcn/domob/android/ads/c/d;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/G;->a(Lcn/domob/android/ads/c/d;)V

    .line 701
    iget-object v0, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/G$a;->c()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/G;->a(Landroid/view/View;)V

    .line 702
    iget-object v0, p0, Lcn/domob/android/ads/G;->g:Lcn/domob/android/ads/n;

    invoke-virtual {v0}, Lcn/domob/android/ads/n;->e()V

    .line 703
    const-string v0, "f"

    iget-object v1, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v1}, Lcn/domob/android/ads/g;->g()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcn/domob/android/ads/G;->a(Ljava/lang/String;J)V

    .line 704
    iget-boolean v0, p0, Lcn/domob/android/ads/G;->F:Z

    if-nez v0, :cond_47

    if-nez p1, :cond_47

    .line 705
    invoke-direct {p0}, Lcn/domob/android/ads/G;->v()V

    .line 707
    :cond_47
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v1, "close ad successfully"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 709
    :cond_4e
    return-void
.end method

.method protected b(Lcn/domob/android/ads/DomobSceneInfo;Lcn/domob/android/ads/G$a;)V
    .registers 5

    .prologue
    .line 642
    iget-boolean v0, p0, Lcn/domob/android/ads/G;->D:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcn/domob/android/ads/G;->C:Z

    if-eqz v0, :cond_24

    .line 643
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v1, "Scene change, remove ad "

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/G$a;->c()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/G;->a(Landroid/view/View;)V

    .line 645
    iget-object v0, p0, Lcn/domob/android/ads/G;->g:Lcn/domob/android/ads/n;

    invoke-virtual {v0}, Lcn/domob/android/ads/n;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/G;->a(Landroid/view/View;)V

    .line 646
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/G;->a(Lcn/domob/android/ads/DomobSceneInfo;Lcn/domob/android/ads/G$a;)V

    .line 648
    :cond_24
    return-void
.end method

.method public close()V
    .registers 1

    .prologue
    .line 677
    invoke-virtual {p0}, Lcn/domob/android/ads/G;->q()V

    .line 678
    return-void
.end method

.method protected l()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcn/domob/android/ads/G;->C:Z

    return v0
.end method

.method protected m()Z
    .registers 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcn/domob/android/ads/G;->D:Z

    return v0
.end method

.method protected n()V
    .registers 1

    .prologue
    .line 178
    invoke-super {p0, p0}, Lcn/domob/android/ads/DomobAdView;->setAdEventListener(Lcn/domob/android/ads/DomobAdEventListener;)V

    .line 179
    invoke-super {p0}, Lcn/domob/android/ads/DomobAdView;->requestRefreshAd()V

    .line 180
    return-void
.end method

.method protected o()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 622
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 623
    const-string v1, "eid"

    iget-object v2, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v2}, Lcn/domob/android/ads/G$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v1, "gdim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/ads/G;->c:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v4}, Lcn/domob/android/ads/G$a;->w()I

    move-result v4

    invoke-static {v3, v4}, Lcn/domob/android/i/g;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/G;->c:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v4}, Lcn/domob/android/ads/G$a;->x()I

    move-result v4

    invoke-static {v3, v4}, Lcn/domob/android/i/g;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v1, "adim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/ads/G;->c:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v4}, Lcn/domob/android/ads/G$a;->k()I

    move-result v4

    invoke-static {v3, v4}, Lcn/domob/android/i/g;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/G;->c:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v4}, Lcn/domob/android/ads/G$a;->l()I

    move-result v4

    invoke-static {v3, v4}, Lcn/domob/android/i/g;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    return-object v0
.end method

.method public onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V
    .registers 4
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 1303
    iget-object v0, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    if-eqz v0, :cond_11

    .line 1304
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v1, "Notify user clicks on the VideoInterstitial ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobVideoInterstitialAdListener;->onVideoInterstitialAdClicked()V

    .line 1310
    :cond_10
    :goto_10
    return-void

    .line 1306
    :cond_11
    iget-object v0, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    if-eqz v0, :cond_10

    .line 1307
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v1, "Notify user clicks on the Pre-Roll ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobPreRollAdListener;->onPreRollAdClicked()V

    goto :goto_10
.end method

.method public onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .registers 5
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;
    .param p2, "code"    # Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    .prologue
    .line 1252
    iget-object v0, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    if-eqz v0, :cond_11

    .line 1253
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v1, "Notify VideoInterstitial ad failed."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    invoke-interface {v0, p2}, Lcn/domob/android/ads/DomobVideoInterstitialAdListener;->onVideoInterstitialAdFailed(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 1259
    :cond_10
    :goto_10
    return-void

    .line 1255
    :cond_11
    iget-object v0, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    if-eqz v0, :cond_10

    .line 1256
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v1, "Notify PreRoll ad failed."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 1257
    iget-object v0, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    invoke-interface {v0, p2}, Lcn/domob/android/ads/DomobPreRollAdListener;->onPreRollAdFailed(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_10
.end method

.method public onDomobAdOverlayDismissed(Lcn/domob/android/ads/DomobAdView;)V
    .registers 4
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 1275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/G;->F:Z

    .line 1276
    iget-object v0, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    if-eqz v0, :cond_18

    .line 1277
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v1, "Notify VideoInterstitial ad landing page close."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobVideoInterstitialAdListener;->onLandingPageClose()V

    .line 1283
    :cond_13
    :goto_13
    iget-boolean v0, p0, Lcn/domob/android/ads/G;->G:Z

    if-eqz v0, :cond_17

    .line 1287
    :cond_17
    return-void

    .line 1279
    :cond_18
    iget-object v0, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    if-eqz v0, :cond_13

    .line 1280
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v1, "Notify PreRoll ad landing page close."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 1281
    iget-object v0, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobPreRollAdListener;->onLandingPageClose()V

    goto :goto_13
.end method

.method public onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V
    .registers 4
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 1263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/G;->F:Z

    .line 1264
    iget-object v0, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    if-eqz v0, :cond_14

    .line 1265
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v1, "Notify VideoInterstitial ad landing page open."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobVideoInterstitialAdListener;->onLandingPageOpen()V

    .line 1271
    :cond_13
    :goto_13
    return-void

    .line 1267
    :cond_14
    iget-object v0, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    if-eqz v0, :cond_13

    .line 1268
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v1, "Notify PreRoll ad landing page open."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 1269
    iget-object v0, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobPreRollAdListener;->onLandingPageOpen()V

    goto :goto_13
.end method

.method public onDomobAdRequiresCurrentContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1314
    iget-object v0, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    iget-object v0, v0, Lcn/domob/android/ads/g;->b:Landroid/content/Context;

    return-object v0
.end method

.method public onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V
    .registers 4
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    const/4 v0, 0x1

    .line 1239
    iput-boolean v0, p0, Lcn/domob/android/ads/G;->C:Z

    .line 1240
    iput-boolean v0, p0, Lcn/domob/android/ads/G;->D:Z

    .line 1241
    iget-object v0, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    if-eqz v0, :cond_16

    .line 1242
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v1, "Notify VideoInterstitialAd is ready."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobVideoInterstitialAdListener;->onVideoInterstitialAdReady()V

    .line 1248
    :cond_15
    :goto_15
    return-void

    .line 1244
    :cond_16
    iget-object v0, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    if-eqz v0, :cond_15

    .line 1245
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v1, "Notify Pre-Roll Ad is ready."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 1246
    iget-object v0, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobPreRollAdListener;->onPreRollAdReady()V

    goto :goto_15
.end method

.method public onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V
    .registers 4
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 1291
    iget-object v0, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    if-eqz v0, :cond_11

    .line 1292
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v1, "Notify VideoInterstitial ad leaving application."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 1293
    iget-object v0, p0, Lcn/domob/android/ads/G;->v:Lcn/domob/android/ads/DomobVideoInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobVideoInterstitialAdListener;->onVideoInterstitialAdLeaveApplication()V

    .line 1299
    :cond_10
    :goto_10
    return-void

    .line 1294
    :cond_11
    iget-object v0, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    if-eqz v0, :cond_10

    .line 1295
    sget-object v0, Lcn/domob/android/ads/G;->p:Lcn/domob/android/i/f;

    const-string v1, "Notify PreRoll ad leaving application."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 1296
    iget-object v0, p0, Lcn/domob/android/ads/G;->w:Lcn/domob/android/ads/DomobPreRollAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobPreRollAdListener;->onPreRollAdLeaveApplication()V

    goto :goto_10
.end method

.method public onProcessActionType(Ljava/lang/String;)V
    .registers 3
    .param p1, "actionType"    # Ljava/lang/String;

    .prologue
    .line 740
    invoke-static {p1}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/G$a;->A()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 741
    const-string v0, "download"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "launch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "vibrate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 743
    :cond_2a
    invoke-direct {p0}, Lcn/domob/android/ads/G;->w()V

    .line 744
    iget-object v0, p0, Lcn/domob/android/ads/G;->J:Lcn/domob/android/ads/c/d;

    if-eqz v0, :cond_36

    .line 745
    iget-object v0, p0, Lcn/domob/android/ads/G;->J:Lcn/domob/android/ads/c/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d;->d()V

    .line 747
    :cond_36
    iget-object v0, p0, Lcn/domob/android/ads/G;->I:Lcn/domob/android/ads/c/d;

    if-eqz v0, :cond_3f

    .line 748
    iget-object v0, p0, Lcn/domob/android/ads/G;->I:Lcn/domob/android/ads/c/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d;->f()V

    .line 756
    :cond_3f
    :goto_3f
    return-void

    .line 750
    :cond_40
    const-string v0, "inapp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 753
    :cond_50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/G;->a(Z)V

    goto :goto_3f
.end method

.method protected p()Z
    .registers 2

    .prologue
    .line 668
    iget-object v0, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/G$a;->c()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcn/domob/android/ads/G;->x:Lcn/domob/android/ads/G$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/G$a;->c()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected q()V
    .registers 2

    .prologue
    .line 681
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/G;->a(Z)V

    .line 682
    return-void
.end method

.method public showAd(Lcn/domob/android/ads/n;[Landroid/view/animation/AnimationSet;)V
    .registers 5
    .param p1, "adapter"    # Lcn/domob/android/ads/n;
    .param p2, "animationPair"    # [Landroid/view/animation/AnimationSet;

    .prologue
    .line 184
    iput-object p1, p0, Lcn/domob/android/ads/G;->g:Lcn/domob/android/ads/n;

    .line 185
    iget-object v0, p0, Lcn/domob/android/ads/G;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/G$4;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/G$4;-><init>(Lcn/domob/android/ads/G;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    iget-object v0, p0, Lcn/domob/android/ads/G;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->D()V

    .line 194
    return-void
.end method
