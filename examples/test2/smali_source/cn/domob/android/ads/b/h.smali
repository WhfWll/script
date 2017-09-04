.class Lcn/domob/android/ads/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lcn/domob/android/i/f; = null

.field private static final g:J = 0xbb8L

.field private static final h:I = 0x32

.field private static final i:Ljava/lang/String; = "domob_close.png"


# instance fields
.field protected a:Landroid/content/BroadcastReceiver;

.field protected b:F

.field protected c:I

.field protected d:I

.field e:Landroid/widget/FrameLayout;

.field private j:Lcn/domob/android/ads/b/m;

.field private k:Landroid/content/Context;

.field private l:Lcn/domob/android/ads/b/m$l;

.field private final m:Lcn/domob/android/ads/b/m$b;

.field private final n:Lcn/domob/android/ads/b/m$d;

.field private o:Landroid/widget/FrameLayout;

.field private p:Z

.field private q:Ljava/lang/Runnable;

.field private r:Landroid/os/Handler;

.field private final s:I

.field private t:Landroid/widget/ImageView;

.field private u:Z

.field private v:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/b/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/b/h;->f:Lcn/domob/android/i/f;

    return-void
.end method

.method constructor <init>(Lcn/domob/android/ads/b/m;Lcn/domob/android/ads/b/m$b;Lcn/domob/android/ads/b/m$d;)V
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v1, Lcn/domob/android/ads/b/m$l;->d:Lcn/domob/android/ads/b/m$l;

    iput-object v1, p0, Lcn/domob/android/ads/b/h;->l:Lcn/domob/android/ads/b/m$l;

    .line 61
    new-instance v1, Lcn/domob/android/ads/b/h$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/b/h$1;-><init>(Lcn/domob/android/ads/b/h;)V

    iput-object v1, p0, Lcn/domob/android/ads/b/h;->q:Ljava/lang/Runnable;

    .line 74
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcn/domob/android/ads/b/h;->r:Landroid/os/Handler;

    .line 84
    new-instance v1, Lcn/domob/android/ads/b/h$2;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/b/h$2;-><init>(Lcn/domob/android/ads/b/h;)V

    iput-object v1, p0, Lcn/domob/android/ads/b/h;->a:Landroid/content/BroadcastReceiver;

    .line 115
    iput v0, p0, Lcn/domob/android/ads/b/h;->c:I

    .line 117
    iput v0, p0, Lcn/domob/android/ads/b/h;->d:I

    .line 130
    iput-object p1, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    .line 131
    iput-object p2, p0, Lcn/domob/android/ads/b/h;->m:Lcn/domob/android/ads/b/m$b;

    .line 132
    iput-object p3, p0, Lcn/domob/android/ads/b/h;->n:Lcn/domob/android/ads/b/m$d;

    .line 134
    iget-object v1, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v1}, Lcn/domob/android/ads/b/m;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/b/h;->k:Landroid/content/Context;

    .line 135
    iget-object v1, p0, Lcn/domob/android/ads/b/h;->k:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_3d

    iget-object v0, p0, Lcn/domob/android/ads/b/h;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    :cond_3d
    iput v0, p0, Lcn/domob/android/ads/b/h;->s:I

    .line 138
    invoke-direct {p0}, Lcn/domob/android/ads/b/h;->f()V

    .line 139
    return-void
.end method

