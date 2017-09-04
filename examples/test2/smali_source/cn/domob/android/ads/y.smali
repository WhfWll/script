.class Lcn/domob/android/ads/y;
.super Lcn/domob/android/ads/DomobAdView;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/DomobAdEventListener;


# static fields
.field private static final A:Ljava/lang/String; = "domob_close.png"

.field private static final B:I = 0x28

.field private static final C:I = 0x28

.field private static t:Lcn/domob/android/i/f;


# instance fields
.field private D:Z

.field private E:Landroid/widget/FrameLayout;

.field private F:Landroid/view/WindowManager;

.field private G:Landroid/widget/RelativeLayout;

.field private H:I

.field protected p:Landroid/view/View;

.field protected q:I

.field protected r:Z

.field protected s:Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Lcn/domob/android/ads/DomobSplashAdListener;

.field private x:I

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/y;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 51
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;Z)V

    .line 41
    iput-boolean v6, p0, Lcn/domob/android/ads/y;->r:Z

    .line 43
    iput-boolean v6, p0, Lcn/domob/android/ads/y;->y:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/y;->D:Z

    .line 381
    const/16 v0, 0x12c

    iput v0, p0, Lcn/domob/android/ads/y;->H:I

    .line 52
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    const-string v1, "Init SplashAdView."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_2a

    .line 55
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, v6}, Lcn/domob/android/ads/g;->a(Z)V

    .line 56
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, v6}, Lcn/domob/android/ads/g;->b(Z)V

    .line 58
    :cond_2a
    iget-object v0, p0, Lcn/domob/android/ads/y;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v0, v6}, Lcn/domob/android/ads/H;->setVisibility(I)V

    .line 59
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->d:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/y;->b:I

    .line 60
    invoke-virtual {p0}, Lcn/domob/android/ads/y;->p()Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/y;->D:Z

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;I)V
    .registers 14

    .prologue
    const/4 v6, 0x0

    .line 65
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;Z)V

    .line 41
    iput-boolean v6, p0, Lcn/domob/android/ads/y;->r:Z

    .line 43
    iput-boolean v6, p0, Lcn/domob/android/ads/y;->y:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/y;->D:Z

    .line 381
    const/16 v0, 0x12c

    iput v0, p0, Lcn/domob/android/ads/y;->H:I

    .line 66
    iput-object p5, p0, Lcn/domob/android/ads/y;->p:Landroid/view/View;

    .line 67
    iput p6, p0, Lcn/domob/android/ads/y;->q:I

    .line 68
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    const-string v1, "Init SplashAdView."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    if-eqz v0, :cond_2e

    .line 70
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, v6}, Lcn/domob/android/ads/g;->a(Z)V

    .line 71
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0, v6}, Lcn/domob/android/ads/g;->b(Z)V

    .line 73
    :cond_2e
    iget-object v0, p0, Lcn/domob/android/ads/y;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v0, v6}, Lcn/domob/android/ads/H;->setVisibility(I)V

    .line 74
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->d:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/y;->b:I

    .line 75
    invoke-virtual {p0}, Lcn/domob/android/ads/y;->p()Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/y;->D:Z

    .line 76
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 487
    invoke-static {p0}, Lcn/domob/android/ads/d;->a(Landroid/content/Context;)Lcn/domob/android/ads/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/d;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcn/domob/android/ads/y;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/domob/android/ads/y;->G:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/high16 v10, 0x42200000

    const/high16 v9, 0x447a0000

    .line 191
    invoke-virtual {p0}, Lcn/domob/android/ads/y;->o()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 338
    :goto_b
    return-void

    .line 194
    :cond_c
    iput-boolean v1, p0, Lcn/domob/android/ads/y;->y:Z

    .line 198
    :try_start_e
    invoke-virtual {p0}, Lcn/domob/android/ads/y;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 199
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    const-string v1, "SplashView already has a parent."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_1c

    goto :goto_b

    .line 335
    :catch_1c
    move-exception v0

    .line 336
    sget-object v1, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 207
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcn/domob/android/ads/y;->p:Landroid/view/View;

    if-eqz v0, :cond_1b2

    iget-object v0, p0, Lcn/domob/android/ads/y;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b2

    .line 208
    iget-object v0, p0, Lcn/domob/android/ads/y;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/domob/android/ads/y;->E:Landroid/widget/FrameLayout;

    .line 210
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->B()Lcn/domob/android/ads/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->u()Z

    move-result v2

    .line 212
    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->w()F

    move-result v3

    .line 213
    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->y()F

    move-result v4

    .line 217
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/y;->G:Landroid/widget/RelativeLayout;

    .line 218
    iget-object v0, p0, Lcn/domob/android/ads/y;->G:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget v0, p0, Lcn/domob/android/ads/y;->q:I

    if-eqz v0, :cond_76

    .line 220
    iget-object v0, p0, Lcn/domob/android/ads/y;->G:Landroid/widget/RelativeLayout;

    iget v5, p0, Lcn/domob/android/ads/y;->q:I

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 223
    :cond_76
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    const-string v5, "Creative width:%d, creative height:%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcn/domob/android/ads/y;->i:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcn/domob/android/ads/y;->j:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 226
    if-nez v0, :cond_a5

    .line 227
    sget-object v5, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    const-string v6, "DomobSplashAdView adViewLayoutParams is null"

    invoke-virtual {v5, v6}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 229
    :cond_a5
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 230
    iget v5, p0, Lcn/domob/android/ads/y;->x:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 231
    iget-object v5, p0, Lcn/domob/android/ads/y;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    if-eqz v2, :cond_103

    .line 234
    iget-object v0, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, v10

    float-to-int v0, v0

    .line 235
    iget-object v2, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v2, v10

    float-to-int v2, v2

    .line 237
    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 238
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 239
    iget-object v6, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    const-string v7, "domob_close.png"

    invoke-static {v6, v7}, Lcn/domob/android/i/d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 242
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    iget-object v0, p0, Lcn/domob/android/ads/y;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    new-instance v0, Lcn/domob/android/ads/y$1;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/y$1;-><init>(Lcn/domob/android/ads/y;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcn/domob/android/ads/y$2;

    invoke-direct {v2, p0, v5}, Lcn/domob/android/ads/y$2;-><init>(Lcn/domob/android/ads/y;Landroid/widget/ImageButton;)V

    mul-float v5, v3, v9

    float-to-int v5, v5

    int-to-long v6, v5

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    :cond_103
    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->x()Z

    move-result v0

    if-eqz v0, :cond_131

    .line 261
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Min imp time:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 262
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcn/domob/android/ads/y$3;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/y$3;-><init>(Lcn/domob/android/ads/y;)V

    mul-float/2addr v3, v9

    float-to-int v3, v3

    int-to-long v6, v3

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    :cond_131
    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->z()Z

    move-result v0

    if-eqz v0, :cond_160

    .line 273
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto close time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 274
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/domob/android/ads/y$4;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/y$4;-><init>(Lcn/domob/android/ads/y;)V

    mul-float v2, v4, v9

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    :cond_160
    iget-boolean v0, p0, Lcn/domob/android/ads/y;->D:Z

    if-eqz v0, :cond_190

    .line 283
    iget-object v0, p0, Lcn/domob/android/ads/y;->E:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcn/domob/android/ads/y;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 325
    :goto_16b
    iget-object v0, p0, Lcn/domob/android/ads/y;->w:Lcn/domob/android/ads/DomobSplashAdListener;

    if-eqz v0, :cond_174

    .line 326
    iget-object v0, p0, Lcn/domob/android/ads/y;->w:Lcn/domob/android/ads/DomobSplashAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobSplashAdListener;->onSplashPresent()V

    .line 329
    :cond_174
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    iget-object v1, p0, Lcn/domob/android/ads/y;->g:Lcn/domob/android/ads/n;

    invoke-virtual {v1}, Lcn/domob/android/ads/n;->c()Lcn/domob/android/ads/j;

    move-result-object v1

    const-string v2, "s"

    const-string v3, "s"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/lang/String;Ljava/lang/String;J)V

    .line 331
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/g;->a(J)V

    goto/16 :goto_b

    .line 314
    :cond_190
    iget-object v0, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/domob/android/ads/y;->F:Landroid/view/WindowManager;

    .line 316
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 317
    const/16 v1, 0x7d7

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 319
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 320
    iget-object v1, p0, Lcn/domob/android/ads/y;->F:Landroid/view/WindowManager;

    iget-object v2, p0, Lcn/domob/android/ads/y;->G:Landroid/widget/RelativeLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_16b

    .line 333
    :cond_1b2
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    const-string v1, "Splash cannot find view holder."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_1b9} :catch_1c

    goto/16 :goto_b
