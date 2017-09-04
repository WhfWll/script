.class public Lcn/domob/wall/core/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/f/b$1;,
        Lcn/domob/wall/core/f/b$e;,
        Lcn/domob/wall/core/f/b$h;,
        Lcn/domob/wall/core/f/b$l;,
        Lcn/domob/wall/core/f/b$c;,
        Lcn/domob/wall/core/f/b$i;,
        Lcn/domob/wall/core/f/b$b;,
        Lcn/domob/wall/core/f/b$d;,
        Lcn/domob/wall/core/f/b$o;,
        Lcn/domob/wall/core/f/b$g;,
        Lcn/domob/wall/core/f/b$a;,
        Lcn/domob/wall/core/f/b$k;,
        Lcn/domob/wall/core/f/b$m;,
        Lcn/domob/wall/core/f/b$j;,
        Lcn/domob/wall/core/f/b$n;,
        Lcn/domob/wall/core/f/b$f;
    }
.end annotation


# static fields
.field static a:Lcn/domob/wall/core/f/b;

.field private static b:Lcn/domob/wall/core/h/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/f/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/f/b;->b:Lcn/domob/wall/core/h/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    return-void
.end method

.method static declared-synchronized a()Lcn/domob/wall/core/f/b;
    .registers 2

    .prologue
    .line 69
    const-class v1, Lcn/domob/wall/core/f/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcn/domob/wall/core/f/b;->a:Lcn/domob/wall/core/f/b;

    if-nez v0, :cond_e

    .line 70
    new-instance v0, Lcn/domob/wall/core/f/b;

    invoke-direct {v0}, Lcn/domob/wall/core/f/b;-><init>()V

    sput-object v0, Lcn/domob/wall/core/f/b;->a:Lcn/domob/wall/core/f/b;

    .line 72
    :cond_e
    sget-object v0, Lcn/domob/wall/core/f/b;->a:Lcn/domob/wall/core/f/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()Lcn/domob/wall/core/h/d;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcn/domob/wall/core/f/b;->b:Lcn/domob/wall/core/h/d;

    return-object v0
.end method
