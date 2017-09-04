.class public Lcn/domob/android/ads/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/v$e;,
        Lcn/domob/android/ads/v$a;,
        Lcn/domob/android/ads/v$b;,
        Lcn/domob/android/ads/v$c;,
        Lcn/domob/android/ads/v$d;
    }
.end annotation


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x4d0

.field public static final c:Ljava/lang/String; = "btn_close_interstitial.png"

.field public static final d:Ljava/lang/String; = "btn_close_interstitial_pressed.png"

.field public static final e:Ljava/lang/String; = "domob_close.png"

.field public static final f:I = 0x24

.field public static final g:I = 0x24

.field private static h:Lcn/domob/android/i/f; = null

.field private static final i:I = 0x5

.field private static final j:I = 0xf

.field private static final k:I = 0x58

.field private static final l:I = 0x1c


# instance fields
.field private m:Lcn/domob/android/ads/v$e;

.field private n:Landroid/app/Dialog;

.field private o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/v;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/v;->h:Lcn/domob/android/i/f;

    return-void
.end method

.method private constructor <init>(Lcn/domob/android/ads/v$e;)V
    .registers 4

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcn/domob/android/ads/v$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/domob/android/ads/v$1;-><init>(Lcn/domob/android/ads/v;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/v;->o:Landroid/os/Handler;

    .line 372
    iput-object p1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    .line 373
    return-void
.end method

.method synthetic constructor <init>(Lcn/domob/android/ads/v$e;Lcn/domob/android/ads/v$1;)V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/domob/android/ads/v;-><init>(Lcn/domob/android/ads/v$e;)V

    return-void
.end method

.method private a(I)I
    .registers 3

    .prologue
    .line 604
    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->b(Lcn/domob/android/ads/v$e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method private a(III)I
    .registers 5

    .prologue
    .line 487
    if-gez p3, :cond_8

    .line 488
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 490
    :goto_7
    return v0

    :cond_8
    add-int v0, p3, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_7
.end method

.method static synthetic a(Lcn/domob/android/ads/v;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcn/domob/android/ads/v;->n:Landroid/app/Dialog;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .prologue
    .line 526
    const-string v0, "triangle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->g(Lcn/domob/android/ads/v$e;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 527
    :cond_10
    invoke-direct {p0}, Lcn/domob/android/ads/v;->i()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 531
    :goto_14
    return-object v0

    .line 529
    :cond_15
    invoke-direct {p0}, Lcn/domob/android/ads/v;->h()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    goto :goto_14
.end method

.method private a(Ljava/lang/Integer;)Landroid/widget/RelativeLayout;
    .registers 4

    .prologue
    .line 502
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->b(Lcn/domob/android/ads/v$e;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 503
    if-eqz p1, :cond_14

    .line 504
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 506
    :cond_14
    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 387
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 388
    :cond_8
    sget-object v0, Lcn/domob/android/ads/v;->h:Lcn/domob/android/i/f;

    const-string v1, "\u9700\u8981\u5f39\u51fa\u663e\u793a\u7684View\u5df2\u7ecf\u88ab\u52a0\u8f7d\u5176\u4ed6ViewGroup\u4e2d\uff0c\u9700\u8981remove\u4e4b\u540e\u663e\u793a\u3002"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 424
    :cond_f
    :goto_f
    return-void

    .line 392
    :cond_10
    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->h(Lcn/domob/android/ads/v$e;)Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->i(Lcn/domob/android/ads/v$e;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 393
    :goto_22
    invoke-direct {p0, v0}, Lcn/domob/android/ads/v;->a(Ljava/lang/Integer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->j(Lcn/domob/android/ads/v$e;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/domob/android/ads/v;->a(Ljava/lang/Integer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 397
    const/16 v2, 0x4d0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 398
    invoke-direct {p0}, Lcn/domob/android/ads/v;->g()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    .line 399
    invoke-virtual {v1, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iget-object v2, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v2}, Lcn/domob/android/ads/v$e;->k(Lcn/domob/android/ads/v$e;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/domob/android/ads/v;->a(Ljava/lang/String;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    .line 401
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->g(Lcn/domob/android/ads/v$e;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 406
    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->k(Lcn/domob/android/ads/v$e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/domob/android/ads/v;->b(Ljava/lang/String;)Landroid/widget/ImageButton;

    move-result-object v1

    .line 407
    iget-object v2, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v2}, Lcn/domob/android/ads/v$e;->k(Lcn/domob/android/ads/v$e;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/domob/android/ads/v;->c(Ljava/lang/String;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    .line 408
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    :cond_6c
    invoke-direct {p0, p1}, Lcn/domob/android/ads/v;->b(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/v;->n:Landroid/app/Dialog;

    .line 412
    iget-object v1, p0, Lcn/domob/android/ads/v;->n:Landroid/app/Dialog;

    invoke-direct {p0}, Lcn/domob/android/ads/v;->p()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->l(Lcn/domob/android/ads/v$e;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 415
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 416
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 417
    iget-object v2, p0, Lcn/domob/android/ads/v;->o:Landroid/os/Handler;

    iget-object v3, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v3}, Lcn/domob/android/ads/v$e;->m(Lcn/domob/android/ads/v$e;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 419
    :cond_97
    iget-object v1, p0, Lcn/domob/android/ads/v;->n:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 420
    iget-object v0, p0, Lcn/domob/android/ads/v;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 421
    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->a(Lcn/domob/android/ads/v$e;)Lcn/domob/android/ads/v$c;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 422
    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->a(Lcn/domob/android/ads/v$e;)Lcn/domob/android/ads/v$c;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/v$c;->a()V

    goto/16 :goto_f

    .line 392
    :cond_b4
    const/4 v0, 0x0

    goto/16 :goto_22
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 680
    if-eqz p1, :cond_15

    invoke-static {p2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 681
    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->b(Lcn/domob/android/ads/v$e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcn/domob/android/i/d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 683
    :cond_15
    return-void
.end method

.method private a(Landroid/widget/ImageButton;)V
    .registers 6

    .prologue
    .line 658
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 659
    new-instance v0, Lcn/domob/android/ads/v$3;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/v$3;-><init>(Lcn/domob/android/ads/v;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 668
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 669
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 670
    iget-object v1, p0, Lcn/domob/android/ads/v;->o:Landroid/os/Handler;

    iget-object v2, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v2}, Lcn/domob/android/ads/v$e;->x(Lcn/domob/android/ads/v$e;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 671
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/v;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/domob/android/ads/v;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/v;Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/v;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/view/View;)Landroid/app/Dialog;
    .registers 6

    .prologue
    .line 744
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->b(Lcn/domob/android/ads/v$e;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030011

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/android/ads/v;->n:Landroid/app/Dialog;

    .line 745
    iget-object v0, p0, Lcn/domob/android/ads/v;->n:Landroid/app/Dialog;

    new-instance v1, Lcn/domob/android/ads/v$4;

    invoke-direct {v1, p0, p1}, Lcn/domob/android/ads/v$4;-><init>(Lcn/domob/android/ads/v;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 758
    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->z(Lcn/domob/android/ads/v$e;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 759
    iget-object v0, p0, Lcn/domob/android/ads/v;->n:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 760
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 761
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 762
    iget-object v1, p0, Lcn/domob/android/ads/v;->o:Landroid/os/Handler;

    iget-object v2, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v2}, Lcn/domob/android/ads/v$e;->x(Lcn/domob/android/ads/v$e;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 764
    :cond_3c
    iget-object v0, p0, Lcn/domob/android/ads/v;->n:Landroid/app/Dialog;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/widget/ImageButton;
    .registers 3

    .prologue
    .line 612
    .line 613
    const-string v0, "triangle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 614
    invoke-direct {p0}, Lcn/domob/android/ads/v;->m()Landroid/widget/ImageButton;

    move-result-object v0

    .line 618
    :goto_c
    invoke-direct {p0, v0}, Lcn/domob/android/ads/v;->a(Landroid/widget/ImageButton;)V

    .line 619
    return-object v0

    .line 616
    :cond_10
    invoke-direct {p0}, Lcn/domob/android/ads/v;->l()Landroid/widget/ImageButton;

    move-result-object v0

    goto :goto_c
.end method

.method static synthetic b(Lcn/domob/android/ads/v;)Lcn/domob/android/ads/v$e;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    return-object v0
.end method

.method static synthetic b()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcn/domob/android/ads/v;->h:Lcn/domob/android/i/f;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .prologue
    .line 694
    const-string v0, "triangle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 695
    invoke-direct {p0}, Lcn/domob/android/ads/v;->n()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 699
    :goto_c
    return-object v0

    .line 697
    :cond_d
    invoke-direct {p0}, Lcn/domob/android/ads/v;->o()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    goto :goto_c
.end method

.method private c()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 430
    invoke-direct {p0}, Lcn/domob/android/ads/v;->e()I

    move-result v1

    .line 431
    invoke-direct {p0}, Lcn/domob/android/ads/v;->f()I

    move-result v2

    .line 432
    iget-object v3, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v3}, Lcn/domob/android/ads/v$e;->n(Lcn/domob/android/ads/v$e;)I

    move-result v3

    iget-object v4, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v4}, Lcn/domob/android/ads/v$e;->o(Lcn/domob/android/ads/v$e;)I

    move-result v4

    add-int/2addr v3, v4

    if-lt v1, v3, :cond_19

    .line 438
    :cond_18
    :goto_18
    return v0

    .line 435
    :cond_19
    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->p(Lcn/domob/android/ads/v$e;)I

    move-result v1

    iget-object v3, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v3}, Lcn/domob/android/ads/v$e;->q(Lcn/domob/android/ads/v$e;)I

    move-result v3

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_18

    .line 438
    const/4 v0, 0x1

    goto :goto_18
.end method

.method static synthetic c(Lcn/domob/android/ads/v;)Z
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/domob/android/ads/v;->d()Z

    move-result v0

    return v0
.end method

.method private d()Z
    .registers 5

    .prologue
    .line 445
    invoke-direct {p0}, Lcn/domob/android/ads/v;->e()I

    move-result v0

    .line 446
    invoke-direct {p0}, Lcn/domob/android/ads/v;->f()I

    move-result v1

    .line 447
    iget-object v2, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v2}, Lcn/domob/android/ads/v$e;->b(Lcn/domob/android/ads/v$e;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/domob/android/b/a;->u(Landroid/content/Context;)I

    move-result v2

    .line 448
    iget-object v3, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v3}, Lcn/domob/android/ads/v$e;->b(Lcn/domob/android/ads/v$e;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/domob/android/b/a;->v(Landroid/content/Context;)I

    move-result v3

    .line 449
    if-le v3, v1, :cond_22

    if-le v2, v0, :cond_22

    const/4 v0, 0x1

    .line 450
    :goto_21
    return v0

    .line 449
    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method static synthetic d(Lcn/domob/android/ads/v;)Z
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/domob/android/ads/v;->c()Z

    move-result v0

    return v0
.end method

.method private e()I
    .registers 5

    .prologue
    .line 457
    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->g(Lcn/domob/android/ads/v$e;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 458
    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->o(Lcn/domob/android/ads/v$e;)I

    move-result v0

    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->n(Lcn/domob/android/ads/v$e;)I

    move-result v1

    iget-object v2, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v2}, Lcn/domob/android/ads/v$e;->r(Lcn/domob/android/ads/v$e;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcn/domob/android/ads/v;->a(III)I

    move-result v0

    .line 460
    :goto_21
    return v0

    :cond_22
    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->o(Lcn/domob/android/ads/v$e;)I

    move-result v0

    goto :goto_21
.end method

.method private f()I
    .registers 5

    .prologue
    .line 468
    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->g(Lcn/domob/android/ads/v$e;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 469
    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->q(Lcn/domob/android/ads/v$e;)I

    move-result v0

    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->p(Lcn/domob/android/ads/v$e;)I

    move-result v1

    iget-object v2, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v2}, Lcn/domob/android/ads/v$e;->r(Lcn/domob/android/ads/v$e;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcn/domob/android/ads/v;->a(III)I

    move-result v0

    .line 471
    :goto_21
    return v0

    :cond_22
    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->q(Lcn/domob/android/ads/v$e;)I

    move-result v0

    goto :goto_21
.end method

.method private g()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 4

    .prologue
    .line 513
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->o(Lcn/domob/android/ads/v$e;)I

    move-result v1

    iget-object v2, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v2}, Lcn/domob/android/ads/v$e;->q(Lcn/domob/android/ads/v$e;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 514
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 515
    return-object v0
.end method

.method private h()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .prologue
    .line 538
    invoke-direct {p0}, Lcn/domob/android/ads/v;->j()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 539
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 540
    invoke-direct {p0}, Lcn/domob/android/ads/v;->k()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 541
    return-object v0
.end method

.method private i()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .prologue
    .line 548
    invoke-direct {p0}, Lcn/domob/android/ads/v;->j()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->s(Lcn/domob/android/ads/v$e;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->t(Lcn/domob/android/ads/v$e;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->u(Lcn/domob/android/ads/v$e;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->v(Lcn/domob/android/ads/v$e;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 550
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 552
    :cond_29
    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->s(Lcn/domob/android/ads/v$e;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 553
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 555
    :cond_36
    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->u(Lcn/domob/android/ads/v$e;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 556
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 558
    :cond_43
    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->t(Lcn/domob/android/ads/v$e;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 559
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 561
    :cond_50
    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->v(Lcn/domob/android/ads/v$e;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 562
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 564
    :cond_5d
    return-object v0
.end method

.method private j()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 571
    const/4 v0, 0x0

    .line 572
    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->w(Lcn/domob/android/ads/v$e;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 573
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcn/domob/android/ads/v;->a(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 575
    :cond_11
    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->o(Lcn/domob/android/ads/v$e;)I

    move-result v1

    if-eq v1, v2, :cond_35

    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->o(Lcn/domob/android/ads/v$e;)I

    move-result v1

    add-int/2addr v1, v0

    .line 576
    :goto_20
    iget-object v3, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v3}, Lcn/domob/android/ads/v$e;->q(Lcn/domob/android/ads/v$e;)I

    move-result v3

    if-eq v3, v2, :cond_2f

    iget-object v2, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v2}, Lcn/domob/android/ads/v$e;->q(Lcn/domob/android/ads/v$e;)I

    move-result v2

    add-int/2addr v2, v0

    .line 577
    :cond_2f
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 578
    return-object v0

    :cond_35
    move v1, v2

    .line 575
    goto :goto_20
.end method

.method private k()I
    .registers 6

    .prologue
    .line 585
    invoke-direct {p0}, Lcn/domob/android/ads/v;->f()I

    move-result v0

    .line 586
    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->q(Lcn/domob/android/ads/v$e;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 587
    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->b(Lcn/domob/android/ads/v$e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/domob/android/b/a;->v(Landroid/content/Context;)I

    move-result v1

    .line 588
    iget-object v2, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v2}, Lcn/domob/android/ads/v$e;->q(Lcn/domob/android/ads/v$e;)I

    move-result v2

    .line 589
    iget-object v3, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v3}, Lcn/domob/android/ads/v$e;->r(Lcn/domob/android/ads/v$e;)[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    if-gez v3, :cond_2d

    .line 590
    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 592
    :goto_2c
    return v0

    :cond_2d
    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v0, v1, v0

    goto :goto_2c
.end method

.method private l()Landroid/widget/ImageButton;
    .registers 3

    .prologue
    .line 626
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->b(Lcn/domob/android/ads/v$e;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 627
    const-string v1, "btn_close_interstitial.png"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/v;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 628
    new-instance v1, Lcn/domob/android/ads/v$2;

    invoke-direct {v1, p0, v0}, Lcn/domob/android/ads/v$2;-><init>(Lcn/domob/android/ads/v;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 639
    return-object v0
.end method

.method private m()Landroid/widget/ImageButton;
    .registers 3

    .prologue
    .line 646
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->b(Lcn/domob/android/ads/v$e;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 647
    const-string v1, "domob_close.png"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/v;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 648
    return-object v0
.end method

.method private n()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 5

    .prologue
    const/16 v3, 0x4d0

    .line 708
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v1}, Lcn/domob/android/ads/v$e;->n(Lcn/domob/android/ads/v$e;)I

    move-result v1

    iget-object v2, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v2}, Lcn/domob/android/ads/v$e;->p(Lcn/domob/android/ads/v$e;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 710
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 711
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 712
    return-object v0
.end method

.method private o()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 8

    .prologue
    const/16 v6, 0x4d0

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 721
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->n(Lcn/domob/android/ads/v$e;)I

    move-result v0

    iget-object v3, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v3}, Lcn/domob/android/ads/v$e;->p(Lcn/domob/android/ads/v$e;)I

    move-result v3

    invoke-direct {v4, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 723
    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->r(Lcn/domob/android/ads/v$e;)[I

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->r(Lcn/domob/android/ads/v$e;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_48

    .line 725
    iget-object v0, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->w(Lcn/domob/android/ads/v$e;)Z

    move-result v0

    if-eqz v0, :cond_50

    move v0, v1

    move v3, v1

    .line 729
    :goto_31
    iget-object v5, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v5}, Lcn/domob/android/ads/v$e;->r(Lcn/domob/android/ads/v$e;)[I

    move-result-object v5

    aget v2, v5, v2

    add-int/2addr v2, v3

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 730
    iget-object v2, p0, Lcn/domob/android/ads/v;->m:Lcn/domob/android/ads/v$e;

    invoke-static {v2}, Lcn/domob/android/ads/v$e;->r(Lcn/domob/android/ads/v$e;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v0, v2

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 732
    :cond_48
    const/4 v0, 0x6

    invoke-virtual {v4, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 733
    invoke-virtual {v4, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 734
    return-object v4

    :cond_50
    move v0, v2

    move v3, v2

    goto :goto_31
.end method

.method private p()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 773
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 774
    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 376
    iget-object v0, p0, Lcn/domob/android/ads/v;->n:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcn/domob/android/ads/v;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 378
    :try_start_c
    iget-object v0, p0, Lcn/domob/android/ads/v;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_12

    .line 383
    :cond_11
    :goto_11
    return-void

    .line 379
    :catch_12
    move-exception v0

    .line 380
    sget-object v1, Lcn/domob/android/ads/v;->h:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_11
.end method
