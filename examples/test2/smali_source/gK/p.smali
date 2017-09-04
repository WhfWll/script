.class final LgK/p;
.super Ljava/lang/Object;

# interfaces
.implements LgK/w;


# instance fields
.field final synthetic a:LgK/x;

.field final synthetic b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(LgK/x;Ljava/io/InputStream;)V
    .registers 3

    iput-object p1, p0, LgK/p;->a:LgK/x;

    iput-object p2, p0, LgK/p;->b:Ljava/io/InputStream;

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

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1f

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

    :cond_1f
    cmp-long v2, p2, v0

    if-nez v2, :cond_24

    :goto_23
    return-wide v0

    :cond_24
    :try_start_24
    iget-object v0, p0, LgK/p;->a:LgK/x;

    invoke-virtual {v0}, LgK/x;->g()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LgK/e;->e(I)LgK/t;

    move-result-object v0

    iget v1, v0, LgK/t;->c:I

    rsub-int v1, v1, 0x2000

    int-to-long v2, v1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    iget-object v2, p0, LgK/p;->b:Ljava/io/InputStream;

    iget-object v3, v0, LgK/t;->a:[B

    iget v4, v0, LgK/t;->c:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_48

    const-wide/16 v0, -0x1

    goto :goto_23

    :cond_48
    iget v2, v0, LgK/t;->c:I

    add-int/2addr v2, v1

    iput v2, v0, LgK/t;->c:I

    iget-wide v2, p1, LgK/e;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p1, LgK/e;->b:J
    :try_end_53
    .catch Ljava/lang/AssertionError; {:try_start_24 .. :try_end_53} :catch_55

    int-to-long v0, v1

    goto :goto_23

    :catch_55
    move-exception v0

    invoke-static {v0}, LgK/n;->a(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_62

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_62
    throw v0
.end method

.method public a()LgK/x;
    .registers 2

    iget-object v0, p0, LgK/p;->a:LgK/x;

    return-object v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LgK/p;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LgK/p;->b:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
