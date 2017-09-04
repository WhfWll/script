.class public final Ljt;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field a:J

.field a:Ljava/lang/Object;

.field a:Ljava/util/Hashtable;

.field a:Ljava/util/Vector;

.field a:Ljj;

.field a:Lju;

.field a:Ljx;

.field a:Lkk;

.field private a:Lli;

.field a:Z

.field b:I

.field private b:J

.field b:Ljava/lang/Object;

.field b:Ljava/util/Hashtable;

.field b:Ljava/util/Vector;

.field b:Z

.field c:I

.field private c:J

.field c:Ljava/lang/Object;

.field c:Ljava/util/Hashtable;

.field private c:Z

.field private d:I

.field private d:Ljava/util/Hashtable;

.field private d:Z

.field private e:I

.field private e:Z

.field private f:Z


# direct methods
.method protected constructor <init>(Lkk;Ljj;Ljx;Lju;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Ljt;->d:I

    const/16 v0, 0xa

    iput v0, p0, Ljt;->e:I

    iput v2, p0, Ljt;->a:I

    iput v2, p0, Ljt;->b:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljt;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljt;->b:Ljava/lang/Object;

    iput-boolean v2, p0, Ljt;->b:Z

    iput-wide v4, p0, Ljt;->b:J

    iput-wide v4, p0, Ljt;->c:J

    iput-boolean v2, p0, Ljt;->c:Z

    iput-boolean v2, p0, Ljt;->d:Z

    iput-boolean v2, p0, Ljt;->e:Z

    iput-object v1, p0, Ljt;->a:Lju;

    iput-object v1, p0, Ljt;->a:Ljava/util/Hashtable;

    iput-object v1, p0, Ljt;->b:Ljava/util/Hashtable;

    iput-object v1, p0, Ljt;->c:Ljava/util/Hashtable;

    iput-boolean v2, p0, Ljt;->f:Z

    iput v2, p0, Ljt;->c:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljt;->c:Ljava/lang/Object;

    iput-object p1, p0, Ljt;->a:Lkk;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljt;->d:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    iget v1, p0, Ljt;->e:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Ljt;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljt;->b:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljt;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljt;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljt;->c:Ljava/util/Hashtable;

    new-instance v0, Lkw;

    invoke-direct {v0}, Lkw;-><init>()V

    iput-object v0, p0, Ljt;->a:Lli;

    iput v2, p0, Ljt;->b:I

    iput v2, p0, Ljt;->a:I

    iput-object p2, p0, Ljt;->a:Ljj;

    iput-object p4, p0, Ljt;->a:Lju;

    iput-object p3, p0, Ljt;->a:Ljx;

    invoke-direct {p0}, Ljt;->c()V

    return-void
.end method

.method private declared-synchronized a()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v1, p0, Ljt;->d:I

    const/4 v0, 0x0

    :cond_4
    iget v2, p0, Ljt;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljt;->d:I

    iget v2, p0, Ljt;->d:I

    const v3, 0xffff

    if-le v2, v3, :cond_14

    const/4 v2, 0x1

    iput v2, p0, Ljt;->d:I

    :cond_14
    iget v2, p0, Ljt;->d:I

    if-ne v2, v1, :cond_27

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_27

    const/16 v0, 0x7d01

    invoke-static {v0}, Lat;->a(I)Ljm;

    move-result-object v0

    throw v0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_27
    :try_start_27
    iget-object v2, p0, Ljt;->d:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Ljt;->d:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Ljt;->d:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Ljt;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljt;->d:I
    :try_end_44
    .catchall {:try_start_27 .. :try_end_44} :catchall_24

    monitor-exit p0

    return v0
.end method

.method static a(Lli;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "s-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lli;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Vector;)Ljava/util/Vector;
    .registers 9

    const/4 v2, 0x0

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_e

    move-object v0, v7

    :goto_d
    return-object v0

    :cond_e
    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    :goto_12
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lli;

    invoke-virtual {v0}, Lli;->c()I

    move-result v6

    sub-int v0, v6, v5

    if-le v0, v4, :cond_29

    sub-int v4, v6, v5

    move v3, v1

    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v5, v6

    goto :goto_12

    :cond_2e
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lli;

    invoke-virtual {v0}, Lli;->c()I

    move-result v0

    const v1, 0xffff

    sub-int/2addr v1, v5

    add-int/2addr v0, v1

    if-le v0, v4, :cond_40

    move v3, v2

    :cond_40
    move v0, v3

    :goto_41
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_51
    :goto_51
    if-ge v2, v3, :cond_5d

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    :cond_5d
    move-object v0, v7

    goto :goto_d
.end method

.method private a(Ljava/lang/String;Ljo;)Lli;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_3
    invoke-interface {p2}, Ljo;->a_()[B

    move-result-object v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    new-array v1, v1, [B

    :cond_c
    new-instance v2, Llj;

    invoke-interface {p2}, Ljo;->a()[B

    move-result-object v3

    invoke-interface {p2}, Ljo;->a()I

    move-result v4

    invoke-interface {p2}, Ljo;->b()I

    move-result v5

    invoke-direct {v2, v3, v4, v1, v5}, Llj;-><init>([BI[BI)V

    invoke-static {v2}, Lli;->a(Ljava/io/InputStream;)Lli;
    :try_end_20
    .catch Ljm; {:try_start_3 .. :try_end_20} :catch_30

    move-result-object v0

    :cond_21
    :goto_21
    iget-object v1, p0, Ljt;->a:Lkk;

    const/16 v2, 0x259

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Lkk;->a(I[Ljava/lang/Object;)V

    return-object v0

    :catch_30
    move-exception v1

    iget-object v2, p0, Ljt;->a:Lkk;

    const/16 v3, 0x25a

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {v2, v3, v4, v1}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljm;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/EOFException;

    if-eqz v2, :cond_4c

    if-eqz p1, :cond_21

    iget-object v1, p0, Ljt;->a:Ljj;

    invoke-virtual {v1, p1}, Ljj;->a(Ljava/lang/String;)V

    goto :goto_21

    :cond_4c
    throw v1
.end method

.method private declared-synchronized a(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljt;->d:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Ljava/util/Vector;Lli;)V
    .registers 5

    invoke-virtual {p1}, Lli;->c()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lli;

    invoke-virtual {v0}, Lli;->c()I

    move-result v0

    if-le v0, v2, :cond_1c

    invoke-virtual {p0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :goto_1b
    return-void

    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_20
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method private a()Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljt;->a:Lkk;

    invoke-virtual {v2}, Lkk;->a()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Ljt;->a:Lkk;

    const/16 v3, 0x272

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Boolean;

    iget-boolean v6, p0, Ljt;->b:Z

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v1

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Ljt;->a:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v0

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    iget-object v7, p0, Ljt;->b:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Ljt;->b:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_3e
    iget-boolean v2, p0, Ljt;->b:Z

    if-eqz v2, :cond_5f

    iget v2, p0, Ljt;->a:I

    if-nez v2, :cond_5f

    iget-object v2, p0, Ljt;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_5f

    iget v2, p0, Ljt;->b:I

    if-nez v2, :cond_5f

    iget-object v1, p0, Ljt;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_55
    iget-object v2, p0, Ljt;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_5c

    :goto_5b
    return v0

    :catchall_5c
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5f
    move v0, v1

    goto :goto_5b
.end method

.method static b(Lli;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "r-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lli;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Lli;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljt;->b:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Ljt;->a:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljt;->c:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Ljt;->a:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_8b

    :cond_1f
    iget-boolean v0, p0, Ljt;->f:Z

    if-eqz v0, :cond_56

    iget-object v0, p0, Ljt;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Ljt;->a:Lkk;

    const/16 v1, 0x26b

    new-array v2, v9, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Long;

    iget-wide v4, p0, Ljt;->a:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Long;

    iget-wide v4, p0, Ljt;->b:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Long;

    iget-wide v4, p0, Ljt;->c:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_4f
    const/16 v0, 0x7d00

    invoke-static {v0}, Lat;->a(I)Ljm;

    move-result-object v0

    throw v0

    :cond_56
    iget-object v0, p0, Ljt;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Ljt;->a:Lkk;

    const/16 v1, 0x26c

    new-array v2, v9, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Long;

    iget-wide v4, p0, Ljt;->a:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Long;

    iget-wide v4, p0, Ljt;->b:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Long;

    iget-wide v4, p0, Ljt;->c:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_82
    iput-boolean v6, p0, Ljt;->f:Z

    iget-object v0, p0, Ljt;->a:Lli;

    iget-object v1, p0, Ljt;->a:Ljx;

    invoke-virtual {v1, v0}, Ljx;->d(Lli;)Ljl;

    :cond_8b
    return-object v0
.end method

.method private b()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    iget-object v0, p0, Ljt;->a:Lkk;

    const/16 v1, 0x25b

    invoke-virtual {v0, v1}, Lkk;->a(I)V

    iget-object v0, p0, Ljt;->a:Ljj;

    iget-object v0, v0, Ljj;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Ljt;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Ljt;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Ljt;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Ljt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Ljt;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Ljt;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Ljt;->a:Ljx;

    iget-object v1, v0, Ljx;->a:Lkk;

    const/16 v2, 0x131

    invoke-virtual {v1, v2}, Lkk;->a(I)V

    iget-object v0, v0, Ljx;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method private static c(Lli;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sc-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lli;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Ljt;->a:Ljj;

    iget-object v0, v0, Ljj;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    iget v0, p0, Ljt;->d:I

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Ljt;->a:Lkk;

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Lkk;->a(I)V

    move v3, v0

    :cond_1b
    :goto_1b
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_17c

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Ljt;->a:Ljj;

    invoke-virtual {v1, v0}, Ljj;->a(Ljava/lang/String;)Ljo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljt;->a(Ljava/lang/String;Ljo;)Lli;

    move-result-object v2

    if-eqz v2, :cond_1b

    const-string v1, "r-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Ljt;->a:Lkk;

    const/16 v4, 0x25c

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v0, v7, v10

    aput-object v2, v7, v11

    invoke-virtual {v1, v4, v7}, Lkk;->a(I[Ljava/lang/Object;)V

    iget-object v0, p0, Ljt;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v2}, Lli;->c()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_57
    const-string v1, "s-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_161

    move-object v1, v2

    check-cast v1, Llc;

    invoke-virtual {v1}, Llc;->c()I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v3, p0, Ljt;->a:Ljj;

    invoke-static {v1}, Ljt;->c(Lli;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljj;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fd

    iget-object v3, p0, Ljt;->a:Ljj;

    invoke-static {v1}, Ljt;->c(Lli;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljj;->a(Ljava/lang/String;)Ljo;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Ljt;->a(Ljava/lang/String;Ljo;)Lli;

    move-result-object v3

    check-cast v3, Llb;

    if-eqz v3, :cond_ef

    iget-object v7, p0, Ljt;->a:Lkk;

    const/16 v8, 0x25d

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v0, v9, v10

    aput-object v2, v9, v11

    invoke-virtual {v7, v8, v9}, Lkk;->a(I[Ljava/lang/Object;)V

    iget-object v0, p0, Ljt;->a:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v3}, Llb;->c()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a3
    iget-object v2, p0, Ljt;->a:Ljx;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Llc;->c()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object v0, v2, Ljx;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13c

    iget-object v0, v2, Ljx;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljl;

    iget-object v7, v2, Ljx;->a:Lkk;

    invoke-virtual {v7}, Lkk;->a()Z

    move-result v7

    if-eqz v7, :cond_d5

    iget-object v2, v2, Ljx;->a:Lkk;

    const/16 v7, 0x12e

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v1, v8, v10

    aput-object v3, v8, v11

    aput-object v0, v8, v12

    invoke-virtual {v2, v7, v8}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_d5
    :goto_d5
    iget-object v0, p0, Ljt;->d:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Llc;->c()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Llc;->c()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    goto/16 :goto_1b

    :cond_ef
    iget-object v3, p0, Ljt;->a:Lkk;

    const/16 v7, 0x25e

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v0, v8, v10

    aput-object v2, v8, v11

    invoke-virtual {v3, v7, v8}, Lkk;->a(I[Ljava/lang/Object;)V

    goto :goto_a3

    :cond_fd
    iget-object v3, v1, Llc;->a:Ljn;

    iget v3, v3, Ljn;->a:I

    if-ne v3, v12, :cond_11f

    iget-object v3, p0, Ljt;->a:Lkk;

    const/16 v7, 0x25f

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v0, v8, v10

    aput-object v2, v8, v11

    invoke-virtual {v3, v7, v8}, Lkk;->a(I[Ljava/lang/Object;)V

    iget-object v0, p0, Ljt;->a:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Llc;->c()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a3

    :cond_11f
    iget-object v3, p0, Ljt;->a:Lkk;

    const/16 v7, 0x260

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v0, v8, v10

    aput-object v2, v8, v11

    invoke-virtual {v3, v7, v8}, Lkk;->a(I[Ljava/lang/Object;)V

    iget-object v0, p0, Ljt;->b:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Llc;->c()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a3

    :cond_13c
    new-instance v0, Ljl;

    iget-object v7, v2, Ljx;->a:Lkk;

    invoke-direct {v0, v7, v1}, Ljl;-><init>(Lkk;Llc;)V

    iget-object v7, v2, Ljx;->a:Ljava/util/Hashtable;

    invoke-virtual {v7, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v2, Ljx;->a:Lkk;

    invoke-virtual {v7}, Lkk;->a()Z

    move-result v7

    if-eqz v7, :cond_d5

    iget-object v2, v2, Ljx;->a:Lkk;

    const/16 v7, 0x12f

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v1, v8, v10

    aput-object v3, v8, v11

    aput-object v0, v8, v12

    invoke-virtual {v2, v7, v8}, Lkk;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_d5

    :cond_161
    const-string v1, "sc-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    check-cast v2, Llb;

    iget-object v1, p0, Ljt;->a:Ljj;

    invoke-static {v2}, Ljt;->a(Lli;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljj;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_17c
    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_180
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_19d

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Ljt;->a:Lkk;

    const/16 v4, 0x261

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v0, v5, v10

    invoke-virtual {v2, v4, v5}, Lkk;->a(I[Ljava/lang/Object;)V

    iget-object v2, p0, Ljt;->a:Ljj;

    invoke-virtual {v2, v0}, Ljj;->a(Ljava/lang/String;)V

    goto :goto_180

    :cond_19d
    iput v3, p0, Ljt;->d:I

    return-void
.end method

.method private d()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/util/Vector;

    iget v1, p0, Ljt;->e:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Ljt;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljt;->b:Ljava/util/Vector;

    iget-object v0, p0, Ljt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Ljt;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Llc;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Ljt;->a:Lkk;

    const/16 v4, 0x262

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lkk;->a(I[Ljava/lang/Object;)V

    iget-object v2, p0, Ljt;->a:Ljava/util/Vector;

    check-cast v0, Llc;

    invoke-static {v2, v0}, Ljt;->a(Ljava/util/Vector;Lli;)V

    goto :goto_18

    :cond_3f
    instance-of v3, v0, Llb;

    if-eqz v3, :cond_18

    iget-object v3, p0, Ljt;->a:Lkk;

    const/16 v4, 0x263

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lkk;->a(I[Ljava/lang/Object;)V

    iget-object v2, p0, Ljt;->b:Ljava/util/Vector;

    check-cast v0, Llb;

    invoke-static {v2, v0}, Ljt;->a(Ljava/util/Vector;Lli;)V

    goto :goto_18

    :cond_56
    iget-object v0, p0, Ljt;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Ljt;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget-object v3, p0, Ljt;->a:Lkk;

    const/16 v4, 0x264

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lkk;->a(I[Ljava/lang/Object;)V

    iget-object v2, p0, Ljt;->a:Ljava/util/Vector;

    invoke-static {v2, v0}, Ljt;->a(Ljava/util/Vector;Lli;)V

    goto :goto_5c

    :cond_7f
    iget-object v0, p0, Ljt;->b:Ljava/util/Vector;

    invoke-static {v0}, Ljt;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Ljt;->b:Ljava/util/Vector;

    iget-object v0, p0, Ljt;->a:Ljava/util/Vector;

    invoke-static {v0}, Ljt;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Ljt;->a:Ljava/util/Vector;

    return-void
.end method

.method private e()V
    .registers 8

    iget-object v1, p0, Ljt;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Ljt;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljt;->a:I

    iget-object v0, p0, Ljt;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Ljt;->a:Lkk;

    const/16 v2, 0x286

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Ljt;->a:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_25
    invoke-direct {p0}, Ljt;->a()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Ljt;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lli;)Ljl;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const/16 v5, 0x7d66

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    instance-of v1, p1, Lkr;

    if-eqz v1, :cond_d

    iput-boolean v7, p0, Ljt;->d:Z

    iput-boolean v7, p0, Ljt;->e:Z

    :cond_d
    invoke-virtual {p1}, Lli;->a()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Lli;->c()I

    move-result v1

    if-nez v1, :cond_20

    invoke-direct {p0}, Ljt;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Lli;->a(I)V

    :cond_20
    instance-of v1, p1, Llc;

    if-eqz v1, :cond_ca

    iget-object v2, p0, Ljt;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_27
    iget-boolean v1, p0, Ljt;->b:Z

    if-eqz v1, :cond_4a

    iget-object v1, p0, Ljt;->a:Lkk;

    invoke-virtual {v1}, Lkk;->a()Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Ljt;->a:Lkk;

    const/16 v3, 0x265

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_40
    const/16 v1, 0x7d66

    invoke-static {v1}, Lat;->a(I)Ljm;

    move-result-object v1

    throw v1
    :try_end_47
    .catchall {:try_start_27 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_4a
    :try_start_4a
    move-object v0, p1

    check-cast v0, Llc;

    move-object v1, v0

    iget-object v1, v1, Llc;->a:Ljn;

    iget-object v3, p0, Ljt;->a:Lkk;

    invoke-virtual {v3}, Lkk;->a()Z

    move-result v3

    if-eqz v3, :cond_7b

    iget-object v3, p0, Ljt;->a:Lkk;

    const/16 v4, 0x264

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p1}, Lli;->c()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    iget v8, v1, Ljn;->a:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_7b
    iget v1, v1, Ljn;->a:I

    packed-switch v1, :pswitch_data_1be

    :goto_80
    iget-object v1, p0, Ljt;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Ljt;->a:Ljx;

    invoke-virtual {v1, p1}, Ljx;->d(Lli;)Ljl;

    move-result-object v1

    iget-object v3, p0, Ljt;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    :goto_91
    return-object v1

    :pswitch_92
    iget-object v1, p0, Ljt;->a:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lli;->c()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Ljt;->a:Ljj;

    invoke-static {p1}, Ljt;->a(Lli;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Llc;

    move-object v1, v0

    invoke-virtual {v3, v4, v1}, Ljj;->a(Ljava/lang/String;Ljo;)V

    goto :goto_80

    :pswitch_ae
    iget-object v1, p0, Ljt;->b:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lli;->c()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Ljt;->a:Ljj;

    invoke-static {p1}, Ljt;->a(Lli;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Llc;

    move-object v1, v0

    invoke-virtual {v3, v4, v1}, Ljj;->a(Ljava/lang/String;Ljo;)V
    :try_end_c9
    .catchall {:try_start_4a .. :try_end_c9} :catchall_47

    goto :goto_80

    :cond_ca
    instance-of v1, p1, Lkr;

    if-eqz v1, :cond_e7

    iget-object v2, p0, Ljt;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_d1
    iget-object v1, p0, Ljt;->b:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v1, p0, Ljt;->a:Ljx;

    invoke-virtual {v1, p1}, Ljx;->d(Lli;)Ljl;

    move-result-object v1

    iget-object v3, p0, Ljt;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_e3
    .catchall {:try_start_d1 .. :try_end_e3} :catchall_e4

    goto :goto_91

    :catchall_e4
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_e7
    iget-boolean v1, p0, Ljt;->b:Z

    if-eqz v1, :cond_10b

    instance-of v1, p1, Llf;

    if-nez v1, :cond_f3

    instance-of v1, p1, Llh;

    if-eqz v1, :cond_10b

    :cond_f3
    iget-object v1, p0, Ljt;->a:Lkk;

    invoke-virtual {v1}, Lkk;->a()Z

    move-result v1

    if-eqz v1, :cond_106

    iget-object v1, p0, Ljt;->a:Lkk;

    const/16 v2, 0x266

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v1, v2, v3}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_106
    invoke-static {v5}, Lat;->a(I)Ljm;

    move-result-object v1

    throw v1

    :cond_10b
    instance-of v1, p1, Lkw;

    if-eqz v1, :cond_154

    iput-object p1, p0, Ljt;->a:Lli;

    :cond_111
    :goto_111
    iget-object v3, p0, Ljt;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_114
    iget-object v1, p0, Ljt;->b:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    instance-of v1, p1, Lkp;

    if-nez v1, :cond_1ba

    iget-object v1, p0, Ljt;->a:Ljx;

    invoke-virtual {v1, p1}, Ljx;->d(Lli;)Ljl;

    move-result-object v1

    :goto_123
    instance-of v2, p1, Llb;

    if-eqz v2, :cond_149

    iget v2, p0, Ljt;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljt;->b:I

    iget-object v2, p0, Ljt;->a:Lkk;

    invoke-virtual {v2}, Lkk;->a()Z

    move-result v2

    if-eqz v2, :cond_149

    iget-object v2, p0, Ljt;->a:Lkk;

    const/16 v4, 0x269

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    iget v8, p0, Ljt;->b:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_149
    iget-object v2, p0, Ljt;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_14f
    .catchall {:try_start_114 .. :try_end_14f} :catchall_151

    goto/16 :goto_91

    :catchall_151
    move-exception v1

    monitor-exit v3

    throw v1

    :cond_154
    instance-of v1, p1, Llb;

    if-eqz v1, :cond_18f

    iget-object v1, p0, Ljt;->a:Lkk;

    invoke-virtual {v1}, Lkk;->a()Z

    move-result v1

    if-eqz v1, :cond_174

    iget-object v1, p0, Ljt;->a:Lkk;

    const/16 v3, 0x267

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1}, Lli;->c()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v1, v3, v4}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_174
    iget-object v1, p0, Ljt;->a:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lli;->c()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Ljt;->a:Ljj;

    invoke-static {p1}, Ljt;->c(Lli;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    check-cast v1, Llb;

    invoke-virtual {v3, v4, v1}, Ljj;->a(Ljava/lang/String;Ljo;)V

    goto :goto_111

    :cond_18f
    instance-of v1, p1, Lkz;

    if-eqz v1, :cond_111

    iget-object v1, p0, Ljt;->a:Lkk;

    invoke-virtual {v1}, Lkk;->a()Z

    move-result v1

    if-eqz v1, :cond_1af

    iget-object v1, p0, Ljt;->a:Lkk;

    const/16 v3, 0x268

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1}, Lli;->c()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v1, v3, v4}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_1af
    iget-object v1, p0, Ljt;->a:Ljj;

    invoke-static {p1}, Ljt;->b(Lli;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljj;->a(Ljava/lang/String;)V

    goto/16 :goto_111

    :cond_1ba
    move-object v1, v2

    goto/16 :goto_123

    nop

    :pswitch_data_1be
    .packed-switch 0x1
        :pswitch_ae
        :pswitch_92
    .end packed-switch
.end method

.method protected final a()Lli;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Ljt;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_6
    iget-boolean v0, p0, Ljt;->d:Z

    if-eqz v0, :cond_134

    iget-boolean v0, p0, Ljt;->e:Z

    if-eqz v0, :cond_134

    iget-boolean v0, p0, Ljt;->c:Z

    if-nez v0, :cond_134

    iget-object v0, p0, Ljt;->a:Lkk;

    const/16 v1, 0x288

    invoke-virtual {v0, v1}, Lkk;->a(I)V

    monitor-exit v4

    move-object v0, v2

    :goto_1b
    return-object v0

    :cond_1c
    iget-object v0, p0, Ljt;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8f

    iget-object v0, p0, Ljt;->b:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lli;

    iget-object v3, p0, Ljt;->b:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-direct {p0}, Ljt;->a()Z

    move-object v3, v0

    :cond_37
    :goto_37
    if-nez v3, :cond_fc

    iget-object v0, p0, Ljt;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Ljt;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z
    :try_end_46
    .catchall {:try_start_6 .. :try_end_46} :catchall_127

    move-result v0

    if-eqz v0, :cond_57

    :try_start_49
    iget-object v0, p0, Ljt;->a:Lkk;

    const/16 v5, 0x284

    invoke-virtual {v0, v5}, Lkk;->a(I)V

    iget-object v0, p0, Ljt;->a:Ljava/lang/Object;

    iget-wide v6, p0, Ljt;->a:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_57} :catch_12c
    .catchall {:try_start_49 .. :try_end_57} :catchall_127

    :cond_57
    :goto_57
    :try_start_57
    iget-object v0, p0, Ljt;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Ljt;->b:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lli;

    instance-of v0, v0, Lkr;

    if-nez v0, :cond_7a

    :cond_6c
    iget-boolean v0, p0, Ljt;->c:Z

    if-nez v0, :cond_7a

    iget-object v0, p0, Ljt;->a:Lkk;

    const/16 v1, 0x26d

    invoke-virtual {v0, v1}, Lkk;->a(I)V

    monitor-exit v4

    move-object v0, v2

    goto :goto_1b

    :cond_7a
    iget-object v0, p0, Ljt;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ljt;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Ljt;->b()Lli;

    move-result-object v3

    goto :goto_37

    :cond_8f
    iget-object v0, p0, Ljt;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    iget v0, p0, Ljt;->a:I

    iget v5, p0, Ljt;->e:I

    if-ne v0, v5, :cond_ba

    iget-object v0, p0, Ljt;->a:Lkk;

    const/16 v5, 0x26e

    invoke-virtual {v0, v5}, Lkk;->a(I)V
    :try_end_a4
    .catchall {:try_start_57 .. :try_end_a4} :catchall_127

    :try_start_a4
    iget-object v0, p0, Ljt;->a:Ljava/lang/Object;

    iget-wide v6, p0, Ljt;->a:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_ab
    .catch Ljava/lang/InterruptedException; {:try_start_a4 .. :try_end_ab} :catch_12a
    .catchall {:try_start_a4 .. :try_end_ab} :catchall_127

    :goto_ab
    :try_start_ab
    iget-boolean v0, p0, Ljt;->c:Z

    if-nez v0, :cond_ba

    iget-object v0, p0, Ljt;->a:Lkk;

    const/16 v1, 0x287

    invoke-virtual {v0, v1}, Lkk;->a(I)V

    monitor-exit v4

    move-object v0, v2

    goto/16 :goto_1b

    :cond_ba
    iget v0, p0, Ljt;->a:I

    iget v5, p0, Ljt;->e:I

    if-ge v0, v5, :cond_37

    iget-object v0, p0, Ljt;->a:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lli;

    iget-object v3, p0, Ljt;->a:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/Vector;->removeElementAt(I)V

    if-nez v0, :cond_d7

    invoke-direct {p0}, Ljt;->b()Lli;

    move-result-object v3

    goto/16 :goto_37

    :cond_d7
    iget v3, p0, Ljt;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljt;->a:I

    iget-object v3, p0, Ljt;->a:Lkk;

    invoke-virtual {v3}, Lkk;->a()Z

    move-result v3

    if-eqz v3, :cond_131

    iget-object v3, p0, Ljt;->a:Lkk;

    const/16 v5, 0x26f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Ljt;->a:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Lkk;->a(I[Ljava/lang/Object;)V

    move-object v3, v0

    goto/16 :goto_37

    :cond_fc
    monitor-exit v4
    :try_end_fd
    .catchall {:try_start_ab .. :try_end_fd} :catchall_127

    iget-object v0, p0, Ljt;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()Z

    move-result v0

    if-eqz v0, :cond_11e

    if-eqz v3, :cond_12f

    invoke-virtual {v3}, Lli;->c()I

    move-result v0

    :goto_10b
    iget-object v2, p0, Ljt;->a:Lkk;

    const/16 v4, 0x270

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v5, v10

    invoke-virtual {v2, v4, v5}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_11e
    instance-of v0, v3, Lkr;

    if-eqz v0, :cond_124

    iput-boolean v10, p0, Ljt;->d:Z

    :cond_124
    move-object v0, v3

    goto/16 :goto_1b

    :catchall_127
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_12a
    move-exception v0

    goto :goto_ab

    :catch_12c
    move-exception v0

    goto/16 :goto_57

    :cond_12f
    move v0, v1

    goto :goto_10b

    :cond_131
    move-object v3, v0

    goto/16 :goto_37

    :cond_134
    move-object v3, v2

    goto/16 :goto_37
.end method

.method protected final a()V
    .registers 8

    iget-object v1, p0, Ljt;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Ljt;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljt;->c:I

    iget-object v0, p0, Ljt;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Ljt;->a:Lkk;

    const/16 v2, 0x283

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Ljt;->c:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_25
    iget v0, p0, Ljt;->c:I

    if-nez v0, :cond_2e

    iget-object v0, p0, Ljt;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final a(Ljava/util/Vector;)V
    .registers 8

    iget-object v0, p0, Ljt;->a:Lkk;

    const/16 v1, 0x27c

    invoke-virtual {v0, v1}, Lkk;->a(I)V

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    const/16 v0, 0x7d66

    invoke-static {v0}, Lat;->a(I)Ljm;

    move-result-object v2

    :goto_11
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lli;

    iget-object v3, p0, Ljt;->a:Ljx;

    invoke-virtual {v3, v0}, Ljx;->a(Lli;)Ljl;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v0}, Lli;->c()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    iget-object v5, p0, Ljt;->a:Ljava/util/Hashtable;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    iget-object v5, p0, Ljt;->a:Ljava/util/Hashtable;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    if-eqz v3, :cond_43

    invoke-virtual {v3, v2}, Ljl;->a(Ljm;)V

    iget-object v3, p0, Ljt;->a:Ljx;

    invoke-virtual {v3, v0}, Ljx;->c(Lli;)Ljl;

    :cond_43
    invoke-virtual {p1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_47
    return-void
.end method

.method public final a(Ljm;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Ljt;->a:Lkk;

    const/16 v2, 0x278

    invoke-virtual {v1, v2, v4, p1}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v2, p0, Ljt;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    iget-object v1, p0, Ljt;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_3e

    iget-object v1, p0, Ljt;->a:Ljx;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljx;->a:Z

    iput-object p1, v1, Ljx;->a:Ljm;

    iget-object v2, v1, Ljx;->a:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    iget-object v1, v1, Ljx;->a:Lkk;

    const/16 v2, 0x130

    invoke-virtual {v1, v2, v4, p1}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_25
    :goto_25
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_25

    monitor-enter v2

    :try_start_32
    move-object v0, v2

    check-cast v0, Ljl;

    move-object v1, v0

    invoke-virtual {v1, p1}, Ljl;->a(Ljm;)V

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3b

    goto :goto_25

    :catchall_3b
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_3e
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_41
    return-void
.end method

.method protected final a(Lli;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljt;->b:J

    iget-object v0, p0, Ljt;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ljt;->a:Lkk;

    const/16 v1, 0x271

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_1c
    iget-object v0, p0, Ljt;->a:Ljx;

    invoke-virtual {v0, p1}, Ljx;->a(Lli;)Ljl;

    move-result-object v1

    iget-object v0, v1, Ljl;->a:Lkk;

    const/16 v2, 0x193

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lkk;->a(I[Ljava/lang/Object;)V

    iget-object v2, v1, Ljl;->a:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_31
    iput-object v0, v1, Ljl;->a:Lli;

    const/4 v0, 0x0

    iput-boolean v0, v1, Ljl;->b:Z

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_71

    iget-object v2, v1, Ljl;->b:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x1

    :try_start_3b
    iput-boolean v0, v1, Ljl;->a:Z

    iget-object v0, v1, Ljl;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_74

    instance-of v0, p1, Llc;

    if-eqz v0, :cond_67

    move-object v0, p1

    check-cast v0, Llc;

    iget-object v0, v0, Llc;->a:Ljn;

    iget v0, v0, Ljn;->a:I

    if-nez v0, :cond_67

    invoke-virtual {v1, v5}, Ljl;->a(Lli;)V

    iget-object v0, p0, Ljt;->a:Ljx;

    invoke-virtual {v0, p1}, Ljx;->c(Lli;)Ljl;

    iget-object v0, p0, Ljt;->a:Lju;

    invoke-virtual {v0, v1}, Lju;->a(Ljl;)V

    invoke-direct {p0}, Ljt;->e()V

    invoke-virtual {p1}, Lli;->c()I

    move-result v0

    invoke-direct {p0, v0}, Ljt;->a(I)V

    :cond_67
    instance-of v0, p1, Lks;

    if-eqz v0, :cond_70

    iget-object v0, p0, Ljt;->a:Ljx;

    invoke-virtual {v0, p1}, Ljx;->c(Lli;)Ljl;

    :cond_70
    return-void

    :catchall_71
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_74
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final b(Ljm;)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Ljt;->a:Lkk;

    const/16 v1, 0x279

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-boolean v3, p0, Ljt;->c:Z

    iget-object v1, p0, Ljt;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Ljt;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_53

    :try_start_14
    iget-boolean v0, p0, Ljt;->a:Z

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Ljt;->b()V

    :cond_1b
    iget-object v0, p0, Ljt;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Ljt;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljt;->f:Z

    iget-object v1, p0, Ljt;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2b
    .catch Ljm; {:try_start_14 .. :try_end_2b} :catch_69

    :try_start_2b
    iget-object v0, p0, Ljt;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Ljt;->a:Lkk;

    const/16 v2, 0x27a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Ljt;->c:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_47
    :goto_47
    iget v0, p0, Ljt;->c:I
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_66

    if-lez v0, :cond_56

    :try_start_4b
    iget-object v0, p0, Ljt;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_50} :catch_51
    .catchall {:try_start_4b .. :try_end_50} :catchall_66

    goto :goto_47

    :catch_51
    move-exception v0

    goto :goto_47

    :catchall_53
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_56
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_66

    :try_start_57
    iget-object v0, p0, Ljt;->a:Lkk;

    const/16 v1, 0x27b

    invoke-virtual {v0, v1}, Lkk;->a(I)V

    iget-object v0, p0, Ljt;->a:Ljj;

    iget-object v0, v0, Ljj;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :goto_65
    return-void

    :catchall_66
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_69
    .catch Ljm; {:try_start_57 .. :try_end_69} :catch_69

    :catch_69
    move-exception v0

    goto :goto_65
.end method

.method protected final b(Lli;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljt;->c:J

    iget-object v0, p0, Ljt;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Ljt;->a:Lkk;

    const/16 v1, 0x273

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v7

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lli;->c()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_27
    instance-of v0, p1, Lkp;

    if-eqz v0, :cond_17b

    move-object v0, p1

    check-cast v0, Lkp;

    iget-object v1, p0, Ljt;->a:Ljx;

    invoke-virtual {v1, p1}, Ljx;->a(Lli;)Ljl;

    move-result-object v2

    instance-of v1, v0, Lla;

    if-eqz v1, :cond_7c

    iget-object v1, p0, Ljt;->a:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Lkp;->c()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    new-instance v2, Llb;

    move-object v1, v0

    check-cast v1, Lla;

    invoke-direct {v2, v1}, Llb;-><init>(Lla;)V

    invoke-virtual {p0, v2}, Ljt;->a(Lli;)Ljl;

    check-cast v0, Lla;

    iget-object v1, v0, Lla;->a:Ljava/lang/String;

    if-eqz v1, :cond_7b

    iget-object v1, v0, Lla;->b:Ljava/lang/String;

    if-eqz v1, :cond_7b

    iget-object v1, p0, Ljt;->a:Ljj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mid-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lla;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lkb;

    iget-object v0, v0, Lla;->b:Ljava/lang/String;

    invoke-direct {v3, v0}, Lkb;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljj;->a(Ljava/lang/String;Ljo;)V

    :cond_7b
    :goto_7b
    return-void

    :cond_7c
    instance-of v1, v0, Lky;

    if-eqz v1, :cond_f7

    iget-object v1, p0, Ljt;->a:Lkk;

    invoke-virtual {v1}, Lkk;->a()Z

    move-result v1

    if-eqz v1, :cond_9c

    iget-object v1, p0, Ljt;->a:Lkk;

    const/16 v3, 0x274

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v0}, Lkp;->c()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v1, v3, v4}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_9c
    iget-object v1, p0, Ljt;->a:Ljj;

    invoke-static {p1}, Ljt;->a(Lli;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljj;->a(Ljava/lang/String;)V

    iget-object v1, p0, Ljt;->b:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Lkp;->c()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b3
    :goto_b3
    invoke-virtual {p1}, Lli;->c()I

    move-result v1

    invoke-direct {p0, v1}, Ljt;->a(I)V

    instance-of v1, v0, Lky;

    if-nez v1, :cond_c6

    instance-of v1, v0, Lla;

    if-nez v1, :cond_c6

    instance-of v1, v0, Lkz;

    if-eqz v1, :cond_c9

    :cond_c6
    invoke-direct {p0}, Ljt;->e()V

    :cond_c9
    instance-of v1, v0, Lkx;

    if-eqz v1, :cond_148

    iget-object v1, p0, Ljt;->a:Lkk;

    const/16 v3, 0x275

    invoke-virtual {v1, v3}, Lkk;->a(I)V

    iput-boolean v7, p0, Ljt;->f:Z

    :cond_d6
    :goto_d6
    iget-object v1, p0, Ljt;->a:Ljx;

    check-cast p1, Lkp;

    invoke-virtual {v1, p1}, Ljx;->b(Lli;)Ljl;

    move-result-object v3

    invoke-virtual {v1, p1}, Ljx;->c(Lli;)Ljl;

    if-eqz v3, :cond_e6

    invoke-virtual {v3, p1}, Ljl;->a(Lli;)V

    :cond_e6
    instance-of v1, v0, Lky;

    if-nez v1, :cond_ee

    instance-of v0, v0, Lkz;

    if-eqz v0, :cond_f3

    :cond_ee
    iget-object v0, p0, Ljt;->a:Lju;

    invoke-virtual {v0, v2}, Lju;->a(Ljl;)V

    :cond_f3
    invoke-direct {p0}, Ljt;->a()Z

    goto :goto_7b

    :cond_f7
    instance-of v1, v0, Lkz;

    if-eqz v1, :cond_b3

    iget-object v1, p0, Ljt;->a:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Lkp;->c()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Ljt;->a:Ljj;

    invoke-static {p1}, Ljt;->a(Lli;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljj;->a(Ljava/lang/String;)V

    iget-object v1, p0, Ljt;->a:Ljj;

    invoke-static {p1}, Ljt;->c(Lli;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljj;->a(Ljava/lang/String;)V

    iget v1, p0, Ljt;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljt;->b:I

    iget-object v1, p0, Ljt;->a:Lkk;

    invoke-virtual {v1}, Lkk;->a()Z

    move-result v1

    if-eqz v1, :cond_b3

    iget-object v1, p0, Ljt;->a:Lkk;

    const/16 v3, 0x285

    new-array v4, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v0}, Lkp;->c()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Ljt;->b:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v8

    invoke-virtual {v1, v3, v4}, Lkk;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_b3

    :cond_148
    instance-of v1, p1, Lkq;

    if-eqz v1, :cond_d6

    move-object v1, p1

    check-cast v1, Lkq;

    iget v1, v1, Lkq;->a:I

    if-nez v1, :cond_178

    iget-boolean v1, p0, Ljt;->a:Z

    if-eqz v1, :cond_15a

    invoke-direct {p0}, Ljt;->b()V

    :cond_15a
    iput v7, p0, Ljt;->b:I

    iput v7, p0, Ljt;->a:I

    invoke-direct {p0}, Ljt;->d()V

    iget-object v1, p0, Ljt;->a:Lkk;

    const/16 v3, 0x277

    invoke-virtual {v1, v3}, Lkk;->a(I)V

    iput-boolean v8, p0, Ljt;->c:Z

    :goto_16a
    iget-object v1, p0, Ljt;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_16d
    iget-object v3, p0, Ljt;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_173
    .catchall {:try_start_16d .. :try_end_173} :catchall_175

    goto/16 :goto_d6

    :catchall_175
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_178
    iput-boolean v8, p0, Ljt;->e:Z

    goto :goto_16a

    :cond_17b
    iget-boolean v0, p0, Ljt;->b:Z

    if-nez v0, :cond_7b

    instance-of v0, p1, Llc;

    if-eqz v0, :cond_1d9

    move-object v0, p1

    check-cast v0, Llc;

    iget-object v1, v0, Llc;->a:Ljn;

    iget v1, v1, Ljn;->a:I

    packed-switch v1, :pswitch_data_20a

    goto/16 :goto_7b

    :pswitch_18f
    iget-object v1, p0, Ljt;->a:Lju;

    if-eqz v1, :cond_7b

    iget-object v1, p0, Ljt;->a:Lju;

    invoke-virtual {v1, v0}, Lju;->a(Llc;)V

    goto/16 :goto_7b

    :pswitch_19a
    iget-object v1, p0, Ljt;->a:Lkk;

    invoke-virtual {v1}, Lkk;->a()Z

    move-result v1

    if-eqz v1, :cond_1b6

    iget-object v1, p0, Ljt;->a:Lkk;

    const/16 v2, 0x276

    new-array v3, v8, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v0}, Llc;->c()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_1b6
    iget-object v1, p0, Ljt;->a:Ljj;

    invoke-static {p1}, Ljt;->b(Lli;)Ljava/lang/String;

    move-result-object v2

    check-cast p1, Llc;

    invoke-virtual {v1, v2, p1}, Ljj;->a(Ljava/lang/String;Ljo;)V

    iget-object v1, p0, Ljt;->c:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Llc;->c()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lla;

    invoke-direct {v1, v0}, Lla;-><init>(Llc;)V

    invoke-virtual {p0, v1}, Ljt;->a(Lli;)Ljl;

    goto/16 :goto_7b

    :cond_1d9
    instance-of v0, p1, Llb;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Ljt;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lli;->c()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    if-eqz v0, :cond_1fb

    iget-object v1, p0, Ljt;->a:Lju;

    if-eqz v1, :cond_7b

    iget-object v1, p0, Ljt;->a:Lju;

    invoke-virtual {v1, v0}, Lju;->a(Llc;)V

    goto/16 :goto_7b

    :cond_1fb
    new-instance v0, Lkz;

    invoke-virtual {p1}, Lli;->c()I

    move-result v1

    invoke-direct {v0, v1}, Lkz;-><init>(I)V

    invoke-virtual {p0, v0}, Ljt;->a(Lli;)Ljl;

    goto/16 :goto_7b

    nop

    :pswitch_data_20a
    .packed-switch 0x0
        :pswitch_18f
        :pswitch_18f
        :pswitch_19a
    .end packed-switch
.end method
