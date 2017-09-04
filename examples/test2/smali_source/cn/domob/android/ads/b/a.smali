.class public Lcn/domob/android/ads/b/a;
.super Lcn/domob/android/ads/n;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a/d$b;


# static fields
.field private static g:Lcn/domob/android/i/f; = null

.field private static final m:Ljava/lang/String; = "mraid"

.field private static final n:Ljava/lang/String; = "open"

.field private static final o:Ljava/lang/String; = "expand"


# instance fields
.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Landroid/os/Handler;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/b/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/b/a;->g:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/k;Lcn/domob/android/ads/j;Lcn/domob/android/ads/g;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/n;-><init>(Landroid/content/Context;Lcn/domob/android/ads/k;Lcn/domob/android/ads/j;Lcn/domob/android/ads/g;)V

    .line 35
    iput-boolean v2, p0, Lcn/domob/android/ads/b/a;->h:Z

    .line 36
    iput-boolean v2, p0, Lcn/domob/android/ads/b/a;->i:Z

    .line 37
    iput-boolean v2, p0, Lcn/domob/android/ads/b/a;->j:Z

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/b/a;->k:Landroid/os/Handler;

    .line 40
    iput v2, p0, Lcn/domob/android/ads/b/a;->l:I

    .line 48
    sget-object v0, Lcn/domob/android/ads/b/a;->g:Lcn/domob/android/i/f;

    const-string v1, "New DomobMRAIDAdAdapter instance."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/b/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcn/domob/android/ads/b/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/b/a;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcn/domob/android/ads/b/a;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/android/ads/b/a;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/b/a;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 201
    .line 203
    :try_start_2
    const-string v2, "mraid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 204
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 207
    const-string v2, "mraid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 208
    sget-object v1, Lcn/domob/android/ads/b/a;->g:Lcn/domob/android/i/f;

    const-string v2, "Scheme MRAID"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/b/a;->b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result v0

    .line 268
    :cond_25
    :goto_25
    return v0

    .line 211
    :cond_26
    const-string v2, "http"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "tel:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "voicemail:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "sms:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "mailto:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "geo:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "tel:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 215
    :cond_5e
    sget-object v2, Lcn/domob/android/ads/b/a;->g:Lcn/domob/android/i/f;

    const-string v3, "Handle other phone intents."

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 216
    if-eqz p3, :cond_6a

    .line 217
    invoke-direct {p0}, Lcn/domob/android/ads/b/a;->p()V

    .line 221
    :cond_6a
    const-string v2, "http"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 223
    iget-object v1, p0, Lcn/domob/android/ads/b/a;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/domob/android/i/c;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 224
    if-nez v1, :cond_89

    .line 225
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    :cond_89
    invoke-virtual {p0}, Lcn/domob/android/ads/b/a;->l()V

    .line 229
    iget-object v2, p0, Lcn/domob/android/ads/b/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_91} :catch_92

    goto :goto_25

    .line 263
    :catch_92
    move-exception v1

    .line 264
    sget-object v2, Lcn/domob/android/ads/b/a;->g:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_25

    .line 231
    :cond_99
    :try_start_99
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 232
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a9} :catch_92

    .line 235
    :try_start_a9
    iget-object v3, p0, Lcn/domob/android/ads/b/a;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 237
    invoke-virtual {p0}, Lcn/domob/android/ads/b/a;->l()V
    :try_end_b1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a9 .. :try_end_b1} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b1} :catch_92

    move v0, v1

    .line 242
    goto/16 :goto_25

    .line 238
    :catch_b4
    move-exception v1

    .line 239
    :try_start_b5
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not handle intent with URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Is this intent unsupported on your phone?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 245
    :cond_d7
    sget-object v2, Lcn/domob/android/ads/b/a;->g:Lcn/domob/android/i/f;

    const-string v3, "Handle unknown intents."

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 247
    if-eqz p3, :cond_e3

    .line 248
    invoke-direct {p0}, Lcn/domob/android/ads/b/a;->p()V

    .line 251
    :cond_e3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 252
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_f3} :catch_92

    .line 254
    :try_start_f3
    iget-object v3, p0, Lcn/domob/android/ads/b/a;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 256
    invoke-virtual {p0}, Lcn/domob/android/ads/b/a;->l()V
    :try_end_fb
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f3 .. :try_end_fb} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_fb} :catch_92

    move v0, v1

    .line 261
    goto/16 :goto_25

    .line 257
    :catch_fe
    move-exception v1

    .line 258
    :try_start_ff
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not handle intent with URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Is this intent unsupported on your phone?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_11f} :catch_92

    goto/16 :goto_25
