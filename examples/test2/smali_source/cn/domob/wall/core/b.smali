.class public Lcn/domob/wall/core/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/wall/core/h/d; = null

.field private static final r:Ljava/lang/String; = "details"

.field private static final s:Ljava/lang/String; = "0"

.field private static final t:Ljava/lang/String; = "1"

.field private static final u:Ljava/lang/String; = "q"

.field private static final v:Ljava/lang/String; = "ids"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcn/domob/wall/core/DService$ReceiveDataListener;

.field private d:Lcn/domob/wall/core/DService$ReceiveListDataListener;

.field private e:Lcn/domob/wall/core/DService$ReceiveSearchDataListener;

.field private f:Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;

.field private g:Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/util/concurrent/ExecutorService;

.field private w:Lcn/domob/wall/core/bean/AdExtend;

.field private x:Lcn/domob/wall/core/d/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/h/d;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcn/domob/wall/core/b;->h:Z

    .line 54
    iput-boolean v0, p0, Lcn/domob/wall/core/b;->i:Z

    .line 55
    iput-boolean v0, p0, Lcn/domob/wall/core/b;->j:Z

    .line 56
    iput-boolean v0, p0, Lcn/domob/wall/core/b;->k:Z

    .line 57
    iput-boolean v0, p0, Lcn/domob/wall/core/b;->l:Z

    .line 59
    iput-object v1, p0, Lcn/domob/wall/core/b;->m:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcn/domob/wall/core/b;->n:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcn/domob/wall/core/b;->o:Ljava/lang/String;

    .line 62
    iput-boolean v0, p0, Lcn/domob/wall/core/b;->p:Z

    .line 76
    iput-object p1, p0, Lcn/domob/wall/core/b;->b:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcn/domob/wall/core/b;->n:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcn/domob/wall/core/b;->m:Ljava/lang/String;

    .line 79
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/b;->q:Ljava/util/concurrent/ExecutorService;

    .line 80
    return-void
.end method

.method static synthetic a(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveDataListener;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcn/domob/wall/core/b;->c:Lcn/domob/wall/core/DService$ReceiveDataListener;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/d/d;)Lcn/domob/wall/core/d/d;
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcn/domob/wall/core/b;->x:Lcn/domob/wall/core/d/d;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/wall/core/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcn/domob/wall/core/b;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/wall/core/b;Z)Z
    .registers 2

    .prologue
    .line 42
    iput-boolean p1, p0, Lcn/domob/wall/core/b;->h:Z

    return p1
.end method

.method static synthetic b(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveListDataListener;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcn/domob/wall/core/b;->d:Lcn/domob/wall/core/DService$ReceiveListDataListener;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/wall/core/b;Z)Z
    .registers 2

    .prologue
    .line 42
    iput-boolean p1, p0, Lcn/domob/wall/core/b;->i:Z

    return p1
.end method

.method static synthetic c(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveSearchDataListener;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcn/domob/wall/core/b;->e:Lcn/domob/wall/core/DService$ReceiveSearchDataListener;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/wall/core/b;Z)Z
    .registers 2

    .prologue
    .line 42
    iput-boolean p1, p0, Lcn/domob/wall/core/b;->j:Z

    return p1
.end method

