.class public final Lju;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:I


# instance fields
.field private a:Ljava/lang/Object;

.field private a:Ljava/lang/Thread;

.field private a:Ljava/util/Vector;

.field private a:Lji;

.field private a:Ljs;

.field private a:Lkk;

.field private a:Z

.field private b:Ljava/lang/Object;

.field private b:Ljava/util/Vector;

.field private b:Z

.field private c:Ljava/lang/Object;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    sput v0, Lju;->a:I

    return-void
.end method

.method constructor <init>(Lkk;Ljs;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lju;->a:Z

    iput-boolean v1, p0, Lju;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lju;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lju;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lju;->c:Ljava/lang/Object;

    iput-boolean v1, p0, Lju;->c:Z

    iput-object p1, p0, Lju;->a:Lkk;

    iput-object p2, p0, Lju;->a:Ljs;

    new-instance v0, Ljava/util/Vector;

    sget v1, Lju;->a:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lju;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    sget v1, Lju;->a:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lju;->b:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Lju;->a:Ljava/lang/Thread;

    return-object v0
.end method

.method public final a()V
    .registers 3

    iget-boolean v0, p0, Lju;->a:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    iput-boolean v0, p0, Lju;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lju;->b:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MQTT Client Callback"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lju;->a:Ljava/lang/Thread;

    iget-object v0, p0, Lju;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_18
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lju;->a:Lji;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lju;->a:Lkk;

    const/16 v1, 0x2c4

    invoke-virtual {v0, v1, v3, p1}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lju;->a:Lji;

    iget-object v1, v0, Lji;->a:Ldz;

    if-eqz v1, :cond_17

    iget-object v1, v0, Lji;->a:Ldz;

    invoke-interface {v1, p1}, Ldz;->b(Ljava/lang/Throwable;)V

    :cond_17
    iget-object v1, v0, Lji;->a:Lea;

    sget-object v2, Lea;->d:Lea;

    invoke-virtual {v1, v2}, Lea;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-boolean v1, v0, Lji;->a:Z

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lji;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lji;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public final a(Lji;)V
    .registers 2

    iput-object p1, p0, Lju;->a:Lji;

    return-void
.end method

.method public final a(Ljl;)V
    .registers 7

    iget-object v0, p0, Lju;->a:Lji;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lju;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lju;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lju;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lju;->a:Lkk;

    const/16 v2, 0x2cb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_21
    iget-object v0, p0, Lju;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_28

    :cond_27
    return-void

    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Llc;)V
    .registers 5

    iget-object v0, p0, Lju;->a:Lji;

    if-eqz v0, :cond_3b

    iget-object v1, p0, Lju;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-boolean v0, p0, Lju;->b:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lju;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sget v2, Lju;->a:I
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_3c

    if-lt v0, v2, :cond_21

    :try_start_15
    iget-object v0, p0, Lju;->a:Lkk;

    const/16 v2, 0x2c5

    invoke-virtual {v0, v2}, Lkk;->a(I)V

    iget-object v0, p0, Lju;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_21} :catch_42
    .catchall {:try_start_15 .. :try_end_21} :catchall_3c

    :cond_21
    :goto_21
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_3c

    iget-boolean v0, p0, Lju;->b:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lju;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lju;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2e
    iget-object v0, p0, Lju;->a:Lkk;

    const/16 v2, 0x2c6

    invoke-virtual {v0, v2}, Lkk;->a(I)V

    iget-object v0, p0, Lju;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_3f

    :cond_3b
    return-void

    :catchall_3c
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_3f
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_42
    move-exception v0

    goto :goto_21
.end method