.method private a(Landroid/view/View;II)Landroid/view/ViewGroup;
    .registers 19

    .prologue
    .line 343
    const/high16 v2, 0x42480000

    iget v3, p0, Lcn/domob/android/ads/b/h;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 344
    move/from16 v0, p2

    if-ge v0, v2, :cond_c

    move/from16 p2, v2

    .line 346
    :cond_c
    move/from16 v0, p3

    if-ge v0, v2, :cond_12

    move/from16 p3, v2

    .line 349
    :cond_12
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v3}, Lcn/domob/android/ads/b/m;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 350
    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 352
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v4}, Lcn/domob/android/ads/b/m;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 353
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 354
    new-instance v4, Lcn/domob/android/ads/b/h$3;

    invoke-direct {v4, p0}, Lcn/domob/android/ads/b/h$3;-><init>(Lcn/domob/android/ads/b/h;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 360
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v4}, Lcn/domob/android/ads/b/m;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 364
    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 365
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 371
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 372
    iget-object v6, p0, Lcn/domob/android/ads/b/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 373
    const/4 v6, 0x0

    aget v6, v5, v6

    .line 374
    const/4 v7, 0x1

    aget v7, v5, v7

    .line 375
    iget-object v8, p0, Lcn/domob/android/ads/b/h;->k:Landroid/content/Context;

    invoke-static {v8}, Lcn/domob/android/b/a;->x(Landroid/content/Context;)I

    move-result v8

    .line 376
    iget-object v9, p0, Lcn/domob/android/ads/b/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    .line 377
    sget-object v10, Lcn/domob/android/ads/b/h;->f:Lcn/domob/android/i/f;

    const-string v11, "Mraid banner view\'s location on screen is:(%d, %d)"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 381
    sub-int/2addr v8, v7

    move/from16 v0, p3

    if-le v8, v0, :cond_b1

    .line 383
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 384
    iget v5, p0, Lcn/domob/android/ads/b/h;->w:I

    sub-int v5, v7, v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 394
    :goto_ad
    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    return-object v2

    .line 385
    :cond_b1
    iget v6, p0, Lcn/domob/android/ads/b/h;->w:I

    sub-int v6, v7, v6

    add-int/2addr v6, v9

    move/from16 v0, p3

    if-le v6, v0, :cond_c6

    .line 387
    const/4 v6, 0x0

    aget v5, v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 388
    sub-int v5, p3, v9

    sub-int v5, v7, v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_ad

    .line 391
    :cond_c6
    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_ad
.end method

.method static synthetic a(Lcn/domob/android/ads/b/h;)Z
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcn/domob/android/ads/b/h;->p:Z

    return v0
.end method

.method static synthetic a(Lcn/domob/android/ads/b/h;Z)Z
    .registers 2

    .prologue
    .line 35
    iput-boolean p1, p0, Lcn/domob/android/ads/b/h;->p:Z

    return p1
.end method

.method static synthetic b(Lcn/domob/android/ads/b/h;)Lcn/domob/android/ads/b/m;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/ads/b/h;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Z)V
    .registers 4

    .prologue
    .line 400
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 403
    :try_start_6
    check-cast v0, Landroid/app/Activity;

    .line 404
    if-eqz p1, :cond_18

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 406
    :goto_14
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 410
    :goto_17
    return-void

    .line 404
    :cond_18
    iget v1, p0, Lcn/domob/android/ads/b/h;->s:I
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_1a} :catch_1b

    goto :goto_14

    .line 407
    :catch_1b
    move-exception v0

    .line 408
    sget-object v0, Lcn/domob/android/ads/b/h;->f:Lcn/domob/android/i/f;

    const-string v1, "Unable to modify device orientation."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_17
.end method

.method private f()V
    .registers 2

    .prologue
    .line 142
    sget-object v0, Lcn/domob/android/ads/b/m$l;->a:Lcn/domob/android/ads/b/m$l;

    iput-object v0, p0, Lcn/domob/android/ads/b/h;->l:Lcn/domob/android/ads/b/m$l;

    .line 144
    invoke-direct {p0}, Lcn/domob/android/ads/b/h;->h()V

    .line 148
    return-void
.end method