.end method

.method static synthetic b(Lcn/domob/android/ads/y;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/domob/android/ads/y;->E:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic q()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    return-object v0
.end method

.method private r()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    new-instance v2, Lcn/domob/android/ads/c;

    invoke-direct {v2}, Lcn/domob/android/ads/c;-><init>()V

    iget-object v3, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c;->b(Landroid/content/Context;)Lcn/domob/android/ads/K;

    move-result-object v2

    .line 117
    if-nez v2, :cond_22

    .line 118
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    const-string v2, "There is no available cache ad."

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    check-cast v0, Lcn/domob/android/ads/x;

    const-string v2, "sp_no_creative"

    invoke-virtual {v0, v8, v2}, Lcn/domob/android/ads/x;->b(Lcn/domob/android/ads/j;Ljava/lang/String;)V

    :goto_20
    move v0, v1

    .line 148
    :goto_21
    return v0

    .line 120
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2}, Lcn/domob/android/ads/K;->d()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_4a

    .line 121
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    const-string v3, "Cached ad expires."

    invoke-virtual {v0, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    check-cast v0, Lcn/domob/android/ads/x;

    invoke-virtual {v2}, Lcn/domob/android/ads/K;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/domob/android/ads/j;->a(Ljava/lang/String;)Lcn/domob/android/ads/j;

    move-result-object v2

    const-string v3, "sp_expire"

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/x;->b(Lcn/domob/android/ads/j;Ljava/lang/String;)V

    goto :goto_20

    .line 125
    :cond_4a
    invoke-virtual {v2}, Lcn/domob/android/ads/K;->a()Ljava/lang/String;

    move-result-object v3

    .line 126
    sget-object v4, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    const-string v5, "Cached ad orientation:%s"

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 128
    iget-object v4, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    invoke-static {v4}, Lcn/domob/android/b/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 130
    invoke-virtual {v2}, Lcn/domob/android/ads/K;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/domob/android/ads/y;->u:Ljava/lang/String;

    .line 131
    invoke-virtual {v2}, Lcn/domob/android/ads/K;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/domob/android/ads/y;->v:Ljava/lang/String;

    .line 132
    new-instance v2, Lcn/domob/android/ads/c;

    invoke-direct {v2}, Lcn/domob/android/ads/c;-><init>()V

    iget-object v3, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/y;->u:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcn/domob/android/ads/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/domob/android/ads/y;->z:Ljava/lang/String;

    .line 133
    iget-object v2, p0, Lcn/domob/android/ads/y;->z:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_94

    .line 134
    sget-object v1, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    const-string v2, "resources of creative is ok."

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    goto :goto_21

    .line 137
    :cond_94
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    const-string v2, "resources of creative is not ok."

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    check-cast v0, Lcn/domob/android/ads/x;

    iget-object v2, p0, Lcn/domob/android/ads/y;->v:Ljava/lang/String;

    invoke-static {v2}, Lcn/domob/android/ads/j;->a(Ljava/lang/String;)Lcn/domob/android/ads/j;

    move-result-object v2

    const-string v3, "sp_res_incomplete"

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/x;->b(Lcn/domob/android/ads/j;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 142
    :cond_ac
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    const-string v2, "There is no available cache ad. Orientation wrong."

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    check-cast v0, Lcn/domob/android/ads/x;

    const-string v2, "sp_no_creative"

    invoke-virtual {v0, v8, v2}, Lcn/domob/android/ads/x;->b(Lcn/domob/android/ads/j;Ljava/lang/String;)V

    goto/16 :goto_20
.end method


# virtual methods
.method a(I)V
    .registers 5

    .prologue
    .line 157
    iput p1, p0, Lcn/domob/android/ads/y;->x:I

    .line 158
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set splash top margin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method a(Landroid/content/Context;Landroid/view/View;I)V
    .registers 7

    .prologue
    .line 165
    iput-object p2, p0, Lcn/domob/android/ads/y;->p:Landroid/view/View;

    .line 166
    iput p3, p0, Lcn/domob/android/ads/y;->q:I

    .line 168
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load cached Ad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/y;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 169
    iput-object p1, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    .line 170
    invoke-super {p0, p0}, Lcn/domob/android/ads/DomobAdView;->setAdEventListener(Lcn/domob/android/ads/DomobAdEventListener;)V

    .line 171
    iget-object v0, p0, Lcn/domob/android/ads/y;->v:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/ads/j;->a(Ljava/lang/String;)Lcn/domob/android/ads/j;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_30

    .line 173
    iget-object v1, p0, Lcn/domob/android/ads/y;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/j;->b(Ljava/lang/String;)V

    .line 175
    :cond_30
    iget-object v1, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;I)V

    .line 177
    return-void
.end method

.method a(Lcn/domob/android/ads/DomobSplashAdListener;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcn/domob/android/ads/y;->w:Lcn/domob/android/ads/DomobSplashAdListener;

    .line 94
    return-void
.end method

.method protected a(Lcn/domob/android/ads/n;)V
    .registers 2

    .prologue
    .line 379
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 89
    new-instance v0, Lcn/domob/android/ads/x;

    invoke-direct {v0, p0, p1, p2}, Lcn/domob/android/ads/x;-><init>(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    .line 90
    return-void
.end method

.method public close()V
    .registers 5

    .prologue
    .line 385
    iget-boolean v0, p0, Lcn/domob/android/ads/y;->D:Z

    if-eqz v0, :cond_28

    .line 386
    iget-object v0, p0, Lcn/domob/android/ads/y;->E:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcn/domob/android/ads/y;->G:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_27

    .line 388
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 389
    iget v1, p0, Lcn/domob/android/ads/y;->H:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 390
    new-instance v1, Lcn/domob/android/ads/y$5;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/y$5;-><init>(Lcn/domob/android/ads/y;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 407
    iget-object v1, p0, Lcn/domob/android/ads/y;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 424
    :cond_27
    :goto_27
    return-void

    .line 411
    :cond_28
    iget-object v0, p0, Lcn/domob/android/ads/y;->F:Landroid/view/WindowManager;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcn/domob/android/ads/y;->G:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_27

    .line 412
    iget-object v0, p0, Lcn/domob/android/ads/y;->F:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/domob/android/ads/y;->G:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_27
.end method

.method protected l()Z
    .registers 3

    .prologue
    .line 84
    iget v0, p0, Lcn/domob/android/ads/y;->b:I

    sget-object v1, Lcn/domob/android/ads/DomobAdView$a;->d:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method m()Z
    .registers 3

    .prologue
    .line 100
    invoke-direct {p0}, Lcn/domob/android/ads/y;->r()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 102
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    const-string v1, "Both splash ad response and it\'s resources are OK."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x1

    .line 106
    :goto_e
    return v0

    .line 105
    :cond_f
    invoke-virtual {p0}, Lcn/domob/android/ads/y;->requestRefreshAd()V

    .line 106
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected n()V
    .registers 7

    .prologue
    .line 347
    iget-boolean v0, p0, Lcn/domob/android/ads/y;->r:Z

    if-nez v0, :cond_4e

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/y;->r:Z

    .line 349
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    iget-object v1, p0, Lcn/domob/android/ads/y;->g:Lcn/domob/android/ads/n;

    invoke-virtual {v1}, Lcn/domob/android/ads/n;->c()Lcn/domob/android/ads/j;

    move-result-object v1

    const-string v2, "f"

    const-string v3, "s"

    iget-object v4, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v4}, Lcn/domob/android/ads/g;->g()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/lang/String;Ljava/lang/String;J)V

    .line 351
    iget-object v0, p0, Lcn/domob/android/ads/y;->w:Lcn/domob/android/ads/DomobSplashAdListener;

    if-eqz v0, :cond_25

    .line 352
    iget-object v0, p0, Lcn/domob/android/ads/y;->w:Lcn/domob/android/ads/DomobSplashAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobSplashAdListener;->onSplashDismiss()V

    .line 354
    :cond_25
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    const-string v1, "Request another Ad when current cached Ad is shown."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 356
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    const-string v1, "Delete old cached ad response."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 357
    new-instance v0, Lcn/domob/android/ads/c;

    invoke-direct {v0}, Lcn/domob/android/ads/c;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c;->c(Landroid/content/Context;)V

    .line 359
    new-instance v0, Lcn/domob/android/ads/c;

    invoke-direct {v0}, Lcn/domob/android/ads/c;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c;->d(Landroid/content/Context;)V

    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/y;->setAdEventListener(Lcn/domob/android/ads/DomobAdEventListener;)V

    .line 363
    invoke-virtual {p0}, Lcn/domob/android/ads/y;->requestRefreshAd()V

    .line 365
    :cond_4e
    return-void
.end method

.method protected o()Z
    .registers 2

    .prologue
    .line 373
    iget-boolean v0, p0, Lcn/domob/android/ads/y;->y:Z

    return v0
.end method

.method public onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V
    .registers 2
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 457
    return-void
.end method

.method public onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .registers 6
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;
    .param p2, "code"    # Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    .prologue
    .line 433
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load ad or get ad responce and the ErrorCode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcn/domob/android/ads/y;->w:Lcn/domob/android/ads/DomobSplashAdListener;

    if-eqz v0, :cond_21

    .line 435
    iget-object v0, p0, Lcn/domob/android/ads/y;->w:Lcn/domob/android/ads/DomobSplashAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobSplashAdListener;->onSplashLoadFailed()V

    .line 437
    :cond_21
    return-void
.end method

.method public onDomobAdOverlayDismissed(Lcn/domob/android/ads/DomobAdView;)V
    .registers 2
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 447
    return-void
.end method

.method public onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V
    .registers 2
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 442
    return-void
.end method

.method public onDomobAdRequiresCurrentContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    return-object v0
.end method

.method public onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V
    .registers 4
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 428
    sget-object v0, Lcn/domob/android/ads/y;->t:Lcn/domob/android/i/f;

    const-string v1, "Get new splash ad responce."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V
    .registers 2
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 452
    return-void
.end method

.method public p()Z
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 469
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 470
    if-eqz v0, :cond_23

    .line 471
    const-string v1, "MI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 472
    const-string v2, "HM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 473
    if-eq v1, v3, :cond_17

    .line 474
    const/16 v2, 0x12c

    iput v2, p0, Lcn/domob/android/ads/y;->H:I

    .line 476
    :cond_17
    if-eq v0, v3, :cond_1d

    .line 477
    const/16 v2, 0x15e

    iput v2, p0, Lcn/domob/android/ads/y;->H:I

    .line 479
    :cond_1d
    if-ne v1, v3, :cond_21

    if-eq v0, v3, :cond_23

    .line 480
    :cond_21
    const/4 v0, 0x1

    .line 483
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public showAd(Lcn/domob/android/ads/n;[Landroid/view/animation/AnimationSet;)V
    .registers 4
    .param p1, "adapter"    # Lcn/domob/android/ads/n;
    .param p2, "animationPair"    # [Landroid/view/animation/AnimationSet;

    .prologue
    .line 181
    invoke-virtual {p1}, Lcn/domob/android/ads/n;->b()Landroid/view/View;

    move-result-object v0

    .line 182
    iput-object p1, p0, Lcn/domob/android/ads/y;->g:Lcn/domob/android/ads/n;

    .line 183
    invoke-direct {p0, v0}, Lcn/domob/android/ads/y;->a(Landroid/view/View;)V

    .line 184
    return-void
.end method
