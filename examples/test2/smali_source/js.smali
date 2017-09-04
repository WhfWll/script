.class public final Ljs;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field private a:Ljava/lang/Thread;

.field private a:Ljj;

.field a:Ljt;

.field public a:Lju;

.field private a:Ljv;

.field private a:Ljw;

.field private a:Ljx;

.field a:Ljy;

.field public a:Lkc;

.field private a:Lkk;

.field public a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Ljy;Ljj;Lkk;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Ljs;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljs;->a:Ljava/lang/Thread;

    iput-object p3, p0, Ljs;->a:Lkk;

    new-instance v0, Lju;

    invoke-direct {v0, p3, p0}, Lju;-><init>(Lkk;Ljs;)V

    iput-object v0, p0, Ljs;->a:Lju;

    iput-boolean v1, p0, Ljs;->a:Z

    new-instance v0, Ljx;

    iget-object v1, p0, Ljs;->a:Lkk;

    invoke-direct {v0, v1}, Ljx;-><init>(Lkk;)V

    iput-object v0, p0, Ljs;->a:Ljx;

    iput-object p1, p0, Ljs;->a:Ljy;

    new-instance v0, Ljt;

    iget-object v1, p0, Ljs;->a:Ljx;

    iget-object v2, p0, Ljs;->a:Lju;

    invoke-direct {v0, p3, p2, v1, v2}, Ljt;-><init>(Lkk;Ljj;Ljx;Lju;)V

    iput-object v0, p0, Ljs;->a:Ljt;

    iput-object p2, p0, Ljs;->a:Ljj;

    return-void
.end method