.method static synthetic d(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcn/domob/wall/core/b;->f:Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;

    return-object v0
.end method

.method static synthetic d(Lcn/domob/wall/core/b;Z)Z
    .registers 2

    .prologue
    .line 42
    iput-boolean p1, p0, Lcn/domob/wall/core/b;->k:Z

    return p1
.end method

.method static synthetic e(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcn/domob/wall/core/b;->g:Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;

    return-object v0
.end method

.method static synthetic e(Lcn/domob/wall/core/b;Z)Z
    .registers 2

    .prologue
    .line 42
    iput-boolean p1, p0, Lcn/domob/wall/core/b;->l:Z

    return p1
.end method

.method static synthetic f(Lcn/domob/wall/core/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcn/domob/wall/core/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/bean/AdExtend;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcn/domob/wall/core/b;->w:Lcn/domob/wall/core/bean/AdExtend;

    return-object v0
.end method

.method static synthetic j()Lcn/domob/wall/core/h/d;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/h/d;

    return-object v0
.end method

.method private k()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 563
    iget-boolean v1, p0, Lcn/domob/wall/core/b;->p:Z

    if-nez v1, :cond_1f

    .line 564
    iget-object v1, p0, Lcn/domob/wall/core/b;->m:Ljava/lang/String;

    invoke-static {v1}, Lcn/domob/wall/core/h/f;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcn/domob/wall/core/b;->n:Ljava/lang/String;

    invoke-static {v1}, Lcn/domob/wall/core/h/f;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 566
    iget-object v1, p0, Lcn/domob/wall/core/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/h/f;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 567
    iput-boolean v0, p0, Lcn/domob/wall/core/b;->p:Z

    .line 578
    :cond_1f
    :goto_1f
    return v0

    .line 570
    :cond_20
    const-string v0, "DrwSDK"

    const-string v1, "Permission denied."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :goto_27
    const/4 v0, 0x0

    goto :goto_1f

    .line 573
    :cond_29
    const-string v0, "DrwSDK"

    const-string v1, "Please set your publisherID and placementID first."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .registers 4

    .prologue
    .line 639
    iget-object v0, p0, Lcn/domob/wall/core/b;->x:Lcn/domob/wall/core/d/d;

    if-nez v0, :cond_d

    .line 640
    new-instance v0, Lcn/domob/wall/core/d/d;

    iget-object v1, p0, Lcn/domob/wall/core/b;->w:Lcn/domob/wall/core/bean/AdExtend;

    invoke-direct {v0, p0, p1, v1}, Lcn/domob/wall/core/d/d;-><init>(Lcn/domob/wall/core/b;Landroid/content/Context;Lcn/domob/wall/core/bean/AdExtend;)V

    iput-object v0, p0, Lcn/domob/wall/core/b;->x:Lcn/domob/wall/core/d/d;

    .line 642
    :cond_d
    iget-object v0, p0, Lcn/domob/wall/core/b;->x:Lcn/domob/wall/core/d/d;

    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 107
    invoke-direct {p0}, Lcn/domob/wall/core/b;->k()Z

    move-result v0

    if-nez v0, :cond_7

    .line 205
    :goto_6
    return-void

    .line 110
    :cond_7
    iget-boolean v0, p0, Lcn/domob/wall/core/b;->h:Z

    if-eqz v0, :cond_13

    .line 111
    sget-object v0, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "requestDataAsynting...."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 114
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/b;->h:Z

    .line 116
    new-instance v0, Lcn/domob/wall/core/b$1;

    invoke-direct {v0, p0}, Lcn/domob/wall/core/b$1;-><init>(Lcn/domob/wall/core/b;)V

    invoke-virtual {v0}, Lcn/domob/wall/core/b$1;->start()V

    goto :goto_6
.end method

.method public a(Lcn/domob/wall/core/DService$ReceiveDataListener;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcn/domob/wall/core/b;->c:Lcn/domob/wall/core/DService$ReceiveDataListener;

    .line 84
    return-void
.end method

.method public a(Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcn/domob/wall/core/b;->f:Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;

    .line 99
    return-void
.end method

.method public a(Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcn/domob/wall/core/b;->g:Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;

    .line 104
    return-void
.end method

.method public a(Lcn/domob/wall/core/DService$ReceiveListDataListener;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcn/domob/wall/core/b;->d:Lcn/domob/wall/core/DService$ReceiveListDataListener;

    .line 89
    return-void
.end method

.method public a(Lcn/domob/wall/core/DService$ReceiveSearchDataListener;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcn/domob/wall/core/b;->e:Lcn/domob/wall/core/DService$ReceiveSearchDataListener;

    .line 94
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 309
    invoke-direct {p0}, Lcn/domob/wall/core/b;->k()Z

    move-result v0

    if-nez v0, :cond_7

    .line 392
    :goto_6
    return-void

    .line 313
    :cond_7
    iget-boolean v0, p0, Lcn/domob/wall/core/b;->j:Z

    if-eqz v0, :cond_13

    .line 314
    sget-object v0, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "requestSearchDataAsyning...."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 316
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/b;->j:Z

    .line 318
    new-instance v0, Lcn/domob/wall/core/b$3;

    invoke-direct {v0, p0, p1}, Lcn/domob/wall/core/b$3;-><init>(Lcn/domob/wall/core/b;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/domob/wall/core/b$3;->start()V

    goto :goto_6
.end method

.method public a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdExtend;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 603
    iput-object v0, p0, Lcn/domob/wall/core/b;->w:Lcn/domob/wall/core/bean/AdExtend;

    .line 604
    iput-object v0, p0, Lcn/domob/wall/core/b;->x:Lcn/domob/wall/core/d/d;

    .line 605
    if-eqz p1, :cond_53

    .line 606
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_53

    .line 608
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 609
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdExtend;

    iput-object v0, p0, Lcn/domob/wall/core/b;->w:Lcn/domob/wall/core/bean/AdExtend;

    .line 610
    sget-object v1, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/h/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eWallInfo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdExtend;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdExtend;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcn/domob/wall/core/b;->w:Lcn/domob/wall/core/bean/AdExtend;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdExtend;->ismPreload()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 615
    iget-object v0, p0, Lcn/domob/wall/core/b;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/wall/core/b$6;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/b$6;-><init>(Lcn/domob/wall/core/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 630
    :cond_53
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 208
    invoke-direct {p0}, Lcn/domob/wall/core/b;->k()Z

    move-result v0

    if-nez v0, :cond_7

    .line 306
    :goto_6
    return-void

    .line 212
    :cond_7
    iget-boolean v0, p0, Lcn/domob/wall/core/b;->i:Z

    if-eqz v0, :cond_13

    .line 213
    sget-object v0, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "requestListsDataAsynting...."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 215
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/b;->i:Z

    .line 217
    new-instance v0, Lcn/domob/wall/core/b$2;

    invoke-direct {v0, p0}, Lcn/domob/wall/core/b$2;-><init>(Lcn/domob/wall/core/b;)V

    invoke-virtual {v0}, Lcn/domob/wall/core/b$2;->start()V

    goto :goto_6
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 395
    invoke-direct {p0}, Lcn/domob/wall/core/b;->k()Z

    move-result v0

    if-nez v0, :cond_7

    .line 484
    :goto_6
    return-void

    .line 398
    :cond_7
    iget-boolean v0, p0, Lcn/domob/wall/core/b;->k:Z

    if-eqz v0, :cond_13

    .line 399
    sget-object v0, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "requestDetailsDataAsyning...."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 401
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/b;->k:Z

    .line 403
    new-instance v0, Lcn/domob/wall/core/b$4;

    invoke-direct {v0, p0, p1}, Lcn/domob/wall/core/b$4;-><init>(Lcn/domob/wall/core/b;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/domob/wall/core/b$4;->start()V

    goto :goto_6
.end method

.method public c()V
    .registers 3

    .prologue
    .line 487
    invoke-direct {p0}, Lcn/domob/wall/core/b;->k()Z

    move-result v0

    if-nez v0, :cond_7

    .line 560
    :goto_6
    return-void

    .line 490
    :cond_7
    iget-boolean v0, p0, Lcn/domob/wall/core/b;->l:Z

    if-eqz v0, :cond_13

    .line 491
    sget-object v0, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "requestHotStringDataAsyning...."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 493
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/b;->l:Z

    .line 495
    new-instance v0, Lcn/domob/wall/core/b$5;

    invoke-direct {v0, p0}, Lcn/domob/wall/core/b$5;-><init>(Lcn/domob/wall/core/b;)V

    invoke-virtual {v0}, Lcn/domob/wall/core/b$5;->start()V

    goto :goto_6
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 582
    iget-object v0, p0, Lcn/domob/wall/core/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 586
    iget-object v0, p0, Lcn/domob/wall/core/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, Lcn/domob/wall/core/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public g()Landroid/content/Context;
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lcn/domob/wall/core/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public h()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 598
    iget-object v0, p0, Lcn/domob/wall/core/b;->q:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public i()Lcn/domob/wall/core/bean/AdExtend;
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Lcn/domob/wall/core/b;->w:Lcn/domob/wall/core/bean/AdExtend;

    return-object v0
.end method
