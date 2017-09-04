.class public Lcn/dbox/core/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lcn/dbox/core/h/d; = null

.field private static final r:Ljava/lang/String; = "cn.domob.ui.main.DViewManager"

.field private static final s:Ljava/lang/String; = "showWall"

.field private static final t:Ljava/lang/String; = "preLoad"


# instance fields
.field a:Ljava/lang/String;

.field b:Lcn/dbox/core/c/b$a;

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/dbox/core/bean/d;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Lcn/dbox/core/b$l;

.field private h:Lcn/dbox/core/b$m;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/util/concurrent/ExecutorService;

.field private q:Ljava/lang/String;

.field private u:Ljava/lang/Object;

.field private v:Ljava/lang/reflect/Method;

.field private w:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/c;->e:Lcn/dbox/core/h/d;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcn/dbox/core/c;->i:Z

    .line 50
    iput-object v1, p0, Lcn/dbox/core/c;->j:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcn/dbox/core/c;->k:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcn/dbox/core/c;->l:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcn/dbox/core/c;->m:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcn/dbox/core/c;->n:Ljava/lang/String;

    .line 55
    iput-boolean v0, p0, Lcn/dbox/core/c;->o:Z

    .line 412
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/c;->c:Ljava/util/HashMap;

    .line 451
    const-string v0, "16:5"

    iput-object v0, p0, Lcn/dbox/core/c;->d:Ljava/lang/String;

    .line 471
    iput-object v1, p0, Lcn/dbox/core/c;->u:Ljava/lang/Object;

    .line 472
    iput-object v1, p0, Lcn/dbox/core/c;->v:Ljava/lang/reflect/Method;

    .line 473
    iput-object v1, p0, Lcn/dbox/core/c;->w:Ljava/lang/reflect/Method;

    .line 61
    iput-object p1, p0, Lcn/dbox/core/c;->f:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lcn/dbox/core/c;->k:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcn/dbox/core/c;->j:Ljava/lang/String;

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/c;->p:Ljava/util/concurrent/ExecutorService;

    .line 65
    return-void
.end method

.method static synthetic a(Lcn/dbox/core/c;)Lcn/dbox/core/b$l;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcn/dbox/core/c;->g:Lcn/dbox/core/b$l;

    return-object v0
.end method

.method static synthetic a(Lcn/dbox/core/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcn/dbox/core/c;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcn/dbox/core/c;Z)Z
    .registers 2

    .prologue
    .line 40
    iput-boolean p1, p0, Lcn/dbox/core/c;->i:Z

    return p1
.end method

.method static synthetic b(Lcn/dbox/core/c;)Lcn/dbox/core/b$m;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcn/dbox/core/c;->h:Lcn/dbox/core/b$m;

    return-object v0
.end method

