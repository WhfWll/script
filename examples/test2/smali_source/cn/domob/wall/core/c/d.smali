.class public Lcn/domob/wall/core/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/c/d$c;,
        Lcn/domob/wall/core/c/d$b;,
        Lcn/domob/wall/core/c/d$e;,
        Lcn/domob/wall/core/c/d$d;,
        Lcn/domob/wall/core/c/d$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/wall/core/h/d; = null

.field private static final e:I = 0x2

.field private static final f:I = 0x3

.field private static final g:I = 0x4

.field private static final h:I = 0x5

.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:I = 0x3

.field private static final l:I = 0x4

.field private static final m:I = 0x5


# instance fields
.field private b:Lcn/domob/wall/core/c/c;

.field private c:Lcn/domob/wall/core/b;

.field private d:Landroid/content/Context;

.field private n:Lcn/domob/wall/core/c/d$a;

.field private o:Lcn/domob/wall/core/c/d$d;

.field private p:Lcn/domob/wall/core/c/d$e;

.field private q:Lcn/domob/wall/core/c/d$b;

.field private r:Lcn/domob/wall/core/c/d$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/c/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    return-void
.end method

.method public constructor <init>(Lcn/domob/wall/core/b;)V
    .registers 3

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcn/domob/wall/core/c/d;->c:Lcn/domob/wall/core/b;

    .line 100
    invoke-virtual {p1}, Lcn/domob/wall/core/b;->g()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    .line 101
    return-void
.end method

