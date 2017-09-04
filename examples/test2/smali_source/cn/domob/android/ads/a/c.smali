.class public Lcn/domob/android/ads/a/c;
.super Lcn/domob/android/ads/n;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a/a$a;
.implements Lcn/domob/android/ads/a/d$b;
.implements Lcn/domob/android/ads/e$a;
.implements Lcn/domob/android/ads/q$a;


# static fields
.field private static final A:Ljava/lang/String; = "rt"

.field private static final B:Ljava/lang/String; = "pattern"

.field private static final C:Ljava/lang/String; = "url"

.field private static final D:Ljava/lang/String; = "clk"

.field private static final E:Ljava/lang/String; = "imp"

.field private static final F:Ljava/lang/String; = "event"

.field private static final G:Ljava/lang/String; = "visit"

.field private static final H:Ljava/lang/String; = "url"

.field private static final I:Ljava/lang/String; = "phase"

.field private static final J:Ljava/lang/String; = "wtai://wp/mc;"

.field private static final K:Ljava/lang/String; = "banner"

.field private static final L:Ljava/lang/String; = "expandable"

.field private static final M:Ljava/lang/String; = "tc"

.field public static final h:Ljava/lang/String; = "domob"

.field public static final i:Ljava/lang/String; = "cache"

.field public static final j:Ljava/lang/String; = "groupID"

.field public static final k:Ljava/lang/String; = "resourceID"

.field public static final l:Ljava/lang/String; = "downloadUrl"

.field private static m:Lcn/domob/android/i/f; = null

.field private static final s:Ljava/lang/String; = "report"

.field private static final t:Ljava/lang/String; = "custom"

.field private static final u:Ljava/lang/String; = "expand"

.field private static final v:Ljava/lang/String; = "close"

.field private static final w:Ljava/lang/String; = "form"

.field private static final x:Ljava/lang/String; = "fetch"

.field private static final y:Ljava/lang/String; = "url"

.field private static final z:Ljava/lang/String; = "name"


# instance fields
.field private N:Lcn/domob/android/f/g;

.field protected g:Landroid/os/Handler;

.field private n:Lcn/domob/android/ads/a/e;

.field private o:Lcn/domob/android/ads/v$a;

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 61
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/a/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/k;Lcn/domob/android/ads/j;Lcn/domob/android/ads/g;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/n;-><init>(Landroid/content/Context;Lcn/domob/android/ads/k;Lcn/domob/android/ads/j;Lcn/domob/android/ads/g;)V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/c;->g:Landroid/os/Handler;

    .line 68
    iput-boolean v2, p0, Lcn/domob/android/ads/a/c;->p:Z

    .line 69
    iput-boolean v2, p0, Lcn/domob/android/ads/a/c;->q:Z

    .line 70
    iput-boolean v2, p0, Lcn/domob/android/ads/a/c;->r:Z

    .line 103
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v1, "New DomobHTMLAdAdapter instance."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/a/c;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/a/c;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/a/e;)Lcn/domob/android/ads/a/e;
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/a/e;

    return-object p1
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1036
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 1042
    :goto_4
    return-object v0

    .line 1039
    :catch_5
    move-exception v0

    .line 1040
    sget-object v1, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 1042
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private a(Landroid/net/Uri;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 705
    const-string v0, "tc"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    if-eqz v0, :cond_10

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 707
    :cond_10
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->p()V

    .line 709
    :cond_13
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/a/e;Lcn/domob/android/ads/j$c$a;Z)V
    .registers 4

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/e;Lcn/domob/android/ads/j$c$a;Z)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/j$c$a;)V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/j$c$a;)V

    return-void
.end method

