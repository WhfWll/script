.class public abstract Lss/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private f()Ljava/nio/charset/Charset;
    .registers 3

    invoke-virtual {p0}, Lss/am;->a()Lss/ab;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v1, Lss/ss/j;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lss/ab;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lss/ss/j;->c:Ljava/nio/charset/Charset;

    goto :goto_c
.end method


# virtual methods
.method public abstract a()Lss/ab;
.end method

.method public abstract b()J
.end method

.method public abstract c()LgK/g;
.end method

.method public close()V
    .registers 2

    invoke-virtual {p0}, Lss/am;->c()LgK/g;

    move-result-object v0

    invoke-static {v0}, Lss/ss/j;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public final d()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lss/am;->b()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_24

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_24
    invoke-virtual {p0}, Lss/am;->c()LgK/g;

    move-result-object v2

    :try_start_28
    invoke-interface {v2}, LgK/g;->q()[B
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_43

    move-result-object v3

    invoke-static {v2}, Lss/ss/j;->a(Ljava/io/Closeable;)V

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_48

    array-length v2, v3

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_48

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Content-Length and stream length disagree"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_43
    move-exception v0

    invoke-static {v2}, Lss/ss/j;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_48
    return-object v3
.end method

.method public final e()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lss/am;->d()[B

    move-result-object v1

    invoke-direct {p0}, Lss/am;->f()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