.method public final b()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lju;->a:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Lju;->a:Lkk;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Lkk;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lju;->a:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lju;->a:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    :try_start_1a
    iget-object v1, p0, Lju;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_48

    :try_start_1d
    iget-object v2, p0, Lju;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_45

    :try_start_20
    iget-object v0, p0, Lju;->a:Lkk;

    const/16 v3, 0x2bd

    invoke-virtual {v0, v3}, Lkk;->a(I)V

    iget-object v0, p0, Lju;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_42

    :try_start_2d
    iget-object v0, p0, Lju;->a:Lkk;

    const/16 v2, 0x2be

    invoke-virtual {v0, v2}, Lkk;->a(I)V

    iget-object v0, p0, Lju;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_45

    :cond_3a
    :goto_3a
    iget-object v0, p0, Lju;->a:Lkk;

    const/16 v1, 0x2bf

    invoke-virtual {v0, v1}, Lkk;->a(I)V

    :cond_41
    return-void

    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v2

    throw v0
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit v1

    throw v0
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_48} :catch_48

    :catch_48
    move-exception v0

    goto :goto_3a
.end method

.method public final c()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lju;->b:Z

    iget-object v1, p0, Lju;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lju;->a:Lkk;

    const/16 v2, 0x2c7

    invoke-virtual {v0, v2}, Lkk;->a(I)V

    iget-object v0, p0, Lju;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_28

    iget-object v1, p0, Lju;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_16
    iget-boolean v0, p0, Lju;->c:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_2b

    if-eqz v0, :cond_26

    :try_start_1a
    iget-object v0, p0, Lju;->a:Lkk;

    const/16 v2, 0x2c8

    invoke-virtual {v0, v2}, Lkk;->a(I)V

    iget-object v0, p0, Lju;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_26} :catch_2e
    .catchall {:try_start_1a .. :try_end_26} :catchall_2b

    :cond_26
    :goto_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_2b

    return-void

    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_2e
    move-exception v0

    goto :goto_26
.end method

