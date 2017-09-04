.class public Lcn/dbox/core/a/c;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/core/a/c$d;,
        Lcn/dbox/core/a/c$e;,
        Lcn/dbox/core/a/c$a;,
        Lcn/dbox/core/a/c$c;,
        Lcn/dbox/core/a/c$b;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "url"

.field private static final B:Ljava/lang/String; = "a_banner.png"

.field private static final C:Ljava/lang/String; = "a_exit.png"

.field private static final D:Ljava/lang/String; = "a_exit_on.png"

.field private static final E:Ljava/lang/String; = "a_loading.png"

.field private static final F:Ljava/lang/String; = "a_next_off.png"

.field private static final G:Ljava/lang/String; = "a_next.png"

.field private static final H:Ljava/lang/String; = "a_next_on.png"

.field private static final I:Ljava/lang/String; = "a_out.png"

.field private static final J:Ljava/lang/String; = "a_out_on.png"

.field private static final K:Ljava/lang/String; = "a_preview_off.png"

.field private static final L:Ljava/lang/String; = "a_preview.png"

.field private static final M:Ljava/lang/String; = "a_preview_on.png"

.field private static final N:Ljava/lang/String; = "a_refresh.png"

.field private static final O:Ljava/lang/String; = "a_refresh_on.png"

.field private static final P:I = 0x23

.field private static final Q:I = 0x23

.field private static final R:I = 0x2d