.method static synthetic a(Lcn/domob/wall/core/c/d;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Lcn/domob/wall/core/h/d;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    return-object v0
.end method

.method private a(ILjava/util/HashMap;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 484
    const-string v1, "cid"

    invoke-static {}, Lcn/domob/wall/core/c/h;->a()Lcn/domob/wall/core/c/h;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/c/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v1, "sdk"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v1, "rt"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v1, "ua"

    iget-object v2, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/h/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v1, "ipb"

    iget-object v2, p0, Lcn/domob/wall/core/c/d;->c:Lcn/domob/wall/core/b;

    invoke-virtual {v2}, Lcn/domob/wall/core/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v1, "ppid"

    iget-object v2, p0, Lcn/domob/wall/core/c/d;->c:Lcn/domob/wall/core/b;

    invoke-virtual {v2}, Lcn/domob/wall/core/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v1, "idv"

    iget-object v2, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/h/e;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v1, "v"

    const-string v2, "%s-%s-%s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "20140217"

    aput-object v4, v3, v6

    const-string v4, "android"

    aput-object v4, v3, v7

    const-string v4, "20131101"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v1, "sv"

    const-string v2, "020100"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v1, "l"

    invoke-static {}, Lcn/domob/wall/core/h/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string v1, "c"

    const-string v2, "%s,%s,%s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "ltx"

    aput-object v4, v3, v6

    const-string v4, "la"

    aput-object v4, v3, v7

    const-string v4, "iad"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v1, "so"

    iget-object v2, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/h/e;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string v1, "sw"

    iget-object v2, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/h/e;->t(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v1, "sh"

    iget-object v2, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/h/e;->u(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v1, "sd"

    iget-object v2, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/h/e;->s(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v1, "pb[identifier]"

    iget-object v2, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/h/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v1, "pb[name]"

    iget-object v2, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/h/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v1, "pb[version]"

    iget-object v2, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/h/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    if-eqz p2, :cond_157

    .line 551
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 552
    sget-object v2, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 553
    const-string v1, "ids"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_131

    .line 554
    const-string v1, "ids"

    const-string v2, "ids"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    :cond_131
    const-string v1, "q"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_144

    .line 559
    const-string v1, "q"

    const-string v2, "q"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_144
    const-string v1, "details"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_157

    .line 564
    const-string v1, "details"

    const-string v2, "details"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    :cond_157
    const-string v1, "network"

    iget-object v2, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/h/e;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v1, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/h/e;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 576
    if-eqz v1, :cond_1a9

    .line 577
    sget-object v2, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode dma:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/domob/wall/core/h/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 579
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ea

    .line 580
    const-string v1, "dma"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    :cond_1a9
    :goto_1a9
    iget-object v1, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/h/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 589
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2fb

    .line 590
    const-string v1, "odin1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :goto_1be
    iget-object v1, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/h/e;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 598
    if-eqz v1, :cond_302

    .line 599
    const-string v2, "d[coord_timestamp]"

    invoke-static {}, Lcn/domob/wall/core/h/e;->f()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v2, "d[coord]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v1, "d[coord_acc]"

    invoke-static {}, Lcn/domob/wall/core/h/e;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v1, "d[coord_accuracy]"

    invoke-static {}, Lcn/domob/wall/core/h/e;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :goto_1f2
    iget-object v1, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/h/e;->E(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 613
    sget-object v2, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    const-string v3, "Base info: cid=%s, lac=%s, mcc=%s, mnc=%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, v1, v6

    aput-object v5, v4, v6

    aget-object v5, v1, v7

    aput-object v5, v4, v7

    aget-object v5, v1, v8

    aput-object v5, v4, v8

    aget-object v5, v1, v9

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 616
    const-string v2, "cell"

    aget-object v3, v1, v6

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string v2, "lac"

    aget-object v3, v1, v7

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string v2, "mcc"

    aget-object v3, v1, v8

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string v2, "mnc"

    aget-object v1, v1, v9

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    iget-object v1, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/h/e;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 623
    if-eqz v1, :cond_279

    .line 624
    sget-object v2, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode ama:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/domob/wall/core/h/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 626
    const-string v2, "ama"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/domob/wall/core/h/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    :cond_279
    iget-object v1, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/h/e;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 630
    if-eqz v1, :cond_2b8

    .line 631
    sget-object v2, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode apSSID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-static {v4, v1}, Lcn/domob/wall/core/h/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 633
    const-string v2, "an"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-static {v3, v1}, Lcn/domob/wall/core/h/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    :cond_2b8
    iget-object v1, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/h/e;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 644
    invoke-static {v1}, Lcn/domob/wall/core/h/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c9

    .line 645
    const-string v2, "aaid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    :cond_2c9
    sget-object v1, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad request params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 650
    invoke-static {v0}, Lcn/domob/wall/core/h/f;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 582
    :cond_2ea
    const-string v2, "dma"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/domob/wall/core/h/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a9

    .line 592
    :cond_2fb
    const-string v2, "odin1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1be

    .line 608
    :cond_302
    const-string v1, "d[coord_status]"

    invoke-static {}, Lcn/domob/wall/core/h/e;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f2
.end method

.method static synthetic b(Lcn/domob/wall/core/c/d;)Lcn/domob/wall/core/c/d$a;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/domob/wall/core/c/d;->n:Lcn/domob/wall/core/c/d$a;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/wall/core/c/d;)Lcn/domob/wall/core/c/d$d;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/domob/wall/core/c/d;->o:Lcn/domob/wall/core/c/d$d;

    return-object v0
.end method

.method static synthetic d(Lcn/domob/wall/core/c/d;)Lcn/domob/wall/core/c/d$e;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/domob/wall/core/c/d;->p:Lcn/domob/wall/core/c/d$e;

    return-object v0
.end method

.method static synthetic e(Lcn/domob/wall/core/c/d;)Lcn/domob/wall/core/c/d$b;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/domob/wall/core/c/d;->q:Lcn/domob/wall/core/c/d$b;

    return-object v0
.end method

.method static synthetic f(Lcn/domob/wall/core/c/d;)Lcn/domob/wall/core/c/d$c;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/domob/wall/core/c/d;->r:Lcn/domob/wall/core/c/d$c;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcn/domob/wall/core/DService$ErrorCode;
    .registers 3

    .prologue
    .line 74
    sget-object v0, Lcn/domob/wall/core/DService$ErrorCode;->NONE:Lcn/domob/wall/core/DService$ErrorCode;

    .line 76
    div-int/lit16 v0, p1, 0x3e8

    packed-switch v0, :pswitch_data_1a

    .line 92
    :goto_7
    sget-object v0, Lcn/domob/wall/core/DService$ErrorCode;->INTERNAL_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

    .line 95
    :goto_9
    return-object v0

    .line 78
    :pswitch_a
    sget-object v0, Lcn/domob/wall/core/DService$ErrorCode;->INTERNAL_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

    goto :goto_9

    .line 81
    :pswitch_d
    sget-object v0, Lcn/domob/wall/core/DService$ErrorCode;->INTERNAL_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

    goto :goto_9

    .line 84
    :pswitch_10
    sget-object v0, Lcn/domob/wall/core/DService$ErrorCode;->INVALID_REQUEST:Lcn/domob/wall/core/DService$ErrorCode;

    goto :goto_9

    .line 87
    :pswitch_13
    sget-object v0, Lcn/domob/wall/core/DService$ErrorCode;->NO_FILL:Lcn/domob/wall/core/DService$ErrorCode;

    goto :goto_9

    .line 90
    :pswitch_16
    sget-object v0, Lcn/domob/wall/core/DService$ErrorCode;->INTERNAL_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

    goto :goto_7

    .line 76
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method public a(Lcn/domob/wall/core/c/d$a;Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/wall/core/c/d$a;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "Start to request ad."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcn/domob/wall/core/c/d;->n:Lcn/domob/wall/core/c/d$a;

    .line 112
    const/4 v0, 0x2

    :try_start_a
    invoke-direct {p0, v0, p2}, Lcn/domob/wall/core/c/d;->a(ILjava/util/HashMap;)Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-static {}, Lcn/domob/wall/core/DService;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 116
    sget-object v0, Lcn/domob/wall/core/b/a;->i:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/wall/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    :goto_20
    new-instance v0, Lcn/domob/wall/core/c/c;

    iget-object v1, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    new-instance v8, Lcn/domob/wall/core/c/d$1;

    invoke-direct {v8, p0}, Lcn/domob/wall/core/c/d$1;-><init>(Lcn/domob/wall/core/c/d;)V

    invoke-direct/range {v0 .. v8}, Lcn/domob/wall/core/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/wall/core/c/c$a;)V

    iput-object v0, p0, Lcn/domob/wall/core/c/d;->b:Lcn/domob/wall/core/c/c;

    .line 170
    iget-object v0, p0, Lcn/domob/wall/core/c/d;->b:Lcn/domob/wall/core/c/c;

    invoke-virtual {v0}, Lcn/domob/wall/core/c/c;->b()V

    .line 176
    :goto_3a
    return-void

    .line 118
    :cond_3b
    sget-object v2, Lcn/domob/wall/core/b/a;->m:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3d} :catch_3e

    goto :goto_20

    .line 171
    :catch_3e
    move-exception v0

    .line 172
    sget-object v1, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    const-string v2, "Error happens when sending ad request"

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    .line 173
    sget-object v1, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_3a
.end method

.method public a(Lcn/domob/wall/core/c/d$b;Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/wall/core/c/d$b;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    sget-object v0, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "Start to request ad."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 332
    iput-object p1, p0, Lcn/domob/wall/core/c/d;->q:Lcn/domob/wall/core/c/d$b;

    .line 335
    const/4 v0, 0x4

    :try_start_a
    invoke-direct {p0, v0, p2}, Lcn/domob/wall/core/c/d;->a(ILjava/util/HashMap;)Ljava/lang/String;

    move-result-object v6

    .line 338
    invoke-static {}, Lcn/domob/wall/core/DService;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 339
    sget-object v0, Lcn/domob/wall/core/b/a;->i:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/wall/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    :goto_20
    new-instance v0, Lcn/domob/wall/core/c/c;

    iget-object v1, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    new-instance v8, Lcn/domob/wall/core/c/d$4;

    invoke-direct {v8, p0}, Lcn/domob/wall/core/c/d$4;-><init>(Lcn/domob/wall/core/c/d;)V

    invoke-direct/range {v0 .. v8}, Lcn/domob/wall/core/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/wall/core/c/c$a;)V

    iput-object v0, p0, Lcn/domob/wall/core/c/d;->b:Lcn/domob/wall/core/c/c;

    .line 396
    iget-object v0, p0, Lcn/domob/wall/core/c/d;->b:Lcn/domob/wall/core/c/c;

    invoke-virtual {v0}, Lcn/domob/wall/core/c/c;->b()V

    .line 402
    :goto_3a
    return-void

    .line 341
    :cond_3b
    sget-object v2, Lcn/domob/wall/core/b/a;->m:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3d} :catch_3e

    goto :goto_20

    .line 397
    :catch_3e
    move-exception v0

    .line 398
    sget-object v1, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    const-string v2, "Error happens when sending ad request"

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    .line 399
    sget-object v1, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_3a
.end method

.method public a(Lcn/domob/wall/core/c/d$c;Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/wall/core/c/d$c;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    sget-object v0, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "Start to request ad."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 408
    iput-object p1, p0, Lcn/domob/wall/core/c/d;->r:Lcn/domob/wall/core/c/d$c;

    .line 411
    const/4 v0, 0x5

    :try_start_a
    invoke-direct {p0, v0, p2}, Lcn/domob/wall/core/c/d;->a(ILjava/util/HashMap;)Ljava/lang/String;

    move-result-object v6

    .line 414
    invoke-static {}, Lcn/domob/wall/core/DService;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 415
    sget-object v0, Lcn/domob/wall/core/b/a;->i:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/wall/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    :goto_20
    new-instance v0, Lcn/domob/wall/core/c/c;

    iget-object v1, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    new-instance v8, Lcn/domob/wall/core/c/d$5;

    invoke-direct {v8, p0}, Lcn/domob/wall/core/c/d$5;-><init>(Lcn/domob/wall/core/c/d;)V

    invoke-direct/range {v0 .. v8}, Lcn/domob/wall/core/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/wall/core/c/c$a;)V

    iput-object v0, p0, Lcn/domob/wall/core/c/d;->b:Lcn/domob/wall/core/c/c;

    .line 472
    iget-object v0, p0, Lcn/domob/wall/core/c/d;->b:Lcn/domob/wall/core/c/c;

    invoke-virtual {v0}, Lcn/domob/wall/core/c/c;->b()V

    .line 478
    :goto_3a
    return-void

    .line 417
    :cond_3b
    sget-object v2, Lcn/domob/wall/core/b/a;->m:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3d} :catch_3e

    goto :goto_20

    .line 473
    :catch_3e
    move-exception v0

    .line 474
    sget-object v1, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    const-string v2, "Error happens when sending ad request"

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    .line 475
    sget-object v1, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_3a
.end method

.method public a(Lcn/domob/wall/core/c/d$d;Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/wall/core/c/d$d;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    sget-object v0, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "Start to request ad."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lcn/domob/wall/core/c/d;->o:Lcn/domob/wall/core/c/d$d;

    .line 185
    const/4 v0, 0x2

    :try_start_a
    invoke-direct {p0, v0, p2}, Lcn/domob/wall/core/c/d;->a(ILjava/util/HashMap;)Ljava/lang/String;

    move-result-object v6

    .line 188
    invoke-static {}, Lcn/domob/wall/core/DService;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 189
    sget-object v0, Lcn/domob/wall/core/b/a;->i:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/wall/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    :goto_20
    new-instance v0, Lcn/domob/wall/core/c/c;

    iget-object v1, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    new-instance v8, Lcn/domob/wall/core/c/d$2;

    invoke-direct {v8, p0}, Lcn/domob/wall/core/c/d$2;-><init>(Lcn/domob/wall/core/c/d;)V

    invoke-direct/range {v0 .. v8}, Lcn/domob/wall/core/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/wall/core/c/c$a;)V

    iput-object v0, p0, Lcn/domob/wall/core/c/d;->b:Lcn/domob/wall/core/c/c;

    .line 244
    iget-object v0, p0, Lcn/domob/wall/core/c/d;->b:Lcn/domob/wall/core/c/c;

    invoke-virtual {v0}, Lcn/domob/wall/core/c/c;->b()V

    .line 250
    :goto_3a
    return-void

    .line 191
    :cond_3b
    sget-object v2, Lcn/domob/wall/core/b/a;->m:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3d} :catch_3e

    goto :goto_20

    .line 245
    :catch_3e
    move-exception v0

    .line 246
    sget-object v1, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    const-string v2, "Error happens when sending ad request"

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    .line 247
    sget-object v1, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_3a
.end method

.method public a(Lcn/domob/wall/core/c/d$e;Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/wall/core/c/d$e;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    sget-object v0, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "Start to request ad."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 256
    iput-object p1, p0, Lcn/domob/wall/core/c/d;->p:Lcn/domob/wall/core/c/d$e;

    .line 259
    const/4 v0, 0x3

    :try_start_a
    invoke-direct {p0, v0, p2}, Lcn/domob/wall/core/c/d;->a(ILjava/util/HashMap;)Ljava/lang/String;

    move-result-object v6

    .line 262
    invoke-static {}, Lcn/domob/wall/core/DService;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 263
    sget-object v0, Lcn/domob/wall/core/b/a;->i:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/wall/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    :goto_20
    new-instance v0, Lcn/domob/wall/core/c/c;

    iget-object v1, p0, Lcn/domob/wall/core/c/d;->d:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    new-instance v8, Lcn/domob/wall/core/c/d$3;

    invoke-direct {v8, p0}, Lcn/domob/wall/core/c/d$3;-><init>(Lcn/domob/wall/core/c/d;)V

    invoke-direct/range {v0 .. v8}, Lcn/domob/wall/core/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/wall/core/c/c$a;)V

    iput-object v0, p0, Lcn/domob/wall/core/c/d;->b:Lcn/domob/wall/core/c/c;

    .line 320
    iget-object v0, p0, Lcn/domob/wall/core/c/d;->b:Lcn/domob/wall/core/c/c;

    invoke-virtual {v0}, Lcn/domob/wall/core/c/c;->b()V

    .line 326
    :goto_3a
    return-void

    .line 265
    :cond_3b
    sget-object v2, Lcn/domob/wall/core/b/a;->m:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3d} :catch_3e

    goto :goto_20

    .line 321
    :catch_3e
    move-exception v0

    .line 322
    sget-object v1, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    const-string v2, "Error happens when sending ad request"

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    .line 323
    sget-object v1, Lcn/domob/wall/core/c/d;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_3a
.end method