.end method

.method static synthetic a(Lcn/domob/android/ads/b/a;Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .registers 5

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/b/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcn/domob/android/ads/b/a;)Lcn/domob/android/ads/k;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcn/domob/android/ads/b/a;->b:Lcn/domob/android/ads/k;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/b/a;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/b/a;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 357
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/b/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/b/a;->d:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 358
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 359
    iget-object v1, p0, Lcn/domob/android/ads/b/a;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 360
    if-eqz p2, :cond_25

    .line 361
    iput-object p2, v4, Lcn/domob/android/ads/w$c;->h:Ljava/lang/String;

    .line 364
    :cond_25
    iget-object v1, p0, Lcn/domob/android/ads/b/a;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->q()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/w$h;->c:Lcn/domob/android/ads/w$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 366
    return-void
.end method

.method private b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .registers 7

    .prologue
    .line 278
    .line 280
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expand"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 284
    :cond_1c
    invoke-direct {p0}, Lcn/domob/android/ads/b/a;->v()V

    .line 285
    sget-object v0, Lcn/domob/android/ads/b/a;->g:Lcn/domob/android/i/f;

    const-string v1, "do click report for mraid scheme"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lcn/domob/android/ads/b/a;->p()V

    .line 289
    :cond_29
    check-cast p1, Lcn/domob/android/ads/b/m;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/b/m;->a(Ljava/net/URI;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_34

    move-result v0

    .line 295
    :goto_33
    return v0

    .line 290
    :catch_34
    move-exception v0

    .line 291
    sget-object v1, Lcn/domob/android/ads/b/a;->g:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 292
    const/4 v0, 0x0

    goto :goto_33
.end method

.method static synthetic c(Lcn/domob/android/ads/b/a;)Lcn/domob/android/ads/k;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcn/domob/android/ads/b/a;->b:Lcn/domob/android/ads/k;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/ads/b/a;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/b/a;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcn/domob/android/ads/b/a;)V
    .registers 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcn/domob/android/ads/b/a;->g()V

    return-void
.end method

.method static synthetic e(Lcn/domob/android/ads/b/a;)I
    .registers 3

    .prologue
    .line 31
    iget v0, p0, Lcn/domob/android/ads/b/a;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/domob/android/ads/b/a;->l:I

    return v0
.end method

.method static synthetic f(Lcn/domob/android/ads/b/a;)I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcn/domob/android/ads/b/a;->l:I

    return v0
.end method

.method static synthetic g(Lcn/domob/android/ads/b/a;)V
    .registers 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcn/domob/android/ads/b/a;->j()V

    return-void
.end method

.method static synthetic h(Lcn/domob/android/ads/b/a;)V
    .registers 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcn/domob/android/ads/b/a;->j()V

    return-void
.end method

.method static synthetic i(Lcn/domob/android/ads/b/a;)I
    .registers 3

    .prologue
    .line 31
    iget v0, p0, Lcn/domob/android/ads/b/a;->l:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/domob/android/ads/b/a;->l:I

    return v0
.end method

.method static synthetic j(Lcn/domob/android/ads/b/a;)V
    .registers 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcn/domob/android/ads/b/a;->k()V

    return-void
.end method

.method static synthetic n()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcn/domob/android/ads/b/a;->g:Lcn/domob/android/i/f;

    return-object v0
.end method

.method private o()V
    .registers 4

    .prologue
    .line 83
    iget-object v0, p0, Lcn/domob/android/ads/b/a;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcn/domob/android/ads/b/a;->k:Landroid/os/Handler;

    new-instance v2, Lcn/domob/android/ads/b/a$1;

    invoke-direct {v2, p0, v0}, Lcn/domob/android/ads/b/a$1;-><init>(Lcn/domob/android/ads/b/a;Lcn/domob/android/ads/j$c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method private p()V
    .registers 3

    .prologue
    .line 299
    iget-object v0, p0, Lcn/domob/android/ads/b/a;->d:Lcn/domob/android/ads/g;

    iget-object v1, p0, Lcn/domob/android/ads/b/a;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;)V

    .line 300
    invoke-virtual {p0}, Lcn/domob/android/ads/b/a;->h()V

    .line 301
    return-void