.method private g()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const-wide/high16 v8, 0x4064000000000000L

    const/4 v2, 0x0

    .line 151
    iget-object v1, p0, Lcn/domob/android/ads/b/h;->k:Landroid/content/Context;

    .line 152
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 153
    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 154
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 155
    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/domob/android/ads/b/h;->b:F

    .line 158
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_9b

    move-object v0, v1

    .line 159
    check-cast v0, Landroid/app/Activity;

    .line 160
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 161
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 162
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 163
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 164
    const v4, 0x1020002

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 165
    sub-int/2addr v0, v1

    .line 168
    :goto_44
    add-int v4, v1, v0

    iput v4, p0, Lcn/domob/android/ads/b/h;->w:I

    .line 169
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 170
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v1, v5, v1

    sub-int v0, v1, v0

    .line 171
    sget-object v1, Lcn/domob/android/ads/b/h;->f:Lcn/domob/android/i/f;

    const-string v5, "Metrics pixels: width=%d, height=%d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 173
    int-to-double v4, v4

    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v6, v1

    div-double v6, v8, v6

    mul-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, p0, Lcn/domob/android/ads/b/h;->c:I

    .line 174
    int-to-double v0, v0

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v4, v3

    div-double v4, v8, v4

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcn/domob/android/ads/b/h;->d:I

    .line 175
    sget-object v0, Lcn/domob/android/ads/b/h;->f:Lcn/domob/android/i/f;

    const-string v1, "Screen size: width=%d, height=%d"

    new-array v3, v11, [Ljava/lang/Object;

    iget v4, p0, Lcn/domob/android/ads/b/h;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Lcn/domob/android/ads/b/h;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 177
    return-void

    :cond_9b
    move v0, v2

    move v1, v2

    goto :goto_44
.end method

.method private h()V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/b/h;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/b/h;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method private i()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 248
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->o:Landroid/widget/FrameLayout;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 250
    iget-object v1, p0, Lcn/domob/android/ads/b/h;->o:Landroid/widget/FrameLayout;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 253
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/domob/android/ads/b/h;->a(Z)V

    .line 254
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 255
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 257
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->requestLayout()V

    .line 259
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 263
    iget-object v1, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    iget v2, p0, Lcn/domob/android/ads/b/h;->v:I

    iget-object v3, p0, Lcn/domob/android/ads/b/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v1, p0, Lcn/domob/android/ads/b/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 265
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 267
    instance-of v1, v0, Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_5a

    move-object v1, v0

    .line 268
    check-cast v1, Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v4}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    move-object v1, v0

    .line 269
    check-cast v1, Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v4}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 270
    check-cast v0, Landroid/widget/ViewFlipper;

    iget v1, p0, Lcn/domob/android/ads/b/h;->v:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 272
    :cond_5a
    return-void
.end method

.method private j()V
    .registers 7

    .prologue
    .line 320
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 321
    if-nez v0, :cond_b

    .line 339
    :goto_a
    return-void

    .line 324
    :cond_b
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcn/domob/android/ads/b/h;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/domob/android/ads/b/h;->e:Landroid/widget/FrameLayout;

    .line 325
    iget-object v1, p0, Lcn/domob/android/ads/b/h;->e:Landroid/widget/FrameLayout;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 328
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 329
    const/4 v1, 0x0

    :goto_21
    if-ge v1, v2, :cond_2b

    .line 330
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    if-ne v3, v4, :cond_61

    .line 334
    :cond_2b
    sget-object v2, Lcn/domob/android/ads/b/h;->f:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current MRAID view\'s index is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 335
    iput v1, p0, Lcn/domob/android/ads/b/h;->v:I

    .line 336
    iget-object v2, p0, Lcn/domob/android/ads/b/h;->e:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget-object v4, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v4}, Lcn/domob/android/ads/b/m;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v5}, Lcn/domob/android/ads/b/m;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v1, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_a

    .line 329
    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/b/h;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method protected a(Ljava/lang/String;IIZZ)V
    .registers 11

    .prologue
    const/4 v4, -0x1

    .line 276
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->m:Lcn/domob/android/ads/b/m$b;

    sget-object v1, Lcn/domob/android/ads/b/m$b;->b:Lcn/domob/android/ads/b/m$b;

    if-ne v0, v1, :cond_8

    .line 317
    :cond_7
    :goto_7
    return-void

    .line 279
    :cond_8
    if-eqz p1, :cond_1a

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 280
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    const-string v1, "expand"

    const-string v2, "URL passed to expand() was invalid."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 289
    :cond_1a
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/domob/android/ads/b/h;->o:Landroid/widget/FrameLayout;

    .line 291
    invoke-virtual {p0, p4}, Lcn/domob/android/ads/b/h;->b(Z)V

    .line 292
    invoke-direct {p0, p5}, Lcn/domob/android/ads/b/h;->c(Z)V

    .line 293
    invoke-direct {p0}, Lcn/domob/android/ads/b/h;->j()V

    .line 295
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    .line 297
    if-eqz p1, :cond_42

    .line 298
    new-instance v0, Lcn/domob/android/ads/b/m;

    iget-object v1, p0, Lcn/domob/android/ads/b/h;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/domob/android/ads/b/m;-><init>(Landroid/content/Context;)V

    .line 299
    invoke-virtual {v0, p1}, Lcn/domob/android/ads/b/m;->loadUrl(Ljava/lang/String;)V

    .line 303
    :cond_42
    int-to-float v1, p2

    iget v2, p0, Lcn/domob/android/ads/b/h;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p3

    iget v3, p0, Lcn/domob/android/ads/b/h;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcn/domob/android/ads/b/h;->a(Landroid/view/View;II)Landroid/view/ViewGroup;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcn/domob/android/ads/b/h;->o:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->n:Lcn/domob/android/ads/b/m$d;

    sget-object v1, Lcn/domob/android/ads/b/m$d;->a:Lcn/domob/android/ads/b/m$d;

    if-eq v0, v1, :cond_6a

    iget-boolean v0, p0, Lcn/domob/android/ads/b/h;->u:Z

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcn/domob/android/ads/b/h;->n:Lcn/domob/android/ads/b/m$d;

    sget-object v1, Lcn/domob/android/ads/b/m$d;->b:Lcn/domob/android/ads/b/m$d;

    if-eq v0, v1, :cond_6e

    .line 310
    :cond_6a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b/h;->a(Z)V

    .line 313
    :cond_6e
    sget-object v0, Lcn/domob/android/ads/b/m$l;->c:Lcn/domob/android/ads/b/m$l;

    iput-object v0, p0, Lcn/domob/android/ads/b/h;->l:Lcn/domob/android/ads/b/m$l;

    .line 314
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    iget-object v1, p0, Lcn/domob/android/ads/b/h;->l:Lcn/domob/android/ads/b/m$l;

    invoke-static {v1}, Lcn/domob/android/ads/b/l;->a(Lcn/domob/android/ads/b/m$l;)Lcn/domob/android/ads/b/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b/m;->a(Lcn/domob/android/ads/b/j;)V

    .line 315
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->d()Lcn/domob/android/ads/b/m$g;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 316
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->d()Lcn/domob/android/ads/b/m$g;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/b/m$g;->a(Lcn/domob/android/ads/b/m;)V

    goto/16 :goto_7
