.class public Lcn/domob/wall/core/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field private static b:Lcn/domob/wall/core/h/d;

.field private static c:Z


# instance fields
.field private d:Lcn/domob/wall/core/c/c;

.field private e:Lcn/domob/wall/core/b;

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/c/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/c/a;->b:Lcn/domob/wall/core/h/d;

    .line 19
    sput-boolean v2, Lcn/domob/wall/core/c/a;->c:Z

    .line 20
    sput-boolean v2, Lcn/domob/wall/core/c/a;->a:Z

    return-void
.end method

.method public constructor <init>(Lcn/domob/wall/core/b;)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/domob/wall/core/c/a;->e:Lcn/domob/wall/core/b;

    .line 28
    invoke-virtual {p1}, Lcn/domob/wall/core/b;->g()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/c/a;->f:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    const-string v1, "sdk"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "rt"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "ua"

    iget-object v2, p0, Lcn/domob/wall/core/c/a;->f:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/h/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "ipb"

    iget-object v2, p0, Lcn/domob/wall/core/c/a;->e:Lcn/domob/wall/core/b;

    invoke-virtual {v2}, Lcn/domob/wall/core/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "ppid"

    iget-object v2, p0, Lcn/domob/wall/core/c/a;->e:Lcn/domob/wall/core/b;

    invoke-virtual {v2}, Lcn/domob/wall/core/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "v"

    const-string v2, "%s-%s-%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "20140217"

    aput-object v5, v3, v4

    const-string v4, "android"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "20131101"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "sv"

    const-string v2, "020100"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {v0}, Lcn/domob/wall/core/h/f;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/domob/wall/core/e/a;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 33
    sget-boolean v0, Lcn/domob/wall/core/c/a;->c:Z

    if-eqz v0, :cond_c

    .line 34
    new-instance v0, Lcn/domob/wall/core/e/a;

    invoke-direct {v0}, Lcn/domob/wall/core/e/a;-><init>()V

    throw v0

    .line 37
    :cond_c
    sput-boolean v1, Lcn/domob/wall/core/c/a;->c:Z

    .line 39
    :try_start_e
    invoke-direct {p0}, Lcn/domob/wall/core/c/a;->b()Ljava/lang/String;

    move-result-object v6

    .line 40
    sget-object v0, Lcn/domob/wall/core/c/a;->b:Lcn/domob/wall/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config Request Params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcn/domob/wall/core/DService;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 42
    new-instance v0, Lcn/domob/wall/core/c/c;

    iget-object v1, p0, Lcn/domob/wall/core/c/a;->f:Landroid/content/Context;

    sget-object v2, Lcn/domob/wall/core/b/a;->i:Ljava/lang/String;

    invoke-static {v2}, Lcn/domob/wall/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcn/domob/wall/core/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/wall/core/c/c$a;)V

    iput-object v0, p0, Lcn/domob/wall/core/c/a;->d:Lcn/domob/wall/core/c/c;

    .line 55
    :goto_4d
    iget-object v0, p0, Lcn/domob/wall/core/c/a;->d:Lcn/domob/wall/core/c/c;

    invoke-virtual {v0}, Lcn/domob/wall/core/c/c;->c()V

    .line 56
    iget-object v0, p0, Lcn/domob/wall/core/c/a;->d:Lcn/domob/wall/core/c/c;

    invoke-virtual {v0}, Lcn/domob/wall/core/c/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 57
    sget-object v1, Lcn/domob/wall/core/c/a;->b:Lcn/domob/wall/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config request response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 58
    if-eqz v0, :cond_a1

    .line 61
    new-instance v1, Lcn/domob/wall/core/c/b;

    invoke-direct {v1, v0}, Lcn/domob/wall/core/c/b;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Lcn/domob/wall/core/c/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/wall/core/h/e;->a(Ljava/util/ArrayList;)V

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcn/domob/wall/core/c/a;->a:Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_81} :catch_98
    .catchall {:try_start_e .. :try_end_81} :catchall_a9

    .line 73
    :goto_81
    sput-boolean v9, Lcn/domob/wall/core/c/a;->c:Z

    .line 79
    :goto_83
    return-void

    .line 48
    :cond_84
    :try_start_84
    new-instance v0, Lcn/domob/wall/core/c/c;

    iget-object v1, p0, Lcn/domob/wall/core/c/a;->f:Landroid/content/Context;

    sget-object v2, Lcn/domob/wall/core/b/a;->m:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcn/domob/wall/core/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/wall/core/c/c$a;)V

    iput-object v0, p0, Lcn/domob/wall/core/c/a;->d:Lcn/domob/wall/core/c/c;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_97} :catch_98
    .catchall {:try_start_84 .. :try_end_97} :catchall_a9

    goto :goto_4d

    .line 69
    :catch_98
    move-exception v0

    .line 70
    :try_start_99
    sget-object v1, Lcn/domob/wall/core/c/a;->b:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V
    :try_end_9e
    .catchall {:try_start_99 .. :try_end_9e} :catchall_a9

    .line 73
    sput-boolean v9, Lcn/domob/wall/core/c/a;->c:Z

    goto :goto_83

    .line 67
    :cond_a1
    :try_start_a1
    sget-object v0, Lcn/domob/wall/core/c/a;->b:Lcn/domob/wall/core/h/d;

    const-string v1, "Config respStr is null."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a8} :catch_98
    .catchall {:try_start_a1 .. :try_end_a8} :catchall_a9

    goto :goto_81

    .line 73
    :catchall_a9
    move-exception v0

    sput-boolean v9, Lcn/domob/wall/core/c/a;->c:Z

    throw v0
.end method