# virtual methods
.method public final a(Lli;)Ljl;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Ljs;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljs;->a:Lkk;

    const/16 v1, 0xc8

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_1e
    iget-boolean v0, p0, Ljs;->b:Z

    if-nez v0, :cond_e8

    iget-boolean v0, p0, Ljs;->a:Z

    if-eqz v0, :cond_e8

    iget-object v0, p0, Ljs;->a:Ljt;

    invoke-virtual {v0, p1}, Ljt;->a(Lli;)Ljl;

    move-result-object v0

    instance-of v1, p1, Llc;

    if-eqz v1, :cond_60

    :try_start_30
    iget-object v1, p0, Ljs;->a:Ljt;

    iget-object v2, v1, Ljt;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_35
    .catch Ljm; {:try_start_30 .. :try_end_35} :catch_64
    .catchall {:try_start_30 .. :try_end_35} :catchall_cf

    :try_start_35
    iget v3, v1, Ljt;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Ljt;->c:I

    iget-object v3, v1, Ljt;->a:Lkk;

    invoke-virtual {v3}, Lkk;->a()Z

    move-result v3

    if-eqz v3, :cond_57

    iget-object v3, v1, Ljt;->a:Lkk;

    const/16 v4, 0x282

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    iget v1, v1, Ljt;->c:I

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_35 .. :try_end_58} :catchall_61

    :try_start_58
    invoke-virtual {v0}, Ljl;->a()V
    :try_end_5b
    .catch Ljm; {:try_start_58 .. :try_end_5b} :catch_64
    .catchall {:try_start_58 .. :try_end_5b} :catchall_cf

    iget-object v1, p0, Ljs;->a:Ljt;

    invoke-virtual {v1}, Ljt;->a()V

    :cond_60
    return-object v0

    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit v2

    throw v0
    :try_end_64
    .catch Ljm; {:try_start_62 .. :try_end_64} :catch_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_cf

    :catch_64
    move-exception v0

    :try_start_65
    iget-object v1, p0, Ljs;->a:Lkk;

    invoke-virtual {v1}, Lkk;->a()Z

    move-result v1

    if-eqz v1, :cond_75

    iget-object v1, p0, Ljs;->a:Lkk;

    const/16 v2, 0xca

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_75
    iget-object v1, p0, Ljs;->a:Ljt;

    check-cast p1, Llc;

    iget-object v2, v1, Ljt;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7c
    .catchall {:try_start_65 .. :try_end_7c} :catchall_cf

    :try_start_7c
    iget-object v3, v1, Ljt;->a:Lkk;

    invoke-virtual {v3}, Lkk;->a()Z

    move-result v3

    if-eqz v3, :cond_a6

    iget-object v3, v1, Ljt;->a:Lkk;

    const/16 v4, 0x26a

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    iget-object v8, p1, Llc;->a:Ljn;

    iget v8, v8, Ljn;->a:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p1}, Llc;->c()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_a6
    iget-object v3, p1, Llc;->a:Ljn;

    iget v3, v3, Ljn;->a:I

    if-ne v3, v9, :cond_d6

    iget-object v3, v1, Ljt;->b:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Llc;->c()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_ba
    iget-object v3, v1, Ljt;->a:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iget-object v3, v1, Ljt;->a:Ljj;

    invoke-static {p1}, Ljt;->a(Lli;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljj;->a(Ljava/lang/String;)V

    iget-object v1, v1, Ljt;->a:Ljx;

    invoke-virtual {v1, p1}, Ljx;->c(Lli;)Ljl;

    monitor-exit v2
    :try_end_ce
    .catchall {:try_start_7c .. :try_end_ce} :catchall_e5

    :try_start_ce
    throw v0
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cf

    :catchall_cf
    move-exception v0

    iget-object v1, p0, Ljs;->a:Ljt;

    invoke-virtual {v1}, Ljt;->a()V

    throw v0

    :cond_d6
    :try_start_d6
    iget-object v3, v1, Ljt;->a:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Llc;->c()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e4
    .catchall {:try_start_d6 .. :try_end_e4} :catchall_e5

    goto :goto_ba

    :catchall_e5
    move-exception v0

    :try_start_e6
    monitor-exit v2

    throw v0
    :try_end_e8
    .catchall {:try_start_e6 .. :try_end_e8} :catchall_cf

    :cond_e8
    iget-object v0, p0, Ljs;->a:Lkk;

    const/16 v1, 0xd0

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Boolean;

    iget-boolean v4, p0, Ljs;->b:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Boolean;

    iget-boolean v4, p0, Ljs;->a:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Lkk;->a(I[Ljava/lang/Object;)V

    const/16 v0, 0x7d68

    invoke-static {v0}, Lat;->a(I)Ljm;

    move-result-object v0

    throw v0
.end method

.method public final a(Lkr;IJZ)Lkq;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v9, 0x0

    iget-boolean v2, p0, Ljs;->a:Z

    if-nez v2, :cond_ff

    iput-boolean v3, p0, Ljs;->b:Z

    iput p2, p0, Ljs;->a:I

    iget-object v2, p0, Ljs;->a:Ljt;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p3

    iput-wide v4, v2, Ljt;->a:J

    iget-object v2, p0, Ljs;->a:Ljt;

    move/from16 v0, p5

    iput-boolean v0, v2, Ljt;->a:Z

    :try_start_17
    iget-object v2, p0, Ljs;->a:Lkc;

    invoke-interface {v2}, Lkc;->a()V

    new-instance v2, Ljv;

    iget-object v3, p0, Ljs;->a:Lkk;

    iget-object v5, p0, Ljs;->a:Ljt;

    iget-object v6, p0, Ljs;->a:Ljx;

    iget-object v4, p0, Ljs;->a:Lkc;

    invoke-interface {v4}, Lkc;->a()Ljava/io/InputStream;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Ljv;-><init>(Lkk;Ljs;Ljt;Ljx;Ljava/io/InputStream;)V

    iput-object v2, p0, Ljs;->a:Ljv;

    iget-object v2, p0, Ljs;->a:Ljv;

    invoke-virtual {v2}, Ljv;->a()V

    new-instance v2, Ljw;

    iget-object v3, p0, Ljs;->a:Lkk;

    iget-object v5, p0, Ljs;->a:Ljt;

    iget-object v6, p0, Ljs;->a:Ljx;

    iget-object v4, p0, Ljs;->a:Lkc;

    invoke-interface {v4}, Lkc;->a()Ljava/io/OutputStream;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Ljw;-><init>(Lkk;Ljs;Ljt;Ljx;Ljava/io/OutputStream;)V

    iput-object v2, p0, Ljs;->a:Ljw;

    iget-object v2, p0, Ljs;->a:Ljw;

    invoke-virtual {v2}, Ljw;->a()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_4e} :catch_83
    .catch Ljm; {:try_start_17 .. :try_end_4e} :catch_97

    iget-object v2, p0, Ljs;->a:Lju;

    invoke-virtual {v2}, Lju;->a()V

    :try_start_53
    iget-object v2, p0, Ljs;->a:Ljt;

    invoke-virtual {v2, p1}, Ljt;->a(Lli;)Ljl;

    move-result-object v2

    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljl;->a(J)Lli;

    move-result-object v3

    if-nez v3, :cond_a7

    iget-object v2, p0, Ljs;->a:Lkk;

    const/16 v3, 0xcb

    invoke-virtual {v2, v3}, Lkk;->a(I)V

    iget-object v2, p0, Ljs;->a:Ljj;

    iget-object v2, v2, Ljj;->a:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    const/16 v2, 0x7d00

    invoke-static {v2}, Lat;->a(I)Ljm;

    move-result-object v2

    throw v2
    :try_end_77
    .catch Ljm; {:try_start_53 .. :try_end_77} :catch_77

    :catch_77
    move-exception v2

    iget-object v3, p0, Ljs;->a:Lkk;

    const/16 v4, 0xce

    invoke-virtual {v3, v4, v9, v2}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v9}, Ljs;->a(Ljm;)V

    throw v2

    :catch_83
    move-exception v2

    iget-object v3, p0, Ljs;->a:Lkk;

    const/16 v4, 0xd1

    invoke-virtual {v3, v4, v9, v2}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v3, p0, Ljs;->a:Ljj;

    iget-object v3, v3, Ljj;->a:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    invoke-static {v2}, Lat;->a(Ljava/lang/Throwable;)Ljm;

    move-result-object v2

    throw v2

    :catch_97
    move-exception v2

    iget-object v3, p0, Ljs;->a:Lkk;

    const/16 v4, 0xd4

    invoke-virtual {v3, v4, v9, v2}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v3, p0, Ljs;->a:Ljj;

    iget-object v3, v3, Ljj;->a:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    throw v2

    :cond_a7
    :try_start_a7
    instance-of v2, v3, Lkq;

    if-eqz v2, :cond_e5

    move-object v0, v3

    check-cast v0, Lkq;

    move-object v2, v0

    iget v4, v2, Lkq;->a:I

    if-eqz v4, :cond_df

    iget-object v3, p0, Ljs;->a:Lkk;

    const/16 v4, 0xcc

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    iget v8, v2, Lkq;->a:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lkk;->a(I[Ljava/lang/Object;)V

    iget-object v3, p0, Ljs;->a:Ljj;

    iget-object v3, v3, Ljj;->a:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Ljs;->a:Ljava/lang/Thread;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljs;->a(Ljm;)V

    iget v2, v2, Lkq;->a:I

    invoke-static {v2}, Lat;->a(I)Ljm;

    move-result-object v2

    throw v2

    :cond_df
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljs;->a:Z

    check-cast v3, Lkq;

    return-object v3

    :cond_e5
    iget-object v2, p0, Ljs;->a:Lkk;

    const/16 v4, 0xcd

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Lkk;->a(I[Ljava/lang/Object;)V

    iget-object v2, p0, Ljs;->a:Ljj;

    iget-object v2, v2, Ljj;->a:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    const/4 v2, 0x6

    invoke-static {v2}, Lat;->a(I)Ljm;

    move-result-object v2

    throw v2
    :try_end_ff
    .catch Ljm; {:try_start_a7 .. :try_end_ff} :catch_77

    :cond_ff
    iget-object v2, p0, Ljs;->a:Lkk;

    const/16 v3, 0xcf

    invoke-virtual {v2, v3}, Lkk;->a(I)V

    const/16 v2, 0x7d64

    invoke-static {v2}, Lat;->a(I)Ljm;

    move-result-object v2

    throw v2
.end method

.method public final a(Ljm;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Ljs;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljs;->a:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Ljs;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Ljs;->a:Lkk;

    const/16 v1, 0xc9

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Boolean;

    iget-boolean v4, p0, Ljs;->b:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2, p1}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2d
    iget-boolean v0, p0, Ljs;->b:Z

    if-nez v0, :cond_5f

    iget-boolean v0, p0, Ljs;->a:Z

    iput-boolean v6, p0, Ljs;->b:Z

    iget-object v1, p0, Ljs;->a:Ljt;

    invoke-virtual {v1, p1}, Ljt;->a(Ljm;)V

    :try_start_3a
    iget-object v1, p0, Ljs;->a:Lju;

    invoke-virtual {v1}, Lju;->b()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_68

    :goto_3f
    :try_start_3f
    iget-object v1, p0, Ljs;->a:Lkc;

    invoke-interface {v1}, Lkc;->b()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_44} :catch_66

    :goto_44
    :try_start_44
    iget-object v1, p0, Ljs;->a:Ljv;

    invoke-virtual {v1}, Ljv;->b()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_49} :catch_64

    :goto_49
    iget-object v1, p0, Ljs;->a:Ljt;

    invoke-virtual {v1, p1}, Ljt;->b(Ljm;)V

    :try_start_4e
    iget-object v1, p0, Ljs;->a:Ljw;

    invoke-virtual {v1}, Ljw;->b()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_53} :catch_62

    :goto_53
    iput-boolean v5, p0, Ljs;->a:Z

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    iget-object v0, p0, Ljs;->a:Lju;

    invoke-virtual {v0, p1}, Lju;->a(Ljava/lang/Throwable;)V

    goto :goto_12

    :cond_5f
    iput-boolean v5, p0, Ljs;->a:Z

    goto :goto_12

    :catch_62
    move-exception v1

    goto :goto_53

    :catch_64
    move-exception v1

    goto :goto_49

    :catch_66
    move-exception v1

    goto :goto_44

    :catch_68
    move-exception v1

    goto :goto_3f
