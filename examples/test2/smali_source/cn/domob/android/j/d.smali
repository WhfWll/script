.class Lcn/domob/android/j/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/j/d$a;,
        Lcn/domob/android/j/d$b;
    }
.end annotation


# static fields
.field private static final A:I = 0x10

.field private static final B:I = 0x10

.field private static final C:I = 0x23

.field private static final D:I = -0x61000000

.field private static final E:I = 0x5

.field private static final F:I = 0x8

.field private static final G:I = -0x2e2e2f

.field private static final H:Ljava/lang/String; = "\u5e7f\u544a\u5269\u4f59"

.field private static final I:Ljava/lang/String; = "\u79d2"

.field private static final J:I = 0x23

.field private static final K:I = 0x28

.field private static final L:I = 0x6

.field private static a:Lcn/domob/android/i/f; = null

.field private static final b:Ljava/lang/String; = "domob_video_close_not_selected.png"

.field private static final c:Ljava/lang/String; = "domob_video_muted_selected.png"

.field private static final d:Ljava/lang/String; = "domob_video_muted_not_selected.png"

.field private static final e:Ljava/lang/String; = "domob_video_not_mute_selected.png"

.field private static final f:Ljava/lang/String; = "domob_video_not_mute_not_selected.png"

.field private static final g:Ljava/lang/String; = "domob_video_full_not_selected.png"

.field private static final h:Ljava/lang/String; = "domob_video_full_selected.png"

.field private static final i:Ljava/lang/String; = "domob_video_not_full_not_selected.png"

.field private static final j:Ljava/lang/String; = "domob_video_not_full_selected.png"

.field private static final k:Ljava/lang/String; = "domob_video_goto_selected.png"

.field private static final l:Ljava/lang/String; = "domob_video_goto_not_selected.png"

.field private static final m:Ljava/lang/String; = "domob_video_download_selected.png"

.field private static final n:Ljava/lang/String; = "domob_video_download_not_selected.png"

.field private static final o:Ljava/lang/String; = "domob_video_custom_selected.png"

.field private static final p:Ljava/lang/String; = "domob_video_custom_not_selected.png"

.field private static final q:Ljava/lang/String; = "domob_video_replay_selected.png"

.field private static final r:Ljava/lang/String; = "domob_video_replay_not_selected.png"

.field private static final s:Ljava/lang/String; = "domob_video_logo.png"

.field private static final t:I = -0x1

.field private static u:Ljava/util/concurrent/ExecutorService; = null

.field private static final v:I = 0x1e

.field private static final w:I = 0x1e

.field private static final x:I = 0xc

.field private static final y:I = 0x1e

.field private static final z:I = 0x10


# instance fields
.field private M:Landroid/content/Context;

.field private N:Lcn/domob/android/j/b;

.field private O:Landroid/os/Handler;

.field private P:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Landroid/widget/ImageButton;

.field private R:Ljava/lang/String;

.field private S:Lcn/domob/android/j/d$b;

.field private T:I

.field private U:Landroid/widget/RelativeLayout;

.field private V:Landroid/widget/RelativeLayout;

.field private W:Landroid/widget/TextView;

.field private X:I

.field private Y:I

.field private Z:Z

.field private aa:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/j/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/j/d;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcn/domob/android/j/b;ILandroid/os/Handler;Lcn/domob/android/j/d$b;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/domob/android/j/d;->P:Ljava/util/HashMap;

    .line 93
    iput v1, p0, Lcn/domob/android/j/d;->T:I

    .line 98
    iput v1, p0, Lcn/domob/android/j/d;->Y:I

    .line 99
    iput-boolean v1, p0, Lcn/domob/android/j/d;->Z:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/j/d;->aa:Z

    .line 116
    iput-object p1, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    .line 118
    iput-object p5, p0, Lcn/domob/android/j/d;->S:Lcn/domob/android/j/d$b;

    .line 119
    iput-object p4, p0, Lcn/domob/android/j/d;->O:Landroid/os/Handler;

    .line 120
    iput p3, p0, Lcn/domob/android/j/d;->X:I

    .line 121
    sget-object v0, Lcn/domob/android/j/d;->u:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_29

    .line 122
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/domob/android/j/d;->u:Ljava/util/concurrent/ExecutorService;

    .line 124
    :cond_29
    return-void
.end method

.method static synthetic a(Lcn/domob/android/j/d;I)I
    .registers 2

    .prologue
    .line 41
    iput p1, p0, Lcn/domob/android/j/d;->T:I

    return p1
.end method

