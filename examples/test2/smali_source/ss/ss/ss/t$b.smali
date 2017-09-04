.class final Lss/ss/ss/t$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:LgK/e;


# direct methods
.method constructor <init>(LgK/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/ss/ss/t$b;->a:LgK/e;

    return-void
.end method


# virtual methods
.method a(III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ge p1, p2, :cond_a

    iget-object v0, p0, Lss/ss/ss/t$b;->a:LgK/e;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, LgK/e;->b(I)LgK/e;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lss/ss/ss/t$b;->a:LgK/e;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, LgK/e;->b(I)LgK/e;

    sub-int v0, p1, p2

    :goto_13
    const/16 v1, 0x80

    if-lt v0, v1, :cond_23

    and-int/lit8 v1, v0, 0x7f

    iget-object v2, p0, Lss/ss/ss/t$b;->a:LgK/e;

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, LgK/e;->b(I)LgK/e;

    ushr-int/lit8 v0, v0, 0x7

    goto :goto_13

    :cond_23
    iget-object v1, p0, Lss/ss/ss/t$b;->a:LgK/e;

    invoke-virtual {v1, v0}, LgK/e;->b(I)LgK/e;

    goto :goto_9
.end method

.method a(LgK/h;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LgK/h;->f()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lss/ss/ss/t$b;->a(III)V

    iget-object v0, p0, Lss/ss/ss/t$b;->a:LgK/e;

    invoke-virtual {v0, p1}, LgK/e;->a(LgK/h;)LgK/e;

    return-void
.end method

.method a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_6
    if-ge v1, v3, :cond_4e

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/r;

    iget-object v0, v0, Lss/ss/ss/r;->h:LgK/h;

    invoke-virtual {v0}, LgK/h;->e()LgK/h;

    move-result-object v4

    invoke-static {}, Lss/ss/ss/t;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0xf

    invoke-virtual {p0, v0, v4, v2}, Lss/ss/ss/t$b;->a(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/r;

    iget-object v0, v0, Lss/ss/ss/r;->i:LgK/h;

    invoke-virtual {p0, v0}, Lss/ss/ss/t$b;->a(LgK/h;)V

    :goto_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_3a
    iget-object v0, p0, Lss/ss/ss/t$b;->a:LgK/e;

    invoke-virtual {v0, v2}, LgK/e;->b(I)LgK/e;

    invoke-virtual {p0, v4}, Lss/ss/ss/t$b;->a(LgK/h;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/r;

    iget-object v0, v0, Lss/ss/ss/r;->i:LgK/h;

    invoke-virtual {p0, v0}, Lss/ss/ss/t$b;->a(LgK/h;)V

    goto :goto_36

    :cond_4e
    return-void
.end method