.end method

.method public final a(Lks;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const-wide/16 v6, 0x7530

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Ljs;->a:Z

    if-eqz v0, :cond_ee

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ljs;->a:Lju;

    invoke-virtual {v1}, Lju;->a()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Ljs;->a:Lkk;

    const/16 v1, 0xd2

    invoke-virtual {v0, v1}, Lkk;->a(I)V

    const/16 v0, 0x7d6b

    invoke-static {v0}, Lat;->a(I)Ljm;

    move-result-object v0

    throw v0

    :cond_23
    iget-object v0, p0, Ljs;->a:Ljt;

    iget-object v1, v0, Ljt;->a:Lkk;

    const/16 v2, 0x27d

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v6, v7}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lkk;->a(I[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v1, v6, v2

    if-lez v1, :cond_c1

    iget-object v1, v0, Ljt;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_3f
    iput-boolean v2, v0, Ljt;->b:Z

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_d9

    iget-object v1, v0, Ljt;->a:Lju;

    invoke-virtual {v1}, Lju;->c()V

    iget-object v1, v0, Ljt;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4a
    iget-object v2, v0, Ljt;->a:Lkk;

    const/16 v3, 0x27e

    invoke-virtual {v2, v3}, Lkk;->a(I)V

    iget-object v2, v0, Ljt;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_4a .. :try_end_57} :catchall_dc

    iget-object v1, v0, Ljt;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5a
    iget v2, v0, Ljt;->a:I

    if-gtz v2, :cond_6a

    iget-object v2, v0, Ljt;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_6a

    iget v2, v0, Ljt;->b:I

    if-lez v2, :cond_ac

    :cond_6a
    iget-object v2, v0, Ljt;->a:Lkk;

    invoke-virtual {v2}, Lkk;->a()Z

    move-result v2

    if-eqz v2, :cond_9e

    iget-object v2, v0, Ljt;->a:Lkk;

    const/16 v3, 0x27f

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    iget v7, v0, Ljt;->a:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    iget-object v7, v0, Ljt;->b:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    iget v7, v0, Ljt;->b:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_9e
    iget-object v2, v0, Ljt;->b:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    iget-object v2, v0, Ljt;->a:Lkk;

    const/16 v3, 0x280

    invoke-virtual {v2, v3}, Lkk;->a(I)V
    :try_end_ac
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_ac} :catch_fc
    .catchall {:try_start_5a .. :try_end_ac} :catchall_df

    :cond_ac
    :goto_ac
    :try_start_ac
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_df

    iget-object v1, v0, Ljt;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b0
    iget-object v2, v0, Ljt;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljt;->a(Ljava/util/Vector;)V

    iget-object v2, v0, Ljt;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljt;->a(Ljava/util/Vector;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Ljt;->b:Z

    const/4 v2, 0x0

    iput v2, v0, Ljt;->a:I

    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_b0 .. :try_end_c1} :catchall_e2

    :cond_c1
    iget-object v0, p0, Ljs;->a:Ljv;

    invoke-virtual {v0}, Ljv;->c()V

    :try_start_c6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljs;->a:Ljava/lang/Thread;

    invoke-virtual {p0, p1}, Ljs;->a(Lli;)Ljl;

    move-result-object v0

    invoke-virtual {v0}, Ljl;->a()V
    :try_end_d3
    .catch Ljm; {:try_start_c6 .. :try_end_d3} :catch_e5
    .catchall {:try_start_c6 .. :try_end_d3} :catchall_e7

    invoke-virtual {p0, v8}, Ljs;->a(Ljm;)V

    iput-object v8, p0, Ljs;->a:Ljava/lang/Thread;

    return-void

    :catchall_d9
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_dc
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_df
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_e2
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_e5
    move-exception v0

    :try_start_e6
    throw v0
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e7

    :catchall_e7
    move-exception v0

    invoke-virtual {p0, v8}, Ljs;->a(Ljm;)V

    iput-object v8, p0, Ljs;->a:Ljava/lang/Thread;

    throw v0

    :cond_ee
    iget-object v0, p0, Ljs;->a:Lkk;

    const/16 v1, 0xd3

    invoke-virtual {v0, v1}, Lkk;->a(I)V

    const/16 v0, 0x7d65

    invoke-static {v0}, Lat;->a(I)Ljm;

    move-result-object v0

    throw v0

    :catch_fc
    move-exception v2

    goto :goto_ac
.end method