.method static synthetic b(Lcn/dbox/core/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcn/dbox/core/c;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic u()Lcn/dbox/core/h/d;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcn/dbox/core/c;->e:Lcn/dbox/core/h/d;

    return-object v0
.end method

.method private v()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 225
    iget-boolean v1, p0, Lcn/dbox/core/c;->o:Z

    if-nez v1, :cond_1f

    .line 226
    iget-object v1, p0, Lcn/dbox/core/c;->j:Ljava/lang/String;

    invoke-static {v1}, Lcn/dbox/core/h/f;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcn/dbox/core/c;->k:Ljava/lang/String;

    invoke-static {v1}, Lcn/dbox/core/h/f;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 228
    iget-object v1, p0, Lcn/dbox/core/c;->f:Landroid/content/Context;

    invoke-static {v1}, Lcn/dbox/core/h/f;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 229
    iput-boolean v0, p0, Lcn/dbox/core/c;->o:Z

    .line 240
    :cond_1f
    :goto_1f
    return v0

    .line 232
    :cond_20
    const-string v0, "DrwSDK"

    const-string v1, "Permission denied."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_27
    const/4 v0, 0x0

    goto :goto_1f

    .line 235
    :cond_29
    const-string v0, "DrwSDK"

    const-string v1, "Please set your publisherID and placementID first."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcn/dbox/core/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    .prologue
    .line 420
    const-string v1, ""

    .line 421
    if-nez p2, :cond_7

    .line 422
    const-string v0, ""

    .line 447
    :cond_6
    :goto_6
    return-object v0

    .line 424
    :cond_7
    iget-object v0, p0, Lcn/dbox/core/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 425
    iget-object v0, p0, Lcn/dbox/core/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    .line 427
    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->i()Ljava/util/ArrayList;

    move-result-object v3

    .line 428
    sget-object v2, Lcn/dbox/core/c;->e:Lcn/dbox/core/h/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adContainerName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ids:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->h()I

    move-result v4

    .line 431
    sget-object v0, Lcn/dbox/core/c;->e:Lcn/dbox/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number each page display ads:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 432
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    mul-int v2, v4, p2

    if-lt v0, v2, :cond_c3

    .line 433
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    mul-int v2, v4, p2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_97

    .line 434
    mul-int v0, v4, p2

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_6f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_6f

    .line 438
    :cond_97
    mul-int v0, v4, p2

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_9c
    mul-int v2, v4, p2

    add-int/2addr v2, v4

    if-ge v1, v2, :cond_6

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_9c

    .line 443
    :cond_c3
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_c6
    move-object v0, v1

    goto/16 :goto_6
.end method

.method public a(Lcn/dbox/core/b$l;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcn/dbox/core/c;->g:Lcn/dbox/core/b$l;

    .line 77
    return-void
.end method

.method public a(Lcn/dbox/core/b$m;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcn/dbox/core/c;->h:Lcn/dbox/core/b$m;

    .line 81
    return-void
.end method

.method public a(Lcn/dbox/core/c/b$a;)V
    .registers 2

    .prologue
    .line 273
    iput-object p1, p0, Lcn/dbox/core/c;->b:Lcn/dbox/core/c/b$a;

    .line 274
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 457
    iput-object p1, p0, Lcn/dbox/core/c;->d:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 85
    invoke-direct {p0}, Lcn/dbox/core/c;->v()Z

    move-result v0

    if-nez v0, :cond_7

    .line 217
    :goto_6
    return-void

    .line 89
    :cond_7
    iget-boolean v0, p0, Lcn/dbox/core/c;->i:Z

    if-eqz v0, :cond_13

    .line 90
    sget-object v0, Lcn/dbox/core/c;->e:Lcn/dbox/core/h/d;

    const-string v1, "requestDataAsynting...."

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 93
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/dbox/core/c;->i:Z

    .line 95
    new-instance v0, Lcn/dbox/core/c$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/dbox/core/c$1;-><init>(Lcn/dbox/core/c;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcn/dbox/core/c$1;->start()V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 68
    iput-object p2, p0, Lcn/dbox/core/c;->m:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcn/dbox/core/c;->l:Ljava/lang/String;

    .line 70
    invoke-static {p0}, Lcn/dbox/core/h/f;->a(Lcn/dbox/core/c;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 71
    invoke-virtual {p0}, Lcn/dbox/core/c;->r()V

    .line 73
    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcn/dbox/core/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcn/dbox/core/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcn/dbox/core/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcn/dbox/core/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public f()Landroid/content/Context;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcn/dbox/core/c;->f:Landroid/content/Context;

    return-object v0
.end method

.method public g()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcn/dbox/core/c;->p:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public h()Lcn/dbox/core/c/b$a;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcn/dbox/core/c;->b:Lcn/dbox/core/c/b$a;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 3

    .prologue
    .line 289
    invoke-static {}, Lcn/dbox/core/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 291
    sget-object v0, Lcn/dbox/core/b/a;->j:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    :goto_12
    return-object v0

    .line 292
    :cond_13
    invoke-static {}, Lcn/dbox/core/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "offline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 294
    sget-object v0, Lcn/dbox/core/b/a;->p:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 297
    :cond_26
    invoke-static {}, Lcn/dbox/core/b;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public j()Ljava/lang/String;
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcn/dbox/core/c;->b:Lcn/dbox/core/c/b$a;

    if-eqz v0, :cond_b

    .line 306
    iget-object v0, p0, Lcn/dbox/core/c;->b:Lcn/dbox/core/c/b$a;

    invoke-virtual {v0}, Lcn/dbox/core/c/b$a;->c()Ljava/lang/String;

    move-result-object v0

    .line 316
    :goto_a
    return-object v0

    .line 308
    :cond_b
    invoke-static {}, Lcn/dbox/core/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 310
    sget-object v0, Lcn/dbox/core/b/a;->l:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 311
    :cond_1e
    invoke-static {}, Lcn/dbox/core/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "offline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 313
    sget-object v0, Lcn/dbox/core/b/a;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 316
    :cond_31
    sget-object v0, Lcn/dbox/core/b/a;->l:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcn/dbox/core/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lcn/dbox/core/c;->b:Lcn/dbox/core/c/b$a;

    if-eqz v0, :cond_b

    .line 334
    iget-object v0, p0, Lcn/dbox/core/c;->b:Lcn/dbox/core/c/b$a;

    invoke-virtual {v0}, Lcn/dbox/core/c/b$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_a
    return-object v0

    .line 336
    :cond_b
    invoke-static {}, Lcn/dbox/core/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 338
    sget-object v0, Lcn/dbox/core/b/a;->m:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 339
    :cond_1e
    invoke-static {}, Lcn/dbox/core/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "offline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 341
    sget-object v0, Lcn/dbox/core/b/a;->s:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 343
    :cond_31
    sget-object v0, Lcn/dbox/core/b/a;->m:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public m()Ljava/lang/String;
    .registers 3

    .prologue
    .line 348
    iget-object v0, p0, Lcn/dbox/core/c;->b:Lcn/dbox/core/c/b$a;

    if-eqz v0, :cond_11

    .line 349
    iget-object v0, p0, Lcn/dbox/core/c;->b:Lcn/dbox/core/c/b$a;

    invoke-virtual {v0}, Lcn/dbox/core/c/b$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 354
    :goto_10
    return-object v0

    :cond_11
    const-string v0, "http://srp.12306.moxz.net/rp"

    goto :goto_10
.end method

.method public n()Ljava/lang/String;
    .registers 3

    .prologue
    .line 362
    iget-object v0, p0, Lcn/dbox/core/c;->b:Lcn/dbox/core/c/b$a;

    if-eqz v0, :cond_b

    .line 363
    iget-object v0, p0, Lcn/dbox/core/c;->b:Lcn/dbox/core/c/b$a;

    invoke-virtual {v0}, Lcn/dbox/core/c/b$a;->d()Ljava/lang/String;

    move-result-object v0

    .line 372
    :goto_a
    return-object v0

    .line 365
    :cond_b
    invoke-static {}, Lcn/dbox/core/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 367
    sget-object v0, Lcn/dbox/core/b/a;->k:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 368
    :cond_1e
    invoke-static {}, Lcn/dbox/core/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "offline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 370
    sget-object v0, Lcn/dbox/core/b/a;->q:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 372
    :cond_31
    sget-object v0, Lcn/dbox/core/b/a;->k:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public o()Ljava/lang/String;
    .registers 3

    .prologue
    .line 380
    iget-object v0, p0, Lcn/dbox/core/c;->b:Lcn/dbox/core/c/b$a;

    if-eqz v0, :cond_b

    .line 381
    iget-object v0, p0, Lcn/dbox/core/c;->b:Lcn/dbox/core/c/b$a;

    invoke-virtual {v0}, Lcn/dbox/core/c/b$a;->e()Ljava/lang/String;

    move-result-object v0

    .line 390
    :goto_a
    return-object v0

    .line 383
    :cond_b
    invoke-static {}, Lcn/dbox/core/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 385
    sget-object v0, Lcn/dbox/core/b/a;->n:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 386
    :cond_1e
    invoke-static {}, Lcn/dbox/core/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "offline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 388
    sget-object v0, Lcn/dbox/core/b/a;->t:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 390
    :cond_31
    sget-object v0, Lcn/dbox/core/b/a;->n:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public p()Ljava/lang/String;
    .registers 3

    .prologue
    .line 399
    iget-object v0, p0, Lcn/dbox/core/c;->b:Lcn/dbox/core/c/b$a;

    if-eqz v0, :cond_b

    .line 400
    iget-object v0, p0, Lcn/dbox/core/c;->b:Lcn/dbox/core/c/b$a;

    invoke-virtual {v0}, Lcn/dbox/core/c/b$a;->f()Ljava/lang/String;

    move-result-object v0

    .line 409
    :goto_a
    return-object v0

    .line 402
    :cond_b
    invoke-static {}, Lcn/dbox/core/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 404
    sget-object v0, Lcn/dbox/core/b/a;->o:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 405
    :cond_1e
    invoke-static {}, Lcn/dbox/core/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "offline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 407
    sget-object v0, Lcn/dbox/core/b/a;->u:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 409
    :cond_31
    sget-object v0, Lcn/dbox/core/b/a;->o:Ljava/lang/String;

    invoke-static {v0}, Lcn/dbox/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lcn/dbox/core/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public r()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 477
    :try_start_1
    const-string v1, "cn.domob.ui.main.DViewManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 478
    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 480
    const/4 v1, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    .line 481
    :goto_f
    array-length v4, v3

    if-ge v1, v4, :cond_20

    .line 483
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v4

    array-length v4, v4

    .line 484
    if-lez v4, :cond_1d

    .line 487
    aget-object v0, v3, v1

    .line 481
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 491
    :cond_20
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 492
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/dbox/core/c;->f:Landroid/content/Context;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/dbox/core/c;->l:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcn/dbox/core/c;->m:Ljava/lang/String;

    aput-object v4, v1, v3

    .line 493
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/c;->u:Ljava/lang/Object;

    .line 496
    const-string v0, "showWall"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/c;->v:Ljava/lang/reflect/Method;

    .line 497
    const-string v0, "preLoad"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/c;->w:Ljava/lang/reflect/Method;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_56} :catch_57
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_56} :catch_5c

    .line 503
    :goto_56
    return-void

    .line 498
    :catch_57
    move-exception v0

    .line 499
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56

    .line 500
    :catch_5c
    move-exception v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_56
.end method

.method public s()V
    .registers 4

    .prologue
    .line 507
    iget-object v0, p0, Lcn/dbox/core/c;->u:Ljava/lang/Object;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/dbox/core/c;->w:Ljava/lang/reflect/Method;

    if-nez v0, :cond_11

    .line 508
    :cond_8
    invoke-static {p0}, Lcn/dbox/core/h/f;->a(Lcn/dbox/core/c;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 509
    invoke-virtual {p0}, Lcn/dbox/core/c;->r()V

    .line 513
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcn/dbox/core/c;->w:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcn/dbox/core/c;->u:Ljava/lang/Object;

    if-eqz v0, :cond_23

    .line 514
    iget-object v0, p0, Lcn/dbox/core/c;->w:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcn/dbox/core/c;->u:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_23} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_23} :catch_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_23} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_23} :catch_33
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_23} :catch_38

    .line 529
    :cond_23
    :goto_23
    return-void

    .line 517
    :catch_24
    move-exception v0

    .line 518
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_23

    .line 519
    :catch_29
    move-exception v0

    .line 520
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_23

    .line 521
    :catch_2e
    move-exception v0

    .line 522
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_23

    .line 523
    :catch_33
    move-exception v0

    .line 524
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    .line 525
    :catch_38
    move-exception v0

    .line 526
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_23
.end method