.method static synthetic a(Lcn/domob/android/j/d;[B)Landroid/graphics/drawable/BitmapDrawable;
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcn/domob/android/j/d;->a([B)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private a([B)Landroid/graphics/drawable/BitmapDrawable;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 740
    if-nez p1, :cond_4

    .line 752
    :cond_3
    :goto_3
    return-object v0

    .line 745
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 746
    if-eqz v2, :cond_3

    .line 747
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_13

    move-object v0, v1

    goto :goto_3

    .line 749
    :catch_13
    move-exception v1

    .line 750
    sget-object v2, Lcn/domob/android/j/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    .line 520
    const/4 v1, 0x0

    .line 521
    invoke-static {p2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 523
    :try_start_7
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const-class v2, Lcn/domob/android/j/d;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "assets/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2d} :catch_2e

    .line 529
    :goto_2d
    return-object v0

    .line 525
    :catch_2e
    move-exception v0

    .line 526
    sget-object v2, Lcn/domob/android/j/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    :cond_34
    move-object v0, v1

    goto :goto_2d
.end method

.method static synthetic a(Lcn/domob/android/j/d;ZZ)Landroid/widget/RelativeLayout;
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcn/domob/android/j/d;->a(ZZ)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method private a(ZZ)Landroid/widget/RelativeLayout;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 406
    .line 407
    iget-object v1, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v1}, Lcn/domob/android/j/b;->g()Lcn/domob/android/j/b$a$a;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Lcn/domob/android/j/b$a$a;->f()I

    move-result v3

    .line 409
    invoke-virtual {v1}, Lcn/domob/android/j/b$a$a;->h()Ljava/util/ArrayList;

    move-result-object v1

    .line 410
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/domob/android/j/d;->V:Landroid/widget/RelativeLayout;

    .line 411
    invoke-direct {p0, v1}, Lcn/domob/android/j/d;->a(Ljava/util/ArrayList;)[Lcn/domob/android/j/b$a$a$a;

    move-result-object v4

    move v1, v0

    move v2, v0

    .line 413
    :goto_1e
    array-length v5, v4

    if-ge v0, v5, :cond_44

    .line 414
    if-nez p2, :cond_31

    aget-object v5, v4, v0

    invoke-virtual {v5}, Lcn/domob/android/j/b$a$a$a;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "replay"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 415
    :cond_31
    aget-object v5, v4, v0

    invoke-direct {p0, v5, v1, v3}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/b$a$a$a;II)Lcn/domob/android/j/d$a;

    move-result-object v5

    .line 416
    if-eqz v5, :cond_41

    .line 417
    add-int/lit8 v1, v1, 0x1

    .line 418
    iget-object v2, p0, Lcn/domob/android/j/d;->V:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 419
    const/4 v2, 0x1

    .line 413
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 423
    :cond_44
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v3, 0x1e

    invoke-direct {p0, v3}, Lcn/domob/android/j/d;->f(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 424
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 425
    iget-object v1, p0, Lcn/domob/android/j/d;->V:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    if-nez p1, :cond_6f

    .line 427
    iget-object v0, p0, Lcn/domob/android/j/d;->V:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcn/domob/android/j/d;->O:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/j/d$12;

    invoke-direct {v1, p0}, Lcn/domob/android/j/d$12;-><init>(Lcn/domob/android/j/d;)V

    iget v3, p0, Lcn/domob/android/j/d;->X:I

    int-to-long v4, v3

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 435
    :cond_6f
    if-eqz v2, :cond_74

    .line 436
    iget-object v0, p0, Lcn/domob/android/j/d;->V:Landroid/widget/RelativeLayout;

    .line 438
    :goto_73
    return-object v0

    :cond_74
    const/4 v0, 0x0

    goto :goto_73
.end method

.method private a(Lcn/domob/android/j/b$a$a$a;II)Lcn/domob/android/j/d$a;
    .registers 8

    .prologue
    const/16 v2, 0x1e

    const/4 v3, 0x0

    .line 443
    invoke-virtual {p1}, Lcn/domob/android/j/b$a$a$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 445
    new-instance v0, Lcn/domob/android/j/d$a;

    iget-object v1, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcn/domob/android/j/d$a;-><init>(Lcn/domob/android/j/d;Landroid/content/Context;Lcn/domob/android/j/b$a$a$a;)V

    .line 446
    iget-object v1, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    invoke-virtual {p0, v1, v2, v2}, Lcn/domob/android/j/d;->a(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 447
    add-int/lit8 v2, p3, 0x1e

    invoke-direct {p0, v2}, Lcn/domob/android/j/d;->f(I)I

    move-result v2

    mul-int/2addr v2, p2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 448
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 449
    invoke-virtual {v0, v1}, Lcn/domob/android/j/d$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    new-instance v1, Lcn/domob/android/j/d$2;

    invoke-direct {v1, p0, v0}, Lcn/domob/android/j/d$2;-><init>(Lcn/domob/android/j/d;Lcn/domob/android/j/d$a;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/j/d$a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 464
    invoke-direct {p0, v0, v3, v3}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d$a;ZZ)V

    .line 467
    :goto_36
    return-object v0

    :cond_37
    const/4 v0, 0x0

    goto :goto_36
.end method

.method static synthetic a(Lcn/domob/android/j/d;)Lcn/domob/android/j/d$b;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcn/domob/android/j/d;->S:Lcn/domob/android/j/d$b;

    return-object v0
.end method

.method private a(Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .prologue
    .line 582
    iget-object v0, p0, Lcn/domob/android/j/d;->O:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/j/d$3;

    invoke-direct {v1, p0, p1, p2}, Lcn/domob/android/j/d$3;-><init>(Lcn/domob/android/j/d;Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 589
    return-void
.end method

.method private a(Landroid/widget/ImageButton;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 592
    iget-object v0, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcn/domob/android/j/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/domob/android/j/d;->a(Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;)V

    .line 593
    return-void
.end method

.method private a(Landroid/widget/RelativeLayout;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 576
    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    .line 577
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 579
    :cond_7
    return-void
.end method

.method private a(Lcn/domob/android/j/d$a;ZZ)V
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 491
    invoke-static {p1}, Lcn/domob/android/j/d$a;->a(Lcn/domob/android/j/d$a;)Lcn/domob/android/j/b$a$a$a;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lcn/domob/android/j/b$a$a$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-virtual {v0}, Lcn/domob/android/j/b$a$a$a;->e()[Ljava/lang/String;

    move-result-object v0

    .line 494
    iget v2, p0, Lcn/domob/android/j/d;->T:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_40

    if-eqz v0, :cond_40

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    iget-object v2, p0, Lcn/domob/android/j/d;->P:Ljava/util/HashMap;

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcn/domob/android/j/d;->P:Ljava/util/HashMap;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 496
    if-eqz p2, :cond_3d

    aget-object v0, v0, v5

    .line 497
    :goto_31
    iget-object v1, p0, Lcn/domob/android/j/d;->P:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcn/domob/android/j/d;->a(Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;)V

    .line 517
    :cond_3c
    :goto_3c
    return-void

    .line 496
    :cond_3d
    aget-object v0, v0, v4

    goto :goto_31

    .line 498
    :cond_40
    if-eqz v1, :cond_3c

    .line 499
    const/4 v0, 0x0

    .line 500
    const-string v2, "replay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 501
    if-eqz p2, :cond_57

    const-string v0, "domob_video_replay_selected.png"

    .line 509
    :cond_4f
    :goto_4f
    if-eqz v0, :cond_3c

    .line 510
    if-eqz p3, :cond_8a

    .line 511
    invoke-direct {p0, p1, v0}, Lcn/domob/android/j/d;->a(Landroid/widget/ImageButton;Ljava/lang/String;)V

    goto :goto_3c

    .line 501
    :cond_57
    const-string v0, "domob_video_replay_not_selected.png"

    goto :goto_4f

    .line 502
    :cond_5a
    const-string v2, "download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 503
    if-eqz p2, :cond_67

    const-string v0, "domob_video_download_selected.png"

    goto :goto_4f

    :cond_67
    const-string v0, "domob_video_download_not_selected.png"

    goto :goto_4f

    .line 504
    :cond_6a
    const-string v2, "goto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 505
    if-eqz p2, :cond_77

    const-string v0, "domob_video_goto_selected.png"

    goto :goto_4f

    :cond_77
    const-string v0, "domob_video_goto_not_selected.png"

    goto :goto_4f

    .line 506
    :cond_7a
    const-string v2, "custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 507
    if-eqz p2, :cond_87

    const-string v0, "domob_video_custom_selected.png"

    goto :goto_4f

    :cond_87
    const-string v0, "domob_video_custom_not_selected.png"

    goto :goto_4f

    .line 513
    :cond_8a
    invoke-direct {p0, p1, v0}, Lcn/domob/android/j/d;->b(Landroid/widget/ImageButton;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method static synthetic a(Lcn/domob/android/j/d;Landroid/widget/ImageButton;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcn/domob/android/j/d;->a(Landroid/widget/ImageButton;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/j/d;Landroid/widget/RelativeLayout;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcn/domob/android/j/d;->a(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/j/d;Lcn/domob/android/j/d$a;ZZ)V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d$a;ZZ)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/j/d;Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcn/domob/android/j/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/InputStream;)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 680
    .line 683
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_4c
    .catchall {:try_start_1 .. :try_end_6} :catchall_3a

    .line 685
    const/16 v1, 0x400

    :try_start_8
    new-array v1, v1, [B

    .line 688
    :goto_a
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_22

    .line 690
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_16
    .catchall {:try_start_8 .. :try_end_15} :catchall_4a

    goto :goto_a

    .line 693
    :catch_16
    move-exception v1

    .line 694
    :goto_17
    :try_start_17
    sget-object v3, Lcn/domob/android/j/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_4a

    .line 697
    if-eqz v2, :cond_21

    .line 698
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_33

    .line 705
    :cond_21
    :goto_21
    return-object v0

    .line 692
    :cond_22
    :try_start_22
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_16
    .catchall {:try_start_22 .. :try_end_25} :catchall_4a

    move-result-object v0

    .line 697
    if-eqz v2, :cond_21

    .line 698
    :try_start_28
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_21

    .line 700
    :catch_2c
    move-exception v1

    .line 701
    sget-object v2, Lcn/domob/android/j/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_21

    .line 700
    :catch_33
    move-exception v1

    .line 701
    sget-object v2, Lcn/domob/android/j/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_21

    .line 696
    :catchall_3a
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 697
    :goto_3d
    if-eqz v2, :cond_42

    .line 698
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    .line 702
    :cond_42
    :goto_42
    throw v0

    .line 700
    :catch_43
    move-exception v1

    .line 701
    sget-object v2, Lcn/domob/android/j/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_42

    .line 696
    :catchall_4a
    move-exception v0

    goto :goto_3d

    .line 693
    :catch_4c
    move-exception v1

    move-object v2, v0

    goto :goto_17
.end method

.method private a(Ljava/lang/String;)[B
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 709
    .line 712
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 716
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 718
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 720
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_2f
    .catchall {:try_start_1 .. :try_end_19} :catchall_44

    move-result-object v3

    .line 721
    :try_start_1a
    invoke-direct {p0, v3}, Lcn/domob/android/j/d;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 722
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_21} :catch_58
    .catchall {:try_start_1a .. :try_end_21} :catchall_52

    .line 729
    if-eqz v3, :cond_26

    .line 730
    :try_start_23
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_28

    :cond_26
    :goto_26
    move-object v0, v1

    .line 736
    :goto_27
    return-object v0

    .line 732
    :catch_28
    move-exception v0

    .line 733
    sget-object v2, Lcn/domob/android/j/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_26

    .line 725
    :catch_2f
    move-exception v0

    move-object v1, v2

    .line 726
    :goto_31
    :try_start_31
    sget-object v3, Lcn/domob/android/j/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_55

    .line 729
    if-eqz v1, :cond_3b

    .line 730
    :try_start_38
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3d

    :cond_3b
    :goto_3b
    move-object v0, v2

    .line 736
    goto :goto_27

    .line 732
    :catch_3d
    move-exception v0

    .line 733
    sget-object v1, Lcn/domob/android/j/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_3b

    .line 728
    :catchall_44
    move-exception v0

    .line 729
    :goto_45
    if-eqz v2, :cond_4a

    .line 730
    :try_start_47
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 734
    :cond_4a
    :goto_4a
    throw v0

    .line 732
    :catch_4b
    move-exception v1

    .line 733
    sget-object v2, Lcn/domob/android/j/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_4a

    .line 728
    :catchall_52
    move-exception v0

    move-object v2, v3

    goto :goto_45

    :catchall_55
    move-exception v0

    move-object v2, v1

    goto :goto_45

    .line 725
    :catch_58
    move-exception v0

    move-object v1, v3

    goto :goto_31
.end method

.method private a(Ljava/util/ArrayList;)[Lcn/domob/android/j/b$a$a$a;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/android/j/b$a$a$a;",
            ">;)[",
            "Lcn/domob/android/j/b$a$a$a;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 471
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 472
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Lcn/domob/android/j/b$a$a$a;

    move v1, v2

    .line 473
    :goto_d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_30

    .line 474
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/j/b$a$a$a;

    .line 475
    invoke-virtual {v0}, Lcn/domob/android/j/b$a$a$a;->c()I

    move-result v5

    .line 476
    if-ltz v5, :cond_2c

    array-length v6, v4

    if-ge v5, v6, :cond_2c

    aget-object v6, v4, v5

    if-nez v6, :cond_2c

    .line 477
    aput-object v0, v4, v5

    .line 473
    :goto_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 479
    :cond_2c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_30
    move v1, v2

    .line 482
    :goto_31
    array-length v0, v4

    if-ge v1, v0, :cond_4a

    .line 483
    aget-object v0, v4, v1

    if-nez v0, :cond_46

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 484
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/j/b$a$a$a;

    aput-object v0, v4, v1

    .line 482
    :cond_46
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    .line 487
    :cond_4a
    return-object v4
.end method

.method static synthetic b(Lcn/domob/android/j/d;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcn/domob/android/j/d;->W:Landroid/widget/TextView;

    return-object v0
.end method

.method private b(Landroid/widget/ImageButton;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 596
    if-eqz p1, :cond_11

    invoke-static {p2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 597
    iget-object v0, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcn/domob/android/j/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 599
    :cond_11
    return-void
.end method

.method static synthetic c(Lcn/domob/android/j/d;)Z
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcn/domob/android/j/d;->k()Z

    move-result v0

    return v0
.end method

.method private d(I)Landroid/widget/RelativeLayout;
    .registers 6

    .prologue
    .line 379
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 380
    const/high16 v1, -0x61000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 381
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcn/domob/android/j/d;->f(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 382
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    new-instance v1, Lcn/domob/android/j/d$10;

    invoke-direct {v1, p0}, Lcn/domob/android/j/d$10;-><init>(Lcn/domob/android/j/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 389
    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/j/d;)V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcn/domob/android/j/d;->l()V

    return-void
.end method

.method private e(I)V
    .registers 5

    .prologue
    .line 554
    iget-object v0, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 555
    if-eqz v0, :cond_19

    .line 556
    invoke-direct {p0}, Lcn/domob/android/j/d;->m()I

    move-result v1

    .line 557
    if-lez v1, :cond_1a

    :goto_12
    iput v1, p0, Lcn/domob/android/j/d;->Y:I

    .line 558
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 560
    :cond_19
    return-void

    .line 557
    :cond_1a
    iget v1, p0, Lcn/domob/android/j/d;->Y:I

    goto :goto_12
.end method

.method static synthetic e(Lcn/domob/android/j/d;)Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcn/domob/android/j/d;->aa:Z

    return v0
.end method

.method private f(I)I
    .registers 4

    .prologue
    .line 756
    iget-object v0, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v0

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic f(Lcn/domob/android/j/d;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcn/domob/android/j/d;->R:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcn/domob/android/j/d;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcn/domob/android/j/d;->Q:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic h(Lcn/domob/android/j/d;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcn/domob/android/j/d;->V:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcn/domob/android/j/d;->a:Lcn/domob/android/i/f;

    return-object v0
.end method

.method private i()Landroid/widget/ImageButton;
    .registers 4

    .prologue
    const/16 v2, 0x1e

    .line 249
    iget-boolean v0, p0, Lcn/domob/android/j/d;->Z:Z

    if-nez v0, :cond_9

    .line 250
    invoke-direct {p0}, Lcn/domob/android/j/d;->n()V

    .line 252
    :cond_9
    iget-object v0, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->g()Lcn/domob/android/j/b$a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/b$a$a;->d()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 253
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 254
    invoke-direct {p0}, Lcn/domob/android/j/d;->k()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 255
    const-string v1, "domob_video_muted_not_selected.png"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/j/d;->b(Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 259
    :goto_27
    iget-object v1, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    invoke-virtual {p0, v1, v2, v2}, Lcn/domob/android/j/d;->a(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 260
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 261
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 262
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcn/domob/android/j/d;->f(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 263
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    new-instance v1, Lcn/domob/android/j/d$8;

    invoke-direct {v1, p0, v0}, Lcn/domob/android/j/d$8;-><init>(Lcn/domob/android/j/d;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 286
    :goto_4a
    return-object v0

    .line 257
    :cond_4b
    const-string v1, "domob_video_not_mute_not_selected.png"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/j/d;->b(Landroid/widget/ImageButton;Ljava/lang/String;)V

    goto :goto_27

    .line 286
    :cond_51
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method static synthetic i(Lcn/domob/android/j/d;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcn/domob/android/j/d;->U:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private j()Landroid/widget/ImageButton;
    .registers 4

    .prologue
    const/16 v2, 0x1e

    .line 305
    iget-object v0, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->g()Lcn/domob/android/j/b$a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/b$a$a;->b()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 306
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/j/d;->Q:Landroid/widget/ImageButton;

    .line 307
    iget-object v0, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->g()Lcn/domob/android/j/b$a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/b$a$a;->c()Z

    move-result v0

    .line 308
    invoke-virtual {p0, v0}, Lcn/domob/android/j/d;->b(Z)V

    .line 309
    iget-object v0, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    invoke-virtual {p0, v0, v2, v2}, Lcn/domob/android/j/d;->a(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 310
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 311
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 312
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcn/domob/android/j/d;->f(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 313
    iget-object v1, p0, Lcn/domob/android/j/d;->Q:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    iget-object v0, p0, Lcn/domob/android/j/d;->Q:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/j/d$9;

    invoke-direct {v1, p0}, Lcn/domob/android/j/d$9;-><init>(Lcn/domob/android/j/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 335
    iget-object v0, p0, Lcn/domob/android/j/d;->Q:Landroid/widget/ImageButton;

    .line 337
    :goto_4d
    return-object v0

    :cond_4e
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method static synthetic j(Lcn/domob/android/j/d;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcn/domob/android/j/d;->P:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic k(Lcn/domob/android/j/d;)I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcn/domob/android/j/d;->T:I

    return v0
.end method

.method private k()Z
    .registers 2

    .prologue
    .line 533
    invoke-direct {p0}, Lcn/domob/android/j/d;->m()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic l(Lcn/domob/android/j/d;)I
    .registers 3

    .prologue
    .line 41
    iget v0, p0, Lcn/domob/android/j/d;->T:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/domob/android/j/d;->T:I

    return v0
.end method

.method private l()V
    .registers 2

    .prologue
    .line 537
    invoke-direct {p0}, Lcn/domob/android/j/d;->k()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 538
    iget v0, p0, Lcn/domob/android/j/d;->Y:I

    if-lez v0, :cond_10

    iget v0, p0, Lcn/domob/android/j/d;->Y:I

    :goto_c
    invoke-direct {p0, v0}, Lcn/domob/android/j/d;->e(I)V

    .line 542
    :goto_f
    return-void

    .line 538
    :cond_10
    const/4 v0, 0x6

    goto :goto_c

    .line 540
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/domob/android/j/d;->e(I)V

    goto :goto_f
.end method

.method private m()I
    .registers 3

    .prologue
    .line 545
    iget-object v0, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 546
    if-eqz v0, :cond_12

    .line 547
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 549
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private n()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 566
    iget-object v0, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->g()Lcn/domob/android/j/b$a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/b$a$a;->e()I

    move-result v0

    .line 567
    if-ne v0, v2, :cond_14

    .line 568
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/domob/android/j/d;->e(I)V

    .line 572
    :cond_11
    :goto_11
    iput-boolean v2, p0, Lcn/domob/android/j/d;->Z:Z

    .line 573
    return-void

    .line 569
    :cond_14
    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    invoke-direct {p0}, Lcn/domob/android/j/d;->k()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 570
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcn/domob/android/j/d;->e(I)V

    goto :goto_11
.end method

.method private o()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 615
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 616
    iget-object v0, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->g()Lcn/domob/android/j/b$a$a;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Lcn/domob/android/j/b$a$a;->h()Ljava/util/ArrayList;

    move-result-object v4

    move v1, v2

    .line 618
    :goto_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3e

    .line 619
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/j/b$a$a$a;

    .line 620
    invoke-virtual {v0}, Lcn/domob/android/j/b$a$a$a;->e()[Ljava/lang/String;

    move-result-object v5

    .line 621
    if-eqz v5, :cond_3a

    array-length v0, v5

    if-lez v0, :cond_3a

    move v0, v2

    .line 622
    :goto_27
    array-length v6, v5

    if-ge v0, v6, :cond_3a

    .line 623
    aget-object v6, v5, v0

    invoke-static {v6}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_37

    .line 624
    aget-object v6, v5, v0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 618
    :cond_3a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 629
    :cond_3e
    return-object v3
.end method


# virtual methods
.method protected a(Z)Landroid/widget/ImageButton;
    .registers 8

    .prologue
    const/16 v3, 0x10

    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v1}, Lcn/domob/android/j/b;->e()Lcn/domob/android/j/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/j/b$a;->h()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 128
    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 129
    const-string v2, "domob_video_close_not_selected.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/j/d;->b(Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 130
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 131
    iget-object v2, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    invoke-virtual {p0, v2, v3, v3}, Lcn/domob/android/j/d;->a(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    .line 132
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    iget-object v3, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v3}, Lcn/domob/android/j/b;->e()Lcn/domob/android/j/b$a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/j/b$a;->i()[I

    move-result-object v3

    .line 134
    aget v3, v3, v0

    neg-int v3, v3

    invoke-direct {p0, v3}, Lcn/domob/android/j/d;->f(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 135
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v2, Lcn/domob/android/j/d$1;

    invoke-direct {v2, p0, v1}, Lcn/domob/android/j/d$1;-><init>(Lcn/domob/android/j/d;Landroid/widget/ImageButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    if-eqz p1, :cond_4c

    iget v0, p0, Lcn/domob/android/j/d;->X:I

    .line 148
    :cond_4c
    iget-object v2, p0, Lcn/domob/android/j/d;->O:Landroid/os/Handler;

    new-instance v3, Lcn/domob/android/j/d$5;

    invoke-direct {v3, p0, v1}, Lcn/domob/android/j/d$5;-><init>(Lcn/domob/android/j/d;Landroid/widget/ImageButton;)V

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object v0, v1

    .line 156
    :goto_58
    return-object v0

    :cond_59
    const/4 v0, 0x0

    goto :goto_58
.end method

.method protected a(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 6

    .prologue
    .line 760
    invoke-direct {p0, p2}, Lcn/domob/android/j/d;->f(I)I

    move-result v0

    invoke-direct {p0, p3}, Lcn/domob/android/j/d;->f(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcn/domob/android/j/d;->b(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected a()Landroid/widget/TextView;
    .registers 6

    .prologue
    const/4 v3, -0x2

    .line 211
    iget-object v0, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->e()Lcn/domob/android/j/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/b$a;->c()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 212
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 213
    const/high16 v1, 0x41000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 214
    const v1, -0x2e2e2f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object v1, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v1}, Lcn/domob/android/j/b;->e()Lcn/domob/android/j/b$a;

    move-result-object v1

    .line 216
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 217
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 218
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    const/16 v3, 0x23

    .line 220
    invoke-virtual {v1}, Lcn/domob/android/j/b$a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {v1}, Lcn/domob/android/j/b$a;->d()[I

    move-result-object v1

    .line 222
    const/4 v4, 0x0

    aget v1, v1, v4

    add-int/2addr v1, v3

    .line 223
    invoke-direct {p0, v1}, Lcn/domob/android/j/d;->f(I)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 224
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    :goto_4e
    return-object v0

    :cond_4f
    const/4 v0, 0x0

    goto :goto_4e
.end method

.method protected a(I)V
    .registers 7

    .prologue
    .line 161
    iget-object v0, p0, Lcn/domob/android/j/d;->W:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 162
    if-gtz p1, :cond_19

    .line 163
    iget-object v0, p0, Lcn/domob/android/j/d;->W:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 164
    iget-object v0, p0, Lcn/domob/android/j/d;->O:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/j/d$6;

    invoke-direct {v1, p0}, Lcn/domob/android/j/d$6;-><init>(Lcn/domob/android/j/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    :cond_18
    :goto_18
    return-void

    .line 171
    :cond_19
    if-lez p1, :cond_18

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u5269\u4f59"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u79d2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v2, "\u5e7f\u544a\u5269\u4f59\u79d2"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    .line 175
    const-string v2, "\u5e7f\u544a\u5269\u4f59"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 176
    const-string v3, "\u5e7f\u544a\u5269\u4f59"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 177
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x10000

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x22

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 178
    iget-object v0, p0, Lcn/domob/android/j/d;->O:Landroid/os/Handler;

    new-instance v2, Lcn/domob/android/j/d$7;

    invoke-direct {v2, p0, v1}, Lcn/domob/android/j/d$7;-><init>(Lcn/domob/android/j/d;Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_18
.end method

.method protected b()Landroid/widget/ImageView;
    .registers 5

    .prologue
    .line 232
    iget-object v0, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->e()Lcn/domob/android/j/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/b$a;->f()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 233
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 234
    iget-object v1, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    const-string v2, "domob_video_logo.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/j/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v1, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    const/16 v2, 0x23

    const/16 v3, 0x10

    invoke-virtual {p0, v1, v2, v3}, Lcn/domob/android/j/d;->a(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 236
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 237
    iget-object v2, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v2}, Lcn/domob/android/j/b;->e()Lcn/domob/android/j/b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/j/b$a;->g()[I

    move-result-object v2

    .line 238
    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcn/domob/android/j/d;->f(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 239
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    :goto_43
    return-object v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_43
.end method

.method protected b(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 5

    .prologue
    .line 764
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 765
    return-object v0
.end method

.method protected b(I)Landroid/widget/TextView;
    .registers 6

    .prologue
    const/4 v2, -0x2

    .line 192
    iget-object v0, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->e()Lcn/domob/android/j/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 193
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/domob/android/j/d;->M:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/j/d;->W:Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcn/domob/android/j/d;->W:Landroid/widget/TextView;

    const/high16 v1, 0x41000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 195
    iget-object v0, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->e()Lcn/domob/android/j/b$a;

    move-result-object v0

    .line 196
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 197
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 198
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 199
    const/16 v2, 0x28

    .line 200
    invoke-virtual {v0}, Lcn/domob/android/j/b$a;->b()[I

    move-result-object v0

    .line 201
    const/4 v3, 0x0

    aget v0, v0, v3

    sub-int v0, v2, v0

    .line 202
    invoke-direct {p0, v0}, Lcn/domob/android/j/d;->f(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 203
    iget-object v0, p0, Lcn/domob/android/j/d;->W:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v0, p0, Lcn/domob/android/j/d;->W:Landroid/widget/TextView;

    .line 206
    :goto_4a
    return-object v0

    :cond_4b
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method protected b(Z)V
    .registers 4

    .prologue
    .line 290
    iget-object v0, p0, Lcn/domob/android/j/d;->Q:Landroid/widget/ImageButton;

    if-eqz v0, :cond_11

    .line 291
    if-eqz p1, :cond_12

    .line 292
    const-string v0, "domob_video_full_not_selected.png"

    iput-object v0, p0, Lcn/domob/android/j/d;->R:Ljava/lang/String;

    .line 296
    :goto_a
    iget-object v0, p0, Lcn/domob/android/j/d;->Q:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/j/d;->R:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/j/d;->a(Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 298
    :cond_11
    return-void

    .line 294
    :cond_12
    const-string v0, "domob_video_not_full_not_selected.png"

    iput-object v0, p0, Lcn/domob/android/j/d;->R:Ljava/lang/String;

    goto :goto_a
.end method

.method protected c(I)Landroid/widget/RelativeLayout;
    .registers 5

    .prologue
    .line 369
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcn/domob/android/j/d;->d(I)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 370
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 371
    invoke-virtual {p0}, Lcn/domob/android/j/d;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcn/domob/android/j/d;->a(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 372
    invoke-virtual {p0}, Lcn/domob/android/j/d;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcn/domob/android/j/d;->a(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 373
    invoke-virtual {p0, p1}, Lcn/domob/android/j/d;->b(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcn/domob/android/j/d;->a(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 374
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/domob/android/j/d;->a(Z)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcn/domob/android/j/d;->a(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 375
    return-object v1
.end method

.method protected c()V
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->e()Lcn/domob/android/j/b$a;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcn/domob/android/j/b$a;->j()Lcn/domob/android/j/b$a$a;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcn/domob/android/j/d;->U:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lcn/domob/android/j/b$a$a;->a()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    .line 344
    iget-object v0, p0, Lcn/domob/android/j/d;->U:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_25

    const/16 v0, 0x8

    .line 345
    :goto_1f
    iget-object v1, p0, Lcn/domob/android/j/d;->U:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 347
    :cond_24
    return-void

    .line 344
    :cond_25
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method protected c(Z)V
    .registers 2

    .prologue
    .line 301
    iput-boolean p1, p0, Lcn/domob/android/j/d;->aa:Z

    .line 302
    return-void
.end method

.method protected d()V
    .registers 3

    .prologue
    .line 350
    iget-object v0, p0, Lcn/domob/android/j/d;->U:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a

    .line 351
    iget-object v0, p0, Lcn/domob/android/j/d;->U:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 353
    :cond_a
    return-void
.end method

.method protected e()Landroid/widget/RelativeLayout;
    .registers 4

    .prologue
    .line 356
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcn/domob/android/j/d;->d(I)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/d;->U:Landroid/widget/RelativeLayout;

    .line 357
    iget-object v0, p0, Lcn/domob/android/j/d;->U:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 358
    iget-object v0, p0, Lcn/domob/android/j/d;->U:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/domob/android/j/d;->i()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/domob/android/j/d;->a(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 359
    iget-object v0, p0, Lcn/domob/android/j/d;->U:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/domob/android/j/d;->j()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/domob/android/j/d;->a(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 360
    iget-object v0, p0, Lcn/domob/android/j/d;->U:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v1}, Lcn/domob/android/j/b;->g()Lcn/domob/android/j/b$a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/j/b$a$a;->g()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcn/domob/android/j/d;->a(ZZ)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/domob/android/j/d;->a(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 361
    iget-object v0, p0, Lcn/domob/android/j/d;->N:Lcn/domob/android/j/b;

    invoke-virtual {v0}, Lcn/domob/android/j/b;->e()Lcn/domob/android/j/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/b$a;->j()Lcn/domob/android/j/b$a$a;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lcn/domob/android/j/b$a$a;->a()I

    move-result v0

    if-nez v0, :cond_52

    .line 363
    iget-object v0, p0, Lcn/domob/android/j/d;->U:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 365
    :cond_52
    iget-object v0, p0, Lcn/domob/android/j/d;->U:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected f()V
    .registers 3

    .prologue
    .line 393
    iget-object v0, p0, Lcn/domob/android/j/d;->U:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcn/domob/android/j/d;->V:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_12

    .line 394
    iget-object v0, p0, Lcn/domob/android/j/d;->O:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/j/d$11;

    invoke-direct {v1, p0}, Lcn/domob/android/j/d$11;-><init>(Lcn/domob/android/j/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 403
    :cond_12
    return-void
.end method

.method protected g()V
    .registers 8

    .prologue
    .line 633
    invoke-direct {p0}, Lcn/domob/android/j/d;->o()Ljava/util/ArrayList;

    move-result-object v2

    .line 634
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 635
    if-nez v3, :cond_14

    iget-object v0, p0, Lcn/domob/android/j/d;->S:Lcn/domob/android/j/d$b;

    if-eqz v0, :cond_14

    .line 636
    iget-object v0, p0, Lcn/domob/android/j/d;->S:Lcn/domob/android/j/d$b;

    invoke-interface {v0}, Lcn/domob/android/j/d$b;->k()V

    .line 669
    :cond_13
    return-void

    .line 638
    :cond_14
    const/4 v0, 0x0

    move v1, v0

    :goto_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_13

    .line 639
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 640
    sget-object v4, Lcn/domob/android/j/d;->u:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcn/domob/android/j/d$4;

    invoke-direct {v6, p0, v0, v3}, Lcn/domob/android/j/d$4;-><init>(Lcn/domob/android/j/d;Ljava/lang/String;I)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 638
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16
.end method
