.class public final Lss/ss/gK/e;
.super Ljava/lang/Object;

# interfaces
.implements Lss/ss/gK/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/ss/gK/e$f;,
        Lss/ss/gK/e$c;,
        Lss/ss/gK/e$e;,
        Lss/ss/gK/e$a;,
        Lss/ss/gK/e$b;,
        Lss/ss/gK/e$d;
    }
.end annotation


# instance fields
.field private final a:Lss/ss/gK/w;

.field private final b:LgK/g;

.field private final c:LgK/f;

.field private d:Lss/ss/gK/j;

.field private e:I


# direct methods
.method public constructor <init>(Lss/ss/gK/w;LgK/g;LgK/f;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lss/ss/gK/e;->e:I

    iput-object p1, p0, Lss/ss/gK/e;->a:Lss/ss/gK/w;

    iput-object p2, p0, Lss/ss/gK/e;->b:LgK/g;

    iput-object p3, p0, Lss/ss/gK/e;->c:LgK/f;

    return-void
.end method

.method static synthetic a(Lss/ss/gK/e;I)I
    .registers 2

    iput p1, p0, Lss/ss/gK/e;->e:I

    return p1
.end method

.method static synthetic a(Lss/ss/gK/e;)LgK/f;
    .registers 2

    iget-object v0, p0, Lss/ss/gK/e;->c:LgK/f;

    return-object v0
.end method

.method private a(LgK/k;)V
    .registers 4

    invoke-virtual {p1}, LgK/k;->a()LgK/x;

    move-result-object v0

    sget-object v1, LgK/x;->b:LgK/x;

    invoke-virtual {p1, v1}, LgK/k;->a(LgK/x;)LgK/k;

    invoke-virtual {v0}, LgK/x;->f()LgK/x;

    invoke-virtual {v0}, LgK/x;->d_()LgK/x;

    return-void
.end method

.method static synthetic a(Lss/ss/gK/e;LgK/k;)V
    .registers 2

    invoke-direct {p0, p1}, Lss/ss/gK/e;->a(LgK/k;)V

    return-void
.end method

.method static synthetic b(Lss/ss/gK/e;)LgK/g;
    .registers 2

    iget-object v0, p0, Lss/ss/gK/e;->b:LgK/g;

    return-object v0
.end method

.method private b(Lss/ak;)LgK/w;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lss/ss/gK/j;->a(Lss/ak;)Z

    move-result v0

    if-nez v0, :cond_d

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lss/ss/gK/e;->b(J)LgK/w;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lss/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lss/ss/gK/e;->d:Lss/ss/gK/j;

    invoke-virtual {p0, v0}, Lss/ss/gK/e;->b(Lss/ss/gK/j;)LgK/w;

    move-result-object v0

    goto :goto_c

    :cond_22
    invoke-static {p1}, Lss/ss/gK/o;->a(Lss/ak;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_31

    invoke-virtual {p0, v0, v1}, Lss/ss/gK/e;->b(J)LgK/w;

    move-result-object v0

    goto :goto_c

    :cond_31
    invoke-virtual {p0}, Lss/ss/gK/e;->f()LgK/w;

    move-result-object v0

    goto :goto_c
.end method

.method static synthetic c(Lss/ss/gK/e;)I
    .registers 2

    iget v0, p0, Lss/ss/gK/e;->e:I

    return v0
.end method

.method static synthetic d(Lss/ss/gK/e;)Lss/ss/gK/w;
    .registers 2

    iget-object v0, p0, Lss/ss/gK/e;->a:Lss/ss/gK/w;

    return-object v0
.end method


# virtual methods
.method public a(J)LgK/v;
    .registers 6

    iget v0, p0, Lss/ss/gK/e;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/e;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x2

    iput v0, p0, Lss/ss/gK/e;->e:I

    new-instance v0, Lss/ss/gK/e$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lss/ss/gK/e$d;-><init>(Lss/ss/gK/e;JLss/ss/gK/f;)V

    return-object v0
.end method

.method public a(Lss/ag;J)LgK/v;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lss/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lss/ss/gK/e;->e()LgK/v;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p2, p3}, Lss/ss/gK/e;->a(J)LgK/v;

    move-result-object v0

    goto :goto_12

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Lss/ak$a;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lss/ss/gK/e;->c()Lss/ak$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lss/ak;)Lss/am;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lss/ss/gK/e;->b(Lss/ak;)LgK/w;

    move-result-object v0

    new-instance v1, Lss/ss/gK/p;

    invoke-virtual {p1}, Lss/ak;->e()Lss/w;

    move-result-object v2

    invoke-static {v0}, LgK/n;->a(LgK/w;)LgK/g;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lss/ss/gK/p;-><init>(Lss/w;LgK/g;)V

    return-object v1
.end method