.method private a(Lcn/domob/android/ads/a/e;Lcn/domob/android/ads/j$c$a;Z)V
    .registers 10

    .prologue
    .line 243
    invoke-virtual {p2}, Lcn/domob/android/ads/j$c$a;->h()I

    move-result v0

    .line 244
    if-gez v0, :cond_4d

    .line 245
    const/4 v0, 0x5

    .line 249
    :cond_7
    :goto_7
    sget-object v1, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expandable timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1, v0}, Lcn/domob/android/ads/a/e;->a(I)V

    .line 253
    if-eqz p3, :cond_2c

    .line 254
    new-instance v0, Lcn/domob/android/ads/a/c$2;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/a/c$2;-><init>(Lcn/domob/android/ads/a/c;)V

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/a/e;->a(Lcn/domob/android/ads/a$b;)V

    .line 288
    :cond_2c
    new-instance v0, Lcn/domob/android/ads/a/c$3;

    invoke-direct {v0, p0, p1}, Lcn/domob/android/ads/a/c$3;-><init>(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/a/e;)V

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/a/e;->a(Lcn/domob/android/ads/a$a;)V

    .line 307
    invoke-virtual {p2}, Lcn/domob/android/ads/j$c$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 309
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v1, "Content type of expandable is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v1, "Content type of expandable is null or empty."

    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    .line 329
    :cond_4c
    :goto_4c
    return-void

    .line 246
    :cond_4d
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/g;

    invoke-virtual {v1}, Lcn/domob/android/ads/g;->y()I

    move-result v1

    if-le v0, v1, :cond_7

    .line 247
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->y()I

    move-result v0

    goto :goto_7

    .line 314
    :cond_5c
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 315
    invoke-virtual {p2}, Lcn/domob/android/ads/j$c$a;->c()Ljava/lang/String;

    move-result-object v0

    .line 316
    sget-object v1, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get an DomobWebView instance for EXPANDABLE and load with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 318
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcn/domob/android/ads/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 319
    :cond_85
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 321
    invoke-virtual {p2}, Lcn/domob/android/ads/j$c$a;->d()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p2}, Lcn/domob/android/ads/j$c$a;->e()Ljava/lang/String;

    move-result-object v1

    .line 323
    sget-object v2, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v3, "Get an DomobWebView instance for EXPANDABLE and load data = [%s] with base URL=[%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1, v0, v1}, Lcn/domob/android/ads/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c
.end method

