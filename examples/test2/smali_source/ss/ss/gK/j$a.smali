.class Lss/ss/gK/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lss/aa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/gK/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lss/ss/gK/j;

.field private final b:I

.field private final c:Lss/ag;

.field private final d:Lss/k;

.field private e:I


# direct methods
.method constructor <init>(Lss/ss/gK/j;ILss/ag;Lss/k;)V
    .registers 5

    iput-object p1, p0, Lss/ss/gK/j$a;->a:Lss/ss/gK/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lss/ss/gK/j$a;->b:I

    iput-object p3, p0, Lss/ss/gK/j$a;->c:Lss/ag;

    iput-object p4, p0, Lss/ss/gK/j$a;->d:Lss/k;

    return-void
.end method


# virtual methods
.method public a()Lss/ag;
    .registers 2

    iget-object v0, p0, Lss/ss/gK/j$a;->c:Lss/ag;

    return-object v0
.end method

.method public a(Lss/ag;)Lss/ak;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    iget v0, p0, Lss/ss/gK/j$a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lss/ss/gK/j$a;->e:I

    iget v0, p0, Lss/ss/gK/j$a;->b:I

    if-lez v0, :cond_93

    iget-object v0, p0, Lss/ss/gK/j$a;->a:Lss/ss/gK/j;

    iget-object v0, v0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v0}, Lss/ac;->w()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lss/ss/gK/j$a;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/aa;

    invoke-virtual {p0}, Lss/ss/gK/j$a;->b()Lss/k;

    move-result-object v1

    invoke-interface {v1}, Lss/k;->a()Lss/an;

    move-result-object v1

    invoke-virtual {v1}, Lss/an;->a()Lss/a;

    move-result-object v1

    invoke-virtual {p1}, Lss/ag;->a()Lss/y;

    move-result-object v2

    invoke-virtual {v2}, Lss/y;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lss/a;->a()Lss/y;

    move-result-object v3

    invoke-virtual {v3}, Lss/y;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-virtual {p1}, Lss/ag;->a()Lss/y;

    move-result-object v2

    invoke-virtual {v2}, Lss/y;->g()I

    move-result v2

    invoke-virtual {v1}, Lss/a;->a()Lss/y;

    move-result-object v1

    invoke-virtual {v1}, Lss/y;->g()I

    move-result v1

    if-eq v2, v1, :cond_70

    :cond_51
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must retain the same host and port"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_70
    iget v1, p0, Lss/ss/gK/j$a;->e:I

    if-le v1, v4, :cond_93

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_93
    iget v0, p0, Lss/ss/gK/j$a;->b:I

    iget-object v1, p0, Lss/ss/gK/j$a;->a:Lss/ss/gK/j;

    iget-object v1, v1, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v1}, Lss/ac;->w()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_10a

    new-instance v2, Lss/ss/gK/j$a;

    iget-object v0, p0, Lss/ss/gK/j$a;->a:Lss/ss/gK/j;

    iget v1, p0, Lss/ss/gK/j$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lss/ss/gK/j$a;->d:Lss/k;

    invoke-direct {v2, v0, v1, p1, v3}, Lss/ss/gK/j$a;-><init>(Lss/ss/gK/j;ILss/ag;Lss/k;)V

    iget-object v0, p0, Lss/ss/gK/j$a;->a:Lss/ss/gK/j;

    iget-object v0, v0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v0}, Lss/ac;->w()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lss/ss/gK/j$a;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/aa;

    invoke-interface {v0, v2}, Lss/aa;->a(Lss/aa$a;)Lss/ak;

    move-result-object v1

    iget v2, v2, Lss/ss/gK/j$a;->e:I

    if-eq v2, v4, :cond_e7

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e7
    if-nez v1, :cond_108

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " returned null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_108
    move-object v0, v1

    :cond_109
    return-object v0

    :cond_10a
    iget-object v0, p0, Lss/ss/gK/j$a;->a:Lss/ss/gK/j;

    invoke-static {v0}, Lss/ss/gK/j;->a(Lss/ss/gK/j;)Lss/ss/gK/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lss/ss/gK/n;->a(Lss/ag;)V

    iget-object v0, p0, Lss/ss/gK/j$a;->a:Lss/ss/gK/j;

    invoke-static {v0, p1}, Lss/ss/gK/j;->a(Lss/ss/gK/j;Lss/ag;)Lss/ag;

    iget-object v0, p0, Lss/ss/gK/j$a;->a:Lss/ss/gK/j;

    invoke-virtual {v0, p1}, Lss/ss/gK/j;->a(Lss/ag;)Z

    move-result v0

    if-eqz v0, :cond_146

    invoke-virtual {p1}, Lss/ag;->d()Lss/ai;

    move-result-object v0

    if-eqz v0, :cond_146

    iget-object v0, p0, Lss/ss/gK/j$a;->a:Lss/ss/gK/j;

    invoke-static {v0}, Lss/ss/gK/j;->a(Lss/ss/gK/j;)Lss/ss/gK/n;

    move-result-object v0

    invoke-virtual {p1}, Lss/ag;->d()Lss/ai;

    move-result-object v1

    invoke-virtual {v1}, Lss/ai;->b()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lss/ss/gK/n;->a(Lss/ag;J)LgK/v;

    move-result-object v0

    invoke-static {v0}, LgK/n;->a(LgK/v;)LgK/f;

    move-result-object v0

    invoke-virtual {p1}, Lss/ag;->d()Lss/ai;

    move-result-object v1

    invoke-virtual {v1, v0}, Lss/ai;->a(LgK/f;)V

    invoke-interface {v0}, LgK/f;->close()V

    :cond_146
    iget-object v0, p0, Lss/ss/gK/j$a;->a:Lss/ss/gK/j;

    invoke-static {v0}, Lss/ss/gK/j;->b(Lss/ss/gK/j;)Lss/ak;

    move-result-object v0

    invoke-virtual {v0}, Lss/ak;->b()I

    move-result v1

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_158

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_109

    :cond_158
    invoke-virtual {v0}, Lss/ak;->f()Lss/am;

    move-result-object v2

    invoke-virtual {v2}, Lss/am;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_109

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lss/ak;->f()Lss/am;

    move-result-object v0

    invoke-virtual {v0}, Lss/am;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public b()Lss/k;
    .registers 2

    iget-object v0, p0, Lss/ss/gK/j$a;->d:Lss/k;

    return-object v0
.end method
