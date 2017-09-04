.class public Lcn/dbox/core/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field private static b:Lcn/dbox/core/h/d;

.field private static c:Z


# instance fields
.field private d:Lcn/dbox/core/c/c;

.field private e:Lcn/dbox/core/c;

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/c/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/c/a;->b:Lcn/dbox/core/h/d;

    .line 18
    sput-boolean v2, Lcn/dbox/core/c/a;->c:Z

    .line 19
    sput-boolean v2, Lcn/dbox/core/c/a;->a:Z

    return-void
.end method

.method public constructor <init>(Lcn/dbox/core/c;)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcn/dbox/core/c/a;->e:Lcn/dbox/core/c;

    .line 27
    invoke-virtual {p1}, Lcn/dbox/core/c;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/c/a;->f:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string v1, "sdk"

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "rt"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "ua"

    iget-object v2, p0, Lcn/dbox/core/c/a;->f:Landroid/content/Context;

    invoke-static {v2}, Lcn/dbox/core/h/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "ipb"

    iget-object v2, p0, Lcn/dbox/core/c/a;->e:Lcn/dbox/core/c;

    invoke-virtual {v2}, Lcn/dbox/core/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "ppid"

    iget-object v2, p0, Lcn/dbox/core/c/a;->e:Lcn/dbox/core/c;

    invoke-virtual {v2}, Lcn/dbox/core/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "v"

    const-string v2, "%s-%s-%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "20140918"

    aput-object v5, v3, v4

    const-string v4, "android"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "20140711"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "sv"

    const-string v2, "000900"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {v0}, Lcn/dbox/core/h/f;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/dbox/core/e/a;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 32
    sget-boolean v0, Lcn/dbox/core/c/a;->c:Z

    if-eqz v0, :cond_c

    .line 33
    new-instance v0, Lcn/dbox/core/e/a;

    invoke-direct {v0}, Lcn/dbox/core/e/a;-><init>()V

    throw v0

    .line 36
    :cond_c
    sput-boolean v1, Lcn/dbox/core/c/a;->c:Z

    .line 38
    :try_start_e
    invoke-direct {p0}, Lcn/dbox/core/c/a;->b()Ljava/lang/String;

    move-result-object v6

    .line 39
    sget-object v0, Lcn/dbox/core/c/a;->b:Lcn/dbox/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config Request Params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcn/dbox/core/c/c;

    iget-object v1, p0, Lcn/dbox/core/c/a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcn/dbox/core/c/a;->e:Lcn/dbox/core/c;

    invoke-virtual {v2}, Lcn/dbox/core/c;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcn/dbox/core/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/dbox/core/c/c$a;)V

    iput-object v0, p0, Lcn/dbox/core/c/a;->d:Lcn/dbox/core/c/c;

    .line 48
    iget-object v0, p0, Lcn/dbox/core/c/a;->d:Lcn/dbox/core/c/c;

    invoke-virtual {v0}, Lcn/dbox/core/c/c;->c()V

    .line 49
    iget-object v0, p0, Lcn/dbox/core/c/a;->d:Lcn/dbox/core/c/c;

    invoke-virtual {v0}, Lcn/dbox/core/c/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 50
    sget-object v1, Lcn/dbox/core/c/a;->b:Lcn/dbox/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config request response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 51
    if-eqz v0, :cond_81

    .line 54
    new-instance v1, Lcn/dbox/core/c/b;

    invoke-direct {v1, v0}, Lcn/dbox/core/c/b;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Lcn/dbox/core/c/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcn/dbox/core/h/e;->a(Ljava/util/ArrayList;)V

    .line 57
    iget-object v0, p0, Lcn/dbox/core/c/a;->e:Lcn/dbox/core/c;

    invoke-virtual {v1}, Lcn/dbox/core/c/b;->b()Lcn/dbox/core/c/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/c;->a(Lcn/dbox/core/c/b$a;)V

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcn/dbox/core/c/a;->a:Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_7e} :catch_89
    .catchall {:try_start_e .. :try_end_7e} :catchall_92

    .line 67
    :goto_7e
    sput-boolean v9, Lcn/dbox/core/c/a;->c:Z

    .line 73
    :goto_80
    return-void

    .line 61
    :cond_81
    :try_start_81
    sget-object v0, Lcn/dbox/core/c/a;->b:Lcn/dbox/core/h/d;

    const-string v1, "Config respStr is null."

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_88} :catch_89
    .catchall {:try_start_81 .. :try_end_88} :catchall_92

    goto :goto_7e

    .line 63
    :catch_89
    move-exception v0

    .line 64
    :try_start_8a
    sget-object v1, Lcn/dbox/core/c/a;->b:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_92

    .line 67
    sput-boolean v9, Lcn/dbox/core/c/a;->c:Z

    goto :goto_80

    :catchall_92
    move-exception v0

    sput-boolean v9, Lcn/dbox/core/c/a;->c:Z

    throw v0
.end method
