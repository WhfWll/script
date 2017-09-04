.class public final Ljw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/Object;

.field private a:Ljs;

.field private a:Ljt;

.field private a:Ljx;

.field private a:Lkk;

.field private a:Lku;

.field private a:Z


# direct methods
.method public constructor <init>(Lkk;Ljs;Ljt;Ljx;Ljava/io/OutputStream;)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljw;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljw;->a:Ljava/lang/Object;

    iput-object v1, p0, Ljw;->a:Ljt;

    iput-object v1, p0, Ljw;->a:Ljs;

    iput-object v1, p0, Ljw;->a:Ljx;

    iput-object p1, p0, Ljw;->a:Lkk;

    new-instance v0, Lku;

    invoke-direct {v0, p5}, Lku;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljw;->a:Lku;

    iput-object p2, p0, Ljw;->a:Ljs;

    iput-object p3, p0, Ljw;->a:Ljt;

    iput-object p4, p0, Ljw;->a:Ljx;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-boolean v0, p0, Ljw;->a:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljw;->a:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MQTT Client Comms Sender"

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

    iget-object v1, p0, Ljw;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Ljw;->a:Lkk;

    const/16 v2, 0x320

    invoke-virtual {v0, v2}, Lkk;->a(I)V

    iget-boolean v0, p0, Ljw;->a:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljw;->a:Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1f

    :try_start_11
    iget-object v0, p0, Ljw;->a:Lkk;

    const/16 v2, 0x321

    invoke-virtual {v0, v2}, Lkk;->a(I)V

    iget-object v0, p0, Ljw;->a:Ljava/lang/Object;

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

.method public final run()V
    .registers 7

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, v1

    :cond_3
    :goto_3
    iget-boolean v2, p0, Ljw;->a:Z

    if-eqz v2, :cond_97

    iget-object v2, p0, Ljw;->a:Lku;

    if-eqz v2, :cond_97

    :try_start_b
    iget-object v2, p0, Ljw;->a:Lkk;

    const/16 v3, 0x322

    invoke-virtual {v2, v3}, Lkk;->a(I)V

    iget-object v2, p0, Ljw;->a:Ljt;

    invoke-virtual {v2}, Ljt;->a()Lli;

    move-result-object v0

    if-eqz v0, :cond_88

    instance-of v2, v0, Lkp;

    if-eqz v2, :cond_4c

    iget-object v2, p0, Ljw;->a:Lku;

    invoke-virtual {v2, v0}, Lku;->a(Lli;)V

    iget-object v2, p0, Ljw;->a:Lku;

    invoke-virtual {v2}, Lku;->flush()V

    :goto_28
    instance-of v2, v0, Lks;

    if-eqz v2, :cond_3

    iget-object v3, p0, Ljw;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2f
    .catch Ljm; {:try_start_b .. :try_end_2f} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2f} :catch_67

    :try_start_2f
    iget-object v2, p0, Ljw;->a:Lkk;

    const/16 v4, 0x323

    invoke-virtual {v2, v4}, Lkk;->a(I)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Ljw;->a:Z

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_3b

    goto :goto_3

    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v3

    throw v2
    :try_end_3e
    .catch Ljm; {:try_start_3c .. :try_end_3e} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3e} :catch_67

    :catch_3e
    move-exception v2

    iget-object v3, p0, Ljw;->a:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_43
    iput-boolean v4, p0, Ljw;->a:Z

    monitor-exit v3
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_94

    iget-object v3, p0, Ljw;->a:Ljs;

    invoke-virtual {v3, v2}, Ljs;->a(Ljm;)V

    goto :goto_3

    :cond_4c
    :try_start_4c
    iget-object v2, p0, Ljw;->a:Ljx;

    invoke-virtual {v2, v0}, Ljx;->a(Lli;)Ljl;

    move-result-object v3

    monitor-enter v3
    :try_end_53
    .catch Ljm; {:try_start_4c .. :try_end_53} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_53} :catch_67

    :try_start_53
    iget-object v2, p0, Ljw;->a:Lku;

    invoke-virtual {v2, v0}, Lku;->a(Lli;)V

    iget-object v2, p0, Ljw;->a:Lku;

    invoke-virtual {v2}, Lku;->flush()V

    iget-object v2, p0, Ljw;->a:Ljt;

    invoke-virtual {v2, v0}, Ljt;->a(Lli;)V

    monitor-exit v3
    :try_end_63
    .catchall {:try_start_53 .. :try_end_63} :catchall_64

    goto :goto_28

    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v3

    throw v2
    :try_end_67
    .catch Ljm; {:try_start_65 .. :try_end_67} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_67} :catch_67

    :catch_67
    move-exception v2

    iget-object v3, p0, Ljw;->a:Lkk;

    const/16 v4, 0x324

    invoke-virtual {v3, v4, v1, v2}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_7a

    instance-of v3, v0, Lks;

    if-eqz v3, :cond_7a

    iget-object v3, p0, Ljw;->a:Ljt;

    invoke-virtual {v3, v0}, Ljt;->a(Lli;)V

    :cond_7a
    iput-boolean v5, p0, Ljw;->a:Z

    iget-object v3, p0, Ljw;->a:Ljs;

    new-instance v4, Ljm;

    invoke-direct {v4, v2, v5}, Ljm;-><init>(Ljava/lang/Throwable;B)V

    invoke-virtual {v3, v4}, Ljs;->a(Ljm;)V

    goto/16 :goto_3

    :cond_88
    :try_start_88
    iget-object v3, p0, Ljw;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8b
    .catch Ljm; {:try_start_88 .. :try_end_8b} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_67

    const/4 v2, 0x0

    :try_start_8c
    iput-boolean v2, p0, Ljw;->a:Z

    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_91

    goto/16 :goto_3

    :catchall_91
    move-exception v2

    :try_start_92
    monitor-exit v3

    throw v2
    :try_end_94
    .catch Ljm; {:try_start_92 .. :try_end_94} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_94} :catch_67

    :catchall_94
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_97
    iget-object v1, p0, Ljw;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9a
    iget-object v0, p0, Ljw;->a:Lkk;

    const/16 v2, 0x325

    invoke-virtual {v0, v2}, Lkk;->a(I)V

    iget-object v0, p0, Ljw;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_9a .. :try_end_a7} :catchall_a8

    return-void

    :catchall_a8
    move-exception v0

    monitor-exit v1

    throw v0
.end method