.method public a(Lss/ag;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/e;->d:Lss/ss/gK/j;

    invoke-virtual {v0}, Lss/ss/gK/j;->b()V

    iget-object v0, p0, Lss/ss/gK/e;->d:Lss/ss/gK/j;

    invoke-virtual {v0}, Lss/ss/gK/j;->d()Lss/k;

    move-result-object v0

    invoke-interface {v0}, Lss/k;->a()Lss/an;

    move-result-object v0

    invoke-virtual {v0}, Lss/an;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lss/ss/gK/r;->a(Lss/ag;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lss/ag;->c()Lss/w;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lss/ss/gK/e;->a(Lss/w;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lss/ss/gK/j;)V
    .registers 2

    iput-object p1, p0, Lss/ss/gK/e;->d:Lss/ss/gK/j;

    return-void
.end method

.method public a(Lss/ss/gK/s;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lss/ss/gK/e;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/e;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x3

    iput v0, p0, Lss/ss/gK/e;->e:I

    iget-object v0, p0, Lss/ss/gK/e;->c:LgK/f;

    invoke-virtual {p1, v0}, Lss/ss/gK/s;->a(LgK/v;)V

    return-void
.end method

.method public a(Lss/w;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lss/ss/gK/e;->e:I

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/e;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lss/ss/gK/e;->c:LgK/f;

    invoke-interface {v0, p2}, LgK/f;->b(Ljava/lang/String;)LgK/f;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, LgK/f;->b(Ljava/lang/String;)LgK/f;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lss/w;->a()I

    move-result v1

    :goto_2f
    if-ge v0, v1, :cond_51

    iget-object v2, p0, Lss/ss/gK/e;->c:LgK/f;

    invoke-virtual {p1, v0}, Lss/w;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, LgK/f;->b(Ljava/lang/String;)LgK/f;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, LgK/f;->b(Ljava/lang/String;)LgK/f;

    move-result-object v2

    invoke-virtual {p1, v0}, Lss/w;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, LgK/f;->b(Ljava/lang/String;)LgK/f;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, LgK/f;->b(Ljava/lang/String;)LgK/f;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_51
    iget-object v0, p0, Lss/ss/gK/e;->c:LgK/f;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, LgK/f;->b(Ljava/lang/String;)LgK/f;

    const/4 v0, 0x1

    iput v0, p0, Lss/ss/gK/e;->e:I

    return-void
.end method

.method public b(J)LgK/w;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lss/ss/gK/e;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/e;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x5

    iput v0, p0, Lss/ss/gK/e;->e:I

    new-instance v0, Lss/ss/gK/e$e;

    invoke-direct {v0, p0, p1, p2}, Lss/ss/gK/e$e;-><init>(Lss/ss/gK/e;J)V

    return-object v0
.end method

.method public b(Lss/ss/gK/j;)LgK/w;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lss/ss/gK/e;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/e;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x5

    iput v0, p0, Lss/ss/gK/e;->e:I

    new-instance v0, Lss/ss/gK/e$c;

    invoke-direct {v0, p0, p1}, Lss/ss/gK/e$c;-><init>(Lss/ss/gK/e;Lss/ss/gK/j;)V

    return-object v0
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/e;->c:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V

    return-void
.end method

.method public c()Lss/ak$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lss/ss/gK/e;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    iget v0, p0, Lss/ss/gK/e;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/e;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    :try_start_25
    iget-object v0, p0, Lss/ss/gK/e;->b:LgK/g;

    invoke-interface {v0}, LgK/g;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lss/ss/gK/v;->a(Ljava/lang/String;)Lss/ss/gK/v;

    move-result-object v0

    new-instance v1, Lss/ak$a;

    invoke-direct {v1}, Lss/ak$a;-><init>()V

    iget-object v2, v0, Lss/ss/gK/v;->a:Lss/ae;

    invoke-virtual {v1, v2}, Lss/ak$a;->a(Lss/ae;)Lss/ak$a;

    move-result-object v1

    iget v2, v0, Lss/ss/gK/v;->b:I

    invoke-virtual {v1, v2}, Lss/ak$a;->a(I)Lss/ak$a;

    move-result-object v1

    iget-object v2, v0, Lss/ss/gK/v;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lss/ak$a;->a(Ljava/lang/String;)Lss/ak$a;

    move-result-object v1

    invoke-virtual {p0}, Lss/ss/gK/e;->d()Lss/w;

    move-result-object v2

    invoke-virtual {v1, v2}, Lss/ak$a;->a(Lss/w;)Lss/ak$a;

    move-result-object v1

    iget v0, v0, Lss/ss/gK/v;->b:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_25

    const/4 v0, 0x4

    iput v0, p0, Lss/ss/gK/e;->e:I
    :try_end_57
    .catch Ljava/io/EOFException; {:try_start_25 .. :try_end_57} :catch_58

    return-object v1

    :catch_58
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lss/ss/gK/e;->a:Lss/ss/gK/w;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public d()Lss/w;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lss/w$a;

    invoke-direct {v0}, Lss/w$a;-><init>()V

    :goto_5
    iget-object v1, p0, Lss/ss/gK/e;->b:LgK/g;

    invoke-interface {v1}, LgK/g;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Lss/ss/d;->b:Lss/ss/d;

    invoke-virtual {v2, v0, v1}, Lss/ss/d;->a(Lss/w$a;Ljava/lang/String;)V

    goto :goto_5

    :cond_17
    invoke-virtual {v0}, Lss/w$a;->a()Lss/w;

    move-result-object v0

    return-object v0
.end method

.method public e()LgK/v;
    .registers 4

    iget v0, p0, Lss/ss/gK/e;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/e;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x2

    iput v0, p0, Lss/ss/gK/e;->e:I

    new-instance v0, Lss/ss/gK/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/ss/gK/e$b;-><init>(Lss/ss/gK/e;Lss/ss/gK/f;)V

    return-object v0
.end method

.method public f()LgK/w;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lss/ss/gK/e;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/gK/e;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget-object v0, p0, Lss/ss/gK/e;->a:Lss/ss/gK/w;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const/4 v0, 0x5

    iput v0, p0, Lss/ss/gK/e;->e:I

    iget-object v0, p0, Lss/ss/gK/e;->a:Lss/ss/gK/w;

    invoke-virtual {v0}, Lss/ss/gK/w;->c()V

    new-instance v0, Lss/ss/gK/e$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/ss/gK/e$f;-><init>(Lss/ss/gK/e;Lss/ss/gK/f;)V

    return-object v0
.end method
