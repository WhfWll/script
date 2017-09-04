.class final Lss/ss/gK/e$b;
.super Ljava/lang/Object;

# interfaces
.implements LgK/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/gK/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lss/ss/gK/e;

.field private final b:LgK/k;

.field private c:Z


# direct methods
.method private constructor <init>(Lss/ss/gK/e;)V
    .registers 4

    iput-object p1, p0, Lss/ss/gK/e$b;->a:Lss/ss/gK/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LgK/k;

    iget-object v1, p0, Lss/ss/gK/e$b;->a:Lss/ss/gK/e;

    invoke-static {v1}, Lss/ss/gK/e;->a(Lss/ss/gK/e;)LgK/f;

    move-result-object v1

    invoke-interface {v1}, LgK/f;->a()LgK/x;

    move-result-object v1

    invoke-direct {v0, v1}, LgK/k;-><init>(LgK/x;)V

    iput-object v0, p0, Lss/ss/gK/e$b;->b:LgK/k;

    return-void
.end method

.method synthetic constructor <init>(Lss/ss/gK/e;Lss/ss/gK/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lss/ss/gK/e$b;-><init>(Lss/ss/gK/e;)V

    return-void
.end method


# virtual methods
.method public a()LgK/x;
    .registers 2

    iget-object v0, p0, Lss/ss/gK/e$b;->b:LgK/k;

    return-object v0
.end method

.method public a_(LgK/e;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lss/ss/gK/e$b;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_13

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lss/ss/gK/e$b;->a:Lss/ss/gK/e;

    invoke-static {v0}, Lss/ss/gK/e;->a(Lss/ss/gK/e;)LgK/f;

    move-result-object v0

    invoke-interface {v0, p2, p3}, LgK/f;->j(J)LgK/f;

    iget-object v0, p0, Lss/ss/gK/e$b;->a:Lss/ss/gK/e;

    invoke-static {v0}, Lss/ss/gK/e;->a(Lss/ss/gK/e;)LgK/f;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, LgK/f;->b(Ljava/lang/String;)LgK/f;

    iget-object v0, p0, Lss/ss/gK/e$b;->a:Lss/ss/gK/e;

    invoke-static {v0}, Lss/ss/gK/e;->a(Lss/ss/gK/e;)LgK/f;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, LgK/f;->a_(LgK/e;J)V

    iget-object v0, p0, Lss/ss/gK/e$b;->a:Lss/ss/gK/e;

    invoke-static {v0}, Lss/ss/gK/e;->a(Lss/ss/gK/e;)LgK/f;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, LgK/f;->b(Ljava/lang/String;)LgK/f;

    goto :goto_12
.end method

.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lss/ss/gK/e$b;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lss/ss/gK/e$b;->c:Z

    iget-object v0, p0, Lss/ss/gK/e$b;->a:Lss/ss/gK/e;

    invoke-static {v0}, Lss/ss/gK/e;->a(Lss/ss/gK/e;)LgK/f;

    move-result-object v0

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, LgK/f;->b(Ljava/lang/String;)LgK/f;

    iget-object v0, p0, Lss/ss/gK/e$b;->a:Lss/ss/gK/e;

    iget-object v1, p0, Lss/ss/gK/e$b;->b:LgK/k;

    invoke-static {v0, v1}, Lss/ss/gK/e;->a(Lss/ss/gK/e;LgK/k;)V

    iget-object v0, p0, Lss/ss/gK/e$b;->a:Lss/ss/gK/e;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lss/ss/gK/e;->a(Lss/ss/gK/e;I)I
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_23

    goto :goto_5

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lss/ss/gK/e$b;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lss/ss/gK/e$b;->a:Lss/ss/gK/e;

    invoke-static {v0}, Lss/ss/gK/e;->a(Lss/ss/gK/e;)LgK/f;

    move-result-object v0

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_5

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