.method private a(Lcn/domob/android/ads/j$c$a;)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 335
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v2, "Show expandable part of current creative."

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/a/e;

    if-eqz v0, :cond_82

    .line 339
    invoke-virtual {p1}, Lcn/domob/android/ads/j$c$a;->k()I

    move-result v0

    if-eq v0, v1, :cond_8a

    .line 340
    invoke-virtual {p1}, Lcn/domob/android/ads/j$c$a;->k()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 343
    :goto_21
    invoke-virtual {p1}, Lcn/domob/android/ads/j$c$a;->l()I

    move-result v2

    if-eq v2, v1, :cond_34

    .line 344
    invoke-virtual {p1}, Lcn/domob/android/ads/j$c$a;->l()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 347
    :cond_34
    sget-object v2, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v3, "Expandable size is: %d * %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 350
    new-instance v2, Lcn/domob/android/ads/v$a;

    iget-object v3, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/domob/android/ads/v$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1}, Lcn/domob/android/ads/v$a;->a(II)Lcn/domob/android/ads/v$a;

    move-result-object v0

    invoke-virtual {v0, v6, v6, v6, v7}, Lcn/domob/android/ads/v$a;->a(ZZZZ)Lcn/domob/android/ads/v$a;

    move-result-object v0

    invoke-virtual {p1}, Lcn/domob/android/ads/j$c$a;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/v$a;->a(Z)Lcn/domob/android/ads/v$a;

    move-result-object v0

    new-instance v1, Lcn/domob/android/ads/a/c$4;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/c$4;-><init>(Lcn/domob/android/ads/a/c;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/v$a;->a(Lcn/domob/android/ads/v$d;)Lcn/domob/android/ads/v$a;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/a/c;->o:Lcn/domob/android/ads/v$a;

    .line 369
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->o:Lcn/domob/android/ads/v$a;

    iget-object v1, p0, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/a/e;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/v$a;->a(Landroid/view/View;)V

    .line 371
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/a/e;

    const-string v1, "javascript:(window.domobjs && window.domobjs.onViewable) ? domobjs.onViewable() : null"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a/e;->loadUrl(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->j()V

    .line 377
    :goto_81
    return-void

    .line 375
    :cond_82
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v1, "Expandable part is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_81

    :cond_8a
    move v0, v1

    goto :goto_21
.end method

.method private a(Ljava/lang/String;Lcn/domob/android/ads/q;)V
    .registers 9

    .prologue
    .line 944
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 946
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 947
    invoke-virtual {p2}, Lcn/domob/android/ads/q;->a()Lcn/domob/android/ads/j;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 949
    invoke-virtual {p2}, Lcn/domob/android/ads/q;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->d:Ljava/lang/String;

    .line 950
    invoke-virtual {p2}, Lcn/domob/android/ads/q;->d()I

    move-result v1

    iput v1, v4, Lcn/domob/android/ads/w$c;->e:I

    .line 951
    invoke-virtual {p2}, Lcn/domob/android/ads/q;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->f:Ljava/lang/String;

    .line 952
    invoke-virtual {p2}, Lcn/domob/android/ads/q;->a()Lcn/domob/android/ads/j;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->q()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/w$h;->b:Lcn/domob/android/ads/w$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 955
    return-void
.end method

.method private b(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 12

    .prologue
    .line 980
    if-eqz p1, :cond_10d

    .line 981
    const-string v0, "url"

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 983
    if-eqz v5, :cond_12

    const-string v0, "domob"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1029
    :cond_12
    :goto_12
    return-object p1

    .line 986
    :cond_13
    const-string v0, "auto_run"

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e2

    const/4 v0, 0x0

    move v3, v0

    .line 990
    :goto_1d
    const-string v0, "name"

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 992
    const-string v0, "pkg"

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 994
    const-string v0, "vc"

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f3

    const/4 v0, 0x1

    move v4, v0

    .line 998
    :goto_33
    const-string v0, "vn"

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1000
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    const-string v1, "cache"

    invoke-virtual {p0, v0, v5, v1}, Lcn/domob/android/ads/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 1002
    const-string v0, "groupID"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1003
    const-string v1, "resourceID"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1004
    const-string v9, "downloadUrl"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1005
    iget-object v9, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-static {v9, v0, v1}, La/a/a/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/g;

    move-result-object v0

    .line 1007
    if-eqz v0, :cond_104

    invoke-virtual {v0}, La/a/a/a/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_104

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alreadyDownload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, La/a/a/a/a/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1015
    :cond_82
    :goto_82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1016
    const-string v1, "url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    const-string v1, "auto_run"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    const-string v1, "name"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-string v1, "pkg"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-string v1, "vc"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    const-string v1, "vn"

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    invoke-static {v0}, Lcn/domob/android/i/h;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domob://download/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1026
    sget-object v1, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 1027
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto/16 :goto_12

    .line 986
    :cond_e2
    const-string v0, "auto_run"

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v3, v0

    goto/16 :goto_1d

    .line 994
    :cond_f3
    const-string v0, "vc"

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    goto/16 :goto_33

    .line 1012
    :cond_104
    invoke-static {v2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    move-object v2, v5

    goto/16 :goto_82

    .line 1029
    :cond_10d
    const/4 p1, 0x0

    goto/16 :goto_12
.end method

.method static synthetic b(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/k;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->b:Lcn/domob/android/ads/k;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 810
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 814
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 816
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 817
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 818
    if-eqz p2, :cond_25

    .line 819
    iput-object p2, v4, Lcn/domob/android/ads/w$c;->h:Ljava/lang/String;

    .line 822
    :cond_25
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->q()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/w$h;->c:Lcn/domob/android/ads/w$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 825
    return-void
.end method

.method static synthetic c(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/k;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->b:Lcn/domob/android/ads/k;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 871
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 873
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 874
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 875
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->q()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/w$h;->h:Lcn/domob/android/ads/w$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 878
    return-void
.end method

.method static synthetic d(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/g;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/g;

    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/j;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    return-object v0
.end method

.method static synthetic f(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/j;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    return-object v0
.end method

.method static synthetic g(Lcn/domob/android/ads/a/c;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/a/e;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/a/e;

    return-object v0
.end method

.method static synthetic i(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/g;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/g;

    return-object v0
.end method

.method static synthetic j(Lcn/domob/android/ads/a/c;)V
    .registers 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->g()V

    return-void
.end method

.method static synthetic k(Lcn/domob/android/ads/a/c;)V
    .registers 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->g()V

    return-void
.end method

.method static synthetic l(Lcn/domob/android/ads/a/c;)V
    .registers 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->g()V

    return-void
.end method

.method static synthetic m(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/j;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    return-object v0
.end method

.method static synthetic n(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/j;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    return-object v0
.end method

.method private n()V
    .registers 4

    .prologue
    .line 148
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->g:Landroid/os/Handler;

    new-instance v2, Lcn/domob/android/ads/a/c$1;

    invoke-direct {v2, p0, v0}, Lcn/domob/android/ads/a/c$1;-><init>(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/j$c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method

.method private o()V
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->o:Lcn/domob/android/ads/v$a;

    if-eqz v0, :cond_9

    .line 381
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->o:Lcn/domob/android/ads/v$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/v$a;->a()V

    .line 383
    :cond_9
    return-void
.end method

.method static synthetic o(Lcn/domob/android/ads/a/c;)V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->o()V

    return-void
.end method

.method private p()V
    .registers 3

    .prologue
    .line 699
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/g;

    iget-object v1, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;)V

    .line 701
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->h()V

    .line 702
    return-void
.end method

.method static synthetic p(Lcn/domob/android/ads/a/c;)V
    .registers 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->k()V

    return-void
.end method

.method static synthetic q(Lcn/domob/android/ads/a/c;)V
    .registers 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->j()V

    return-void
.end method

.method private q()Z
    .registers 2

    .prologue
    .line 832
    iget-boolean v0, p0, Lcn/domob/android/ads/a/c;->p:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcn/domob/android/ads/a/c;->r:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcn/domob/android/ads/a/c;->q:Z

    if-nez v0, :cond_e

    .line 833
    const/4 v0, 0x1

    .line 836
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic r(Lcn/domob/android/ads/a/c;)V
    .registers 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->k()V

    return-void
.end method

.method static synthetic s(Lcn/domob/android/ads/a/c;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic v()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    return-object v0
.end method

.method private w()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 843
    iput-boolean v0, p0, Lcn/domob/android/ads/a/c;->p:Z

    .line 844
    iput-boolean v0, p0, Lcn/domob/android/ads/a/c;->q:Z

    .line 845
    iput-boolean v0, p0, Lcn/domob/android/ads/a/c;->r:Z

    .line 846
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 959
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 960
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    .line 976
    :cond_d
    :goto_d
    return-object v0

    .line 963
    :cond_e
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 964
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 965
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 967
    if-eqz v2, :cond_d

    const-string v4, "domob"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v3, :cond_d

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 969
    const-string v2, "rgid"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 970
    const-string v3, "rid"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 971
    const-string v4, "url"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 972
    const-string v4, "groupID"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    const-string v2, "resourceID"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    const-string v2, "downloadUrl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method

.method public a()V
    .registers 3

    .prologue
    .line 109
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v1, "Start to load DomobHTML adapter."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->n()V

    .line 111
    return-void
.end method

.method public a(II)V
    .registers 3

    .prologue
    .line 1051
    return-void
.end method

.method public a(Lcn/domob/android/ads/q;)V
    .registers 3

    .prologue
    .line 934
    const-string v0, "install_success"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Lcn/domob/android/ads/q;)V

    .line 935
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/webkit/WebView;)V
    .registers 6

    .prologue
    .line 752
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->B()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 753
    const-string v0, "lp_url"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_11
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 758
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 759
    invoke-static {v1}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 774
    :cond_23
    :goto_23
    return-void

    .line 764
    :cond_24
    const-string v2, "domob"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_3a
    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 768
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47

    goto :goto_23

    .line 770
    :catch_47
    move-exception v0

    .line 771
    sget-object v1, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v2, "Error while parsing landingpage URL."

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 772
    sget-object v1, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_23
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 780
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v1, "LandingPage \u5185\u4e0b\u8f7d\uff0c\u5730\u5740\u4e3a%s\uff0cinfoURL\u4e3a%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 785
    if-eqz p2, :cond_52

    :try_start_16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_52

    .line 786
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 787
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 788
    invoke-static {v0}, Lcn/domob/android/i/h;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 790
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 791
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    :cond_35
    invoke-static {v0}, Lcn/domob/android/i/h;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domob://download?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 801
    :goto_4c
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcn/domob/android/ads/a/c;->b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    .line 807
    :goto_51
    return-void

    .line 797
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domob://download?url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_6a} :catch_6c

    move-result-object v0

    goto :goto_4c

    .line 802
    :catch_6c
    move-exception v0

    .line 803
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v1, "\u89e3\u6790LandingPage\u4e2d\u4e0b\u8f7d\u51fa\u73b0\u9519\u8bef\uff0c\u5730\u5740\u4e3a%s\uff0cinfoURL\u4e3a%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_51
.end method

.method public a(Ljava/util/HashMap;Ljava/lang/String;J)V
    .registers 16
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
    .line 1056
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/g;

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    const-string v5, "s"

    const/4 v8, 0x0

    iget-object v9, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    invoke-virtual/range {v1 .. v9}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/view/View;)V

    .line 1058
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 396
    :try_start_1
    const-string v1, "domob"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 397
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 399
    const-string v2, "domob"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 400
    sget-object v1, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v2, "Scheme domob action."

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0, p1, p2, p3}, Lcn/domob/android/ads/a/c;->b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result v0

    .line 477
    :goto_24
    return v0

    .line 403
    :cond_25
    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "voicemail:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "sms:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "mailto:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "geo:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "wtai://wp/mc;"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 408
    :cond_5d
    sget-object v1, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v2, "Handle other phone intents."

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 409
    if-eqz p3, :cond_69

    .line 410
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->p()V

    .line 414
    :cond_69
    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 416
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/domob/android/i/c;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 419
    if-nez v1, :cond_88

    .line 420
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 424
    :cond_88
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->l()V

    .line 425
    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 477
    :cond_90
    :goto_90
    const/4 v0, 0x1

    goto :goto_24

    .line 427
    :cond_92
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 429
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 431
    const-string v2, "wtai://wp/mc;"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 432
    sget-object v1, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v2, "Create intent for: wtai://wp/mc;"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 434
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wtai://wp/mc;"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d9} :catch_105

    .line 441
    :cond_d9
    :try_start_d9
    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 442
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->l()V
    :try_end_e1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d9 .. :try_end_e1} :catch_e2
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_e1} :catch_105

    goto :goto_90

    .line 443
    :catch_e2
    move-exception v1

    .line 444
    :try_start_e3
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
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_103} :catch_105

    goto/16 :goto_24

    .line 471
    :catch_105
    move-exception v1

    .line 472
    sget-object v2, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v3, "Exception in click."

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 473
    sget-object v2, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 452
    :cond_114
    :try_start_114
    sget-object v1, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v2, "Handle unknown intents."

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->l()V

    .line 455
    if-eqz p3, :cond_123

    .line 456
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->p()V

    .line 459
    :cond_123
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 460
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_133} :catch_105

    .line 462
    :try_start_133
    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 463
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->l()V
    :try_end_13b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_133 .. :try_end_13b} :catch_13d
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_13b} :catch_105

    goto/16 :goto_90

    .line 464
    :catch_13d
    move-exception v1

    .line 465
    :try_start_13e
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
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_15e} :catch_105

    goto/16 :goto_90
.end method

.method public a_()V
    .registers 2

    .prologue
    .line 851
    const-string v0, "la_success"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->c(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->l()V

    .line 853
    return-void
.end method

.method public a_(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 863
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcn/domob/android/ads/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 864
    const-string v0, "la_failsafe_success"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->c(Ljava/lang/String;)V

    .line 868
    :goto_d
    return-void

    .line 866
    :cond_e
    const-string v0, "la_failsafe_failed"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->c(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public b(Lcn/domob/android/ads/q;)V
    .registers 3

    .prologue
    .line 939
    const-string v0, "run"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Lcn/domob/android/ads/q;)V

    .line 940
    return-void
.end method

.method protected b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 492
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 496
    const-string v1, "inapp"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 497
    if-eqz p3, :cond_15

    .line 498
    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;)V

    .line 501
    :cond_15
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open landing page with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->i()Landroid/content/Context;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_52

    .line 506
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->w()V

    .line 507
    new-instance v2, Lcn/domob/android/ads/a/d;

    invoke-direct {v2, v0, v1, p2, p0}, Lcn/domob/android/ads/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a/d$b;)V

    invoke-virtual {v2}, Lcn/domob/android/ads/a/d;->a()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 509
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/a/c$5;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/c$5;-><init>(Lcn/domob/android/ads/a/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 694
    :cond_52
    :goto_52
    invoke-virtual {p0, v9}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;)V

    .line 695
    const/4 v0, 0x1

    :goto_56
    return v0

    .line 516
    :cond_57
    const-string v1, "download"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 517
    if-eqz p3, :cond_64

    .line 518
    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;)V

    .line 521
    :cond_64
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_52

    .line 525
    new-instance v2, Lcn/domob/android/ads/q;

    iget-object v3, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    invoke-direct {v2, v3, v0, v4, p0}, Lcn/domob/android/ads/q;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/android/ads/j;Lcn/domob/android/ads/q$a;)V

    .line 527
    invoke-virtual {v2}, Lcn/domob/android/ads/q;->i()V

    .line 528
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download app with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_52

    .line 530
    :cond_95
    const-string v1, "launch"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 531
    if-eqz p3, :cond_a2

    .line 532
    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;)V

    .line 535
    :cond_a2
    new-instance v1, Lcn/domob/android/ads/a/a;

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p0}, Lcn/domob/android/ads/a/a;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/android/ads/a/a$a;)V

    invoke-virtual {v1}, Lcn/domob/android/ads/a/a;->a()V

    goto :goto_52

    .line 536
    :cond_ad
    const-string v1, "expand"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 537
    if-eqz p3, :cond_ba

    .line 538
    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;)V

    .line 541
    :cond_ba
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->n()Lcn/domob/android/ads/j$c$a;

    move-result-object v0

    if-eqz v0, :cond_139

    .line 542
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expandable part url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v2}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j$c;->n()Lcn/domob/android/ads/j$c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j$c$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 545
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expandable part base and content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v2}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j$c;->n()Lcn/domob/android/ads/j$c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j$c$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v2}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j$c;->n()Lcn/domob/android/ads/j$c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j$c$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->n()Lcn/domob/android/ads/j$c$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/j$c$a;)V

    goto/16 :goto_52

    .line 555
    :cond_139
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v1, "\u5e7f\u544a\u5e94\u7b54\u65e0Expandable\u90e8\u5206\uff0c\u65e0\u6cd5\u8fdb\u884cexpand action\u3002"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 556
    const/4 v0, 0x0

    goto/16 :goto_56

    .line 558
    :cond_143
    const-string v1, "report"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23c

    .line 562
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 563
    if-eqz v1, :cond_15a

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_164

    .line 564
    :cond_15a
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v1, "There is no report type."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x0

    goto/16 :goto_56

    .line 567
    :cond_164
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 568
    const-string v2, "imp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19f

    .line 569
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-static {v0}, Lcn/domob/android/i/h;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 572
    const-string v4, "s"

    .line 573
    const-string v0, "phase"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    .line 574
    const-string v0, "phase"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    const-string v1, "phase"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    .line 577
    :cond_191
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/g;

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    const-string v5, "ac"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_52

    .line 579
    :cond_19f
    const-string v2, "event"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fb

    .line 580
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-static {v0}, Lcn/domob/android/i/h;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 583
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->q()Ljava/lang/String;

    move-result-object v1

    .line 585
    const-string v0, "url"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cf

    .line 586
    const-string v0, "url"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 587
    const-string v1, "url"

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 590
    :cond_1cf
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/g;

    invoke-virtual {v3}, Lcn/domob/android/ads/g;->n()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 592
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 593
    iget-object v2, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v2}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j$c;->r()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 595
    const-string v2, "ac"

    iput-object v2, v4, Lcn/domob/android/ads/w$c;->b:Ljava/lang/String;

    .line 597
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    goto/16 :goto_52

    .line 598
    :cond_1fb
    const-string v2, "clk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_219

    .line 599
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 600
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/g;

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/j;

    invoke-static {v0}, Lcn/domob/android/i/h;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "ac"

    invoke-virtual {v1, v2, v0, v3}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->h()V

    goto/16 :goto_52

    .line 604
    :cond_219
    const-string v2, "visit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_233

    .line 606
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-static {}, Lcn/domob/android/f/c;->a()Lcn/domob/android/f/c;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcn/domob/android/f/c;->a(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/f/g;)V

    goto/16 :goto_52

    .line 609
    :cond_233
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v1, "Unknown reprot type."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto/16 :goto_52

    .line 611
    :cond_23c
    const-string v1, "close"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_249

    .line 612
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->m()V

    goto/16 :goto_52

    .line 613
    :cond_249
    const-string v1, "custom"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 615
    const-string v1, "form"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28e

    .line 616
    if-eqz p3, :cond_25e

    .line 617
    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;)V

    .line 620
    :cond_25e
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/i/h;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 622
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 623
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 624
    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    const-class v3, Lcn/domob/android/ads/DomobActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 625
    const-string v2, "DomobActivityType"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 627
    const-string v2, "webview_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_52

    .line 630
    :cond_28e
    const-string v1, "fetch"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2cd

    .line 631
    if-eqz p3, :cond_29b

    .line 632
    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;)V

    .line 635
    :cond_29b
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/i/h;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 637
    const-string v0, "url"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 638
    const-string v1, "name"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 639
    const-string v3, "rt"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 640
    const/4 v3, 0x1

    .line 641
    invoke-static {v2}, Lcn/domob/android/i/h;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_384

    .line 642
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 644
    :goto_2c6
    iget-object v3, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcn/domob/android/ads/q;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    goto/16 :goto_52

    .line 646
    :cond_2cd
    const-string v1, "vibrate"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33d

    .line 652
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/b/a;->F(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2e7

    .line 653
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v1, "Vibration function can not be achieved, because there is no authority or device does not support"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 654
    const/4 v0, 0x0

    goto/16 :goto_56

    .line 656
    :cond_2e7
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/i/h;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 658
    const-string v1, "pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 659
    if-eqz v0, :cond_334

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_334

    .line 660
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 661
    array-length v0, v1

    new-array v2, v0, [J

    .line 663
    const/4 v0, 0x0

    :goto_30b
    :try_start_30b
    array-length v3, v1

    if-ge v0, v3, :cond_319

    .line 664
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_30b

    .line 667
    :cond_319
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 669
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_327
    .catch Ljava/lang/Exception; {:try_start_30b .. :try_end_327} :catch_329

    goto/16 :goto_52

    .line 670
    :catch_329
    move-exception v0

    .line 671
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v1, "action vibrate, parse data error or other"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 672
    const/4 v0, 0x0

    goto/16 :goto_56

    .line 675
    :cond_334
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v1, "action vibrate, pattern is empty"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto/16 :goto_52

    .line 677
    :cond_33d
    const-string v1, "video"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_354

    .line 678
    if-eqz p3, :cond_34a

    .line 679
    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/net/Uri;)V

    .line 681
    :cond_34a
    new-instance v0, Lcn/domob/android/ads/E;

    invoke-direct {v0, p0, p2}, Lcn/domob/android/ads/E;-><init>(Lcn/domob/android/ads/a/c;Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0}, Lcn/domob/android/ads/E;->a()V

    goto/16 :goto_52

    .line 684
    :cond_354
    const-string v0, "loadSuccess"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_369

    .line 686
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->G()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 687
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->g()V

    goto/16 :goto_52

    .line 690
    :cond_369
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle unknown action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 691
    const/4 v0, 0x0

    goto/16 :goto_56

    :cond_384
    move v2, v3

    goto/16 :goto_2c6
.end method

.method public b_()V
    .registers 2

    .prologue
    .line 857
    const-string v0, "la_failed"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->c(Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method public c(Lcn/domob/android/ads/q;)V
    .registers 3

    .prologue
    .line 883
    const-string v0, "download_finish"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Lcn/domob/android/ads/q;)V

    .line 884
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/ads/a;

    if-eqz v0, :cond_13

    .line 116
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/ads/a;

    const-string v1, "javascript:(window.domobjs && window.domobjs.onViewable) ? domobjs.onViewable() : null"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a;->loadUrl(Ljava/lang/String;)V

    .line 119
    :cond_13
    return-void
.end method

.method public d(Lcn/domob/android/ads/q;)V
    .registers 3

    .prologue
    .line 888
    const-string v0, "download_failed"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Lcn/domob/android/ads/q;)V

    .line 889
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/ads/a;

    if-eqz v0, :cond_13

    .line 124
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/ads/a;

    const-string v1, "javascript:(window.domobjs && window.domobjs.onDismiss) ? domobjs.onDismiss() : null"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a;->loadUrl(Ljava/lang/String;)V

    .line 127
    :cond_13
    return-void
