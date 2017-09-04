.class public Lcn/dbox/core/d/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/core/d/l$a;,
        Lcn/dbox/core/d/l$b;
    }
.end annotation


# static fields
.field private static b:Lcn/dbox/core/d/l;


# instance fields
.field a:Lcn/dbox/core/b$k;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcn/dbox/core/d/m;

.field private e:Lcn/dbox/core/d/j;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/dbox/core/d/l;->g:Z

    .line 32
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/d/l;->c:Ljava/util/concurrent/ExecutorService;

    .line 35
    new-instance v0, Lcn/dbox/core/d/m;

    invoke-direct {v0, p1}, Lcn/dbox/core/d/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/core/d/l;->d:Lcn/dbox/core/d/m;

    .line 36
    new-instance v0, Lcn/dbox/core/d/j;

    invoke-direct {v0}, Lcn/dbox/core/d/j;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/d/l;->e:Lcn/dbox/core/d/j;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/d/l;->f:Ljava/util/Map;

    .line 38
    return-void
.end method

.method static synthetic a(Lcn/dbox/core/d/l;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcn/dbox/core/d/l;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 98
    iget-object v0, p0, Lcn/dbox/core/d/l;->d:Lcn/dbox/core/d/m;

    invoke-virtual {v0, p1}, Lcn/dbox/core/d/m;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    if-nez v0, :cond_20

    .line 100
    iget-object v0, p0, Lcn/dbox/core/d/l;->e:Lcn/dbox/core/d/j;

    invoke-virtual {v0, p1}, Lcn/dbox/core/d/j;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    if-nez v0, :cond_21

    .line 102
    invoke-static {p1}, Lcn/dbox/core/d/k;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_20

    .line 104
    iget-object v1, p0, Lcn/dbox/core/d/l;->e:Lcn/dbox/core/d/j;

    invoke-virtual {v1, v0, p1}, Lcn/dbox/core/d/j;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcn/dbox/core/d/l;->d:Lcn/dbox/core/d/m;

    invoke-virtual {v1, p1, v0}, Lcn/dbox/core/d/m;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 111
    :cond_20
    :goto_20
    return-object v0

    .line 108
    :cond_21
    iget-object v1, p0, Lcn/dbox/core/d/l;->d:Lcn/dbox/core/d/m;

    invoke-virtual {v1, p1, v0}, Lcn/dbox/core/d/m;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_20
.end method

.method public static a(Landroid/content/Context;)Lcn/dbox/core/d/l;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcn/dbox/core/d/l;->b:Lcn/dbox/core/d/l;

    if-nez v0, :cond_b

    .line 42
    new-instance v0, Lcn/dbox/core/d/l;

    invoke-direct {v0, p0}, Lcn/dbox/core/d/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/dbox/core/d/l;->b:Lcn/dbox/core/d/l;

    .line 43
    :cond_b
    sget-object v0, Lcn/dbox/core/d/l;->b:Lcn/dbox/core/d/l;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 6

    .prologue
    .line 93
    iget-object v0, p0, Lcn/dbox/core/d/l;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/dbox/core/d/l$b;

    new-instance v2, Lcn/dbox/core/d/l$a;

    invoke-direct {v2, p0, p1, p2}, Lcn/dbox/core/d/l$a;-><init>(Lcn/dbox/core/d/l;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-direct {v1, p0, v2, p1}, Lcn/dbox/core/d/l$b;-><init>(Lcn/dbox/core/d/l;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 95
    return-void
.end method

.method private d()V
    .registers 5

    .prologue
    .line 79
    iget-object v2, p0, Lcn/dbox/core/d/l;->f:Ljava/util/Map;

    monitor-enter v2

    .line 80
    :try_start_3
    iget-object v0, p0, Lcn/dbox/core/d/l;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 82
    if-eqz v0, :cond_d

    .line 83
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 84
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcn/dbox/core/d/l;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_d

    .line 89
    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0

    .line 88
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcn/dbox/core/d/l;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 89
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_2b

    .line 90
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/dbox/core/d/l;->g:Z

    .line 48
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/dbox/core/b$k;)V
    .registers 7

    .prologue
    .line 61
    iput-object p3, p0, Lcn/dbox/core/d/l;->a:Lcn/dbox/core/b$k;

    .line 62
    iget-object v0, p0, Lcn/dbox/core/d/l;->d:Lcn/dbox/core/d/m;

    invoke-virtual {v0, p1}, Lcn/dbox/core/d/m;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_14

    .line 64
    iget-object v1, p0, Lcn/dbox/core/d/l;->a:Lcn/dbox/core/b$k;

    if-eqz v1, :cond_13

    .line 65
    iget-object v1, p0, Lcn/dbox/core/d/l;->a:Lcn/dbox/core/b$k;

    invoke-interface {v1, v0, p1, p2}, Lcn/dbox/core/b$k;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 76
    :cond_13
    :goto_13
    return-void

    .line 69
    :cond_14
    iget-object v1, p0, Lcn/dbox/core/d/l;->f:Ljava/util/Map;

    monitor-enter v1

    .line 70
    :try_start_17
    iget-object v0, p0, Lcn/dbox/core/d/l;->f:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_2d

    .line 72
    iget-boolean v0, p0, Lcn/dbox/core/d/l;->g:Z

    if-eqz v0, :cond_13

    .line 73
    invoke-direct {p0}, Lcn/dbox/core/d/l;->d()V

    goto :goto_13

    .line 71
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/dbox/core/d/l;->g:Z

    .line 52
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/dbox/core/d/l;->g:Z

    .line 56
    invoke-direct {p0}, Lcn/dbox/core/d/l;->d()V

    .line 57
    return-void
.end method
