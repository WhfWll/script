.class public final Ljv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/Object;

.field private a:Ljs;

.field private a:Ljt;

.field private a:Ljx;

.field private a:Lkk;

.field private a:Lkt;

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Lkk;Ljs;Ljt;Ljx;Ljava/io/InputStream;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Ljv;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljv;->a:Ljava/lang/Object;

    iput-object v1, p0, Ljv;->a:Ljt;

    iput-object v1, p0, Ljv;->a:Ljs;

    iput-object v1, p0, Ljv;->a:Ljx;

    iput-boolean v2, p0, Ljv;->b:Z

    new-instance v0, Lkt;

    invoke-direct {v0, p5}, Lkt;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljv;->a:Lkt;

    iput-object p2, p0, Ljv;->a:Ljs;

    iput-object p3, p0, Ljv;->a:Ljt;

    iput-object p4, p0, Ljv;->a:Ljx;

    iput-object p1, p0, Ljv;->a:Lkk;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-boolean v0, p0, Ljv;->a:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljv;->a:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MQTT Client Comms Receiver"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_11
    return-void
.end method

.method public final b()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljv;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Ljv;->a:Lkk;

    const/16 v2, 0x352

    invoke-virtual {v0, v2}, Lkk;->a(I)V

    iget-boolean v0, p0, Ljv;->a:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljv;->a:Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1f

    :try_start_11
    iget-object v0, p0, Ljv;->a:Lkk;

    const/16 v2, 0x353

    invoke-virtual {v0, v2}, Lkk;->a(I)V

    iget-object v0, p0, Ljv;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_1d} :catch_22
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1f

    :cond_1d
    :goto_1d
    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_22
    move-exception v0

    goto :goto_1d
.end method

.method public final c()V
    .registers 7

    const/4 v5, 0x1

    iget-object v0, p0, Ljv;->a:Lkk;

    const/16 v1, 0x357

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lkk;->a(I[Ljava/lang/Object;)V

    iput-boolean v5, p0, Ljv;->b:Z

    return-void
.end method

.method public final run()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_2
    iget-boolean v0, p0, Ljv;->a:Z

    if-eqz v0, :cond_76

    iget-object v0, p0, Ljv;->a:Lkt;

    if-eqz v0, :cond_76

    :try_start_a
    iget-object v0, p0, Ljv;->a:Lkk;

    const/16 v1, 0x354

    invoke-virtual {v0, v1}, Lkk;->a(I)V

    iget-object v0, p0, Ljv;->a:Lkt;

    invoke-virtual {v0}, Lkt;->a()Lli;

    move-result-object v0

    instance-of v1, v0, Lkp;

    if-eqz v1, :cond_6a

    iget-object v1, p0, Ljv;->a:Ljx;

    invoke-virtual {v1, v0}, Ljx;->a(Lli;)Ljl;

    move-result-object v1

    if-eqz v1, :cond_4b

    monitor-enter v1
    :try_end_24
    .catch Ljm; {:try_start_a .. :try_end_24} :catch_3f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_24} :catch_51

    :try_start_24
    iget-object v2, p0, Ljv;->a:Ljt;

    invoke-virtual {v2, v0}, Ljt;->b(Lli;)V

    instance-of v2, v0, Lkq;

    if-eqz v2, :cond_3a

    check-cast v0, Lkq;

    iget v0, v0, Lkq;->a:I

    if-eqz v0, :cond_3a

    iget-object v2, p0, Ljv;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_3c

    const/4 v0, 0x0

    :try_start_37
    iput-boolean v0, p0, Ljv;->a:Z

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_48

    :cond_3a
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3c

    goto :goto_2

    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1

    throw v0
    :try_end_3f
    .catch Ljm; {:try_start_3d .. :try_end_3f} :catch_3f
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3f} :catch_51

    :catch_3f
    move-exception v0

    iput-boolean v3, p0, Ljv;->a:Z

    iget-object v1, p0, Ljv;->a:Ljs;

    invoke-virtual {v1, v0}, Ljs;->a(Ljm;)V

    goto :goto_2

    :catchall_48
    move-exception v0

    :try_start_49
    monitor-exit v2

    throw v0
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_3c

    :cond_4b
    :try_start_4b
    iget-object v1, p0, Ljv;->a:Ljt;

    invoke-virtual {v1, v0}, Ljt;->b(Lli;)V
    :try_end_50
    .catch Ljm; {:try_start_4b .. :try_end_50} :catch_3f
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_50} :catch_51

    goto :goto_2

    :catch_51
    move-exception v0

    iget-object v1, p0, Ljv;->a:Lkk;

    const/16 v2, 0x355

    invoke-virtual {v1, v2, v4, v0}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-boolean v3, p0, Ljv;->a:Z

    iget-boolean v1, p0, Ljv;->b:Z

    if-nez v1, :cond_70

    iget-object v1, p0, Ljv;->a:Ljs;

    new-instance v2, Ljm;

    invoke-direct {v2, v0, v3}, Ljm;-><init>(Ljava/lang/Throwable;B)V

    invoke-virtual {v1, v2}, Ljs;->a(Ljm;)V

    goto :goto_2

    :cond_6a
    :try_start_6a
    iget-object v1, p0, Ljv;->a:Ljt;

    invoke-virtual {v1, v0}, Ljt;->b(Lli;)V
    :try_end_6f
    .catch Ljm; {:try_start_6a .. :try_end_6f} :catch_3f
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6f} :catch_51

    goto :goto_2

    :cond_70
    iget-object v0, p0, Ljv;->a:Ljs;

    invoke-virtual {v0, v4}, Ljs;->a(Ljm;)V

    goto :goto_2

    :cond_76
    iget-object v1, p0, Ljv;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_79
    iget-object v0, p0, Ljv;->a:Lkk;

    const/16 v2, 0x356

    invoke-virtual {v0, v2}, Lkk;->a(I)V

    iget-object v0, p0, Ljv;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_86
    .catchall {:try_start_79 .. :try_end_86} :catchall_87

    return-void

    :catchall_87
    move-exception v0

    monitor-exit v1

    throw v0
.end method
