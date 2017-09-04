.class Lcn/domob/wall/core/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/d/c$a;
    }
.end annotation


# static fields
.field static final a:I = 0x2d

.field private static g:Lcn/domob/wall/core/h/d; = null

.field private static final h:Ljava/lang/String; = "e_close.png"

.field private static final i:Ljava/lang/String; = "e_back.png"

.field private static final j:Ljava/lang/String; = "e_forward.png"

.field private static final k:Ljava/lang/String; = "e_back_c.png"

.field private static final l:Ljava/lang/String; = "e_forward_c.png"

.field private static final m:Ljava/lang/String; = "e_refresh.png"

.field private static final n:I = 0x18

.field private static final o:I = 0x18

.field private static final p:I = 0x18

.field private static final q:I = -0x10000000

.field private static final r:I = 0x14

.field private static final s:I = -0x2e2e2f


# instance fields
.field b:Landroid/widget/ImageButton;

.field c:Landroid/widget/ImageButton;

.field d:Landroid/widget/ProgressBar;

.field e:Landroid/widget/ImageView;

.field f:Landroid/view/animation/RotateAnimation;

.field private t:Landroid/content/Context;

.field private u:Lcn/domob/wall/core/d/c$a;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/d/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/d/c;->g:Lcn/domob/wall/core/h/d;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/wall/core/d/c$a;)V
    .registers 4

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcn/domob/wall/core/d/c;->t:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcn/domob/wall/core/d/c;->v:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcn/domob/wall/core/d/c;->u:Lcn/domob/wall/core/d/c$a;

    .line 68
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    .line 304
    const/4 v1, 0x0

    .line 305
    invoke-static {p2}, Lcn/domob/wall/core/h/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 307
    :try_start_7
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const-class v2, Lcn/domob/wall/core/d/c;

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

    .line 315
    :goto_2d
    return-object v0

    .line 311
    :catch_2e
    move-exception v0

    .line 312
    sget-object v2, Lcn/domob/wall/core/d/c;->g:Lcn/domob/wall/core/h/d;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    :cond_34
    move-object v0, v1

    goto :goto_2d
.end method

.method static synthetic a(Lcn/domob/wall/core/d/c;)Lcn/domob/wall/core/d/c$a;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->u:Lcn/domob/wall/core/d/c$a;

    return-object v0
.end method

