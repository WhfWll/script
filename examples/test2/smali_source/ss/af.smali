.class final Lss/af;
.super Ljava/lang/Object;

# interfaces
.implements Lss/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/af$a;
    }
.end annotation


# instance fields
.field volatile a:Z

.field b:Lss/ag;

.field c:Lss/ss/gK/j;

.field private final d:Lss/ac;

.field private e:Z


# direct methods
.method protected constructor <init>(Lss/ac;Lss/ag;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/af;->d:Lss/ac;

    iput-object p2, p0, Lss/af;->b:Lss/ag;

    return-void
.end method

.method static synthetic a(Lss/af;)Lss/ac;
    .registers 2

    iget-object v0, p0, Lss/af;->d:Lss/ac;

    return-object v0
.end method

.method private a(Z)Lss/ak;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lss/af$a;

    const/4 v1, 0x0

    iget-object v2, p0, Lss/af;->b:Lss/ag;

    invoke-direct {v0, p0, v1, v2, p1}, Lss/af$a;-><init>(Lss/af;ILss/ag;Z)V

    iget-object v1, p0, Lss/af;->b:Lss/ag;

    invoke-interface {v0, v1}, Lss/aa$a;->a(Lss/ag;)Lss/ak;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lss/ak;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lss/af;->e:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, p0, Lss/af;->e:Z

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_d

    :try_start_14
    iget-object v0, p0, Lss/af;->d:Lss/ac;

    invoke-virtual {v0}, Lss/ac;->s()Lss/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lss/s;->a(Lss/af;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lss/af;->a(Z)Lss/ak;

    move-result-object v0

    if-nez v0, :cond_37

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    iget-object v1, p0, Lss/af;->d:Lss/ac;

    invoke-virtual {v1}, Lss/ac;->s()Lss/s;

    move-result-object v1

    invoke-virtual {v1, p0}, Lss/s;->a(Lss/g;)V

    throw v0

    :cond_37
    iget-object v1, p0, Lss/af;->d:Lss/ac;

    invoke-virtual {v1}, Lss/ac;->s()Lss/s;

    move-result-object v1

    invoke-virtual {v1, p0}, Lss/s;->a(Lss/g;)V

    return-object v0
.end method

.method a(Lss/ag;Z)Lss/ak;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lss/ag;->d()Lss/ai;

    move-result-object v0

    if-eqz v0, :cond_108

    invoke-virtual {p1}, Lss/ag;->e()Lss/ag$a;

    move-result-object v1

    invoke-virtual {v0}, Lss/ai;->a()Lss/ab;

    move-result-object v2

    if-eqz v2, :cond_19

    const-string v3, "Content-Type"

    invoke-virtual {v2}, Lss/ab;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lss/ag$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;

    :cond_19
    invoke-virtual {v0}, Lss/ai;->b()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_56

    const-string v0, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lss/ag$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v1, v0}, Lss/ag$a;->b(Ljava/lang/String;)Lss/ag$a;

    :goto_31
    invoke-virtual {v1}, Lss/ag$a;->a()Lss/ag;

    move-result-object v2

    :goto_35
    new-instance v0, Lss/ss/gK/j;

    iget-object v1, p0, Lss/af;->d:Lss/ac;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lss/ss/gK/j;-><init>(Lss/ac;Lss/ag;ZZZLss/ss/gK/w;Lss/ss/gK/s;Lss/ak;)V

    iput-object v0, p0, Lss/af;->c:Lss/ss/gK/j;

    const/4 v0, 0x0

    :goto_45
    iget-boolean v1, p0, Lss/af;->a:Z

    if-eqz v1, :cond_63

    iget-object v0, p0, Lss/af;->c:Lss/ss/gK/j;

    invoke-virtual {v0}, Lss/ss/gK/j;->e()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    const-string v0, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-virtual {v1, v0, v2}, Lss/ag$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;

    const-string v0, "Content-Length"

    invoke-virtual {v1, v0}, Lss/ag$a;->b(Ljava/lang/String;)Lss/ag$a;

    goto :goto_31

    :cond_63
    const/4 v2, 0x1

    :try_start_64
    iget-object v1, p0, Lss/af;->c:Lss/ss/gK/j;

    invoke-virtual {v1}, Lss/ss/gK/j;->a()V

    iget-object v1, p0, Lss/af;->c:Lss/ss/gK/j;

    invoke-virtual {v1}, Lss/ss/gK/j;->g()V
    :try_end_6e
    .catch Lss/ss/gK/q; {:try_start_64 .. :try_end_6e} :catch_84
    .catch Lss/ss/gK/t; {:try_start_64 .. :try_end_6e} :catch_98
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6e} :catch_b1
    .catchall {:try_start_64 .. :try_end_6e} :catchall_8a

    iget-object v1, p0, Lss/af;->c:Lss/ss/gK/j;

    invoke-virtual {v1}, Lss/ss/gK/j;->c()Lss/ak;

    move-result-object v8

    iget-object v1, p0, Lss/af;->c:Lss/ss/gK/j;

    invoke-virtual {v1}, Lss/ss/gK/j;->h()Lss/ag;

    move-result-object v2

    if-nez v2, :cond_c0

    if-nez p2, :cond_83

    iget-object v0, p0, Lss/af;->c:Lss/ss/gK/j;

    invoke-virtual {v0}, Lss/ss/gK/j;->e()V

    :cond_83
    return-object v8

    :catch_84
    move-exception v0

    :try_start_85
    invoke-virtual {v0}, Lss/ss/gK/q;->a()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v0

    move v1, v2

    :goto_8c
    if-eqz v1, :cond_97

    iget-object v1, p0, Lss/af;->c:Lss/ss/gK/j;

    invoke-virtual {v1}, Lss/ss/gK/j;->f()Lss/ss/gK/w;

    move-result-object v1

    invoke-virtual {v1}, Lss/ss/gK/w;->b()V

    :cond_97
    throw v0

    :catch_98
    move-exception v1

    :try_start_99
    iget-object v3, p0, Lss/af;->c:Lss/ss/gK/j;

    invoke-virtual {v1}, Lss/ss/gK/t;->a()Ljava/io/IOException;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lss/ss/gK/j;->a(Ljava/io/IOException;LgK/v;)Lss/ss/gK/j;
    :try_end_a3
    .catchall {:try_start_99 .. :try_end_a3} :catchall_8a

    move-result-object v3

    if-eqz v3, :cond_ac

    const/4 v1, 0x0

    :try_start_a7
    iput-object v3, p0, Lss/af;->c:Lss/ss/gK/j;
    :try_end_a9
    .catchall {:try_start_a7 .. :try_end_a9} :catchall_aa

    goto :goto_45

    :catchall_aa
    move-exception v0

    goto :goto_8c

    :cond_ac
    :try_start_ac
    invoke-virtual {v1}, Lss/ss/gK/t;->a()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catch_b1
    move-exception v1

    iget-object v3, p0, Lss/af;->c:Lss/ss/gK/j;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lss/ss/gK/j;->a(Ljava/io/IOException;LgK/v;)Lss/ss/gK/j;
    :try_end_b8
    .catchall {:try_start_ac .. :try_end_b8} :catchall_8a

    move-result-object v3

    if-eqz v3, :cond_bf

    const/4 v1, 0x0

    :try_start_bc
    iput-object v3, p0, Lss/af;->c:Lss/ss/gK/j;
    :try_end_be
    .catchall {:try_start_bc .. :try_end_be} :catchall_aa

    goto :goto_45

    :cond_bf
    :try_start_bf
    throw v1
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_8a

    :cond_c0
    iget-object v1, p0, Lss/af;->c:Lss/ss/gK/j;

    invoke-virtual {v1}, Lss/ss/gK/j;->f()Lss/ss/gK/w;

    move-result-object v6

    add-int/lit8 v9, v0, 0x1

    const/16 v0, 0x14

    if-le v9, v0, :cond_e8

    invoke-virtual {v6}, Lss/ss/gK/w;->b()V

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e8
    iget-object v0, p0, Lss/af;->c:Lss/ss/gK/j;

    invoke-virtual {v2}, Lss/ag;->a()Lss/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/ss/gK/j;->a(Lss/y;)Z

    move-result v0

    if-nez v0, :cond_f8

    invoke-virtual {v6}, Lss/ss/gK/w;->b()V

    const/4 v6, 0x0

    :cond_f8
    new-instance v0, Lss/ss/gK/j;

    iget-object v1, p0, Lss/af;->d:Lss/ac;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lss/ss/gK/j;-><init>(Lss/ac;Lss/ag;ZZZLss/ss/gK/w;Lss/ss/gK/s;Lss/ak;)V

    iput-object v0, p0, Lss/af;->c:Lss/ss/gK/j;

    move v0, v9

    goto/16 :goto_45

    :cond_108
    move-object v2, p1

    goto/16 :goto_35
.end method
