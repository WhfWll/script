.class Lss/ss/gK/e$c;
.super Lss/ss/gK/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/gK/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic d:Lss/ss/gK/e;

.field private e:J

.field private f:Z

.field private final g:Lss/ss/gK/j;


# direct methods
.method constructor <init>(Lss/ss/gK/e;Lss/ss/gK/j;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lss/ss/gK/e$c;->d:Lss/ss/gK/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lss/ss/gK/e$a;-><init>(Lss/ss/gK/e;Lss/ss/gK/f;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lss/ss/gK/e$c;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lss/ss/gK/e$c;->f:Z

    iput-object p2, p0, Lss/ss/gK/e$c;->g:Lss/ss/gK/j;

    return-void
.end method

.method private b()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lss/ss/gK/e$c;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    iget-object v0, p0, Lss/ss/gK/e$c;->d:Lss/ss/gK/e;

    invoke-static {v0}, Lss/ss/gK/e;->b(Lss/ss/gK/e;)LgK/g;

    move-result-object v0

    invoke-interface {v0}, LgK/g;->p()Ljava/lang/String;

    :cond_13
    :try_start_13
    iget-object v0, p0, Lss/ss/gK/e$c;->d:Lss/ss/gK/e;

    invoke-static {v0}, Lss/ss/gK/e;->b(Lss/ss/gK/e;)LgK/g;

    move-result-object v0

    invoke-interface {v0}, LgK/g;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lss/ss/gK/e$c;->e:J

    iget-object v0, p0, Lss/ss/gK/e$c;->d:Lss/ss/gK/e;

    invoke-static {v0}, Lss/ss/gK/e;->b(Lss/ss/gK/e;)LgK/g;

    move-result-object v0

    invoke-interface {v0}, LgK/g;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lss/ss/gK/e$c;->e:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_41

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_71

    :cond_41
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lss/ss/gK/e$c;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_66} :catch_66

    :catch_66
    move-exception v0

    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_71
    iget-wide v0, p0, Lss/ss/gK/e$c;->e:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_89

    const/4 v0, 0x0

    iput-boolean v0, p0, Lss/ss/gK/e$c;->f:Z

    iget-object v0, p0, Lss/ss/gK/e$c;->g:Lss/ss/gK/j;

    iget-object v1, p0, Lss/ss/gK/e$c;->d:Lss/ss/gK/e;

    invoke-virtual {v1}, Lss/ss/gK/e;->d()Lss/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/ss/gK/j;->a(Lss/w;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lss/ss/gK/e$c;->a(Z)V

    :cond_89
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

    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v4

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
    iget-boolean v2, p0, Lss/ss/gK/e$c;->b:Z

    if-eqz v2, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    iget-boolean v2, p0, Lss/ss/gK/e$c;->f:Z

    if-nez v2, :cond_32

    :cond_31
    :goto_31
    return-wide v0

    :cond_32
    iget-wide v2, p0, Lss/ss/gK/e$c;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3e

    iget-wide v2, p0, Lss/ss/gK/e$c;->e:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_45

    :cond_3e
    invoke-direct {p0}, Lss/ss/gK/e$c;->b()V

    iget-boolean v2, p0, Lss/ss/gK/e$c;->f:Z

    if-eqz v2, :cond_31

    :cond_45
    iget-object v2, p0, Lss/ss/gK/e$c;->d:Lss/ss/gK/e;

    invoke-static {v2}, Lss/ss/gK/e;->b(Lss/ss/gK/e;)LgK/g;

    move-result-object v2

    iget-wide v4, p0, Lss/ss/gK/e$c;->e:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, LgK/g;->a(LgK/e;J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_65

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lss/ss/gK/e$c;->a(Z)V

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    iget-wide v0, p0, Lss/ss/gK/e$c;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lss/ss/gK/e$c;->e:J

    move-wide v0, v2

    goto :goto_31
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lss/ss/gK/e$c;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lss/ss/gK/e$c;->f:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lss/ss/j;->a(LgK/w;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lss/ss/gK/e$c;->a(Z)V

    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lss/ss/gK/e$c;->b:Z

    goto :goto_4
.end method
