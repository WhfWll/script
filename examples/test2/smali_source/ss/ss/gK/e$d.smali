.class final Lss/ss/gK/e$d;
.super Ljava/lang/Object;

# interfaces
.implements LgK/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/gK/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lss/ss/gK/e;

.field private final b:LgK/k;

.field private c:Z

.field private d:J


# direct methods
.method private constructor <init>(Lss/ss/gK/e;J)V
    .registers 6

    iput-object p1, p0, Lss/ss/gK/e$d;->a:Lss/ss/gK/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LgK/k;

    iget-object v1, p0, Lss/ss/gK/e$d;->a:Lss/ss/gK/e;

    invoke-static {v1}, Lss/ss/gK/e;->a(Lss/ss/gK/e;)LgK/f;

    move-result-object v1

    invoke-interface {v1}, LgK/f;->a()LgK/x;

    move-result-object v1

    invoke-direct {v0, v1}, LgK/k;-><init>(LgK/x;)V

    iput-object v0, p0, Lss/ss/gK/e$d;->b:LgK/k;

    iput-wide p2, p0, Lss/ss/gK/e$d;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lss/ss/gK/e;JLss/ss/gK/f;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lss/ss/gK/e$d;-><init>(Lss/ss/gK/e;J)V

    return-void
.end method


# virtual methods
.method public a()LgK/x;
    .registers 2

    iget-object v0, p0, Lss/ss/gK/e$d;->b:LgK/k;

    return-object v0
.end method

.method public a_(LgK/e;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lss/ss/gK/e$d;->c:Z

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

    iget-wide v0, p0, Lss/ss/gK/e$d;->d:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_41

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lss/ss/gK/e$d;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    iget-object v0, p0, Lss/ss/gK/e$d;->a:Lss/ss/gK/e;

    invoke-static {v0}, Lss/ss/gK/e;->a(Lss/ss/gK/e;)LgK/f;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, LgK/f;->a_(LgK/e;J)V

    iget-wide v0, p0, Lss/ss/gK/e$d;->d:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lss/ss/gK/e$d;->d:J

    return-void
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lss/ss/gK/e$d;->c:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lss/ss/gK/e$d;->c:Z

    iget-wide v0, p0, Lss/ss/gK/e$d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Lss/ss/gK/e$d;->a:Lss/ss/gK/e;

    iget-object v1, p0, Lss/ss/gK/e$d;->b:LgK/k;

    invoke-static {v0, v1}, Lss/ss/gK/e;->a(Lss/ss/gK/e;LgK/k;)V

    iget-object v0, p0, Lss/ss/gK/e$d;->a:Lss/ss/gK/e;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lss/ss/gK/e;->a(Lss/ss/gK/e;I)I

    goto :goto_4
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lss/ss/gK/e$d;->c:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lss/ss/gK/e$d;->a:Lss/ss/gK/e;

    invoke-static {v0}, Lss/ss/gK/e;->a(Lss/ss/gK/e;)LgK/f;

    move-result-object v0

    invoke-interface {v0}, LgK/f;->flush()V

    goto :goto_4
.end method
