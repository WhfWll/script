.class public Lcn/domob/wall/core/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "1"

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field private static d:Lcn/domob/wall/core/h/d;

.field private static e:Lcn/domob/wall/core/f/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/f/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/f/a;->d:Lcn/domob/wall/core/h/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcn/domob/wall/core/f/a;
    .registers 2

    .prologue
    .line 45
    const-class v1, Lcn/domob/wall/core/f/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcn/domob/wall/core/f/a;->e:Lcn/domob/wall/core/f/a;

    if-nez v0, :cond_e

    .line 46
    new-instance v0, Lcn/domob/wall/core/f/a;

    invoke-direct {v0}, Lcn/domob/wall/core/f/a;-><init>()V

    sput-object v0, Lcn/domob/wall/core/f/a;->e:Lcn/domob/wall/core/f/a;

    .line 48
    :cond_e
    sget-object v0, Lcn/domob/wall/core/f/a;->e:Lcn/domob/wall/core/f/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()Lcn/domob/wall/core/h/d;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcn/domob/wall/core/f/a;->d:Lcn/domob/wall/core/h/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/DService$EWallReportType;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 145
    new-instance v0, Lcn/domob/wall/core/f/b$e;

    invoke-static {}, Lcn/domob/wall/core/f/b;->a()Lcn/domob/wall/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcn/domob/wall/core/f/b$e;-><init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;)V

    .line 147
    invoke-virtual {v0, p2}, Lcn/domob/wall/core/f/b$e;->a(Lcn/domob/wall/core/DService$EWallReportType;)V

    .line 148
    if-eqz p3, :cond_14

    .line 149
    invoke-virtual {v0, p3}, Lcn/domob/wall/core/f/b$e;->a(Ljava/lang/String;)V

    .line 151
    :cond_14
    invoke-virtual {v0}, Lcn/domob/wall/core/f/b$e;->a()V

    .line 152
    return-void
.end method

.method public a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/DService$ReportUserActionType;)V
    .registers 5

    .prologue
    .line 90
    new-instance v0, Lcn/domob/wall/core/f/b$o;

    invoke-static {}, Lcn/domob/wall/core/f/b;->a()Lcn/domob/wall/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcn/domob/wall/core/f/b$o;-><init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;)V

    .line 91
    invoke-virtual {v0, p2}, Lcn/domob/wall/core/f/b$o;->a(Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 92
    invoke-virtual {v0}, Lcn/domob/wall/core/f/b$o;->a()V

    .line 93
    return-void
.end method

.method public a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V
    .registers 6

    .prologue
    .line 98
    new-instance v0, Lcn/domob/wall/core/f/b$d;

    invoke-static {}, Lcn/domob/wall/core/f/b;->a()Lcn/domob/wall/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2}, Lcn/domob/wall/core/f/b$d;-><init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;)V

    .line 100
    invoke-virtual {v0, p3}, Lcn/domob/wall/core/f/b$d;->a(Lcn/domob/wall/core/DService$ReportDownLoadType;)V

    .line 101
    invoke-virtual {v0}, Lcn/domob/wall/core/f/b$d;->a()V

    .line 102
    return-void
.end method

.method public a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$j;)V
    .registers 6

    .prologue
    .line 54
    new-instance v0, Lcn/domob/wall/core/f/b$b;

    invoke-static {}, Lcn/domob/wall/core/f/b;->a()Lcn/domob/wall/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2}, Lcn/domob/wall/core/f/b$b;-><init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;)V

    .line 56
    invoke-virtual {v0, p3}, Lcn/domob/wall/core/f/b$b;->a(Lcn/domob/wall/core/f/b$j;)V

    .line 57
    invoke-virtual {v0}, Lcn/domob/wall/core/f/b$b;->a()V

    .line 58
    return-void
.end method

.method public a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$k;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcn/domob/wall/core/f/b$c;

    invoke-static {}, Lcn/domob/wall/core/f/b;->a()Lcn/domob/wall/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2}, Lcn/domob/wall/core/f/b$c;-><init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;)V

    .line 65
    invoke-virtual {v0, p3}, Lcn/domob/wall/core/f/b$c;->a(Lcn/domob/wall/core/f/b$k;)V

    .line 66
    invoke-virtual {p3}, Lcn/domob/wall/core/f/b$k;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/wall/core/f/b$k;->b:Lcn/domob/wall/core/f/b$k;

    invoke-virtual {v2}, Lcn/domob/wall/core/f/b$k;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 67
    invoke-virtual {p2, v3}, Lcn/domob/wall/core/bean/AdInfo;->setAdActualPosition(I)V

    .line 68
    invoke-virtual {v0, v3}, Lcn/domob/wall/core/f/b$c;->b(I)V

    .line 73
    :goto_26
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/f/b$c;->a(I)V

    .line 74
    invoke-virtual {v0}, Lcn/domob/wall/core/f/b$c;->a()V

    .line 75
    return-void

    .line 70
    :cond_2e
    invoke-virtual {p2}, Lcn/domob/wall/core/bean/AdInfo;->getAdActualPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/f/b$c;->b(I)V

    goto :goto_26
.end method

.method public a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$m;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 80
    new-instance v0, Lcn/domob/wall/core/f/b$i;

    invoke-static {}, Lcn/domob/wall/core/f/b;->a()Lcn/domob/wall/core/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2}, Lcn/domob/wall/core/f/b$i;-><init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;)V

    .line 82
    invoke-virtual {v0, p3}, Lcn/domob/wall/core/f/b$i;->a(Lcn/domob/wall/core/f/b$m;)V

    .line 83
    invoke-virtual {v0, p4}, Lcn/domob/wall/core/f/b$i;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Lcn/domob/wall/core/f/b$i;->a()V

    .line 85
    return-void
.end method

.method public a(Lcn/domob/wall/core/b;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/wall/core/b;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p1}, Lcn/domob/wall/core/b;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcn/domob/wall/core/f/a$1;

    invoke-direct {v1, p0, p2, p1}, Lcn/domob/wall/core/f/a$1;-><init>(Lcn/domob/wall/core/f/a;Ljava/util/ArrayList;Lcn/domob/wall/core/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method