.method private a(Landroid/widget/ImageButton;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 325
    if-eqz p1, :cond_11

    invoke-static {p2}, Lcn/domob/wall/core/h/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 326
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->t:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcn/domob/wall/core/d/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    :cond_11
    return-void
.end method

.method private a(Landroid/widget/RelativeLayout;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 319
    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    .line 320
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 322
    :cond_7
    return-void
.end method

.method static synthetic a(Lcn/domob/wall/core/d/c;Landroid/widget/ImageButton;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcn/domob/wall/core/d/c;->a(Landroid/widget/ImageButton;Ljava/lang/String;)V

    return-void
.end method

.method private b(I)Landroid/widget/RelativeLayout;
    .registers 6

    .prologue
    .line 289
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/wall/core/d/c;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 290
    const/high16 v1, -0x10000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 291
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcn/domob/wall/core/d/c;->c(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 293
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    new-instance v1, Lcn/domob/wall/core/d/c$7;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/d/c$7;-><init>(Lcn/domob/wall/core/d/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    return-object v0
.end method

.method static synthetic b(Lcn/domob/wall/core/d/c;)V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/domob/wall/core/d/c;->h()V

    return-void
.end method

.method private c(I)I
    .registers 4

    .prologue
    .line 331
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->t:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 333
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private g()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000

    .line 240
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcn/domob/wall/core/d/c;->f:Landroid/view/animation/RotateAnimation;

    .line 242
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->f:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 243
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->f:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 244
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->f:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 245
    return-void
.end method

.method private h()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_7
    iget-object v3, p0, Lcn/domob/wall/core/d/c;->f:Landroid/view/animation/RotateAnimation;

    if-eqz v3, :cond_1d

    :goto_b
    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 249
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/wall/core/d/c;->f:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 252
    :cond_1a
    return-void

    :cond_1b
    move v0, v2

    .line 248
    goto :goto_7

    :cond_1d
    move v1, v2

    goto :goto_b
.end method

.method private i()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    move v0, v1

    :goto_7
    iget-object v3, p0, Lcn/domob/wall/core/d/c;->f:Landroid/view/animation/RotateAnimation;

    if-eqz v3, :cond_16

    :goto_b
    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 256
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 259
    :cond_13
    return-void

    :cond_14
    move v0, v2

    .line 255
    goto :goto_7

    :cond_16
    move v1, v2

    goto :goto_b
.end method


# virtual methods
.method protected a()Landroid/widget/ImageButton;
    .registers 4

    .prologue
    const/16 v2, 0x18

    .line 96
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/wall/core/d/c;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 97
    const-string v1, "e_close.png"

    invoke-direct {p0, v0, v1}, Lcn/domob/wall/core/d/c;->a(Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lcn/domob/wall/core/d/c;->t:Landroid/content/Context;

    invoke-virtual {p0, v1, v2, v2}, Lcn/domob/wall/core/d/c;->a(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 101
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcn/domob/wall/core/d/c;->c(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v1, Lcn/domob/wall/core/d/c$1;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/d/c$1;-><init>(Lcn/domob/wall/core/d/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-object v0
.end method

.method protected a(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 6

    .prologue
    .line 338
    invoke-direct {p0, p2}, Lcn/domob/wall/core/d/c;->c(I)I

    move-result v0

    invoke-direct {p0, p3}, Lcn/domob/wall/core/d/c;->c(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcn/domob/wall/core/d/c;->b(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .prologue
    const/4 v2, -0x2

    .line 121
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/domob/wall/core/d/c;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 122
    const/high16 v1, 0x41a00000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 123
    const v1, -0x2e2e2f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 128
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    return-object v0
.end method

.method protected a(I)V
    .registers 4

    .prologue
    .line 85
    const/16 v0, 0x64

    if-ne p1, v0, :cond_e

    .line 86
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 87
    invoke-direct {p0}, Lcn/domob/wall/core/d/c;->i()V

    .line 93
    :goto_d
    return-void

    .line 89
    :cond_e
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_d
.end method

.method protected a(ZZ)V
    .registers 5

    .prologue
    .line 71
    if-eqz p1, :cond_13

    .line 72
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->b:Landroid/widget/ImageButton;

    const-string v1, "e_back.png"

    invoke-direct {p0, v0, v1}, Lcn/domob/wall/core/d/c;->a(Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 77
    :goto_9
    if-eqz p2, :cond_1b

    .line 78
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->c:Landroid/widget/ImageButton;

    const-string v1, "e_forward.png"

    invoke-direct {p0, v0, v1}, Lcn/domob/wall/core/d/c;->a(Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 82
    :goto_12
    return-void

    .line 74
    :cond_13
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->b:Landroid/widget/ImageButton;

    const-string v1, "e_back.png"

    invoke-direct {p0, v0, v1}, Lcn/domob/wall/core/d/c;->a(Landroid/widget/ImageButton;Ljava/lang/String;)V

    goto :goto_9

    .line 80
    :cond_1b
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->c:Landroid/widget/ImageButton;

    const-string v1, "e_forward_c.png"

    invoke-direct {p0, v0, v1}, Lcn/domob/wall/core/d/c;->a(Landroid/widget/ImageButton;Ljava/lang/String;)V

    goto :goto_12
.end method

.method protected b()Landroid/widget/ImageButton;
    .registers 4

    .prologue
    const/16 v2, 0x18

    .line 138
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/wall/core/d/c;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/wall/core/d/c;->b:Landroid/widget/ImageButton;

    .line 139
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->b:Landroid/widget/ImageButton;

    const-string v1, "e_back.png"

    invoke-direct {p0, v0, v1}, Lcn/domob/wall/core/d/c;->a(Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->t:Landroid/content/Context;

    invoke-virtual {p0, v0, v2, v2}, Lcn/domob/wall/core/d/c;->a(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 142
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 143
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcn/domob/wall/core/d/c;->c(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 145
    iget-object v1, p0, Lcn/domob/wall/core/d/c;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->b:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/wall/core/d/c$2;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/d/c$2;-><init>(Lcn/domob/wall/core/d/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->b:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/wall/core/d/c$3;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/d/c$3;-><init>(Lcn/domob/wall/core/d/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->b:Landroid/widget/ImageButton;

    return-object v0
.end method

.method protected b(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 5

    .prologue
    .line 343
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 345
    return-object v0
.end method

.method protected c()Landroid/widget/ImageButton;
    .registers 4

    .prologue
    const/16 v2, 0x18

    .line 174
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/wall/core/d/c;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/wall/core/d/c;->c:Landroid/widget/ImageButton;

    .line 177
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->c:Landroid/widget/ImageButton;

    const-string v1, "e_forward_c.png"

    invoke-direct {p0, v0, v1}, Lcn/domob/wall/core/d/c;->a(Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->t:Landroid/content/Context;

    invoke-virtual {p0, v0, v2, v2}, Lcn/domob/wall/core/d/c;->a(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 180
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    const/16 v1, 0x32

    invoke-direct {p0, v1}, Lcn/domob/wall/core/d/c;->c(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 183
    iget-object v1, p0, Lcn/domob/wall/core/d/c;->c:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/wall/core/d/c$4;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/d/c$4;-><init>(Lcn/domob/wall/core/d/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/wall/core/d/c$5;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/d/c$5;-><init>(Lcn/domob/wall/core/d/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->c:Landroid/widget/ImageButton;

    return-object v0
.end method

.method protected d()Landroid/widget/ImageView;
    .registers 5

    .prologue
    const/16 v3, 0x18

    .line 214
    invoke-direct {p0}, Lcn/domob/wall/core/d/c;->g()V

    .line 215
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/wall/core/d/c;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/wall/core/d/c;->e:Landroid/widget/ImageView;

    .line 216
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/wall/core/d/c;->t:Landroid/content/Context;

    const-string v2, "e_refresh.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/wall/core/d/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->t:Landroid/content/Context;

    invoke-virtual {p0, v0, v3, v3}, Lcn/domob/wall/core/d/c;->a(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 220
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 221
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 222
    const/16 v1, 0x5f

    invoke-direct {p0, v1}, Lcn/domob/wall/core/d/c;->c(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 223
    iget-object v1, p0, Lcn/domob/wall/core/d/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->e:Landroid/widget/ImageView;

    new-instance v1, Lcn/domob/wall/core/d/c$6;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/d/c$6;-><init>(Lcn/domob/wall/core/d/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected e()Landroid/widget/ProgressBar;
    .registers 5

    .prologue
    .line 263
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcn/domob/wall/core/d/c;->t:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcn/domob/wall/core/d/c;->d:Landroid/widget/ProgressBar;

    .line 267
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcn/domob/wall/core/d/c;->c(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 269
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 270
    iget-object v1, p0, Lcn/domob/wall/core/d/c;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 272
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected f()Landroid/widget/RelativeLayout;
    .registers 4

    .prologue
    .line 276
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcn/domob/wall/core/d/c;->b(I)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 279
    invoke-virtual {p0}, Lcn/domob/wall/core/d/c;->b()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcn/domob/wall/core/d/c;->a(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 280
    invoke-virtual {p0}, Lcn/domob/wall/core/d/c;->c()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcn/domob/wall/core/d/c;->a(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 281
    invoke-virtual {p0}, Lcn/domob/wall/core/d/c;->d()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcn/domob/wall/core/d/c;->a(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 282
    iget-object v0, p0, Lcn/domob/wall/core/d/c;->v:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/domob/wall/core/d/c;->a(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcn/domob/wall/core/d/c;->a(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 283
    invoke-virtual {p0}, Lcn/domob/wall/core/d/c;->a()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcn/domob/wall/core/d/c;->a(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 284
    invoke-virtual {p0}, Lcn/domob/wall/core/d/c;->e()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcn/domob/wall/core/d/c;->a(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 285
    return-object v1
.end method