.method public final run()V
    .registers 13

    const/4 v2, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    :goto_4
    iget-boolean v0, p0, Lju;->a:Z

    if-eqz v0, :cond_159

    :try_start_8
    iget-object v1, p0, Lju;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_82

    :try_start_b
    iget-object v0, p0, Lju;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lju;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lju;->a:Lkk;

    const/16 v3, 0x2c0

    invoke-virtual {v0, v3}, Lkk;->a(I)V

    iget-object v0, p0, Lju;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_7f

    :goto_28
    iget-boolean v0, p0, Lju;->a:Z

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lju;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lju;->a:Lji;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lju;->b:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljl;

    iget-object v1, p0, Lju;->b:Ljava/util/Vector;

    invoke-virtual {v1, v9}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v1, p0, Lju;->a:Lkk;

    invoke-virtual {v1}, Lkk;->a()Z

    move-result v1

    if-eqz v1, :cond_58

    iget-object v1, p0, Lju;->a:Lkk;

    const/16 v3, 0x2c1

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-virtual {v1, v3, v4}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_58
    iget-object v0, p0, Lju;->a:Lji;

    :cond_5a
    iget-object v0, p0, Lju;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    iget-boolean v0, p0, Lju;->b:Z

    if-eqz v0, :cond_84

    iget-object v0, p0, Lju;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_6b
    :goto_6b
    iget-object v1, p0, Lju;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6e
    iget-object v0, p0, Lju;->a:Lkk;

    const/16 v3, 0x2c2

    invoke-virtual {v0, v3}, Lkk;->a(I)V

    iget-object v0, p0, Lju;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_6e .. :try_end_7b} :catchall_7c

    goto :goto_4

    :catchall_7c
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_7f
    move-exception v0

    :try_start_80
    monitor-exit v1

    throw v0
    :try_end_82
    .catch Ljava/lang/InterruptedException; {:try_start_80 .. :try_end_82} :catch_82

    :catch_82
    move-exception v0

    goto :goto_28

    :cond_84
    iget-object v0, p0, Lju;->a:Ljs;

    iget-boolean v0, v0, Ljs;->a:Z

    if-eqz v0, :cond_6b

    iput-boolean v10, p0, Lju;->c:Z

    iget-object v0, p0, Lju;->a:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget-object v1, p0, Lju;->a:Ljava/util/Vector;

    invoke-virtual {v1, v9}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v1, p0, Lju;->a:Ljs;

    iget-boolean v1, v1, Ljs;->a:Z

    if-eqz v1, :cond_f8

    iget-object v1, p0, Lju;->a:Lji;

    if-eqz v1, :cond_f8

    :try_start_a3
    iget-object v1, v0, Llc;->a:Ljava/lang/String;

    if-eqz v1, :cond_172

    iget-object v3, p0, Lju;->a:Ljs;

    iget-object v3, v3, Ljs;->a:Ljy;

    invoke-virtual {v3, v1}, Ljy;->a(Ljava/lang/String;)Ljr;

    move-result-object v1

    :goto_af
    iget-object v3, p0, Lju;->a:Lkk;

    invoke-virtual {v3}, Lkk;->a()Z

    move-result v3

    if-eqz v3, :cond_d2

    iget-object v3, p0, Lju;->a:Lkk;

    const/16 v4, 0x2c9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v1, Ljr;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v0}, Llc;->c()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_d2
    iget-object v3, p0, Lju;->a:Lji;

    iget-object v4, v0, Llc;->a:Ljn;

    iget-object v5, v3, Lji;->a:Ldz;

    if-eqz v5, :cond_e8

    iget-object v3, v3, Lji;->a:Ldz;

    iget-object v1, v1, Ljr;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    iget-object v4, v4, Ljn;->a:[B

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, v1}, Ldz;->a(Ljava/lang/String;)V

    :cond_e8
    iget-object v1, v0, Llc;->a:Ljn;

    iget v1, v1, Ljn;->a:I

    if-ne v1, v10, :cond_fc

    iget-object v1, p0, Lju;->a:Ljs;

    new-instance v3, Lky;

    invoke-direct {v3, v0}, Lky;-><init>(Llc;)V

    invoke-virtual {v1, v3}, Ljs;->a(Lli;)Ljl;
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_f8} :catch_146

    :cond_f8
    :goto_f8
    iput-boolean v9, p0, Lju;->c:Z

    goto/16 :goto_6b

    :cond_fc
    :try_start_fc
    iget-object v1, v0, Llc;->a:Ljn;

    iget v1, v1, Ljn;->a:I

    if-ne v1, v11, :cond_f8

    iget-object v1, p0, Lju;->a:Ljs;

    iget-object v1, v1, Ljs;->a:Ljt;

    iget-object v3, v1, Ljt;->a:Lkk;

    invoke-virtual {v3}, Lkk;->a()Z

    move-result v3

    if-eqz v3, :cond_124

    iget-object v3, v1, Ljt;->a:Lkk;

    const/16 v4, 0x281

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v0}, Llc;->c()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_124
    iget-object v3, v1, Ljt;->a:Ljj;

    invoke-static {v0}, Ljt;->b(Lli;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljj;->a(Ljava/lang/String;)V

    iget-object v1, v1, Ljt;->c:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Llc;->c()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lkz;

    invoke-direct {v1, v0}, Lkz;-><init>(Llc;)V

    iget-object v0, p0, Lju;->a:Ljs;

    invoke-virtual {v0, v1}, Ljs;->a(Lli;)Ljl;
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_145} :catch_146

    goto :goto_f8

    :catch_146
    move-exception v0

    iget-object v1, p0, Lju;->a:Lkk;

    const/16 v3, 0x2ca

    invoke-virtual {v1, v3, v2, v0}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lju;->a:Ljs;

    new-instance v3, Ljm;

    invoke-direct {v3, v0}, Ljm;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Ljs;->a(Ljm;)V

    goto :goto_f8

    :cond_159
    iget-object v0, p0, Lju;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v1, p0, Lju;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_161
    iget-object v0, p0, Lju;->a:Lkk;

    const/16 v2, 0x2c3

    invoke-virtual {v0, v2}, Lkk;->a(I)V

    iget-object v0, p0, Lju;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_16e
    .catchall {:try_start_161 .. :try_end_16e} :catchall_16f

    return-void

    :catchall_16f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_172
    move-object v1, v2

    goto/16 :goto_af
.end method