.end method

.method private q()Z
    .registers 2

    .prologue
    .line 373
    iget-boolean v0, p0, Lcn/domob/android/ads/b/a;->h:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcn/domob/android/ads/b/a;->j:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcn/domob/android/ads/b/a;->i:Z

    if-nez v0, :cond_e

    .line 374
    const/4 v0, 0x1

    .line 377
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private v()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 384
    iput-boolean v0, p0, Lcn/domob/android/ads/b/a;->h:Z

    .line 385
    iput-boolean v0, p0, Lcn/domob/android/ads/b/a;->i:Z

    .line 386
    iput-boolean v0, p0, Lcn/domob/android/ads/b/a;->j:Z

    .line 387
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 53
    sget-object v0, Lcn/domob/android/ads/b/a;->g:Lcn/domob/android/i/f;

    const-string v1, "Start to load DomobMRAID adapter."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcn/domob/android/ads/b/a;->o()V

    .line 55
    return-void
.end method

.method public a(II)V
    .registers 3

    .prologue
    .line 391
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/webkit/WebView;)V
    .registers 4

    .prologue
    .line 342
    iget-object v0, p0, Lcn/domob/android/ads/b/a;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->B()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 343
    const-string v0, "lp_url"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_11
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 350
    return-void
.end method

.method public a(Ljava/util/HashMap;Ljava/lang/String;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 396
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcn/domob/android/ads/b/a;->f:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcn/domob/android/ads/b/a;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/ads/b/m;

    if-eqz v0, :cond_11

    .line 60
    iget-object v0, p0, Lcn/domob/android/ads/b/a;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->l()V

    .line 62
    :cond_11
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 67
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 71
    sget-object v0, Lcn/domob/android/ads/b/a;->g:Lcn/domob/android/i/f;

    const-string v1, "Destroy Domob MRAID WebViews."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcn/domob/android/ads/b/a;->f:Landroid/view/View;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcn/domob/android/ads/b/a;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/ads/a;

    if-eqz v0, :cond_1b

    .line 73
    iget-object v0, p0, Lcn/domob/android/ads/b/a;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/ads/a;

    invoke-virtual {v0}, Lcn/domob/android/ads/a;->destroy()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/b/a;->f:Landroid/view/View;

    .line 76
    :cond_1b
    return-void
.end method

.method public r()V
    .registers 2

    .prologue
    .line 305
    invoke-direct {p0}, Lcn/domob/android/ads/b/a;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 306
    const-string v0, "load_success"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/b/a;->b(Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/b/a;->h:Z

    .line 309
    :cond_e
    return-void
.end method

.method public s()V
    .registers 2

    .prologue
    .line 313
    invoke-direct {p0}, Lcn/domob/android/ads/b/a;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 314
    const-string v0, "load_failed"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/b/a;->b(Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/b/a;->j:Z

    .line 317
    :cond_e
    return-void
.end method

.method public t()V
    .registers 2

    .prologue
    .line 321
    invoke-direct {p0}, Lcn/domob/android/ads/b/a;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 322
    const-string v0, "load_cancel"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/b/a;->b(Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/b/a;->i:Z

    .line 325
    :cond_e
    return-void
.end method

.method public u()V
    .registers 4

    .prologue
    .line 331
    iget v0, p0, Lcn/domob/android/ads/b/a;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/domob/android/ads/b/a;->l:I

    .line 333
    sget-object v0, Lcn/domob/android/ads/b/a;->g:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserClosed mOverlayCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/b/a;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 334
    iget v0, p0, Lcn/domob/android/ads/b/a;->l:I

    if-nez v0, :cond_27

    .line 335
    invoke-virtual {p0}, Lcn/domob/android/ads/b/a;->k()V

    .line 337
    :cond_27
    const-string v0, "close_lp"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/b/a;->b(Ljava/lang/String;)V

    .line 338
    return-void
.end method