.end method

.method protected a(Z)V
    .registers 6

    .prologue
    .line 413
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->o:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    .line 444
    :cond_4
    :goto_4
    return-void

    .line 417
    :cond_5
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->o:Landroid/widget/FrameLayout;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 420
    if-eqz p1, :cond_5a

    .line 421
    iget-object v1, p0, Lcn/domob/android/ads/b/h;->t:Landroid/widget/ImageView;

    if-nez v1, :cond_39

    .line 422
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v2}, Lcn/domob/android/ads/b/m;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/domob/android/ads/b/h;->t:Landroid/widget/ImageView;

    .line 423
    iget-object v1, p0, Lcn/domob/android/ads/b/h;->t:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/domob/android/ads/b/h;->k:Landroid/content/Context;

    const-string v3, "domob_close.png"

    invoke-static {v2, v3}, Lcn/domob/android/i/d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v1, p0, Lcn/domob/android/ads/b/h;->t:Landroid/widget/ImageView;

    new-instance v2, Lcn/domob/android/ads/b/h$4;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/b/h$4;-><init>(Lcn/domob/android/ads/b/h;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    :cond_39
    const/high16 v1, 0x42480000

    iget v2, p0, Lcn/domob/android/ads/b/h;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 433
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 435
    iget-object v1, p0, Lcn/domob/android/ads/b/h;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    :goto_4a
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    .line 441
    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->h()Lcn/domob/android/ads/b/m$e;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 442
    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->h()Lcn/domob/android/ads/b/m$e;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcn/domob/android/ads/b/m$e;->a(Lcn/domob/android/ads/b/m;Z)V

    goto :goto_4

    .line 437
    :cond_5a
    iget-object v1, p0, Lcn/domob/android/ads/b/h;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_4a
.end method

.method protected b()V
    .registers 4

    .prologue
    .line 211
    invoke-direct {p0}, Lcn/domob/android/ads/b/h;->g()V

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    iget v1, p0, Lcn/domob/android/ads/b/h;->c:I

    iget v2, p0, Lcn/domob/android/ads/b/h;->d:I

    invoke-static {v1, v2}, Lcn/domob/android/ads/b/k;->a(II)Lcn/domob/android/ads/b/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-boolean v1, p0, Lcn/domob/android/ads/b/h;->p:Z

    invoke-static {v1}, Lcn/domob/android/ads/b/n;->a(Z)Lcn/domob/android/ads/b/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v1, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/b/m;->a(Ljava/util/ArrayList;)V

    .line 217
    sget-object v0, Lcn/domob/android/ads/b/m$l;->b:Lcn/domob/android/ads/b/m$l;

    iput-object v0, p0, Lcn/domob/android/ads/b/h;->l:Lcn/domob/android/ads/b/m$l;

    .line 218
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    iget-object v1, p0, Lcn/domob/android/ads/b/h;->l:Lcn/domob/android/ads/b/m$l;

    invoke-static {v1}, Lcn/domob/android/ads/b/l;->a(Lcn/domob/android/ads/b/m$l;)Lcn/domob/android/ads/b/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b/m;->a(Lcn/domob/android/ads/b/j;)V

    .line 219
    return-void
.end method

.method protected b(Z)V
    .registers 5

    .prologue
    .line 447
    iput-boolean p1, p0, Lcn/domob/android/ads/b/h;->u:Z

    .line 449
    iget-object v1, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    .line 450
    if-nez p1, :cond_15

    const/4 v0, 0x1

    .line 451
    :goto_7
    invoke-virtual {v1}, Lcn/domob/android/ads/b/m;->h()Lcn/domob/android/ads/b/m$e;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 452
    invoke-virtual {v1}, Lcn/domob/android/ads/b/m;->h()Lcn/domob/android/ads/b/m$e;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcn/domob/android/ads/b/m$e;->a(Lcn/domob/android/ads/b/m;Z)V

    .line 454
    :cond_14
    return-void

    .line 450
    :cond_15
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected c()Z
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->l:Lcn/domob/android/ads/b/m$l;

    sget-object v1, Lcn/domob/android/ads/b/m$l;->c:Lcn/domob/android/ads/b/m$l;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected d()V
    .registers 4

    .prologue
    .line 226
    sget-object v0, Lcn/domob/android/ads/b/h;->f:Lcn/domob/android/i/f;

    const-string v1, "MRAID expandable part will be closed."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->l:Lcn/domob/android/ads/b/m$l;

    sget-object v1, Lcn/domob/android/ads/b/m$l;->c:Lcn/domob/android/ads/b/m$l;

    if-ne v0, v1, :cond_40

    .line 228
    sget-object v0, Lcn/domob/android/ads/b/h;->f:Lcn/domob/android/i/f;

    const-string v1, "MRAID view state is expanded and expand part will be closed."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcn/domob/android/ads/b/h;->i()V

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/domob/android/ads/b/h;->c(Z)V

    .line 231
    sget-object v0, Lcn/domob/android/ads/b/m$l;->b:Lcn/domob/android/ads/b/m$l;

    iput-object v0, p0, Lcn/domob/android/ads/b/h;->l:Lcn/domob/android/ads/b/m$l;

    .line 232
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    iget-object v1, p0, Lcn/domob/android/ads/b/h;->l:Lcn/domob/android/ads/b/m$l;

    invoke-static {v1}, Lcn/domob/android/ads/b/l;->a(Lcn/domob/android/ads/b/m$l;)Lcn/domob/android/ads/b/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b/m;->a(Lcn/domob/android/ads/b/j;)V

    .line 242
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->e()Lcn/domob/android/ads/b/m$f;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 243
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->e()Lcn/domob/android/ads/b/m$f;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    iget-object v2, p0, Lcn/domob/android/ads/b/h;->l:Lcn/domob/android/ads/b/m$l;

    invoke-interface {v0, v1, v2}, Lcn/domob/android/ads/b/m$f;->a(Lcn/domob/android/ads/b/m;Lcn/domob/android/ads/b/m$l;)V

    .line 245
    :cond_3f
    return-void

    .line 234
    :cond_40
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->l:Lcn/domob/android/ads/b/m$l;

    sget-object v1, Lcn/domob/android/ads/b/m$l;->b:Lcn/domob/android/ads/b/m$l;

    if-ne v0, v1, :cond_2a

    .line 235
    sget-object v0, Lcn/domob/android/ads/b/h;->f:Lcn/domob/android/i/f;

    const-string v1, "MRAID view state is default and MRAID view will be hidden."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b/m;->setVisibility(I)V

    .line 237
    sget-object v0, Lcn/domob/android/ads/b/m$l;->d:Lcn/domob/android/ads/b/m$l;

    iput-object v0, p0, Lcn/domob/android/ads/b/h;->l:Lcn/domob/android/ads/b/m$l;

    .line 238
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    iget-object v1, p0, Lcn/domob/android/ads/b/h;->l:Lcn/domob/android/ads/b/m$l;

    invoke-static {v1}, Lcn/domob/android/ads/b/l;->a(Lcn/domob/android/ads/b/m$l;)Lcn/domob/android/ads/b/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b/m;->a(Lcn/domob/android/ads/b/j;)V

    goto :goto_2a
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcn/domob/android/ads/b/h;->j:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