.field private static final S:[Ljava/lang/String;

.field private static f:Lcn/dbox/core/h/d; = null

.field private static final y:Ljava/lang/String; = "close"

.field private static final z:Ljava/lang/String; = "inapp"


# instance fields
.field private T:Z

.field a:Lcn/dbox/core/a/c$e;

.field b:Lcn/dbox/core/bean/a;

.field c:Ljava/lang/String;

.field d:Lcn/dbox/core/bean/d;

.field e:Landroid/webkit/WebView;

.field private g:Landroid/webkit/WebView;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:Lcn/dbox/core/a/c$b;

.field private l:Lcn/dbox/core/a/c$c;

.field private m:Lcn/dbox/core/a/c$a;

.field private n:Landroid/widget/RelativeLayout;

.field private o:F

.field private p:Landroid/view/View;

.field private q:Landroid/widget/ImageButton;

.field private r:Landroid/widget/ImageButton;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/widget/ImageButton;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/view/animation/RotateAnimation;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 53
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/a/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/a/c;->f:Lcn/dbox/core/h/d;

    .line 161
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

    sput-object v0, Lcn/dbox/core/a/c;->S:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/a/c$a;Lcn/dbox/core/bean/d;Z)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 117
    iput-object v0, p0, Lcn/dbox/core/a/c;->h:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    .line 126
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcn/dbox/core/a/c;->o:F

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/dbox/core/a/c;->x:Z

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/dbox/core/a/c;->T:Z

    .line 215
    iput-object p5, p0, Lcn/dbox/core/a/c;->d:Lcn/dbox/core/bean/d;

    .line 216
    iput-boolean p6, p0, Lcn/dbox/core/a/c;->T:Z

    .line 217
    sget-object v0, Lcn/dbox/core/a/c;->f:Lcn/dbox/core/h/d;

    const-string v1, "Initialize LandingPageBuilder"

    invoke-virtual {v0, p0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    .line 219
    iget-object v0, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-static {v0}, Lcn/dbox/core/h/e;->s(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcn/dbox/core/a/c;->o:F

    .line 220
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    .line 221
    iput-object p2, p0, Lcn/dbox/core/a/c;->h:Ljava/lang/String;

    .line 222
    iput-object p3, p0, Lcn/dbox/core/a/c;->j:Ljava/lang/String;

    .line 223
    iput-object p4, p0, Lcn/dbox/core/a/c;->m:Lcn/dbox/core/a/c$a;

    .line 226
    :try_start_36
    invoke-direct {p0}, Lcn/dbox/core/a/c;->e()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/a/c;->p:Landroid/view/View;

    .line 227
    invoke-direct {p0}, Lcn/dbox/core/a/c;->f()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_43

    .line 231
    :goto_3f
    invoke-virtual {p0}, Lcn/dbox/core/a/c;->a()V

    .line 232
    return-void

    .line 228
    :catch_43
    move-exception v0

    .line 229
    sget-object v1, Lcn/dbox/core/a/c;->f:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_3f
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/a/c$b;Lcn/dbox/core/bean/a;Z)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 117
    iput-object v0, p0, Lcn/dbox/core/a/c;->h:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    .line 126
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcn/dbox/core/a/c;->o:F

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/dbox/core/a/c;->x:Z

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/dbox/core/a/c;->T:Z

    .line 169
    iput-object p5, p0, Lcn/dbox/core/a/c;->b:Lcn/dbox/core/bean/a;

    .line 170
    iput-boolean p6, p0, Lcn/dbox/core/a/c;->T:Z

    .line 171
    sget-object v0, Lcn/dbox/core/a/c;->f:Lcn/dbox/core/h/d;

    const-string v1, "Initialize LandingPageBuilder"

    invoke-virtual {v0, p0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iput-object p1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    .line 173
    iget-object v0, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-static {v0}, Lcn/dbox/core/h/e;->s(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcn/dbox/core/a/c;->o:F

    .line 174
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    .line 175
    iput-object p2, p0, Lcn/dbox/core/a/c;->h:Ljava/lang/String;

    .line 176
    iput-object p3, p0, Lcn/dbox/core/a/c;->j:Ljava/lang/String;

    .line 177
    iput-object p4, p0, Lcn/dbox/core/a/c;->k:Lcn/dbox/core/a/c$b;

    .line 180
    :try_start_36
    invoke-direct {p0}, Lcn/dbox/core/a/c;->e()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/a/c;->p:Landroid/view/View;

    .line 181
    invoke-direct {p0}, Lcn/dbox/core/a/c;->f()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_43

    .line 185
    :goto_3f
    invoke-virtual {p0}, Lcn/dbox/core/a/c;->a()V

    .line 186
    return-void

    .line 182
    :catch_43
    move-exception v0

    .line 183
    sget-object v1, Lcn/dbox/core/a/c;->f:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_3f
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/a/c$c;Ljava/lang/String;Z)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 117
    iput-object v0, p0, Lcn/dbox/core/a/c;->h:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    .line 126
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcn/dbox/core/a/c;->o:F

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/dbox/core/a/c;->x:Z

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/dbox/core/a/c;->T:Z

    .line 192
    iput-object p5, p0, Lcn/dbox/core/a/c;->c:Ljava/lang/String;

    .line 193
    iput-boolean p6, p0, Lcn/dbox/core/a/c;->T:Z

    .line 194
    sget-object v0, Lcn/dbox/core/a/c;->f:Lcn/dbox/core/h/d;

    const-string v1, "Initialize LandingPageBuilder"

    invoke-virtual {v0, p0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    .line 196
    iget-object v0, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-static {v0}, Lcn/dbox/core/h/e;->s(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcn/dbox/core/a/c;->o:F

    .line 197
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    .line 198
    iput-object p2, p0, Lcn/dbox/core/a/c;->h:Ljava/lang/String;

    .line 199
    iput-object p3, p0, Lcn/dbox/core/a/c;->j:Ljava/lang/String;

    .line 200
    iput-object p4, p0, Lcn/dbox/core/a/c;->l:Lcn/dbox/core/a/c$c;

    .line 203
    :try_start_36
    invoke-direct {p0}, Lcn/dbox/core/a/c;->e()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/a/c;->p:Landroid/view/View;

    .line 204
    invoke-direct {p0}, Lcn/dbox/core/a/c;->f()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_43

    .line 208
    :goto_3f
    invoke-virtual {p0}, Lcn/dbox/core/a/c;->a()V

    .line 209
    return-void

    .line 205
    :catch_43
    move-exception v0

    .line 206
    sget-object v1, Lcn/dbox/core/a/c;->f:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_3f
.end method

.method static synthetic a(Lcn/dbox/core/a/c;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    .line 461
    const/4 v1, 0x0

    .line 463
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

    .line 471
    :goto_29
    return-object v0

    .line 466
    :catch_2a
    move-exception v0

    .line 467
    sget-object v2, Lcn/dbox/core/a/c;->f:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 468
    sget-object v0, Lcn/dbox/core/a/c;->f:Lcn/dbox/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load source file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_29
.end method

.method static synthetic a(Lcn/dbox/core/a/c;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcn/dbox/core/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;
    .registers 9

    .prologue
    const/4 v5, -0x2

    const/high16 v4, 0x420c0000

    .line 476
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 477
    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcn/dbox/core/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcn/dbox/core/a/c;->o:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcn/dbox/core/a/c;->o:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 481
    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 486
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 487
    return-object v0
.end method

.method static synthetic a(Lcn/dbox/core/a/c;Z)Z
    .registers 2

    .prologue
    .line 52
    iput-boolean p1, p0, Lcn/dbox/core/a/c;->x:Z

    return p1
.end method

.method static synthetic b(Lcn/dbox/core/a/c;)V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/dbox/core/a/c;->r()V

    return-void
.end method

.method static synthetic c()Lcn/dbox/core/h/d;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcn/dbox/core/a/c;->f:Lcn/dbox/core/h/d;

    return-object v0
.end method

.method static synthetic c(Lcn/dbox/core/a/c;)V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/dbox/core/a/c;->s()V

    return-void
.end method

.method static synthetic d(Lcn/dbox/core/a/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/dbox/core/a/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcn/dbox/core/a/c;->S:[Ljava/lang/String;

    return-object v0
.end method

.method private e()Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 257
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 258
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 259
    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    const-string v2, "a_banner.png"

    invoke-direct {p0, v1, v2}, Lcn/dbox/core/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    invoke-direct {p0}, Lcn/dbox/core/a/c;->i()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    invoke-direct {p0}, Lcn/dbox/core/a/c;->k()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    invoke-direct {p0}, Lcn/dbox/core/a/c;->o()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    invoke-direct {p0}, Lcn/dbox/core/a/c;->m()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    iget-boolean v1, p0, Lcn/dbox/core/a/c;->T:Z

    if-eqz v1, :cond_42

    .line 267
    invoke-direct {p0}, Lcn/dbox/core/a/c;->h()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    :cond_42
    return-object v0
.end method

.method static synthetic e(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$b;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/dbox/core/a/c;->k:Lcn/dbox/core/a/c$b;

    return-object v0
.end method

.method static synthetic f(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$c;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/dbox/core/a/c;->l:Lcn/dbox/core/a/c$c;

    return-object v0
.end method

.method private f()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000

    .line 273
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/core/a/c;->v:Landroid/widget/ImageView;

    .line 274
    iget-object v0, p0, Lcn/dbox/core/a/c;->v:Landroid/widget/ImageView;

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

    .line 277
    iget-object v0, p0, Lcn/dbox/core/a/c;->v:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcn/dbox/core/a/c;->w:Landroid/view/animation/RotateAnimation;

    .line 280
    iget-object v0, p0, Lcn/dbox/core/a/c;->w:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 281
    iget-object v0, p0, Lcn/dbox/core/a/c;->w:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 282
    iget-object v0, p0, Lcn/dbox/core/a/c;->w:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 283
    return-void
.end method

.method private g()Landroid/webkit/WebView;
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 287
    invoke-direct {p0}, Lcn/dbox/core/a/c;->r()V

    .line 288
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 291
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 294
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 295
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 297
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 300
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    new-instance v1, Lcn/dbox/core/a/c$1;

    invoke-direct {v1, p0}, Lcn/dbox/core/a/c$1;-><init>(Lcn/dbox/core/a/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 410
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    new-instance v1, Lcn/dbox/core/a/c$d;

    invoke-direct {v1, p0}, Lcn/dbox/core/a/c$d;-><init>(Lcn/dbox/core/a/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 412
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    new-instance v1, Lcn/dbox/core/a/c$5;

    invoke-direct {v1, p0}, Lcn/dbox/core/a/c$5;-><init>(Lcn/dbox/core/a/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 435
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 437
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 438
    iget-object v1, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/dbox/core/a/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic g(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$a;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/dbox/core/a/c;->m:Lcn/dbox/core/a/c$a;

    return-object v0
.end method

.method private h()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    const/high16 v4, 0x420c0000

    .line 594
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/core/a/c;->u:Landroid/widget/ImageButton;

    .line 598
    const-string v0, "a_exit.png"

    .line 599
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/dbox/core/a/c;->o:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcn/dbox/core/a/c;->o:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 601
    iget-object v2, p0, Lcn/dbox/core/a/c;->u:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    iget-object v1, p0, Lcn/dbox/core/a/c;->u:Landroid/widget/ImageButton;

    new-instance v2, Lcn/dbox/core/a/c$6;

    invoke-direct {v2, p0}, Lcn/dbox/core/a/c$6;-><init>(Lcn/dbox/core/a/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    iget-object v1, p0, Lcn/dbox/core/a/c;->u:Landroid/widget/ImageButton;

    new-instance v2, Lcn/dbox/core/a/c$7;

    invoke-direct {v2, p0}, Lcn/dbox/core/a/c$7;-><init>(Lcn/dbox/core/a/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 622
    iget-object v1, p0, Lcn/dbox/core/a/c;->u:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/dbox/core/a/c;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcn/dbox/core/a/c;)V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/dbox/core/a/c;->q()V

    return-void
.end method

.method static synthetic i(Lcn/dbox/core/a/c;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    return-object v0
.end method

.method private i()Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    const/high16 v3, 0x420c0000

    .line 633
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/core/a/c;->q:Landroid/widget/ImageButton;

    .line 634
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/dbox/core/a/c;->o:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/dbox/core/a/c;->o:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 636
    iget-object v1, p0, Lcn/dbox/core/a/c;->q:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 639
    const-string v0, "a_preview.png"

    .line 644
    :goto_27
    iget-object v1, p0, Lcn/dbox/core/a/c;->q:Landroid/widget/ImageButton;

    new-instance v2, Lcn/dbox/core/a/c$8;

    invoke-direct {v2, p0}, Lcn/dbox/core/a/c$8;-><init>(Lcn/dbox/core/a/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    iget-object v1, p0, Lcn/dbox/core/a/c;->q:Landroid/widget/ImageButton;

    new-instance v2, Lcn/dbox/core/a/c$9;

    invoke-direct {v2, p0}, Lcn/dbox/core/a/c$9;-><init>(Lcn/dbox/core/a/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 667
    iget-object v1, p0, Lcn/dbox/core/a/c;->q:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/dbox/core/a/c;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0

    .line 641
    :cond_42
    const-string v0, "a_preview_off.png"

    goto :goto_27
.end method

.method static synthetic j(Lcn/dbox/core/a/c;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/dbox/core/a/c;->u:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private j()V
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    .line 679
    :cond_4
    :goto_4
    return-void

    .line 674
    :cond_5
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 675
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 677
    invoke-direct {p0}, Lcn/dbox/core/a/c;->q()V

    goto :goto_4
.end method

.method private k()Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    const/high16 v3, 0x420c0000

    .line 682
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/core/a/c;->r:Landroid/widget/ImageButton;

    .line 683
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/dbox/core/a/c;->o:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/dbox/core/a/c;->o:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 685
    iget-object v1, p0, Lcn/dbox/core/a/c;->r:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    const-string v0, "a_next_off.png"

    .line 688
    iget-object v0, p0, Lcn/dbox/core/a/c;->r:Landroid/widget/ImageButton;

    new-instance v1, Lcn/dbox/core/a/c$10;

    invoke-direct {v1, p0}, Lcn/dbox/core/a/c$10;-><init>(Lcn/dbox/core/a/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    iget-object v0, p0, Lcn/dbox/core/a/c;->r:Landroid/widget/ImageButton;

    new-instance v1, Lcn/dbox/core/a/c$11;

    invoke-direct {v1, p0}, Lcn/dbox/core/a/c$11;-><init>(Lcn/dbox/core/a/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 708
    const-string v0, "a_next_off.png"

    iget-object v1, p0, Lcn/dbox/core/a/c;->r:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/dbox/core/a/c;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcn/dbox/core/a/c;)V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/dbox/core/a/c;->j()V

    return-void
.end method

.method static synthetic l(Lcn/dbox/core/a/c;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/dbox/core/a/c;->q:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private l()V
    .registers 2

    .prologue
    .line 712
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    .line 720
    :cond_4
    :goto_4
    return-void

    .line 715
    :cond_5
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 716
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 718
    invoke-direct {p0}, Lcn/dbox/core/a/c;->q()V

    goto :goto_4
.end method

.method private m()Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    const/high16 v3, 0x420c0000

    .line 723
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/core/a/c;->s:Landroid/widget/ImageButton;

    .line 724
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/dbox/core/a/c;->o:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/dbox/core/a/c;->o:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 726
    iget-object v1, p0, Lcn/dbox/core/a/c;->s:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    const-string v0, "a_out.png"

    .line 728
    iget-object v0, p0, Lcn/dbox/core/a/c;->s:Landroid/widget/ImageButton;

    new-instance v1, Lcn/dbox/core/a/c$12;

    invoke-direct {v1, p0}, Lcn/dbox/core/a/c$12;-><init>(Lcn/dbox/core/a/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    iget-object v0, p0, Lcn/dbox/core/a/c;->s:Landroid/widget/ImageButton;

    new-instance v1, Lcn/dbox/core/a/c$2;

    invoke-direct {v1, p0}, Lcn/dbox/core/a/c$2;-><init>(Lcn/dbox/core/a/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 750
    const-string v0, "a_out.png"

    iget-object v1, p0, Lcn/dbox/core/a/c;->s:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/dbox/core/a/c;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcn/dbox/core/a/c;)V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/dbox/core/a/c;->l()V

    return-void
.end method

.method static synthetic n(Lcn/dbox/core/a/c;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/dbox/core/a/c;->r:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private n()V
    .registers 4

    .prologue
    .line 754
    iget-object v0, p0, Lcn/dbox/core/a/c;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 755
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 756
    iget-object v0, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 757
    return-void
.end method

.method private o()Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    const/high16 v3, 0x420c0000

    .line 760
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/core/a/c;->t:Landroid/widget/ImageButton;

    .line 761
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/dbox/core/a/c;->o:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/dbox/core/a/c;->o:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 763
    iget-object v1, p0, Lcn/dbox/core/a/c;->t:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    const-string v0, "a_refresh.png"

    .line 765
    iget-object v0, p0, Lcn/dbox/core/a/c;->t:Landroid/widget/ImageButton;

    new-instance v1, Lcn/dbox/core/a/c$3;

    invoke-direct {v1, p0}, Lcn/dbox/core/a/c$3;-><init>(Lcn/dbox/core/a/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    iget-object v0, p0, Lcn/dbox/core/a/c;->t:Landroid/widget/ImageButton;

    new-instance v1, Lcn/dbox/core/a/c$4;

    invoke-direct {v1, p0}, Lcn/dbox/core/a/c$4;-><init>(Lcn/dbox/core/a/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 789
    const-string v0, "a_refresh.png"

    iget-object v1, p0, Lcn/dbox/core/a/c;->t:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/dbox/core/a/c;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcn/dbox/core/a/c;)V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/dbox/core/a/c;->n()V

    return-void
.end method

.method static synthetic p(Lcn/dbox/core/a/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/dbox/core/a/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method private p()V
    .registers 2

    .prologue
    .line 793
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    .line 798
    :goto_4
    return-void

    .line 796
    :cond_5
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_4
.end method

.method static synthetic q(Lcn/dbox/core/a/c;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/dbox/core/a/c;->s:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private q()V
    .registers 4

    .prologue
    .line 804
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 805
    iget-object v0, p0, Lcn/dbox/core/a/c;->q:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    const-string v2, "a_preview.png"

    invoke-direct {p0, v1, v2}, Lcn/dbox/core/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 812
    :goto_15
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 813
    iget-object v0, p0, Lcn/dbox/core/a/c;->r:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    const-string v2, "a_next.png"

    invoke-direct {p0, v1, v2}, Lcn/dbox/core/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 819
    :goto_2a
    return-void

    .line 808
    :cond_2b
    iget-object v0, p0, Lcn/dbox/core/a/c;->q:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    const-string v2, "a_preview_off.png"

    invoke-direct {p0, v1, v2}, Lcn/dbox/core/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_15

    .line 816
    :cond_39
    iget-object v0, p0, Lcn/dbox/core/a/c;->r:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    const-string v2, "a_next_off.png"

    invoke-direct {p0, v1, v2}, Lcn/dbox/core/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2a
.end method

.method private r()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 822
    iget-object v0, p0, Lcn/dbox/core/a/c;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_7
    iget-object v3, p0, Lcn/dbox/core/a/c;->v:Landroid/widget/ImageView;

    if-eqz v3, :cond_1d

    :goto_b
    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 823
    iget-object v0, p0, Lcn/dbox/core/a/c;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 824
    iget-object v0, p0, Lcn/dbox/core/a/c;->v:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/dbox/core/a/c;->w:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 826
    :cond_1a
    return-void

    :cond_1b
    move v0, v2

    .line 822
    goto :goto_7

    :cond_1d
    move v1, v2

    goto :goto_b
.end method

.method static synthetic r(Lcn/dbox/core/a/c;)V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/dbox/core/a/c;->p()V

    return-void
.end method

.method static synthetic s(Lcn/dbox/core/a/c;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/dbox/core/a/c;->t:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private s()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 829
    iget-object v0, p0, Lcn/dbox/core/a/c;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_21

    move v0, v1

    :goto_7
    iget-object v3, p0, Lcn/dbox/core/a/c;->v:Landroid/widget/ImageView;

    if-eqz v3, :cond_23

    move v3, v1

    :goto_c
    and-int/2addr v0, v3

    iget-boolean v3, p0, Lcn/dbox/core/a/c;->x:Z

    if-nez v3, :cond_25

    :goto_11
    and-int/2addr v0, v1

    if-eqz v0, :cond_20

    .line 830
    iget-object v0, p0, Lcn/dbox/core/a/c;->v:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 831
    iget-object v0, p0, Lcn/dbox/core/a/c;->v:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 833
    :cond_20
    return-void

    :cond_21
    move v0, v2

    .line 829
    goto :goto_7

    :cond_23
    move v3, v2

    goto :goto_c

    :cond_25
    move v1, v2

    goto :goto_11
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    const/high16 v2, 0x42340000

    const/4 v3, -0x1

    .line 235
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/dbox/core/a/c;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/core/a/c;->n:Landroid/widget/RelativeLayout;

    .line 236
    iget-object v0, p0, Lcn/dbox/core/a/c;->n:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    invoke-direct {p0}, Lcn/dbox/core/a/c;->g()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/a/c;->e:Landroid/webkit/WebView;

    .line 239
    iget-object v0, p0, Lcn/dbox/core/a/c;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/dbox/core/a/c;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcn/dbox/core/a/c;->o:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 243
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcn/dbox/core/a/c;->o:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 246
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 247
    iget-object v1, p0, Lcn/dbox/core/a/c;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/dbox/core/a/c;->p:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcn/dbox/core/a/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v0, p0, Lcn/dbox/core/a/c;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcn/dbox/core/a/c;->addView(Landroid/view/View;)V

    .line 251
    return-void
.end method

.method public a(Lcn/dbox/core/a/c$e;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcn/dbox/core/a/c;->a:Lcn/dbox/core/a/c$e;

    .line 111
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 446
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_b

    .line 447
    if-eqz p1, :cond_b

    .line 448
    iget-object v0, p0, Lcn/dbox/core/a/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 451
    :cond_b
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Lcn/dbox/core/a/c;->a:Lcn/dbox/core/a/c$e;

    if-eqz v0, :cond_9

    .line 628
    iget-object v0, p0, Lcn/dbox/core/a/c;->a:Lcn/dbox/core/a/c$e;

    invoke-interface {v0}, Lcn/dbox/core/a/c$e;->a()V

    .line 630
    :cond_9
    return-void
.end method
