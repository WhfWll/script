.class Lss/ss/gK/e$e;
.super Lss/ss/gK/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/gK/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic d:Lss/ss/gK/e;

.field private e:J


# direct methods
.method public constructor <init>(Lss/ss/gK/e;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lss/ss/gK/e$e;->d:Lss/ss/gK/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lss/ss/gK/e$a;-><init>(Lss/ss/gK/e;Lss/ss/gK/f;)V

    iput-wide p2, p0, Lss/ss/gK/e$e;->e:J

    iget-wide v0, p0, Lss/ss/gK/e$e;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lss/ss/gK/e$e;->a(Z)V

    :cond_14
    return-void
.end method


# virtual methods
.method public a(LgK/e;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const-wide/16 v6, 0x0

    cmp-long v2, p2, v6

    if-gez v2, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget-boolean v2, p0, Lss/ss/gK/e$e;->b:Z

    if-eqz v2, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    iget-wide v2, p0, Lss/ss/gK/e$e;->e:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_34

    :goto_33
    return-wide v0

    :cond_34
    iget-object v2, p0, Lss/ss/gK/e$e;->d:Lss/ss/gK/e;

    invoke-static {v2}, Lss/ss/gK/e;->b(Lss/ss/gK/e;)LgK/g;

    move-result-object v2

    iget-wide v4, p0, Lss/ss/gK/e$e;->e:J

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, LgK/g;->a(LgK/e;J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_54

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lss/ss/gK/e$e;->a(Z)V

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    iget-wide v0, p0, Lss/ss/gK/e$e;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lss/ss/gK/e$e;->e:J

    iget-wide v0, p0, Lss/ss/gK/e$e;->e:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_63

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lss/ss/gK/e$e;->a(Z)V

    :cond_63
    move-wide v0, v2

    goto :goto_33
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lss/ss/gK/e$e;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-wide v0, p0, Lss/ss/gK/e$e;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lss/ss/j;->a(LgK/w;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lss/ss/gK/e$e;->a(Z)V

    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lss/ss/gK/e$e;->b:Z

    goto :goto_4
.end method
