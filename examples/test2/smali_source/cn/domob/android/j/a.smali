.class public Lcn/domob/android/j/a;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/j/c$a;
.implements Lcn/domob/android/j/d$b;
.implements Lcn/domob/android/j/e$a;
.implements Lcn/domob/android/j/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/j/a$c;,
        Lcn/domob/android/j/a$a;,
        Lcn/domob/android/j/a$b;
    }
.end annotation


# static fields
.field public static final a:I

.field private static b:Lcn/domob/android/i/f;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:I

.field private H:I

.field private I:I

.field private J:Z

.field private K:Z

.field private L:Ljava/lang/Runnable;

.field private c:Landroid/content/Context;

.field private d:Lcn/domob/android/j/b;

.field private e:Lcn/domob/android/j/d;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/RelativeLayout$LayoutParams;

.field private j:Landroid/widget/RelativeLayout$LayoutParams;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/VideoView;

.field private m:Landroid/app/Dialog;

.field private n:Lcn/domob/android/j/c;

.field private o:Lcn/domob/android/j/a$a;

.field private p:Lcn/domob/android/j/a$c;

.field private q:Lcn/domob/android/j/a$b;

.field private r:[J

.field private s:Lcn/domob/android/j/e;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/os/Handler;

.field private y:Ljava/util/Timer;

.field private z:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/j/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILcn/domob/android/j/b;Lcn/domob/android/j/a$a;)V
    .registers 15

    .prologue
    const/high16 v7, -0x1000000

    const/16 v6, 0xd

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput v2, p0, Lcn/domob/android/j/a;->f:I

    .line 54
    iput v2, p0, Lcn/domob/android/j/a;->g:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/j/a;->q:Lcn/domob/android/j/a$b;

    .line 69
    iput-boolean v2, p0, Lcn/domob/android/j/a;->t:Z

    .line 70
    iput-boolean v2, p0, Lcn/domob/android/j/a;->u:Z

    .line 71
    iput-boolean v2, p0, Lcn/domob/android/j/a;->v:Z

    .line 73
    iput-boolean v2, p0, Lcn/domob/android/j/a;->w:Z

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/j/a;->x:Landroid/os/Handler;

    .line 77
    iput-boolean v2, p0, Lcn/domob/android/j/a;->A:Z

    .line 78
    iput-boolean v2, p0, Lcn/domob/android/j/a;->B:Z

    .line 79
    iput-boolean v2, p0, Lcn/domob/android/j/a;->C:Z

    .line 80
    iput-boolean v2, p0, Lcn/domob/android/j/a;->D:Z

    .line 81
    iput-boolean v2, p0, Lcn/domob/android/j/a;->E:Z

    .line 82
    iput-boolean v2, p0, Lcn/domob/android/j/a;->F:Z

    .line 86
    iput-boolean v2, p0, Lcn/domob/android/j/a;->J:Z

    .line 90
    iput-boolean v2, p0, Lcn/domob/android/j/a;->K:Z

    .line 92
    new-instance v0, Lcn/domob/android/j/a$1;

    invoke-direct {v0, p0}, Lcn/domob/android/j/a$1;-><init>(Lcn/domob/android/j/a;)V

    iput-object v0, p0, Lcn/domob/android/j/a;->L:Ljava/lang/Runnable;

    .line 101
    if-eqz p1, :cond_cc

    invoke-static {p2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cc

    if-lez p3, :cond_cc

    if-lez p4, :cond_cc

    .line 102
    iput-object p1, p0, Lcn/domob/android/j/a;->c:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcn/domob/android/j/a;->h:Ljava/lang/String;

    .line 104
    iput p3, p0, Lcn/domob/android/j/a;->f:I

    .line 105
    iput p4, p0, Lcn/domob/android/j/a;->g:I

    .line 106
    iput-object p6, p0, Lcn/domob/android/j/a;->o:Lcn/domob/android/j/a$a;

    .line 107
    iput-object p5, p0, Lcn/domob/android/j/a;->d:Lcn/domob/android/j/b;

    .line 108
    iget-object v0, p0, Lcn/domob/android/j/a;->d:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->f()I

    move-result v0

    iput v0, p0, Lcn/domob/android/j/a;->I:I

    .line 109
    new-instance v0, Lcn/domob/android/j/d;

    iget-object v2, p0, Lcn/domob/android/j/a;->d:Lcn/domob/android/j/b;

    iget v3, p0, Lcn/domob/android/j/a;->I:I

    iget-object v4, p0, Lcn/domob/android/j/a;->x:Landroid/os/Handler;

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/j/d;-><init>(Landroid/content/Context;Lcn/domob/android/j/b;ILandroid/os/Handler;Lcn/domob/android/j/d$b;)V

    iput-object v0, p0, Lcn/domob/android/j/a;->e:Lcn/domob/android/j/d;

    .line 110
    iget-object v0, p0, Lcn/domob/android/j/a;->e:Lcn/domob/android/j/d;

    iget-object v1, p0, Lcn/domob/android/j/a;->c:Landroid/content/Context;

    iget v2, p0, Lcn/domob/android/j/a;->f:I

    iget v3, p0, Lcn/domob/android/j/a;->g:I

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/android/j/d;->b(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    .line 111
    iget-object v0, p0, Lcn/domob/android/j/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 112
    iget-object v0, p0, Lcn/domob/android/j/a;->e:Lcn/domob/android/j/d;

    iget-object v1, p0, Lcn/domob/android/j/a;->c:Landroid/content/Context;

    iget v2, p0, Lcn/domob/android/j/a;->f:I

    iget v3, p0, Lcn/domob/android/j/a;->g:I

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/android/j/d;->b(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    .line 113
    iget-object v0, p0, Lcn/domob/android/j/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 114
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/j/a;->k:Landroid/widget/RelativeLayout;

    .line 115
    iget-object v0, p0, Lcn/domob/android/j/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 116
    iget-object v0, p0, Lcn/domob/android/j/a;->k:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/j/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v0, p0, Lcn/domob/android/j/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcn/domob/android/j/a;->addView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcn/domob/android/j/a;->e:Lcn/domob/android/j/d;

    iget-object v1, p0, Lcn/domob/android/j/a;->c:Landroid/content/Context;

    iget v2, p0, Lcn/domob/android/j/a;->f:I

    iget v3, p0, Lcn/domob/android/j/a;->g:I

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/android/j/d;->b(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    invoke-virtual {p0, v0}, Lcn/domob/android/j/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {p0, v7}, Lcn/domob/android/j/a;->setBackgroundColor(I)V

    .line 122
    iget-object v0, p0, Lcn/domob/android/j/a;->e:Lcn/domob/android/j/d;

    invoke-virtual {v0}, Lcn/domob/android/j/d;->g()V

    .line 123
    iget-object v0, p0, Lcn/domob/android/j/a;->d:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->d()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 124
    invoke-direct {p0}, Lcn/domob/android/j/a;->H()Z

    .line 130
    :cond_cb
    :goto_cb
    return-void

    .line 127
    :cond_cc
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "Constructor parameter error, video ad end"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcn/domob/android/j/a;->g()V

    goto :goto_cb
.end method

.method static synthetic A(Lcn/domob/android/j/a;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/j/a;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private A()Z
    .registers 3

    .prologue
    .line 514
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 517
    :goto_6
    return v0

    .line 515
    :catch_7
    move-exception v0

    .line 516
    sget-object v1, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 517
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static synthetic B(Lcn/domob/android/j/a;)I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcn/domob/android/j/a;->f:I

    return v0
.end method

.method private B()V
    .registers 14

    .prologue
    .line 525
    iget-object v0, p0, Lcn/domob/android/j/a;->z:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 526
    iget-object v0, p0, Lcn/domob/android/j/a;->z:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 528
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 529
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 530
    const/16 v0, 0x3e8

    .line 531
    iget v1, p0, Lcn/domob/android/j/a;->I:I

    if-lez v1, :cond_2d

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/j/a;->C:Z

    .line 533
    iget v0, p0, Lcn/domob/android/j/a;->I:I

    iget v1, p0, Lcn/domob/android/j/a;->I:I

    rem-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/domob/android/j/a;->I:I

    .line 534
    iget v0, p0, Lcn/domob/android/j/a;->I:I

    rem-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_7e

    const/16 v0, 0x3e8

    .line 536
    :cond_2d
    :goto_2d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/domob/android/j/a;->D:Z

    .line 537
    iget-object v1, p0, Lcn/domob/android/j/a;->r:[J

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcn/domob/android/j/a;->r:[J

    array-length v1, v1

    if-lez v1, :cond_9e

    .line 538
    const/4 v1, 0x0

    move v12, v1

    move v1, v0

    move v0, v12

    :goto_3d
    iget-object v4, p0, Lcn/domob/android/j/a;->r:[J

    array-length v4, v4

    if-ge v0, v4, :cond_81

    .line 539
    new-instance v4, Ljava/lang/Long;

    iget-object v5, p0, Lcn/domob/android/j/a;->r:[J

    aget-wide v6, v5, v0

    iget-object v5, p0, Lcn/domob/android/j/a;->r:[J

    aget-wide v8, v5, v0

    const-wide/16 v10, 0x64

    rem-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 540
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68

    .line 541
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    new-instance v4, Ljava/lang/Long;

    iget-object v5, p0, Lcn/domob/android/j/a;->r:[J

    aget-wide v6, v5, v0

    invoke-direct {v4, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_68
    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_7b

    iget-object v4, p0, Lcn/domob/android/j/a;->r:[J

    aget-wide v4, v4, v0

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_7b

    .line 545
    const/16 v1, 0x64

    .line 538
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 534
    :cond_7e
    const/16 v0, 0x64

    goto :goto_2d

    :cond_81
    move v4, v1

    .line 549
    :goto_82
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/domob/android/j/a;->z:Ljava/util/Timer;

    .line 550
    new-instance v1, Lcn/domob/android/j/a$13;

    invoke-direct {v1, p0, v2}, Lcn/domob/android/j/a$13;-><init>(Lcn/domob/android/j/a;Ljava/util/ArrayList;)V

    .line 572
    :try_start_8e
    iget-object v0, p0, Lcn/domob/android/j/a;->z:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_96
    .catch Ljava/lang/IllegalStateException; {:try_start_8e .. :try_end_96} :catch_97

    .line 576
    :goto_96
    return-void

    .line 573
    :catch_97
    move-exception v0

    .line 574
    sget-object v1, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_96

    :cond_9e
    move v4, v0

    goto :goto_82
.end method

.method static synthetic C(Lcn/domob/android/j/a;)I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcn/domob/android/j/a;->g:I

    return v0
.end method

.method private C()V
    .registers 1

    .prologue
    .line 579
    invoke-direct {p0}, Lcn/domob/android/j/a;->E()V

    .line 580
    return-void
.end method

.method static synthetic D(Lcn/domob/android/j/a;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/j/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method private D()V
    .registers 6

    .prologue
    .line 611
    iget-object v0, p0, Lcn/domob/android/j/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->u(Landroid/content/Context;)I

    move-result v0

    .line 612
    iget-object v1, p0, Lcn/domob/android/j/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/b/a;->v(Landroid/content/Context;)I

    move-result v1

    .line 613
    iget v2, p0, Lcn/domob/android/j/a;->f:I

    int-to-float v2, v2

    iget v3, p0, Lcn/domob/android/j/a;->g:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v0

    int-to-float v4, v1

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_28

    .line 614
    int-to-float v1, v0

    iget v2, p0, Lcn/domob/android/j/a;->f:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcn/domob/android/j/a;->g:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 615
    invoke-direct {p0, v0, v1}, Lcn/domob/android/j/a;->b(II)V

    .line 620
    :goto_27
    return-void

    .line 617
    :cond_28
    int-to-float v0, v1

    iget v2, p0, Lcn/domob/android/j/a;->g:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcn/domob/android/j/a;->f:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 618
    invoke-direct {p0, v0, v1}, Lcn/domob/android/j/a;->b(II)V

    goto :goto_27
.end method

.method static synthetic E(Lcn/domob/android/j/a;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/j/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method private E()V
    .registers 3

    .prologue
    .line 623
    iget-object v0, p0, Lcn/domob/android/j/a;->x:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/j/a$2;

    invoke-direct {v1, p0}, Lcn/domob/android/j/a$2;-><init>(Lcn/domob/android/j/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 639
    return-void
.end method

.method static synthetic F(Lcn/domob/android/j/a;)Lcn/domob/android/j/e;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/j/a;->s:Lcn/domob/android/j/e;

    return-object v0
.end method

.method private F()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 642
    const/4 v1, 0x0

    .line 643
    iget-object v2, p0, Lcn/domob/android/j/a;->d:Lcn/domob/android/j/b;

    invoke-virtual {v2}, Lcn/domob/android/j/b;->d()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 644
    iget-boolean v2, p0, Lcn/domob/android/j/a;->v:Z

    if-eqz v2, :cond_12

    .line 645
    iget-boolean v2, p0, Lcn/domob/android/j/a;->u:Z

    if-eqz v2, :cond_1e

    .line 656
    :cond_12
    :goto_12
    if-eqz v0, :cond_17

    .line 657
    invoke-direct {p0}, Lcn/domob/android/j/a;->I()Z

    .line 659
    :cond_17
    return v0

    .line 652
    :cond_18
    invoke-direct {p0}, Lcn/domob/android/j/a;->H()Z

    move-result v2

    if-nez v2, :cond_12

    :cond_1e
    move v0, v1

    goto :goto_12
.end method

.method static synthetic G(Lcn/domob/android/j/a;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/j/a;->P()V

    return-void
.end method

.method private G()Z
    .registers 2

    .prologue
    .line 663
    iget-object v0, p0, Lcn/domob/android/j/a;->d:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic H(Lcn/domob/android/j/a;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/j/a;->M()V

    return-void
.end method

.method private H()Z
    .registers 4

    .prologue
    .line 671
    invoke-direct {p0}, Lcn/domob/android/j/a;->G()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 672
    iget-object v0, p0, Lcn/domob/android/j/a;->d:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 674
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 675
    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 676
    :cond_24
    new-instance v1, Lcn/domob/android/j/e;

    iget-object v2, p0, Lcn/domob/android/j/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/domob/android/j/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/domob/android/j/a;->s:Lcn/domob/android/j/e;

    .line 677
    iget-object v1, p0, Lcn/domob/android/j/a;->s:Lcn/domob/android/j/e;

    invoke-virtual {v1, p0}, Lcn/domob/android/j/e;->a(Lcn/domob/android/j/e$b;)V

    .line 678
    iget-object v1, p0, Lcn/domob/android/j/a;->s:Lcn/domob/android/j/e;

    invoke-virtual {v1, p0}, Lcn/domob/android/j/e;->a(Lcn/domob/android/j/e$a;)V

    .line 679
    iget-object v1, p0, Lcn/domob/android/j/a;->s:Lcn/domob/android/j/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/j/e;->loadUrl(Ljava/lang/String;)V

    .line 680
    const/4 v0, 0x1

    .line 689
    :goto_3d
    return v0

    .line 682
    :cond_3e
    invoke-direct {p0, v0}, Lcn/domob/android/j/a;->b(Ljava/lang/String;)V

    .line 683
    invoke-direct {p0}, Lcn/domob/android/j/a;->J()V

    .line 689
    :goto_44
    const/4 v0, 0x0

    goto :goto_3d

    .line 686
    :cond_46
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "detail URL is empty"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 687
    invoke-direct {p0}, Lcn/domob/android/j/a;->L()V

    goto :goto_44
.end method

.method static synthetic I(Lcn/domob/android/j/a;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/j/a;->L()V

    return-void
.end method

.method private I()Z
    .registers 3

    .prologue
    .line 697
    iget-object v0, p0, Lcn/domob/android/j/a;->s:Lcn/domob/android/j/e;

    if-eqz v0, :cond_13

    .line 698
    invoke-direct {p0}, Lcn/domob/android/j/a;->o()V

    .line 699
    iget-object v0, p0, Lcn/domob/android/j/a;->x:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/j/a$3;

    invoke-direct {v1, p0}, Lcn/domob/android/j/a$3;-><init>(Lcn/domob/android/j/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 721
    const/4 v0, 0x1

    .line 723
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private J()V
    .registers 3

    .prologue
    .line 728
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "DetailPage Load Finish"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/j/a;->v:Z

    .line 730
    iget-object v0, p0, Lcn/domob/android/j/a;->d:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->d()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 731
    invoke-direct {p0}, Lcn/domob/android/j/a;->w()V

    .line 733
    :cond_15
    return-void
.end method

.method private K()V
    .registers 2

    .prologue
    .line 736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/j/a;->u:Z

    .line 737
    invoke-direct {p0}, Lcn/domob/android/j/a;->J()V

    .line 738
    iget-object v0, p0, Lcn/domob/android/j/a;->o:Lcn/domob/android/j/a$a;

    if-eqz v0, :cond_f

    .line 739
    iget-object v0, p0, Lcn/domob/android/j/a;->o:Lcn/domob/android/j/a$a;

    invoke-interface {v0}, Lcn/domob/android/j/a$a;->q()V

    .line 741
    :cond_f
    return-void
.end method

.method private L()V
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, Lcn/domob/android/j/a;->s:Lcn/domob/android/j/e;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcn/domob/android/j/a;->s:Lcn/domob/android/j/e;

    invoke-virtual {v0}, Lcn/domob/android/j/e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcn/domob/android/j/a;->d:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->d()Z

    move-result v0

    if-nez v0, :cond_21

    .line 746
    invoke-virtual {p0}, Lcn/domob/android/j/a;->g()V

    .line 751
    :goto_17
    iget-object v0, p0, Lcn/domob/android/j/a;->o:Lcn/domob/android/j/a$a;

    if-eqz v0, :cond_20

    .line 752
    iget-object v0, p0, Lcn/domob/android/j/a;->o:Lcn/domob/android/j/a$a;

    invoke-interface {v0}, Lcn/domob/android/j/a$a;->p()V

    .line 754
    :cond_20
    return-void

    .line 749
    :cond_21
    invoke-direct {p0}, Lcn/domob/android/j/a;->J()V

    goto :goto_17
.end method

.method private M()V
    .registers 2

    .prologue
    .line 757
    iget-object v0, p0, Lcn/domob/android/j/a;->s:Lcn/domob/android/j/e;

    if-eqz v0, :cond_11

    .line 759
    iget-object v0, p0, Lcn/domob/android/j/a;->s:Lcn/domob/android/j/e;

    invoke-direct {p0, v0}, Lcn/domob/android/j/a;->b(Landroid/view/View;)V

    .line 760
    iget-object v0, p0, Lcn/domob/android/j/a;->s:Lcn/domob/android/j/e;

    invoke-virtual {v0}, Lcn/domob/android/j/e;->destroy()V

    .line 761
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/j/a;->s:Lcn/domob/android/j/e;

    .line 763
    :cond_11
    return-void
.end method

.method private declared-synchronized N()I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 766
    monitor-enter p0

    .line 767
    :try_start_2
    iget-object v1, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_47

    if-eqz v1, :cond_3e

    .line 769
    :try_start_6
    iget-object v1, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_b} :catch_40
    .catchall {:try_start_6 .. :try_end_b} :catchall_47

    move-result v0

    .line 773
    :goto_c
    :try_start_c
    iget v1, p0, Lcn/domob/android/j/a;->G:I

    if-lez v1, :cond_3e

    .line 777
    if-lez v0, :cond_18

    iget v1, p0, Lcn/domob/android/j/a;->G:I

    if-gt v0, v1, :cond_18

    .line 783
    iput v0, p0, Lcn/domob/android/j/a;->H:I

    .line 789
    :cond_18
    iget v1, p0, Lcn/domob/android/j/a;->G:I

    if-gt v0, v1, :cond_1e

    if-gez v0, :cond_3e

    .line 790
    :cond_1e
    sget-object v1, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v2, "the value(%d) of video play position is invalid, so turn to the last available pasition(%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget v4, p0, Lcn/domob/android/j/a;->H:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 792
    iget v0, p0, Lcn/domob/android/j/a;->H:I
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_47

    .line 796
    :cond_3e
    monitor-exit p0

    return v0

    .line 770
    :catch_40
    move-exception v1

    .line 771
    :try_start_41
    sget-object v2, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_47

    goto :goto_c

    .line 766
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private O()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 800
    iget-object v0, p0, Lcn/domob/android/j/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 801
    iget-object v0, p0, Lcn/domob/android/j/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 802
    instance-of v0, v0, Lcn/domob/android/j/a;

    if-eqz v0, :cond_17

    move v0, v1

    .line 808
    :goto_16
    return v0

    .line 805
    :cond_17
    const/4 v0, 0x1

    goto :goto_16

    :cond_19
    move v0, v1

    .line 808
    goto :goto_16
.end method

.method private P()V
    .registers 2

    .prologue
    .line 876
    invoke-direct {p0}, Lcn/domob/android/j/a;->o()V

    .line 877
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_f

    .line 881
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 882
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    .line 884
    :cond_f
    return-void
.end method

.method private Q()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 887
    iput-boolean v2, p0, Lcn/domob/android/j/a;->J:Z

    .line 888
    invoke-direct {p0}, Lcn/domob/android/j/a;->o()V

    .line 889
    iget-object v0, p0, Lcn/domob/android/j/a;->x:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/j/a;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 890
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_21

    .line 891
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 892
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 893
    iget-object v0, p0, Lcn/domob/android/j/a;->e:Lcn/domob/android/j/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/j/d;->c(Z)V

    .line 895
    :cond_21
    invoke-direct {p0}, Lcn/domob/android/j/a;->n()V

    .line 896
    return-void
.end method

.method static synthetic a(Lcn/domob/android/j/a;I)I
    .registers 2

    .prologue
    .line 36
    iput p1, p0, Lcn/domob/android/j/a;->G:I

    return p1
.end method

.method static synthetic a(Lcn/domob/android/j/a;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcn/domob/android/j/a;->m:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/android/j/a;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcn/domob/android/j/a;->y:Ljava/util/Timer;

    return-object p1
.end method

.method private a(J)V
    .registers 6

    .prologue
    .line 224
    invoke-direct {p0}, Lcn/domob/android/j/a;->s()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 225
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imp progress report, time note: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcn/domob/android/j/a;->p:Lcn/domob/android/j/a$c;

    invoke-interface {v0, p1, p2}, Lcn/domob/android/j/a$c;->a(J)V

    .line 228
    :cond_23
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 817
    iget-object v0, p0, Lcn/domob/android/j/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 818
    return-void
.end method

.method private a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 4

    .prologue
    .line 813
    iget-object v0, p0, Lcn/domob/android/j/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    return-void
.end method

.method static synthetic a(Lcn/domob/android/j/a;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/j/a;->y()V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/j/a;II)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcn/domob/android/j/a;->b(II)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/j/a;J)V
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcn/domob/android/j/a;->b(J)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/j/a;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/domob/android/j/a;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/j/a;Z)Z
    .registers 2

    .prologue
    .line 36
    iput-boolean p1, p0, Lcn/domob/android/j/a;->F:Z

    return p1
.end method

.method private b(II)V
    .registers 4

    .prologue
    .line 451
    iget-object v0, p0, Lcn/domob/android/j/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcn/domob/android/j/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_18

    .line 452
    iget-object v0, p0, Lcn/domob/android/j/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 453
    iget-object v0, p0, Lcn/domob/android/j/a;->i:Landroid/widget/RelativeLayout$LayoutParams;

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 454
    iget-object v0, p0, Lcn/domob/android/j/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 455
    iget-object v0, p0, Lcn/domob/android/j/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 457
    :cond_18
    return-void
.end method

.method private b(J)V
    .registers 6

    .prologue
    .line 238
    invoke-direct {p0}, Lcn/domob/android/j/a;->s()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 239
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "imp report min"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcn/domob/android/j/a;->p:Lcn/domob/android/j/a$c;

    invoke-interface {v0, p1, p2}, Lcn/domob/android/j/a$c;->b(J)V

    .line 242
    :cond_12
    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 821
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 822
    iget-object v0, p0, Lcn/domob/android/j/a;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/j/a$4;

    invoke-direct {v1, p0, p1}, Lcn/domob/android/j/a$4;-><init>(Lcn/domob/android/j/a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 829
    :cond_14
    return-void
.end method

.method static synthetic b(Lcn/domob/android/j/a;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/j/a;->r()V

    return-void
.end method

.method static synthetic b(Lcn/domob/android/j/a;J)V
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcn/domob/android/j/a;->a(J)V

    return-void
.end method

.method static synthetic b(Lcn/domob/android/j/a;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/domob/android/j/a;->a(Landroid/view/View;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 899
    iget-object v0, p0, Lcn/domob/android/j/a;->o:Lcn/domob/android/j/a$a;

    if-eqz v0, :cond_27

    invoke-static {p1}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 900
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intercept webview url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcn/domob/android/j/a;->o:Lcn/domob/android/j/a$a;

    invoke-interface {v0, p1}, Lcn/domob/android/j/a$a;->b(Ljava/lang/String;)V

    .line 903
    :cond_27
    return-void
.end method

.method static synthetic b(Lcn/domob/android/j/a;Z)Z
    .registers 2

    .prologue
    .line 36
    iput-boolean p1, p0, Lcn/domob/android/j/a;->J:Z

    return p1
.end method

.method static synthetic c(Lcn/domob/android/j/a;)Landroid/widget/VideoView;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    return-object v0
.end method

.method private c(J)V
    .registers 6

    .prologue
    .line 245
    iget-object v0, p0, Lcn/domob/android/j/a;->p:Lcn/domob/android/j/a$c;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcn/domob/android/j/a;->F:Z

    if-eqz v0, :cond_14

    .line 246
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "imp report finish"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcn/domob/android/j/a;->p:Lcn/domob/android/j/a$c;

    invoke-interface {v0, p1, p2}, Lcn/domob/android/j/a$c;->c(J)V

    .line 249
    :cond_14
    return-void
.end method

.method static synthetic c(Lcn/domob/android/j/a;Z)Z
    .registers 2

    .prologue
    .line 36
    iput-boolean p1, p0, Lcn/domob/android/j/a;->C:Z

    return p1
.end method

.method static synthetic d(Lcn/domob/android/j/a;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/j/a;->z()V

    return-void
.end method

.method static synthetic e(Lcn/domob/android/j/a;)Z
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcn/domob/android/j/a;->K:Z

    return v0
.end method

.method static synthetic f(Lcn/domob/android/j/a;)I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcn/domob/android/j/a;->H:I

    return v0
.end method

.method static synthetic g(Lcn/domob/android/j/a;)I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcn/domob/android/j/a;->G:I

    return v0
.end method

.method static synthetic h(Lcn/domob/android/j/a;)Z
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcn/domob/android/j/a;->F:Z

    return v0
.end method

.method static synthetic i(Lcn/domob/android/j/a;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/j/a;->n()V

    return-void
.end method

.method static synthetic j(Lcn/domob/android/j/a;)Lcn/domob/android/j/d;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/j/a;->e:Lcn/domob/android/j/d;

    return-object v0
.end method

.method static synthetic k(Lcn/domob/android/j/a;)Z
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/j/a;->O()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcn/domob/android/j/a;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/j/a;->E()V

    return-void
.end method

.method static synthetic m()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    return-object v0
.end method

.method static synthetic m(Lcn/domob/android/j/a;)Lcn/domob/android/j/b;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/j/a;->d:Lcn/domob/android/j/b;

    return-object v0
.end method

.method private n()V
    .registers 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcn/domob/android/j/a;->B()V

    .line 134
    invoke-direct {p0}, Lcn/domob/android/j/a;->t()V

    .line 135
    return-void
.end method

.method static synthetic n(Lcn/domob/android/j/a;)Z
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/j/a;->G()Z

    move-result v0

    return v0
.end method

.method private o()V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcn/domob/android/j/a;->p:Lcn/domob/android/j/a$c;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcn/domob/android/j/a;->D:Z

    if-nez v0, :cond_20

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/j/a;->D:Z

    .line 140
    const/4 v0, 0x0

    .line 141
    iget-object v1, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    if-eqz v1, :cond_14

    .line 142
    invoke-direct {p0}, Lcn/domob/android/j/a;->N()I

    move-result v0

    .line 146
    :cond_14
    if-lez v0, :cond_1a

    iget v1, p0, Lcn/domob/android/j/a;->G:I

    if-le v0, v1, :cond_1c

    .line 147
    :cond_1a
    iget v0, p0, Lcn/domob/android/j/a;->H:I

    .line 149
    :cond_1c
    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcn/domob/android/j/a;->c(J)V

    .line 151
    :cond_20
    return-void
.end method

.method static synthetic o(Lcn/domob/android/j/a;)Z
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/j/a;->F()Z

    move-result v0

    return v0
.end method

.method static synthetic p(Lcn/domob/android/j/a;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/j/a;->L:Ljava/lang/Runnable;

    return-object v0
.end method

.method private p()V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcn/domob/android/j/a;->o:Lcn/domob/android/j/a$a;

    if-eqz v0, :cond_13

    .line 184
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "call method of callbackOnVideoReadyToPlay"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcn/domob/android/j/a;->o:Lcn/domob/android/j/a$a;

    invoke-interface {v0, p0}, Lcn/domob/android/j/a$a;->a(Lcn/domob/android/j/a;)V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/j/a;->B:Z

    .line 188
    :cond_13
    return-void
.end method

.method static synthetic q(Lcn/domob/android/j/a;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/j/a;->x:Landroid/os/Handler;

    return-object v0
.end method

.method private q()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcn/domob/android/j/a;->o:Lcn/domob/android/j/a$a;

    if-eqz v0, :cond_b

    .line 192
    iget-object v0, p0, Lcn/domob/android/j/a;->o:Lcn/domob/android/j/a$a;

    iget-boolean v1, p0, Lcn/domob/android/j/a;->B:Z

    invoke-interface {v0, v1}, Lcn/domob/android/j/a$a;->a(Z)V

    .line 194
    :cond_b
    return-void
.end method

.method private declared-synchronized r()V
    .registers 2

    .prologue
    .line 197
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcn/domob/android/j/a;->g()V

    .line 198
    iget-object v0, p0, Lcn/domob/android/j/a;->o:Lcn/domob/android/j/a$a;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcn/domob/android/j/a;->E:Z

    if-nez v0, :cond_14

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/j/a;->E:Z

    .line 200
    iget-object v0, p0, Lcn/domob/android/j/a;->o:Lcn/domob/android/j/a$a;

    invoke-interface {v0}, Lcn/domob/android/j/a$a;->o()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 202
    :cond_14
    monitor-exit p0

    return-void

    .line 197
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic r(Lcn/domob/android/j/a;)Z
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/j/a;->A()Z

    move-result v0

    return v0
.end method

.method static synthetic s(Lcn/domob/android/j/a;)I
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/domob/android/j/a;->N()I

    move-result v0

    return v0
.end method

.method private s()Z
    .registers 4

    .prologue
    .line 215
    iget-object v0, p0, Lcn/domob/android/j/a;->p:Lcn/domob/android/j/a$c;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcn/domob/android/j/a;->F:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcn/domob/android/j/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/android/j/a;->k:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcn/domob/android/i/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 216
    const/4 v0, 0x1

    .line 219
    :goto_13
    return v0

    .line 218
    :cond_14
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not meet condition to send imp report, mResourceAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/domob/android/j/a;->F:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static synthetic t(Lcn/domob/android/j/a;)Ljava/util/Timer;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/j/a;->y:Ljava/util/Timer;

    return-object v0
.end method

.method private t()V
    .registers 3

    .prologue
    .line 231
    invoke-direct {p0}, Lcn/domob/android/j/a;->s()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 232
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "imp report start"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcn/domob/android/j/a;->p:Lcn/domob/android/j/a$c;

    invoke-interface {v0}, Lcn/domob/android/j/a$c;->n()V

    .line 235
    :cond_12
    return-void
.end method

.method static synthetic u(Lcn/domob/android/j/a;)Lcn/domob/android/j/a$c;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/j/a;->p:Lcn/domob/android/j/a$c;

    return-object v0
.end method

.method private u()V
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->canPause()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 297
    :try_start_c
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_12

    .line 302
    :cond_11
    :goto_11
    return-void

    .line 298
    :catch_12
    move-exception v0

    .line 299
    sget-object v1, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method static synthetic v(Lcn/domob/android/j/a;)I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcn/domob/android/j/a;->I:I

    return v0
.end method

.method private v()V
    .registers 4

    .prologue
    .line 305
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_39

    .line 306
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video resume, current position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcn/domob/android/j/a;->N()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 307
    iget-boolean v0, p0, Lcn/domob/android/j/a;->J:Z

    if-nez v0, :cond_39

    .line 309
    :try_start_34
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_39} :catch_3a

    .line 315
    :cond_39
    :goto_39
    return-void

    .line 310
    :catch_3a
    move-exception v0

    .line 311
    sget-object v1, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_39
.end method

.method private w()V
    .registers 3

    .prologue
    .line 319
    invoke-direct {p0}, Lcn/domob/android/j/a;->x()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 320
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "meet condition to create video"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcn/domob/android/j/a;->x:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/j/a$7;

    invoke-direct {v1, p0}, Lcn/domob/android/j/a$7;-><init>(Lcn/domob/android/j/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    :goto_17
    return-void

    .line 328
    :cond_18
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "can not meet condition to create video"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_17
.end method

.method static synthetic w(Lcn/domob/android/j/a;)Z
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcn/domob/android/j/a;->C:Z

    return v0
.end method

.method static synthetic x(Lcn/domob/android/j/a;)Ljava/util/Timer;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/j/a;->z:Ljava/util/Timer;

    return-object v0
.end method

.method private x()Z
    .registers 2

    .prologue
    .line 333
    iget-boolean v0, p0, Lcn/domob/android/j/a;->w:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcn/domob/android/j/a;->t:Z

    if-eqz v0, :cond_1e

    .line 334
    iget-object v0, p0, Lcn/domob/android/j/a;->d:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcn/domob/android/j/a;->v:Z

    if-nez v0, :cond_1c

    :cond_14
    iget-object v0, p0, Lcn/domob/android/j/a;->d:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->d()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 335
    :cond_1c
    const/4 v0, 0x1

    .line 338
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method static synthetic y(Lcn/domob/android/j/a;)Lcn/domob/android/j/a$b;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/j/a;->q:Lcn/domob/android/j/a$b;

    return-object v0
.end method

.method private declared-synchronized y()V
    .registers 3

    .prologue
    .line 343
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcn/domob/android/j/a;->w:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_6d

    if-eqz v0, :cond_7

    .line 442
    :goto_5
    monitor-exit p0

    return-void

    .line 346
    :cond_7
    :try_start_7
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "create video"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/j/a;->w:Z

    .line 348
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcn/domob/android/j/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    .line 349
    iget-object v0, p0, Lcn/domob/android/j/a;->e:Lcn/domob/android/j/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/j/d;->c(Z)V

    .line 350
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    new-instance v1, Lcn/domob/android/j/a$8;

    invoke-direct {v1, p0}, Lcn/domob/android/j/a$8;-><init>(Lcn/domob/android/j/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 363
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    new-instance v1, Lcn/domob/android/j/a$9;

    invoke-direct {v1, p0}, Lcn/domob/android/j/a$9;-><init>(Lcn/domob/android/j/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 398
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    new-instance v1, Lcn/domob/android/j/a$10;

    invoke-direct {v1, p0}, Lcn/domob/android/j/a$10;-><init>(Lcn/domob/android/j/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 406
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    new-instance v1, Lcn/domob/android/j/a$11;

    invoke-direct {v1, p0}, Lcn/domob/android/j/a$11;-><init>(Lcn/domob/android/j/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 437
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    iget-object v1, p0, Lcn/domob/android/j/a;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/j/a;->a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 438
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 439
    iget-object v1, p0, Lcn/domob/android/j/a;->e:Lcn/domob/android/j/d;

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v1, v0}, Lcn/domob/android/j/d;->c(I)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/j/a;->a(Landroid/view/View;)V

    .line 440
    iget-object v0, p0, Lcn/domob/android/j/a;->e:Lcn/domob/android/j/d;

    invoke-virtual {v0}, Lcn/domob/android/j/d;->e()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/j/a;->a(Landroid/view/View;)V

    .line 441
    invoke-direct {p0}, Lcn/domob/android/j/a;->p()V
    :try_end_6c
    .catchall {:try_start_7 .. :try_end_6c} :catchall_6d

    goto :goto_5

    .line 343
    :catchall_6d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic z(Lcn/domob/android/j/a;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/j/a;->m:Landroid/app/Dialog;

    return-object v0
.end method

.method private z()V
    .registers 7

    .prologue
    .line 484
    iget-object v0, p0, Lcn/domob/android/j/a;->y:Ljava/util/Timer;

    if-nez v0, :cond_19

    .line 485
    new-instance v1, Lcn/domob/android/j/a$12;

    invoke-direct {v1, p0}, Lcn/domob/android/j/a$12;-><init>(Lcn/domob/android/j/a;)V

    .line 507
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/domob/android/j/a;->y:Ljava/util/Timer;

    .line 508
    iget-object v0, p0, Lcn/domob/android/j/a;->y:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 510
    :cond_19
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 1010
    invoke-direct {p0}, Lcn/domob/android/j/a;->v()V

    .line 1011
    return-void
.end method

.method public a(II)V
    .registers 4

    .prologue
    .line 466
    iget-object v0, p0, Lcn/domob/android/j/a;->m:Landroid/app/Dialog;

    if-eqz v0, :cond_16

    .line 467
    invoke-direct {p0}, Lcn/domob/android/j/a;->D()V

    .line 471
    :goto_7
    iput p1, p0, Lcn/domob/android/j/a;->f:I

    .line 472
    iput p2, p0, Lcn/domob/android/j/a;->g:I

    .line 473
    invoke-virtual {p0}, Lcn/domob/android/j/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_15

    .line 475
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 476
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 478
    :cond_15
    return-void

    .line 469
    :cond_16
    invoke-direct {p0, p1, p2}, Lcn/domob/android/j/a;->b(II)V

    goto :goto_7
.end method

.method public a(Lcn/domob/android/j/a$b;)V
    .registers 2

    .prologue
    .line 264
    iput-object p1, p0, Lcn/domob/android/j/a;->q:Lcn/domob/android/j/a$b;

    .line 265
    return-void
.end method

.method public a(Lcn/domob/android/j/b$a$a$a;)V
    .registers 6

    .prologue
    .line 921
    invoke-virtual {p1}, Lcn/domob/android/j/b$a$a$a;->d()Ljava/lang/String;

    move-result-object v0

    .line 922
    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 923
    invoke-virtual {p1}, Lcn/domob/android/j/b$a$a$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 924
    const-string v1, "goto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 925
    invoke-direct {p0}, Lcn/domob/android/j/a;->F()Z

    .line 934
    :cond_19
    :goto_19
    invoke-virtual {p1}, Lcn/domob/android/j/b$a$a$a;->f()[Ljava/lang/String;

    move-result-object v1

    .line 935
    if-eqz v1, :cond_59

    .line 936
    const/4 v0, 0x0

    :goto_20
    array-length v2, v1

    if-ge v0, v2, :cond_59

    .line 937
    aget-object v2, v1, v0

    invoke-static {v2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 938
    aget-object v2, v1, v0

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 939
    iget-object v2, p0, Lcn/domob/android/j/a;->o:Lcn/domob/android/j/a$a;

    if-eqz v2, :cond_40

    .line 940
    iget-object v2, p0, Lcn/domob/android/j/a;->o:Lcn/domob/android/j/a$a;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Lcn/domob/android/j/a$a;->c(Ljava/lang/String;)V

    .line 936
    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 926
    :cond_43
    const-string v1, "replay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 928
    invoke-direct {p0}, Lcn/domob/android/j/a;->Q()V

    goto :goto_19

    .line 931
    :cond_4f
    invoke-direct {p0, v0}, Lcn/domob/android/j/a;->b(Ljava/lang/String;)V

    goto :goto_19

    .line 943
    :cond_53
    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lcn/domob/android/j/a;->b(Ljava/lang/String;)V

    goto :goto_40

    .line 949
    :cond_59
    return-void
.end method

.method public a(Lcn/domob/android/j/e;)V
    .registers 4

    .prologue
    .line 967
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "detail page load successfully"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 968
    invoke-direct {p0}, Lcn/domob/android/j/a;->K()V

    .line 969
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lcn/domob/android/j/a;->b(Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method public declared-synchronized a(Z)V
    .registers 4

    .prologue
    .line 836
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcn/domob/android/j/a;->A:Z

    if-nez v0, :cond_3b

    .line 837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/j/a;->A:Z

    .line 838
    iget-object v0, p0, Lcn/domob/android/j/a;->z:Ljava/util/Timer;

    if-eqz v0, :cond_11

    .line 839
    iget-object v0, p0, Lcn/domob/android/j/a;->z:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 841
    :cond_11
    iget-object v0, p0, Lcn/domob/android/j/a;->y:Ljava/util/Timer;

    if-eqz v0, :cond_1a

    .line 842
    iget-object v0, p0, Lcn/domob/android/j/a;->y:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 844
    :cond_1a
    iget-object v0, p0, Lcn/domob/android/j/a;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/j/a$5;

    invoke-direct {v1, p0}, Lcn/domob/android/j/a$5;-><init>(Lcn/domob/android/j/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 865
    if-nez p1, :cond_2b

    .line 866
    invoke-direct {p0}, Lcn/domob/android/j/a;->q()V

    .line 868
    :cond_2b
    iget-object v0, p0, Lcn/domob/android/j/a;->n:Lcn/domob/android/j/c;

    if-eqz v0, :cond_34

    .line 869
    iget-object v0, p0, Lcn/domob/android/j/a;->n:Lcn/domob/android/j/c;

    invoke-virtual {v0}, Lcn/domob/android/j/c;->b()V

    .line 871
    :cond_34
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "destroy videoAdView"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    .line 873
    :cond_3b
    monitor-exit p0

    return-void

    .line 836
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a([JLcn/domob/android/j/a$c;)V
    .registers 5

    .prologue
    .line 252
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 253
    iput-object p1, p0, Lcn/domob/android/j/a;->r:[J

    .line 256
    iget-object v0, p0, Lcn/domob/android/j/a;->r:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 257
    iput-object p2, p0, Lcn/domob/android/j/a;->p:Lcn/domob/android/j/a$c;

    .line 261
    :goto_d
    return-void

    .line 259
    :cond_e
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "the method setImpProgressListener parameter error"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public b()V
    .registers 1

    .prologue
    .line 1015
    invoke-direct {p0}, Lcn/domob/android/j/a;->u()V

    .line 1016
    return-void
.end method

.method public b(Lcn/domob/android/j/e;)V
    .registers 4

    .prologue
    .line 973
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "detail page load failed"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 974
    invoke-direct {p0}, Lcn/domob/android/j/a;->L()V

    .line 975
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    .line 268
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "start to play video when prepared"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_3f

    .line 270
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    iget-object v1, p0, Lcn/domob/android/j/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video local path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/j/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcn/domob/android/j/a;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 273
    new-instance v0, Lcn/domob/android/j/c;

    iget-object v1, p0, Lcn/domob/android/j/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/domob/android/j/c;-><init>(Landroid/content/Context;Lcn/domob/android/j/c$a;)V

    iput-object v0, p0, Lcn/domob/android/j/a;->n:Lcn/domob/android/j/c;

    .line 274
    iget-object v0, p0, Lcn/domob/android/j/a;->n:Lcn/domob/android/j/c;

    invoke-virtual {v0}, Lcn/domob/android/j/c;->a()V

    .line 276
    :cond_3f
    return-void
.end method

.method public c(Lcn/domob/android/j/e;)V
    .registers 4

    .prologue
    .line 981
    iget-boolean v0, p0, Lcn/domob/android/j/a;->A:Z

    if-nez v0, :cond_16

    .line 982
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "detail page load timeout"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcn/domob/android/j/a;->x:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/j/a$6;

    invoke-direct {v1, p0}, Lcn/domob/android/j/a$6;-><init>(Lcn/domob/android/j/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 992
    :goto_15
    return-void

    .line 990
    :cond_16
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "detail page load timeout and videoAdView has destroyed now"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public d()V
    .registers 2

    .prologue
    .line 282
    invoke-direct {p0}, Lcn/domob/android/j/a;->u()V

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/j/a;->K:Z

    .line 284
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 290
    invoke-direct {p0}, Lcn/domob/android/j/a;->v()V

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/j/a;->K:Z

    .line 292
    return-void
.end method

.method public f()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 583
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/android/j/a;->c:Landroid/content/Context;

    const v2, 0x1030011

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/android/j/a;->m:Landroid/app/Dialog;

    .line 584
    iget-object v0, p0, Lcn/domob/android/j/a;->e:Lcn/domob/android/j/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/domob/android/j/d;->b(Z)V

    .line 585
    iget-object v0, p0, Lcn/domob/android/j/a;->m:Landroid/app/Dialog;

    new-instance v1, Lcn/domob/android/j/a$14;

    invoke-direct {v1, p0}, Lcn/domob/android/j/a$14;-><init>(Lcn/domob/android/j/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 595
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/j/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 596
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 597
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 598
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    iget-object v1, p0, Lcn/domob/android/j/a;->m:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 600
    invoke-direct {p0}, Lcn/domob/android/j/a;->N()I

    .line 601
    iget-object v1, p0, Lcn/domob/android/j/a;->k:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcn/domob/android/j/a;->b(Landroid/view/View;)V

    .line 602
    invoke-direct {p0}, Lcn/domob/android/j/a;->D()V

    .line 603
    iget-object v1, p0, Lcn/domob/android/j/a;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 604
    iget-object v0, p0, Lcn/domob/android/j/a;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 605
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 832
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/domob/android/j/a;->a(Z)V

    .line 833
    return-void
.end method

.method public h()V
    .registers 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcn/domob/android/j/a;->g()V

    .line 908
    return-void
.end method

.method public i()V
    .registers 2

    .prologue
    .line 912
    invoke-direct {p0}, Lcn/domob/android/j/a;->O()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 913
    invoke-direct {p0}, Lcn/domob/android/j/a;->C()V

    .line 917
    :goto_9
    return-void

    .line 915
    :cond_a
    invoke-virtual {p0}, Lcn/domob/android/j/a;->f()V

    goto :goto_9
.end method

.method public j()V
    .registers 3

    .prologue
    .line 953
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "button images download finish"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/j/a;->t:Z

    .line 955
    invoke-direct {p0}, Lcn/domob/android/j/a;->w()V

    .line 956
    return-void
.end method

.method public k()V
    .registers 3

    .prologue
    .line 960
    sget-object v0, Lcn/domob/android/j/a;->b:Lcn/domob/android/i/f;

    const-string v1, "no image need to download"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 961
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/j/a;->t:Z

    .line 962
    invoke-direct {p0}, Lcn/domob/android/j/a;->w()V

    .line 963
    return-void
.end method

.method public l()Lcn/domob/android/j/b;
    .registers 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcn/domob/android/j/a;->d:Lcn/domob/android/j/b;

    return-object v0
.end method
