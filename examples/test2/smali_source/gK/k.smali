.class public LgK/k;
.super LgK/x;


# instance fields
.field private a:LgK/x;


# direct methods
.method public constructor <init>(LgK/x;)V
    .registers 4

    invoke-direct {p0}, LgK/x;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, LgK/k;->a:LgK/x;

    return-void
.end method


# virtual methods
.method public final a(LgK/x;)LgK/k;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, LgK/k;->a:LgK/x;

    return-object p0
.end method

.method public final a()LgK/x;
    .registers 2

    iget-object v0, p0, LgK/k;->a:LgK/x;

    return-object v0
.end method

.method public a(J)LgK/x;
    .registers 4

    iget-object v0, p0, LgK/k;->a:LgK/x;

    invoke-virtual {v0, p1, p2}, LgK/x;->a(J)LgK/x;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)LgK/x;
    .registers 5

    iget-object v0, p0, LgK/k;->a:LgK/x;

    invoke-virtual {v0, p1, p2, p3}, LgK/x;->a(JLjava/util/concurrent/TimeUnit;)LgK/x;

    move-result-object v0

    return-object v0
.end method

.method public b_()J
    .registers 3

    iget-object v0, p0, LgK/k;->a:LgK/x;

    invoke-virtual {v0}, LgK/x;->b_()J

    move-result-wide v0

    return-wide v0
.end method

.method public c_()Z
    .registers 2

    iget-object v0, p0, LgK/k;->a:LgK/x;

    invoke-virtual {v0}, LgK/x;->c_()Z

    move-result v0

    return v0
.end method

.method public d()J
    .registers 3

    iget-object v0, p0, LgK/k;->a:LgK/x;

    invoke-virtual {v0}, LgK/x;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public d_()LgK/x;
    .registers 2

    iget-object v0, p0, LgK/k;->a:LgK/x;

    invoke-virtual {v0}, LgK/x;->d_()LgK/x;

    move-result-object v0

    return-object v0
.end method

.method public f()LgK/x;
    .registers 2

    iget-object v0, p0, LgK/k;->a:LgK/x;

    invoke-virtual {v0}, LgK/x;->f()LgK/x;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LgK/k;->a:LgK/x;

    invoke-virtual {v0}, LgK/x;->g()V

    return-void
.end method
