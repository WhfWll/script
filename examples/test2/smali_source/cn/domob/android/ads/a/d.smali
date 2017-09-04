.class public Lcn/domob/android/ads/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/a/d$a;,
        Lcn/domob/android/ads/a/d$b;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "domob_banner.png"

.field private static final B:Ljava/lang/String; = "domob_exit.png"

.field private static final C:Ljava/lang/String; = "domob_exit_on.png"

.field private static final D:Ljava/lang/String; = "domob_loading.png"

.field private static final E:Ljava/lang/String; = "domob_next_off.png"

.field private static final F:Ljava/lang/String; = "domob_next.png"

.field private static final G:Ljava/lang/String; = "domob_next_on.png"

.field private static final H:Ljava/lang/String; = "domob_out.png"

.field private static final I:Ljava/lang/String; = "domob_out_on.png"

.field private static final J:Ljava/lang/String; = "domob_preview_off.png"

.field private static final K:Ljava/lang/String; = "domob_preview.png"

.field private static final L:Ljava/lang/String; = "domob_preview_on.png"

.field private static final M:Ljava/lang/String; = "domob_refresh.png"

.field private static final N:Ljava/lang/String; = "domob_refresh_on.png"

.field private static final O:I = 0x23

.field private static final P:I = 0x23

.field private static final Q:I = 0x2d

.field private static final R:I = 0x1f4

.field private static final S:[Ljava/lang/String;

.field private static a:Lcn/domob/android/i/f; = null

.field private static final w:Ljava/lang/String; = "domob"

.field private static final x:Ljava/lang/String; = "close"

.field private static final y:Ljava/lang/String; = "inapp"

.field private static final z:Ljava/lang/String; = "url"


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Landroid/app/Dialog;

.field private g:Lcn/domob/android/ads/a/d$b;

.field private h:Landroid/os/Handler;

.field private i:Landroid/widget/RelativeLayout;

.field private j:F

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/view/animation/RotateAnimation;

.field private s:Landroid/view/animation/Animation;

.field private t:Landroid/view/animation/Animation;

.field private u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 50
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/a/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/a/d;->a:Lcn/domob/android/i/f;

    .line 115
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

    sput-object v0, Lcn/domob/android/ads/a/d;->S:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a/d$b;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lcn/domob/android/ads/a/d;->c:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    .line 72
    iput-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->h:Landroid/os/Handler;

    .line 76
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcn/domob/android/ads/a/d;->j:F

    .line 89
    iput-boolean v1, p0, Lcn/domob/android/ads/a/d;->u:Z

    .line 90
    iput-boolean v1, p0, Lcn/domob/android/ads/a/d;->v:Z

    .line 120
    sget-object v0, Lcn/domob/android/ads/a/d;->a:Lcn/domob/android/i/f;

    const-string v1, "Initialize DomobLandingPageBuilder"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    .line 122
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/a/d;->j:F

    .line 123
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    .line 124
    iput-object p2, p0, Lcn/domob/android/ads/a/d;->c:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Lcn/domob/android/ads/a/d;->e:Ljava/lang/String;

    .line 126
    iput-object p4, p0, Lcn/domob/android/ads/a/d;->g:Lcn/domob/android/ads/a/d$b;

    .line 129
    :try_start_3a
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->k:Landroid/view/View;

    .line 130
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->e()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_43} :catch_44

    .line 134
    :goto_43
    return-void

    .line 131
    :catch_44
    move-exception v0

    .line 132
    sget-object v1, Lcn/domob/android/ads/a/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_43
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    .line 404
    const/4 v1, 0x0

    .line 406
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

    .line 413
    :goto_29
    return-object v0

    .line 408
    :catch_2a
    move-exception v0

    .line 409
    sget-object v2, Lcn/domob/android/ads/a/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 410
    sget-object v0, Lcn/domob/android/ads/a/d;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load source file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_29
.end method

