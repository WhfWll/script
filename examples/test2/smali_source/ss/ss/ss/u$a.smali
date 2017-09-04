.class final Lss/ss/ss/u$a;
.super Ljava/lang/Object;

# interfaces
.implements LgK/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:B

.field c:I

.field d:I

.field e:S

.field private final f:LgK/g;


# direct methods
.method public constructor <init>(LgK/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/ss/ss/u$a;->f:LgK/g;

    return-void
.end method

.method private b()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lss/ss/ss/u$a;->c:I

    iget-object v1, p0, Lss/ss/ss/u$a;->f:LgK/g;

    invoke-static {v1}, Lss/ss/ss/u;->a(LgK/g;)I

    move-result v1

    iput v1, p0, Lss/ss/ss/u$a;->d:I

    iput v1, p0, Lss/ss/ss/u$a;->a:I

    iget-object v1, p0, Lss/ss/ss/u$a;->f:LgK/g;

    invoke-interface {v1}, LgK/g;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iget-object v2, p0, Lss/ss/ss/u$a;->f:LgK/g;

    invoke-interface {v2}, LgK/g;->h()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lss/ss/ss/u$a;->b:B

    invoke-static {}, Lss/ss/ss/u;->b()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {}, Lss/ss/ss/u;->b()Ljava/util/logging/Logger;

    move-result-object v2

    iget v3, p0, Lss/ss/ss/u$a;->c:I

    iget v4, p0, Lss/ss/ss/u$a;->a:I

    iget-byte v5, p0, Lss/ss/ss/u$a;->b:B

    invoke-static {v7, v3, v4, v1, v5}, Lss/ss/ss/u$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3f
    iget-object v2, p0, Lss/ss/ss/u$a;->f:LgK/g;

    invoke-interface {v2}, LgK/g;->j()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lss/ss/ss/u$a;->c:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_5e

    const-string v0, "%s != TYPE_CONTINUATION"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5e
    iget v1, p0, Lss/ss/ss/u$a;->c:I

    if-eq v1, v0, :cond_6b

    const-string v0, "TYPE_CONTINUATION streamId changed"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_6b
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

    :goto_2
    iget v2, p0, Lss/ss/ss/u$a;->d:I

    if-nez v2, :cond_1c

    iget-object v2, p0, Lss/ss/ss/u$a;->f:LgK/g;

    iget-short v3, p0, Lss/ss/ss/u$a;->e:S

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, LgK/g;->g(J)V

    const/4 v2, 0x0

    iput-short v2, p0, Lss/ss/ss/u$a;->e:S

    iget-byte v2, p0, Lss/ss/ss/u$a;->b:B

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_18

    :cond_17
    :goto_17
    return-wide v0

    :cond_18
    invoke-direct {p0}, Lss/ss/ss/u$a;->b()V

    goto :goto_2

    :cond_1c
    iget-object v2, p0, Lss/ss/ss/u$a;->f:LgK/g;

    iget v3, p0, Lss/ss/ss/u$a;->d:I

    int-to-long v4, v3

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, LgK/g;->a(LgK/e;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_17

    iget v0, p0, Lss/ss/ss/u$a;->d:I

    int-to-long v0, v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lss/ss/ss/u$a;->d:I

    move-wide v0, v2

    goto :goto_17
.end method

.method public a()LgK/x;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/u$a;->f:LgK/g;

    invoke-interface {v0}, LgK/g;->a()LgK/x;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
