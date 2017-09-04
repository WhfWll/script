.class final LgK/r;
.super Ljava/lang/Object;

# interfaces
.implements LgK/f;


# instance fields
.field public final a:LgK/e;

.field public final b:LgK/v;

.field c:Z


# direct methods
.method constructor <init>(LgK/v;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LgK/e;

    invoke-direct {v0}, LgK/e;-><init>()V

    iput-object v0, p0, LgK/r;->a:LgK/e;

    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iput-object p1, p0, LgK/r;->b:LgK/v;

    return-void
.end method


# virtual methods
.method public a(LgK/w;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-wide/16 v0, 0x0

    :goto_c
    iget-object v2, p0, LgK/r;->a:LgK/e;

    const-wide/16 v4, 0x2000

    invoke-interface {p1, v2, v4, v5}, LgK/w;->a(LgK/e;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1f

    add-long/2addr v0, v2

    invoke-virtual {p0}, LgK/r;->t()LgK/f;

    goto :goto_c

    :cond_1f
    return-wide v0
.end method

.method public a()LgK/x;
    .registers 2

    iget-object v0, p0, LgK/r;->b:LgK/v;

    invoke-interface {v0}, LgK/v;->a()LgK/x;

    move-result-object v0

    return-object v0
.end method

.method public a_(LgK/e;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/r;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, LgK/r;->a:LgK/e;

    invoke-virtual {v0, p1, p2, p3}, LgK/e;->a_(LgK/e;J)V

    invoke-virtual {p0}, LgK/r;->t()LgK/f;

    return-void
.end method

.method public b(LgK/h;)LgK/f;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/r;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, LgK/r;->a:LgK/e;

    invoke-virtual {v0, p1}, LgK/e;->a(LgK/h;)LgK/e;

    invoke-virtual {p0}, LgK/r;->t()LgK/f;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)LgK/f;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/r;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, LgK/r;->a:LgK/e;

    invoke-virtual {v0, p1}, LgK/e;->a(Ljava/lang/String;)LgK/e;

    invoke-virtual {p0}, LgK/r;->t()LgK/f;

    move-result-object v0

    return-object v0
.end method

.method public c()LgK/e;
    .registers 2

    iget-object v0, p0, LgK/r;->a:LgK/e;

    return-object v0
.end method

.method public c([B)LgK/f;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/r;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, LgK/r;->a:LgK/e;

    invoke-virtual {v0, p1}, LgK/e;->b([B)LgK/e;

    invoke-virtual {p0}, LgK/r;->t()LgK/f;

    move-result-object v0

    return-object v0
.end method

.method public c([BII)LgK/f;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/r;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, LgK/r;->a:LgK/e;

    invoke-virtual {v0, p1, p2, p3}, LgK/e;->b([BII)LgK/e;

    invoke-virtual {p0}, LgK/r;->t()LgK/f;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/r;->c:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, LgK/r;->a:LgK/e;

    iget-wide v2, v1, LgK/e;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    iget-object v1, p0, LgK/r;->b:LgK/v;

    iget-object v2, p0, LgK/r;->a:LgK/e;

    iget-object v3, p0, LgK/r;->a:LgK/e;

    iget-wide v4, v3, LgK/e;->b:J

    invoke-interface {v1, v2, v4, v5}, LgK/v;->a_(LgK/e;J)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1b} :catch_2e

    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v1, p0, LgK/r;->b:LgK/v;

    invoke-interface {v1}, LgK/v;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_20} :catch_29

    :cond_20
    :goto_20
    const/4 v1, 0x1

    iput-boolean v1, p0, LgK/r;->c:Z

    if-eqz v0, :cond_4

    invoke-static {v0}, LgK/z;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_29
    move-exception v1

    if-nez v0, :cond_20

    move-object v0, v1

    goto :goto_20

    :catch_2e
    move-exception v0

    goto :goto_1b
.end method

.method public e()LgK/f;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/r;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, LgK/r;->a:LgK/e;

    invoke-virtual {v0}, LgK/e;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1f

    iget-object v2, p0, LgK/r;->b:LgK/v;

    iget-object v3, p0, LgK/r;->a:LgK/e;

    invoke-interface {v2, v3, v0, v1}, LgK/v;->a_(LgK/e;J)V

    :cond_1f
    return-object p0
.end method

.method public f(I)LgK/f;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/r;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, LgK/r;->a:LgK/e;

    invoke-virtual {v0, p1}, LgK/e;->d(I)LgK/e;

    invoke-virtual {p0}, LgK/r;->t()LgK/f;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/r;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, LgK/r;->a:LgK/e;

    iget-wide v0, v0, LgK/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    iget-object v0, p0, LgK/r;->b:LgK/v;

    iget-object v1, p0, LgK/r;->a:LgK/e;

    iget-object v2, p0, LgK/r;->a:LgK/e;

    iget-wide v2, v2, LgK/e;->b:J

    invoke-interface {v0, v1, v2, v3}, LgK/v;->a_(LgK/e;J)V

    :cond_21
    iget-object v0, p0, LgK/r;->b:LgK/v;

    invoke-interface {v0}, LgK/v;->flush()V

    return-void
.end method

.method public g(I)LgK/f;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/r;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, LgK/r;->a:LgK/e;

    invoke-virtual {v0, p1}, LgK/e;->c(I)LgK/e;

    invoke-virtual {p0}, LgK/r;->t()LgK/f;

    move-result-object v0

    return-object v0
.end method

.method public h(I)LgK/f;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/r;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, LgK/r;->a:LgK/e;

    invoke-virtual {v0, p1}, LgK/e;->b(I)LgK/e;

    invoke-virtual {p0}, LgK/r;->t()LgK/f;

    move-result-object v0

    return-object v0
.end method

.method public j(J)LgK/f;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/r;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, LgK/r;->a:LgK/e;

    invoke-virtual {v0, p1, p2}, LgK/e;->i(J)LgK/e;

    invoke-virtual {p0}, LgK/r;->t()LgK/f;

    move-result-object v0

    return-object v0
.end method

.method public k(J)LgK/f;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/r;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, LgK/r;->a:LgK/e;

    invoke-virtual {v0, p1, p2}, LgK/e;->h(J)LgK/e;

    invoke-virtual {p0}, LgK/r;->t()LgK/f;

    move-result-object v0

    return-object v0
.end method

.method public t()LgK/f;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/r;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, LgK/r;->a:LgK/e;

    invoke-virtual {v0}, LgK/e;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1f

    iget-object v2, p0, LgK/r;->b:LgK/v;

    iget-object v3, p0, LgK/r;->a:LgK/e;

    invoke-interface {v2, v3, v0, v1}, LgK/v;->a_(LgK/e;J)V

    :cond_1f
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LgK/r;->b:LgK/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