.end method

.method public e(Lcn/domob/android/ads/q;)V
    .registers 3

    .prologue
    .line 893
    const-string v0, "download_start"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Lcn/domob/android/ads/q;)V

    .line 894
    return-void
.end method

.method public f()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 131
    sget-object v0, Lcn/domob/android/ads/a/c;->m:Lcn/domob/android/i/f;

    const-string v1, "Destroy DomobWebViews."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/ads/a;

    if-eqz v0, :cond_1b

    .line 133
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/ads/a;

    invoke-virtual {v0}, Lcn/domob/android/ads/a;->destroy()V

    .line 134
    iput-object v2, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    .line 137
    :cond_1b
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/a/e;

    if-eqz v0, :cond_26

    .line 138
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/a/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/a/e;->destroy()V

    .line 139
    iput-object v2, p0, Lcn/domob/android/ads/a/c;->n:Lcn/domob/android/ads/a/e;

    .line 141
    :cond_26
    return-void
.end method

.method public f(Lcn/domob/android/ads/q;)V
    .registers 3

    .prologue
    .line 898
    const-string v0, "download_cancel"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Lcn/domob/android/ads/q;)V

    .line 899
    return-void
.end method

.method public g(Lcn/domob/android/ads/q;)V
    .registers 4

    .prologue
    .line 903
    const-string v0, "download_repeat"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Lcn/domob/android/ads/q;)V

    .line 904
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_15

    .line 905
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/a/c$7;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/c$7;-><init>(Lcn/domob/android/ads/a/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 913
    :cond_15
    return-void
.end method

.method public h(Lcn/domob/android/ads/q;)V
    .registers 2

    .prologue
    .line 918
    return-void
.end method

.method public i(Lcn/domob/android/ads/q;)V
    .registers 3

    .prologue
    .line 922
    const-string v0, "download_md5_failed"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Lcn/domob/android/ads/q;)V

    .line 923
    return-void
.end method

.method public j(Lcn/domob/android/ads/q;)V
    .registers 3

    .prologue
    .line 928
    invoke-static {}, Lcn/domob/android/ads/e;->a()Lcn/domob/android/ads/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/q;)V

    .line 929
    return-void
.end method

.method public r()V
    .registers 2

    .prologue
    .line 715
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 716
    const-string v0, "load_success"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->b(Ljava/lang/String;)V

    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/a/c;->p:Z

    .line 719
    :cond_e
    return-void
.end method

.method public s()V
    .registers 2

    .prologue
    .line 723
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 724
    const-string v0, "load_failed"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->b(Ljava/lang/String;)V

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/a/c;->r:Z

    .line 727
    :cond_e
    return-void
.end method

.method public t()V
    .registers 2

    .prologue
    .line 731
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 732
    const-string v0, "load_cancel"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->b(Ljava/lang/String;)V

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/a/c;->q:Z

    .line 735
    :cond_e
    return-void
.end method

.method public u()V
    .registers 3

    .prologue
    .line 739
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/a/c$6;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/c$6;-><init>(Lcn/domob/android/ads/a/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 746
    const-string v0, "close_lp"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->b(Ljava/lang/String;)V

    .line 747
    return-void
.end method
