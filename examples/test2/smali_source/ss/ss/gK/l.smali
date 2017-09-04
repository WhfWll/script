.class Lss/ss/gK/l;
.super Ljava/lang/Object;

# interfaces
.implements LgK/w;


# instance fields
.field a:Z

.field final synthetic b:LgK/g;

.field final synthetic c:Lss/ss/gK/a;

.field final synthetic d:LgK/f;

.field final synthetic e:Lss/ss/gK/j;


# direct methods
.method constructor <init>(Lss/ss/gK/j;LgK/g;Lss/ss/gK/a;LgK/f;)V
    .registers 5

    iput-object p1, p0, Lss/ss/gK/l;->e:Lss/ss/gK/j;

    iput-object p2, p0, Lss/ss/gK/l;->b:LgK/g;

    iput-object p3, p0, Lss/ss/gK/l;->c:Lss/ss/gK/a;

    iput-object p4, p0, Lss/ss/gK/l;->d:LgK/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LgK/e;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    :try_start_3
    iget-object v2, p0, Lss/ss/gK/l;->b:LgK/g;

    invoke-interface {v2, p1, p2, p3}, LgK/g;->a(LgK/e;J)J
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_1a

    move-result-wide v4

    cmp-long v2, v4, v0

    if-nez v2, :cond_27

    iget-boolean v2, p0, Lss/ss/gK/l;->a:Z

    if-nez v2, :cond_18

    iput-boolean v3, p0, Lss/ss/gK/l;->a:Z

    iget-object v2, p0, Lss/ss/gK/l;->d:LgK/f;

    invoke-interface {v2}, LgK/f;->close()V

    :cond_18
    move-wide v4, v0

    :goto_19
    return-wide v4

    :catch_1a
    move-exception v0

    iget-boolean v1, p0, Lss/ss/gK/l;->a:Z

    if-nez v1, :cond_26

    iput-boolean v3, p0, Lss/ss/gK/l;->a:Z

    iget-object v1, p0, Lss/ss/gK/l;->c:Lss/ss/gK/a;

    invoke-interface {v1}, Lss/ss/gK/a;->b()V

    :cond_26
    throw v0

    :cond_27
    iget-object v0, p0, Lss/ss/gK/l;->d:LgK/f;

    invoke-interface {v0}, LgK/f;->c()LgK/e;

    move-result-object v1

    invoke-virtual {p1}, LgK/e;->b()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, LgK/e;->a(LgK/e;JJ)LgK/e;

    iget-object v0, p0, Lss/ss/gK/l;->d:LgK/f;

    invoke-interface {v0}, LgK/f;->t()LgK/f;

    goto :goto_19
.end method

.method public a()LgK/x;
    .registers 2

    iget-object v0, p0, Lss/ss/gK/l;->b:LgK/g;

    invoke-interface {v0}, LgK/g;->a()LgK/x;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lss/ss/gK/l;->a:Z

    if-nez v0, :cond_16

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lss/ss/j;->a(LgK/w;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lss/ss/gK/l;->a:Z

    iget-object v0, p0, Lss/ss/gK/l;->c:Lss/ss/gK/a;

    invoke-interface {v0}, Lss/ss/gK/a;->b()V

    :cond_16
    iget-object v0, p0, Lss/ss/gK/l;->b:LgK/g;

    invoke-interface {v0}, LgK/g;->close()V

    return-void
.end method
