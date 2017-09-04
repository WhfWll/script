.class public final Lkk;
.super Ljava/lang/Object;


# static fields
.field private static a:Lkl;

.field private static a:S


# instance fields
.field private a:Ljava/lang/String;

.field private a:Z

.field private b:S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-short v0, Lkk;->a:S

    return-void
.end method

.method private constructor <init>(SLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lkk;->b:S

    iput-object p2, p0, Lkk;->a:Ljava/lang/String;

    sget-object v0, Lkk;->a:Lkl;

    if-eqz v0, :cond_19

    sget-object v0, Lkk;->a:Lkl;

    iget-object v1, p0, Lkk;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lkl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, Lkk;->a:Z

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lkk;
    .registers 4

    const-class v1, Lkk;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lkk;->a:Lkl;

    if-nez v0, :cond_1d

    const-string v0, "java.io.File"

    invoke-static {v0}, Lat;->b(Ljava/lang/String;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2d

    move-result v0

    if-eqz v0, :cond_1d

    :try_start_f
    const-string v0, "km"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkl;

    sput-object v0, Lkk;->a:Lkl;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_30
    .catchall {:try_start_f .. :try_end_1d} :catchall_2d

    :cond_1d
    :goto_1d
    :try_start_1d
    new-instance v0, Lkk;

    sget-short v2, Lkk;->a:S

    invoke-direct {v0, v2, p0}, Lkk;-><init>(SLjava/lang/String;)V

    sget-short v2, Lkk;->a:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    sput-short v2, Lkk;->a:S
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_2d

    monitor-exit v1

    return-object v0

    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_30
    move-exception v0

    goto :goto_1d
.end method


# virtual methods
.method public final a(I)V
    .registers 6

    const/4 v3, 0x0

    iget-boolean v0, p0, Lkk;->a:Z

    if-eqz v0, :cond_11

    sget-object v0, Lkk;->a:Lkl;

    new-instance v1, Lkn;

    iget-short v2, p0, Lkk;->b:S

    invoke-direct {v1, v2, p1, v3, v3}, Lkn;-><init>(SILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lkl;->a(Lkn;)V

    :cond_11
    return-void
.end method

.method public final a(I[Ljava/lang/Object;)V
    .registers 7

    iget-boolean v0, p0, Lkk;->a:Z

    if-eqz v0, :cond_11

    sget-object v0, Lkk;->a:Lkl;

    new-instance v1, Lkn;

    iget-short v2, p0, Lkk;->b:S

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3, p2}, Lkn;-><init>(SILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lkl;->a(Lkn;)V

    :cond_11
    return-void
.end method

.method public final a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7

    iget-boolean v0, p0, Lkk;->a:Z

    if-eqz v0, :cond_10

    sget-object v0, Lkk;->a:Lkl;

    new-instance v1, Lkn;

    iget-short v2, p0, Lkk;->b:S

    invoke-direct {v1, v2, p1, p3, p2}, Lkn;-><init>(SILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lkl;->a(Lkn;)V

    :cond_10
    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lkk;->a:Z

    return v0
.end method
