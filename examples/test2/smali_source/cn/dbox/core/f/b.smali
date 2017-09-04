.class public Lcn/dbox/core/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/core/f/b$1;,
        Lcn/dbox/core/f/b$b;,
        Lcn/dbox/core/f/b$n;,
        Lcn/dbox/core/f/b$p;,
        Lcn/dbox/core/f/b$r;,
        Lcn/dbox/core/f/b$o;,
        Lcn/dbox/core/f/b$j;,
        Lcn/dbox/core/f/b$d;,
        Lcn/dbox/core/f/b$f;,
        Lcn/dbox/core/f/b$m;,
        Lcn/dbox/core/f/b$h;,
        Lcn/dbox/core/f/b$g;,
        Lcn/dbox/core/f/b$i;,
        Lcn/dbox/core/f/b$e;,
        Lcn/dbox/core/f/b$k;,
        Lcn/dbox/core/f/b$q;,
        Lcn/dbox/core/f/b$l;,
        Lcn/dbox/core/f/b$c;,
        Lcn/dbox/core/f/b$a;
    }
.end annotation


# static fields
.field static a:Lcn/dbox/core/f/b;

.field private static b:Lcn/dbox/core/h/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/f/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/f/b;->b:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    return-void
.end method

.method static declared-synchronized a()Lcn/dbox/core/f/b;
    .registers 2

    .prologue
    .line 108
    const-class v1, Lcn/dbox/core/f/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcn/dbox/core/f/b;->a:Lcn/dbox/core/f/b;

    if-nez v0, :cond_e

    .line 109
    new-instance v0, Lcn/dbox/core/f/b;

    invoke-direct {v0}, Lcn/dbox/core/f/b;-><init>()V

    sput-object v0, Lcn/dbox/core/f/b;->a:Lcn/dbox/core/f/b;

    .line 111
    :cond_e
    sget-object v0, Lcn/dbox/core/f/b;->a:Lcn/dbox/core/f/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 108
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()Lcn/dbox/core/h/d;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcn/dbox/core/f/b;->b:Lcn/dbox/core/h/d;

    return-object v0
.end method
