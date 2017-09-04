.class public final Ljl;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field private a:Ljm;

.field public a:Lkk;

.field public a:Lli;

.field public a:Z

.field public b:Ljava/lang/Object;

.field public b:Z


# direct methods
.method public constructor <init>(Lkk;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljl;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljl;->b:Ljava/lang/Object;

    iput-object v2, p0, Ljl;->a:Lli;

    iput-object v2, p0, Ljl;->a:Ljm;

    iput-boolean v1, p0, Ljl;->a:Z

    iput-boolean v1, p0, Ljl;->b:Z

    iput-object p1, p0, Ljl;->a:Lkk;

    return-void
.end method

.method public constructor <init>(Lkk;Llc;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljl;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljl;->b:Ljava/lang/Object;

    iput-object v2, p0, Ljl;->a:Lli;

    iput-object v2, p0, Ljl;->a:Ljm;

    iput-boolean v1, p0, Ljl;->a:Z

    iput-boolean v1, p0, Ljl;->b:Z

    iput-object p1, p0, Ljl;->a:Lkk;

    iget-object v0, p2, Llc;->a:Ljn;

    invoke-virtual {p2}, Llc;->c()I

    return-void
.end method


# virtual methods
.method public final a(J)Lli;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, Ljl;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Ljl;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v2, p0, Ljl;->a:Lkk;

    const/16 v3, 0x190

    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v4, v0

    const/4 v0, 0x1

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v4, v0

    const/4 v0, 0x2

    new-instance v5, Ljava/lang/Boolean;

    iget-boolean v6, p0, Ljl;->a:Z

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v0

    const/4 v0, 0x3

    new-instance v5, Ljava/lang/Boolean;

    iget-boolean v6, p0, Ljl;->b:Z

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v0

    const/4 v5, 0x4

    iget-object v0, p0, Ljl;->a:Ljm;

    if-nez v0, :cond_4e

    const-string v0, "false"

    :goto_3a
    aput-object v0, v4, v5

    const/4 v0, 0x5

    iget-object v5, p0, Ljl;->a:Lli;

    aput-object v5, v4, v0

    iget-object v0, p0, Ljl;->a:Ljm;

    invoke-virtual {v2, v3, v4, v0}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_46
    iget-boolean v0, p0, Ljl;->b:Z

    if-eqz v0, :cond_51

    iget-object v0, p0, Ljl;->a:Lli;

    monitor-exit v1

    :goto_4d
    return-object v0

    :cond_4e
    const-string v0, "true"

    goto :goto_3a

    :cond_51
    iget-object v0, p0, Ljl;->a:Ljm;
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_78

    if-nez v0, :cond_60

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_7b

    :try_start_5b
    iget-object v0, p0, Ljl;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_60} :catch_81
    .catchall {:try_start_5b .. :try_end_60} :catchall_78

    :cond_60
    :goto_60
    :try_start_60
    iget-boolean v0, p0, Ljl;->b:Z

    if-nez v0, :cond_83

    iget-object v0, p0, Ljl;->a:Ljm;

    if-eqz v0, :cond_83

    iget-object v0, p0, Ljl;->a:Ljm;

    const/4 v2, 0x0

    iput-object v2, p0, Ljl;->a:Ljm;

    iget-object v2, p0, Ljl;->a:Lkk;

    const/16 v3, 0x191

    const/4 v4, 0x0

    iget-object v5, p0, Ljl;->a:Ljm;

    invoke-virtual {v2, v3, v4, v5}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v0
    :try_end_78
    .catchall {:try_start_60 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_7b
    :try_start_7b
    iget-object v0, p0, Ljl;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_80
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_80} :catch_81
    .catchall {:try_start_7b .. :try_end_80} :catchall_78

    goto :goto_60

    :catch_81
    move-exception v0

    goto :goto_60

    :cond_83
    :try_start_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_78

    iget-object v0, p0, Ljl;->a:Lkk;

    const/16 v1, 0x192

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Ljl;->a:Lli;

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lkk;->a(I[Ljava/lang/Object;)V

    iget-object v0, p0, Ljl;->a:Lli;

    goto :goto_4d
.end method

.method public final a()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    iget-object v1, p0, Ljl;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Ljl;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    :try_start_6
    iget-object v0, p0, Ljl;->a:Ljm;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljl;->a:Ljm;

    throw v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit v2

    throw v0
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_13
    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_d

    :try_start_14
    iget-boolean v0, p0, Ljl;->a:Z
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_10

    if-nez v0, :cond_1d

    :try_start_18
    iget-object v0, p0, Ljl;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1d} :catch_30
    .catchall {:try_start_18 .. :try_end_1d} :catchall_10

    :cond_1d
    :goto_1d
    :try_start_1d
    iget-boolean v0, p0, Ljl;->a:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Ljl;->a:Ljm;

    if-nez v0, :cond_2b

    const/4 v0, 0x6

    invoke-static {v0}, Lat;->a(I)Ljm;

    move-result-object v0

    throw v0

    :cond_2b
    iget-object v0, p0, Ljl;->a:Ljm;

    throw v0

    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_10

    return-void

    :catch_30
    move-exception v0

    goto :goto_1d
.end method

.method public final a(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljl;->a(J)Lli;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Ljl;->b:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Ljl;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Ljl;->a:Lkk;

    const/16 v1, 0x196

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_24
    new-instance v0, Ljm;

    const/16 v1, 0x7d00

    invoke-direct {v0, v1}, Ljm;-><init>(I)V

    throw v0

    :cond_2c
    return-void
.end method

.method public final a(Ljm;)V
    .registers 6

    iget-object v0, p0, Ljl;->a:Lkk;

    const/16 v1, 0x195

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2, p1}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v1, p0, Ljl;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_10
    iput-object p1, p0, Ljl;->a:Ljm;

    iget-object v0, p0, Ljl;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_22

    iget-object v1, p0, Ljl;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1b
    iget-object v0, p0, Ljl;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_25

    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lli;)V
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Ljl;->a:Lkk;

    const/16 v1, 0x194

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Lkk;->a(I[Ljava/lang/Object;)V

    iget-object v1, p0, Ljl;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_13
    iput-object p1, p0, Ljl;->a:Lli;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljl;->b:Z

    iget-object v0, p0, Ljl;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
