.class public final LgK/i;
.super Ljava/lang/Object;

# interfaces
.implements LgK/v;


# instance fields
.field private final a:LgK/f;

.field private final b:Ljava/util/zip/Deflater;

.field private c:Z


# direct methods
.method constructor <init>(LgK/f;Ljava/util/zip/Deflater;)V
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
    iput-object p1, p0, LgK/i;->a:LgK/f;

    iput-object p2, p0, LgK/i;->b:Ljava/util/zip/Deflater;

    return-void
.end method

.method public constructor <init>(LgK/v;Ljava/util/zip/Deflater;)V
    .registers 4

    invoke-static {p1}, LgK/n;->a(LgK/v;)LgK/f;

    move-result-object v0

    invoke-direct {p0, v0, p2}, LgK/i;-><init>(LgK/f;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method private a(Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LgK/i;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->c()LgK/e;

    move-result-object v1

    :cond_6
    :goto_6
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, LgK/e;->e(I)LgK/t;

    move-result-object v2

    if-eqz p1, :cond_2f

    iget-object v0, p0, LgK/i;->b:Ljava/util/zip/Deflater;

    iget-object v3, v2, LgK/t;->a:[B

    iget v4, v2, LgK/t;->c:I

    iget v5, v2, LgK/t;->c:I

    rsub-int v5, v5, 0x2000

    const/4 v6, 0x2

    invoke-virtual {v0, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    :goto_1c
    if-lez v0, :cond_3e

    iget v3, v2, LgK/t;->c:I

    add-int/2addr v3, v0

    iput v3, v2, LgK/t;->c:I

    iget-wide v2, v1, LgK/e;->b:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, v1, LgK/e;->b:J

    iget-object v0, p0, LgK/i;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->t()LgK/f;

    goto :goto_6

    :cond_2f
    iget-object v0, p0, LgK/i;->b:Ljava/util/zip/Deflater;

    iget-object v3, v2, LgK/t;->a:[B

    iget v4, v2, LgK/t;->c:I

    iget v5, v2, LgK/t;->c:I

    rsub-int v5, v5, 0x2000

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    goto :goto_1c

    :cond_3e
    iget-object v0, p0, LgK/i;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v2, LgK/t;->b:I

    iget v3, v2, LgK/t;->c:I

    if-ne v0, v3, :cond_55

    invoke-virtual {v2}, LgK/t;->a()LgK/t;

    move-result-object v0

    iput-object v0, v1, LgK/e;->a:LgK/t;

    invoke-static {v2}, LgK/u;->a(LgK/t;)V

    :cond_55
    return-void
.end method


# virtual methods
.method public a()LgK/x;
    .registers 2

    iget-object v0, p0, LgK/i;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->a()LgK/x;

    move-result-object v0

    return-object v0
.end method

.method public a_(LgK/e;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p1, LgK/e;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, LgK/z;->a(JJJ)V

    :goto_8
    cmp-long v0, p2, v2

    if-lez v0, :cond_43

    iget-object v0, p1, LgK/e;->a:LgK/t;

    iget v1, v0, LgK/t;->c:I

    iget v4, v0, LgK/t;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    iget-object v4, p0, LgK/i;->b:Ljava/util/zip/Deflater;

    iget-object v5, v0, LgK/t;->a:[B

    iget v6, v0, LgK/t;->b:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, LgK/i;->a(Z)V

    iget-wide v4, p1, LgK/e;->b:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p1, LgK/e;->b:J

    iget v4, v0, LgK/t;->b:I

    add-int/2addr v4, v1

    iput v4, v0, LgK/t;->b:I

    iget v4, v0, LgK/t;->b:I

    iget v5, v0, LgK/t;->c:I

    if-ne v4, v5, :cond_40

    invoke-virtual {v0}, LgK/t;->a()LgK/t;

    move-result-object v4

    iput-object v4, p1, LgK/e;->a:LgK/t;

    invoke-static {v0}, LgK/u;->a(LgK/t;)V

    :cond_40
    int-to-long v0, v1

    sub-long/2addr p2, v0

    goto :goto_8

    :cond_43
    return-void
.end method

.method b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LgK/i;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LgK/i;->a(Z)V

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/i;->c:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0}, LgK/i;->b()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_27

    :goto_9
    :try_start_9
    iget-object v0, p0, LgK/i;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_1d

    move-object v0, v1

    :cond_f
    :goto_f
    :try_start_f
    iget-object v1, p0, LgK/i;->a:LgK/f;

    invoke-interface {v1}, LgK/f;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_22

    :cond_14
    :goto_14
    const/4 v1, 0x1

    iput-boolean v1, p0, LgK/i;->c:Z

    if-eqz v0, :cond_4

    invoke-static {v0}, LgK/z;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1d
    move-exception v0

    if-eqz v1, :cond_f

    move-object v0, v1

    goto :goto_f

    :catch_22
    move-exception v1

    if-nez v0, :cond_14

    move-object v0, v1

    goto :goto_14

    :catch_27
    move-exception v1

    goto :goto_9
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LgK/i;->a(Z)V

    iget-object v0, p0, LgK/i;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LgK/i;->a:LgK/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