.method static synthetic a(Lcn/domob/android/ads/a/d;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/a/d;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;
    .registers 9

    .prologue
    const/4 v5, -0x2

    const/high16 v4, 0x420c0000

    .line 417
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 418
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcn/domob/android/ads/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 420
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 421
    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 426
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    return-object v0
.end method

.method private a(II)Z
    .registers 5

    .prologue
    .line 253
    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 255
    ushr-int v1, p1, v0

    rem-int/lit8 v1, v1, 0x2

    .line 256
    ushr-int v0, p2, v0

    rem-int/lit8 v0, v0, 0x2

    .line 257
    if-ne v1, v0, :cond_16

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static synthetic a(Lcn/domob/android/ads/a/d;Z)Z
    .registers 2

    .prologue
    .line 49
    iput-boolean p1, p0, Lcn/domob/android/ads/a/d;->v:Z

    return p1
.end method

.method static synthetic b(Lcn/domob/android/ads/a/d;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic b()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcn/domob/android/ads/a/d;->a:Lcn/domob/android/i/f;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/a/d;Z)Z
    .registers 2

    .prologue
    .line 49
    iput-boolean p1, p0, Lcn/domob/android/ads/a/d;->u:Z

    return p1
.end method

.method static synthetic c(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/d$b;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->g:Lcn/domob/android/ads/a/d$b;

    return-object v0
.end method

.method static synthetic c()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcn/domob/android/ads/a/d;->S:[Ljava/lang/String;

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
    .line 214
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 215
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 216
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 217
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    const-string v2, "domob_banner.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->j()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->l()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->p()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->n()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->h()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/ads/a/d;)Z
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcn/domob/android/ads/a/d;->u:Z

    return v0
.end method

.method static synthetic e(Lcn/domob/android/ads/a/d;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

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

    .line 228
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    .line 229
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v5, "assets/domob_loading.png"

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->r:Landroid/view/animation/RotateAnimation;

    .line 234
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->r:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 235
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->r:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 236
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->r:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 237
    return-void
.end method

.method static synthetic f(Lcn/domob/android/ads/a/d;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->s()V

    return-void
.end method

.method private f()Z
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1b

    .line 244
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 246
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/d;->a(II)Z

    move-result v0

    .line 249
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

    .line 265
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->s()V

    .line 266
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 269
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 270
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 272
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 273
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 276
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 279
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    new-instance v1, Lcn/domob/android/ads/a/d$7;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$7;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 368
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    new-instance v1, Lcn/domob/android/ads/a/d$a;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$a;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 369
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    new-instance v1, Lcn/domob/android/ads/a/d$8;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$8;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 385
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 387
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 388
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic g(Lcn/domob/android/ads/a/d;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->t()V

    return-void
.end method

.method private h()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    const/high16 v4, 0x420c0000

    .line 507
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->p:Landroid/widget/ImageButton;

    .line 511
    const-string v0, "domob_exit.png"

    .line 512
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 514
    iget-object v2, p0, Lcn/domob/android/ads/a/d;->p:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->p:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/android/ads/a/d$9;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/d$9;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->p:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/android/ads/a/d$10;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/d$10;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 535
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->p:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcn/domob/android/ads/a/d;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x1f4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 539
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->t:Landroid/view/animation/Animation;

    .line 542
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 543
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 545
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->h:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/ads/a/d$11;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$11;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 551
    return-void
.end method

.method static synthetic i(Lcn/domob/android/ads/a/d;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->i()V

    return-void
.end method

.method private j()Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    const/high16 v3, 0x420c0000

    .line 554
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->l:Landroid/widget/ImageButton;

    .line 555
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 557
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->l:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 560
    const-string v0, "domob_preview.png"

    .line 565
    :goto_27
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->l:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/android/ads/a/d$12;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/d$12;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->l:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/android/ads/a/d$13;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/d$13;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 586
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->l:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0

    .line 562
    :cond_42
    const-string v0, "domob_preview_off.png"

    goto :goto_27
.end method

.method static synthetic j(Lcn/domob/android/ads/a/d;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->r()V

    return-void
.end method

.method static synthetic k(Lcn/domob/android/ads/a/d;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->p:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private k()V
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    .line 598
    :cond_4
    :goto_4
    return-void

    .line 593
    :cond_5
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 594
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 596
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->r()V

    goto :goto_4
.end method

.method static synthetic l(Lcn/domob/android/ads/a/d;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method private l()Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    const/high16 v3, 0x420c0000

    .line 601
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->m:Landroid/widget/ImageButton;

    .line 602
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 604
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    const-string v0, "domob_next_off.png"

    .line 607
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/d$14;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$14;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/d$2;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$2;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 627
    const-string v0, "domob_next_off.png"

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->m:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .registers 2

    .prologue
    .line 631
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    .line 639
    :cond_4
    :goto_4
    return-void

    .line 634
    :cond_5
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 635
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 637
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->r()V

    goto :goto_4
.end method

.method static synthetic m(Lcn/domob/android/ads/a/d;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->k()V

    return-void
.end method

.method static synthetic n(Lcn/domob/android/ads/a/d;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->l:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private n()Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    const/high16 v3, 0x420c0000

    .line 642
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->n:Landroid/widget/ImageButton;

    .line 643
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 645
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    const-string v0, "domob_out.png"

    .line 647
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/d$3;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$3;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/d$4;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$4;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 669
    const-string v0, "domob_out.png"

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->n:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .registers 4

    .prologue
    .line 673
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 674
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 675
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 676
    return-void
.end method

.method static synthetic o(Lcn/domob/android/ads/a/d;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->m()V

    return-void
.end method

.method static synthetic p(Lcn/domob/android/ads/a/d;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->m:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private p()Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    const/high16 v3, 0x420c0000

    .line 679
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->o:Landroid/widget/ImageButton;

    .line 680
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 682
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->o:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    const-string v0, "domob_refresh.png"

    .line 684
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/d$5;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$5;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/d$6;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$6;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 708
    const-string v0, "domob_refresh.png"

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->o:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .registers 2

    .prologue
    .line 712
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    .line 717
    :goto_4
    return-void

    .line 715
    :cond_5
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_4
.end method

.method static synthetic q(Lcn/domob/android/ads/a/d;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->o()V

    return-void
.end method

.method static synthetic r(Lcn/domob/android/ads/a/d;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method private r()V
    .registers 4

    .prologue
    .line 723
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 724
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->l:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    const-string v2, "domob_preview.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 730
    :goto_15
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 731
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    const-string v2, "domob_next.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 735
    :goto_2a
    return-void

    .line 726
    :cond_2b
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->l:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    const-string v2, "domob_preview_off.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_15

    .line 733
    :cond_39
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    const-string v2, "domob_next_off.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2a
.end method

.method static synthetic s(Lcn/domob/android/ads/a/d;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->n:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private s()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 738
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_7
    iget-object v3, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    if-eqz v3, :cond_1d

    :goto_b
    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 739
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->r:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 742
    :cond_1a
    return-void

    :cond_1b
    move v0, v2

    .line 738
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

    .line 745
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_21

    move v0, v1

    :goto_7
    iget-object v3, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    if-eqz v3, :cond_23

    move v3, v1

    :goto_c
    and-int/2addr v0, v3

    iget-boolean v3, p0, Lcn/domob/android/ads/a/d;->v:Z

    if-nez v3, :cond_25

    :goto_11
    and-int/2addr v0, v1

    if-eqz v0, :cond_20

    .line 746
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 747
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 749
    :cond_20
    return-void

    :cond_21
    move v0, v2

    .line 745
    goto :goto_7

    :cond_23
    move v3, v2

    goto :goto_c

    :cond_25
    move v1, v2

    goto :goto_11
.end method

.method static synthetic t(Lcn/domob/android/ads/a/d;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->q()V

    return-void
.end method

.method static synthetic u(Lcn/domob/android/ads/a/d;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->o:Landroid/widget/ImageButton;

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

    .line 143
    sget-object v0, Lcn/domob/android/ads/a/d;->a:Lcn/domob/android/i/f;

    const-string v3, "Start to build FS/RFS landingpage"

    invoke-virtual {v0, p0, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    .line 145
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->g()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 150
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 152
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    iget-object v3, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->f()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 156
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    const v4, 0x1030011

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    .line 166
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 167
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    iget-object v3, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/domob/android/ads/a/d;->k:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    :goto_6f
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->s:Landroid/view/animation/Animation;

    .line 184
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->s:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 185
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f000000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 188
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 190
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    new-instance v1, Lcn/domob/android/ads/a/d$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$1;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 210
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    return-object v0

    .line 173
    :cond_b8
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    const v4, 0x1030010

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    .line 174
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 175
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 177
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 178
    iget-object v3, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/domob/android/ads/a/d;->k:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6f
.end method
