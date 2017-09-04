.class public Lcn/domob/wall/core/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/a/b$b;,
        Lcn/domob/wall/core/a/b$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "a_banner.png"

.field private static final B:Ljava/lang/String; = "a_exit.png"

.field private static final C:Ljava/lang/String; = "a_exit_on.png"

.field private static final D:Ljava/lang/String; = "a_loading.png"

.field private static final E:Ljava/lang/String; = "a_next_off.png"

.field private static final F:Ljava/lang/String; = "a_next.png"

.field private static final G:Ljava/lang/String; = "a_next_on.png"

.field private static final H:Ljava/lang/String; = "a_out.png"

.field private static final I:Ljava/lang/String; = "a_out_on.png"

.field private static final J:Ljava/lang/String; = "a_preview_off.png"

.field private static final K:Ljava/lang/String; = "a_preview.png"

.field private static final L:Ljava/lang/String; = "a_preview_on.png"

.field private static final M:Ljava/lang/String; = "a_refresh.png"

.field private static final N:Ljava/lang/String; = "a_refresh_on.png"

.field private static final O:I = 0x23

.field private static final P:I = 0x23

.field private static final Q:I = 0x2d

.field private static final R:I = 0x1f4

.field private static final S:[Ljava/lang/String;

.field private static b:Lcn/domob/wall/core/h/d; = null

.field private static final x:Ljava/lang/String; = "close"

.field private static final y:Ljava/lang/String; = "inapp"

.field private static final z:Ljava/lang/String; = "url"


# instance fields
.field a:Lcn/domob/wall/core/bean/AdInfo;

.field private c:Landroid/webkit/WebView;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Landroid/app/Dialog;

.field private h:Lcn/domob/wall/core/a/b$a;

.field private i:Landroid/os/Handler;

.field private j:Landroid/widget/RelativeLayout;

.field private k:F

.field private l:Landroid/view/View;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/widget/ImageButton;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/view/animation/RotateAnimation;

.field private t:Landroid/view/animation/Animation;

.field private u:Landroid/view/animation/Animation;

.field private v:Z

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/a/b;->b:Lcn/domob/wall/core/h/d;

    .line 125
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".3gp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".asf"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".avi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ".m4u"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ".m4v"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".mov"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ".mpe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ".mpeg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ".mpg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ".mpg4"

    aput-object v2, v0, v1

    sput-object v0, Lcn/domob/wall/core/a/b;->S:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/wall/core/a/b$a;Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v0, p0, Lcn/domob/wall/core/a/b;->d:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    .line 83
    iput-object v0, p0, Lcn/domob/wall/core/a/b;->g:Landroid/app/Dialog;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/domob/wall/core/a/b;->i:Landroid/os/Handler;

    .line 87
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcn/domob/wall/core/a/b;->k:F

    .line 100
    iput-boolean v1, p0, Lcn/domob/wall/core/a/b;->v:Z

    .line 101
    iput-boolean v1, p0, Lcn/domob/wall/core/a/b;->w:Z

    .line 131
    iput-object p5, p0, Lcn/domob/wall/core/a/b;->a:Lcn/domob/wall/core/bean/AdInfo;

    .line 133
    sget-object v0, Lcn/domob/wall/core/a/b;->b:Lcn/domob/wall/core/h/d;

    const-string v1, "Initialize LandingPageBuilder"

    invoke-virtual {v0, p0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    .line 135
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/wall/core/h/e;->s(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/a/b;->k:F

    .line 136
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    .line 137
    iput-object p2, p0, Lcn/domob/wall/core/a/b;->d:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lcn/domob/wall/core/a/b;->f:Ljava/lang/String;

    .line 139
    iput-object p4, p0, Lcn/domob/wall/core/a/b;->h:Lcn/domob/wall/core/a/b$a;

    .line 142
    :try_start_3c
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/a/b;->l:Landroid/view/View;

    .line 143
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->e()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_45} :catch_46

    .line 147
    :goto_45
    return-void

    .line 144
    :catch_46
    move-exception v0

    .line 145
    sget-object v1, Lcn/domob/wall/core/a/b;->b:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_45
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    .line 439
    const/4 v1, 0x0

    .line 441
    :try_start_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

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
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2a

    .line 449
    :goto_29
    return-object v0

    .line 444
    :catch_2a
    move-exception v0

    .line 445
    sget-object v2, Lcn/domob/wall/core/a/b;->b:Lcn/domob/wall/core/h/d;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 446
    sget-object v0, Lcn/domob/wall/core/a/b;->b:Lcn/domob/wall/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load source file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_29
.end method

.method static synthetic a(Lcn/domob/wall/core/a/b;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcn/domob/wall/core/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/domob/wall/core/a/b;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;
    .registers 9

    .prologue
    const/4 v5, -0x2

    const/high16 v4, 0x420c0000

    .line 454
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 455
    iget-object v1, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcn/domob/wall/core/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/domob/wall/core/a/b;->k:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/wall/core/a/b;->k:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 459
    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 464
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 465
    return-object v0
.end method

.method private a(II)Z
    .registers 5

    .prologue
    .line 277
    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 279
    ushr-int v1, p1, v0

    rem-int/lit8 v1, v1, 0x2

    .line 280
    ushr-int v0, p2, v0

    rem-int/lit8 v0, v0, 0x2

    .line 281
    if-ne v1, v0, :cond_16

    .line 282
    const/4 v0, 0x1

    .line 284
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static synthetic a(Lcn/domob/wall/core/a/b;Z)Z
    .registers 2

    .prologue
    .line 55
    iput-boolean p1, p0, Lcn/domob/wall/core/a/b;->w:Z

    return p1
.end method

.method static synthetic b(Lcn/domob/wall/core/a/b;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->j:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic b()Lcn/domob/wall/core/h/d;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcn/domob/wall/core/a/b;->b:Lcn/domob/wall/core/h/d;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/wall/core/a/b;Z)Z
    .registers 2

    .prologue
    .line 55
    iput-boolean p1, p0, Lcn/domob/wall/core/a/b;->v:Z

    return p1
.end method

.method static synthetic c(Lcn/domob/wall/core/a/b;)Lcn/domob/wall/core/a/b$a;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->h:Lcn/domob/wall/core/a/b$a;

    return-object v0
.end method

.method static synthetic c()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcn/domob/wall/core/a/b;->S:[Ljava/lang/String;

    return-object v0
.end method

.method private d()Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 235
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 236
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 237
    iget-object v1, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    const-string v2, "a_banner.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/wall/core/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->j()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->l()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->p()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->n()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->h()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    return-object v0
.end method

.method static synthetic d(Lcn/domob/wall/core/a/b;)Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcn/domob/wall/core/a/b;->v:Z

    return v0
.end method

.method static synthetic e(Lcn/domob/wall/core/a/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    return-object v0
.end method

.method private e()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000

    .line 249
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/wall/core/a/b;->r:Landroid/widget/ImageView;

    .line 250
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->r:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v5, "assets/a_loading.png"

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->r:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcn/domob/wall/core/a/b;->s:Landroid/view/animation/RotateAnimation;

    .line 256
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->s:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 257
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->s:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 258
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->s:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 259
    return-void
.end method

.method static synthetic f(Lcn/domob/wall/core/a/b;)V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->s()V

    return-void
.end method

.method private f()Z
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1b

    .line 266
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 269
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    invoke-direct {p0, v0, v1}, Lcn/domob/wall/core/a/b;->a(II)Z

    move-result v0

    .line 273
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private g()Landroid/webkit/WebView;
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 289
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->s()V

    .line 290
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 294
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 297
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 301
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    new-instance v1, Lcn/domob/wall/core/a/b$7;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/a/b$7;-><init>(Lcn/domob/wall/core/a/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 402
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    new-instance v1, Lcn/domob/wall/core/a/b$b;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/a/b$b;-><init>(Lcn/domob/wall/core/a/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 404
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    new-instance v1, Lcn/domob/wall/core/a/b$8;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/a/b$8;-><init>(Lcn/domob/wall/core/a/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 420
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 422
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 423
    iget-object v1, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic g(Lcn/domob/wall/core/a/b;)V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->t()V

    return-void
.end method

.method private h()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    const/high16 v4, 0x420c0000

    .line 548
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/wall/core/a/b;->q:Landroid/widget/ImageButton;

    .line 552
    const-string v0, "a_exit.png"

    .line 553
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/domob/wall/core/a/b;->k:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/wall/core/a/b;->k:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 555
    iget-object v2, p0, Lcn/domob/wall/core/a/b;->q:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    iget-object v1, p0, Lcn/domob/wall/core/a/b;->q:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/wall/core/a/b$9;

    invoke-direct {v2, p0}, Lcn/domob/wall/core/a/b$9;-><init>(Lcn/domob/wall/core/a/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    iget-object v1, p0, Lcn/domob/wall/core/a/b;->q:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/wall/core/a/b$10;

    invoke-direct {v2, p0}, Lcn/domob/wall/core/a/b$10;-><init>(Lcn/domob/wall/core/a/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 576
    iget-object v1, p0, Lcn/domob/wall/core/a/b;->q:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/wall/core/a/b;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcn/domob/wall/core/a/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x1f4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 580
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcn/domob/wall/core/a/b;->u:Landroid/view/animation/Animation;

    .line 583
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->u:Landroid/view/animation/Animation;

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 584
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->u:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 586
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->i:Landroid/os/Handler;

    new-instance v1, Lcn/domob/wall/core/a/b$11;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/a/b$11;-><init>(Lcn/domob/wall/core/a/b;)V

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 592
    return-void
.end method

.method static synthetic i(Lcn/domob/wall/core/a/b;)V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->i()V

    return-void
.end method

.method private j()Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    const/high16 v3, 0x420c0000

    .line 595
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/wall/core/a/b;->m:Landroid/widget/ImageButton;

    .line 596
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/wall/core/a/b;->k:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/wall/core/a/b;->k:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 598
    iget-object v1, p0, Lcn/domob/wall/core/a/b;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 601
    const-string v0, "a_preview.png"

    .line 606
    :goto_27
    iget-object v1, p0, Lcn/domob/wall/core/a/b;->m:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/wall/core/a/b$12;

    invoke-direct {v2, p0}, Lcn/domob/wall/core/a/b$12;-><init>(Lcn/domob/wall/core/a/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    iget-object v1, p0, Lcn/domob/wall/core/a/b;->m:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/wall/core/a/b$13;

    invoke-direct {v2, p0}, Lcn/domob/wall/core/a/b$13;-><init>(Lcn/domob/wall/core/a/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 629
    iget-object v1, p0, Lcn/domob/wall/core/a/b;->m:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/wall/core/a/b;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0

    .line 603
    :cond_42
    const-string v0, "a_preview_off.png"

    goto :goto_27
.end method

.method static synthetic j(Lcn/domob/wall/core/a/b;)V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->r()V

    return-void
.end method

.method static synthetic k(Lcn/domob/wall/core/a/b;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->q:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private k()V
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    .line 641
    :cond_4
    :goto_4
    return-void

    .line 636
    :cond_5
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 637
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 639
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->r()V

    goto :goto_4
.end method

.method static synthetic l(Lcn/domob/wall/core/a/b;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->g:Landroid/app/Dialog;

    return-object v0
.end method

.method private l()Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    const/high16 v3, 0x420c0000

    .line 644
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/wall/core/a/b;->n:Landroid/widget/ImageButton;

    .line 645
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/wall/core/a/b;->k:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/wall/core/a/b;->k:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 647
    iget-object v1, p0, Lcn/domob/wall/core/a/b;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    const-string v0, "a_next_off.png"

    .line 650
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/wall/core/a/b$14;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/a/b$14;-><init>(Lcn/domob/wall/core/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/wall/core/a/b$2;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/a/b$2;-><init>(Lcn/domob/wall/core/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 670
    const-string v0, "a_next_off.png"

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->n:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/wall/core/a/b;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    .line 682
    :cond_4
    :goto_4
    return-void

    .line 677
    :cond_5
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 678
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 680
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->r()V

    goto :goto_4
.end method

.method static synthetic m(Lcn/domob/wall/core/a/b;)V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->k()V

    return-void
.end method

.method static synthetic n(Lcn/domob/wall/core/a/b;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->m:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private n()Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    const/high16 v3, 0x420c0000

    .line 685
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/wall/core/a/b;->o:Landroid/widget/ImageButton;

    .line 686
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/wall/core/a/b;->k:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/wall/core/a/b;->k:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 688
    iget-object v1, p0, Lcn/domob/wall/core/a/b;->o:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    const-string v0, "a_out.png"

    .line 690
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/wall/core/a/b$3;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/a/b$3;-><init>(Lcn/domob/wall/core/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/wall/core/a/b$4;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/a/b$4;-><init>(Lcn/domob/wall/core/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 712
    const-string v0, "a_out.png"

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->o:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/wall/core/a/b;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .registers 4

    .prologue
    .line 716
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 717
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 718
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 719
    return-void
.end method

.method static synthetic o(Lcn/domob/wall/core/a/b;)V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->m()V

    return-void
.end method

.method static synthetic p(Lcn/domob/wall/core/a/b;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->n:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private p()Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    const/high16 v3, 0x420c0000

    .line 722
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/wall/core/a/b;->p:Landroid/widget/ImageButton;

    .line 723
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/wall/core/a/b;->k:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/wall/core/a/b;->k:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 725
    iget-object v1, p0, Lcn/domob/wall/core/a/b;->p:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    const-string v0, "a_refresh.png"

    .line 727
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->p:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/wall/core/a/b$5;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/a/b$5;-><init>(Lcn/domob/wall/core/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->p:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/wall/core/a/b$6;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/a/b$6;-><init>(Lcn/domob/wall/core/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 751
    const-string v0, "a_refresh.png"

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->p:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/wall/core/a/b;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .registers 2

    .prologue
    .line 755
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    .line 760
    :goto_4
    return-void

    .line 758
    :cond_5
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_4
.end method

.method static synthetic q(Lcn/domob/wall/core/a/b;)V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->o()V

    return-void
.end method

.method static synthetic r(Lcn/domob/wall/core/a/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method private r()V
    .registers 4

    .prologue
    .line 766
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 767
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    const-string v2, "a_preview.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/wall/core/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 774
    :goto_15
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 775
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->n:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    const-string v2, "a_next.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/wall/core/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 781
    :goto_2a
    return-void

    .line 770
    :cond_2b
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    const-string v2, "a_preview_off.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/wall/core/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_15

    .line 778
    :cond_39
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->n:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    const-string v2, "a_next_off.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/wall/core/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2a
.end method

.method static synthetic s(Lcn/domob/wall/core/a/b;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->o:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private s()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 784
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_7
    iget-object v3, p0, Lcn/domob/wall/core/a/b;->r:Landroid/widget/ImageView;

    if-eqz v3, :cond_1d

    :goto_b
    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 785
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 786
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->s:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 788
    :cond_1a
    return-void

    :cond_1b
    move v0, v2

    .line 784
    goto :goto_7

    :cond_1d
    move v1, v2

    goto :goto_b
.end method

.method private t()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 791
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_21

    move v0, v1

    :goto_7
    iget-object v3, p0, Lcn/domob/wall/core/a/b;->r:Landroid/widget/ImageView;

    if-eqz v3, :cond_23

    move v3, v1

    :goto_c
    and-int/2addr v0, v3

    iget-boolean v3, p0, Lcn/domob/wall/core/a/b;->w:Z

    if-nez v3, :cond_25

    :goto_11
    and-int/2addr v0, v1

    if-eqz v0, :cond_20

    .line 792
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 793
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->r:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    :cond_20
    return-void

    :cond_21
    move v0, v2

    .line 791
    goto :goto_7

    :cond_23
    move v3, v2

    goto :goto_c

    :cond_25
    move v1, v2

    goto :goto_11
.end method

.method static synthetic t(Lcn/domob/wall/core/a/b;)V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->q()V

    return-void
.end method

.method static synthetic u(Lcn/domob/wall/core/a/b;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->p:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/app/Dialog;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/high16 v5, 0x42340000

    .line 156
    sget-object v0, Lcn/domob/wall/core/a/b;->b:Lcn/domob/wall/core/h/d;

    const-string v3, "Start to build FS/RFS landingpage"

    invoke-virtual {v0, p0, v3}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/wall/core/a/b;->j:Landroid/widget/RelativeLayout;

    .line 158
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->j:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->j:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->g()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 163
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 165
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 166
    iget-object v3, p0, Lcn/domob/wall/core/a/b;->j:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/domob/wall/core/a/b;->r:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-direct {p0}, Lcn/domob/wall/core/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 169
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    const v4, 0x1030011

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/wall/core/a/b;->g:Landroid/app/Dialog;

    .line 180
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/wall/core/a/b;->k:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 182
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/wall/core/a/b;->k:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 186
    iget-object v3, p0, Lcn/domob/wall/core/a/b;->j:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/domob/wall/core/a/b;->l:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    :goto_6f
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcn/domob/wall/core/a/b;->t:Landroid/view/animation/Animation;

    .line 203
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->t:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 204
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 206
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f000000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 207
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 210
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->g:Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/wall/core/a/b;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->g:Landroid/app/Dialog;

    new-instance v1, Lcn/domob/wall/core/a/b$1;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/a/b$1;-><init>(Lcn/domob/wall/core/a/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 230
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->g:Landroid/app/Dialog;

    return-object v0

    .line 189
    :cond_b8
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcn/domob/wall/core/a/b;->e:Landroid/content/Context;

    const v4, 0x1030010

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/wall/core/a/b;->g:Landroid/app/Dialog;

    .line 191
    iget-object v0, p0, Lcn/domob/wall/core/a/b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/wall/core/a/b;->k:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 193
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/wall/core/a/b;->k:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 196
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 197
    iget-object v3, p0, Lcn/domob/wall/core/a/b;->j:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/domob/wall/core/a/b;->l:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6f
.end method
