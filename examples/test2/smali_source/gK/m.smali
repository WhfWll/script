.class public final LgK/m;
.super Ljava/lang/Object;

# interfaces
.implements LgK/w;


# instance fields
.field private final a:LgK/g;

.field private final b:Ljava/util/zip/Inflater;

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(LgK/g;Ljava/util/zip/Inflater;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, LgK/m;->a:LgK/g;

    iput-object p2, p0, LgK/m;->b:Ljava/util/zip/Inflater;

    return-void
.end method

.method public constructor <init>(LgK/w;Ljava/util/zip/Inflater;)V
    .registers 4

    invoke-static {p1}, LgK/n;->a(LgK/w;)LgK/g;

    move-result-object v0

    invoke-direct {p0, v0, p2}, LgK/m;-><init>(LgK/g;Ljava/util/zip/Inflater;)V

    return-void
.end method

.method private c()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, LgK/m;->c:I

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget v0, p0, LgK/m;->c:I

    iget-object v1, p0, LgK/m;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, LgK/m;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, LgK/m;->c:I

    iget-object v1, p0, LgK/m;->a:LgK/g;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, LgK/g;->g(J)V

    goto :goto_4
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
    iget-boolean v2, p0, LgK/m;->d:Z

    if-eqz v2, :cond_2b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    cmp-long v2, p2, v0

    if-nez v2, :cond_30

    :goto_2f
    return-wide v0

    :cond_30
    invoke-virtual {p0}, LgK/m;->b()Z

    move-result v0

    const/4 v1, 0x1

    :try_start_35
    invoke-virtual {p1, v1}, LgK/e;->e(I)LgK/t;

    move-result-object v1

    iget-object v2, p0, LgK/m;->b:Ljava/util/zip/Inflater;

    iget-object v3, v1, LgK/t;->a:[B

    iget v4, v1, LgK/t;->c:I

    iget v5, v1, LgK/t;->c:I

    rsub-int v5, v5, 0x2000

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    if-lez v2, :cond_56

    iget v0, v1, LgK/t;->c:I

    add-int/2addr v0, v2

    iput v0, v1, LgK/t;->c:I

    iget-wide v0, p1, LgK/e;->b:J

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p1, LgK/e;->b:J

    int-to-long v0, v2

    goto :goto_2f

    :cond_56
    iget-object v2, p0, LgK/m;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-nez v2, :cond_66

    iget-object v2, p0, LgK/m;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-eqz v2, :cond_7b

    :cond_66
    invoke-direct {p0}, LgK/m;->c()V

    iget v0, v1, LgK/t;->b:I

    iget v2, v1, LgK/t;->c:I

    if-ne v0, v2, :cond_78

    invoke-virtual {v1}, LgK/t;->a()LgK/t;

    move-result-object v0

    iput-object v0, p1, LgK/e;->a:LgK/t;

    invoke-static {v1}, LgK/u;->a(LgK/t;)V

    :cond_78
    const-wide/16 v0, -0x1

    goto :goto_2f

    :cond_7b
    if-eqz v0, :cond_30

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "source exhausted prematurely"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_85
    .catch Ljava/util/zip/DataFormatException; {:try_start_35 .. :try_end_85} :catch_85

    :catch_85
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a()LgK/x;
    .registers 2

    iget-object v0, p0, LgK/m;->a:LgK/g;

    invoke-interface {v0}, LgK/g;->a()LgK/x;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, LgK/m;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-nez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, LgK/m;->c()V

    iget-object v1, p0, LgK/m;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget-object v1, p0, LgK/m;->a:LgK/g;

    invoke-interface {v1}, LgK/g;->f()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v0, 0x1

    goto :goto_9

    :cond_27
    iget-object v1, p0, LgK/m;->a:LgK/g;

    invoke-interface {v1}, LgK/g;->c()LgK/e;

    move-result-object v1

    iget-object v1, v1, LgK/e;->a:LgK/t;

    iget v2, v1, LgK/t;->c:I

    iget v3, v1, LgK/t;->b:I

    sub-int/2addr v2, v3

    iput v2, p0, LgK/m;->c:I

    iget-object v2, p0, LgK/m;->b:Ljava/util/zip/Inflater;

    iget-object v3, v1, LgK/t;->a:[B

    iget v1, v1, LgK/t;->b:I

    iget v4, p0, LgK/m;->c:I

    invoke-virtual {v2, v3, v1, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_9
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/m;->d:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, LgK/m;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LgK/m;->d:Z

    iget-object v0, p0, LgK/m;->a:LgK/g;

    invoke-interface {v0}, LgK/g;->close()V

    goto :goto_4
.end method