.method public t()V
    .registers 4

    .prologue
    .line 532
    iget-object v0, p0, Lcn/dbox/core/c;->u:Ljava/lang/Object;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/dbox/core/c;->v:Ljava/lang/reflect/Method;

    if-nez v0, :cond_11

    .line 533
    :cond_8
    invoke-static {p0}, Lcn/dbox/core/h/f;->a(Lcn/dbox/core/c;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 534
    invoke-virtual {p0}, Lcn/dbox/core/c;->r()V

    .line 538
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcn/dbox/core/c;->v:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcn/dbox/core/c;->u:Ljava/lang/Object;

    if-eqz v0, :cond_23

    .line 539
    iget-object v0, p0, Lcn/dbox/core/c;->v:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcn/dbox/core/c;->u:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_23} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_23} :catch_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_23} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_23} :catch_33
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_23} :catch_38

    .line 553
    :cond_23
    :goto_23
    return-void

    .line 541
    :catch_24
    move-exception v0

    .line 542
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_23

    .line 543
    :catch_29
    move-exception v0

    .line 544
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_23

    .line 545
    :catch_2e
    move-exception v0

    .line 546
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_23

    .line 547
    :catch_33
    move-exception v0

    .line 548
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    .line 549
    :catch_38
    move-exception v0

    .line 550
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_23
.end method
