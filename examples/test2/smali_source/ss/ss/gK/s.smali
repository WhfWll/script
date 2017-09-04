.class public final Lss/ss/gK/s;
.super Ljava/lang/Object;

# interfaces
.implements LgK/v;


# instance fields
.field private a:Z

.field private final b:I

.field private final c:LgK/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lss/ss/gK/s;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LgK/e;

    invoke-direct {v0}, LgK/e;-><init>()V

    iput-object v0, p0, Lss/ss/gK/s;->c:LgK/e;

    iput p1, p0, Lss/ss/gK/s;->b:I

    return-void
.end method


# virtual methods
.method public a()LgK/x;
    .registers 2

    sget-object v0, LgK/x;->b:LgK/x;

    return-object v0
.end method

.method public a(LgK/v;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, LgK/e;

    invoke-direct {v1}, LgK/e;-><init>()V

    iget-object v0, p0, Lss/ss/gK/s;->c:LgK/e;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lss/ss/gK/s;->c:LgK/e;

    invoke-virtual {v4}, LgK/e;->b()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, LgK/e;->a(LgK/e;JJ)LgK/e;

    invoke-virtual {v1}, LgK/e;->b()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, LgK/v;->a_(LgK/e;J)V

    return-void
.end method

.method public a_(LgK/e;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lss/ss/gK/s;->a:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p1}, LgK/e;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lss/ss/j;->a(JJJ)V

    iget v0, p0, Lss/ss/gK/s;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4a

    iget-object v0, p0, Lss/ss/gK/s;->c:LgK/e;

    invoke-virtual {v0}, LgK/e;->b()J

    move-result-wide v0

    iget v2, p0, Lss/ss/gK/s;->b:I

    int-to-long v2, v2

    sub-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4a

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exceeded content-length limit of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/s;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    iget-object v0, p0, Lss/ss/gK/s;->c:LgK/e;

    invoke-virtual {v0, p1, p2, p3}, LgK/e;->a_(LgK/e;J)V

    return-void
.end method

.method public b()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/s;->c:LgK/e;

    invoke-virtual {v0}, LgK/e;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lss/ss/gK/s;->a:Z

    if-eqz v0, :cond_5

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lss/ss/gK/s;->a:Z

    iget-object v0, p0, Lss/ss/gK/s;->c:LgK/e;

    invoke-virtual {v0}, LgK/e;->b()J

    move-result-wide v0

    iget v2, p0, Lss/ss/gK/s;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content-length promised "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/s;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/s;->c:LgK/e;

    invoke-virtual {v2}, LgK/e;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
