.class public final Lss/ss/gK/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lss/a;

.field private final b:Lss/ss/i;

.field private c:Ljava/net/Proxy;

.field private d:Ljava/net/InetSocketAddress;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/an;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lss/a;Lss/ss/i;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/u;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/u;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lss/ss/gK/u;->i:Ljava/util/List;

    iput-object p1, p0, Lss/ss/gK/u;->a:Lss/a;

    iput-object p2, p0, Lss/ss/gK/u;->b:Lss/ss/i;

    invoke-virtual {p1}, Lss/a;->a()Lss/y;

    move-result-object v0

    invoke-virtual {p1}, Lss/a;->h()Ljava/net/Proxy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lss/ss/gK/u;->a(Lss/y;Ljava/net/Proxy;)V

    return-void
.end method

.method static a(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private a(Ljava/net/Proxy;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lss/ss/gK/u;->g:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_18

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_5f

    :cond_18
    iget-object v0, p0, Lss/ss/gK/u;->a:Lss/a;

    invoke-virtual {v0}, Lss/a;->a()Lss/y;

    move-result-object v0

    invoke-virtual {v0}, Lss/y;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lss/ss/gK/u;->a:Lss/a;

    invoke-virtual {v0}, Lss/a;->a()Lss/y;

    move-result-object v0

    invoke-virtual {v0}, Lss/y;->g()I

    move-result v0

    move v3, v0

    move-object v0, v1

    :goto_2e
    const/4 v1, 0x1

    if-lt v3, v1, :cond_36

    const v1, 0xffff

    if-le v3, v1, :cond_91

    :cond_36
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No route to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; port is out of range"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5f
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_84

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_84
    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lss/ss/gK/u;->a(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    move v3, v0

    move-object v0, v1

    goto :goto_2e

    :cond_91
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v4, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v1, v4, :cond_a5

    iget-object v1, p0, Lss/ss/gK/u;->g:Ljava/util/List;

    invoke-static {v0, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a2
    iput v2, p0, Lss/ss/gK/u;->h:I

    return-void

    :cond_a5
    iget-object v1, p0, Lss/ss/gK/u;->a:Lss/a;

    invoke-virtual {v1}, Lss/a;->b()Lss/t;

    move-result-object v1

    invoke-interface {v1, v0}, Lss/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_b4
    if-ge v1, v5, :cond_a2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iget-object v6, p0, Lss/ss/gK/u;->g:Ljava/util/List;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b4
.end method

.method private a(Lss/y;Ljava/net/Proxy;)V
    .registers 5

    if-eqz p2, :cond_c

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/u;->e:Ljava/util/List;

    :goto_8
    const/4 v0, 0x0

    iput v0, p0, Lss/ss/gK/u;->f:I

    return-void

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lss/ss/gK/u;->e:Ljava/util/List;

    iget-object v0, p0, Lss/ss/gK/u;->a:Lss/a;

    invoke-virtual {v0}, Lss/a;->g()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {p1}, Lss/y;->a()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v1, p0, Lss/ss/gK/u;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_28
    iget-object v0, p0, Lss/ss/gK/u;->e:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lss/ss/gK/u;->e:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method private c()Z
    .registers 3

    iget v0, p0, Lss/ss/gK/u;->f:I

    iget-object v1, p0, Lss/ss/gK/u;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private d()Ljava/net/Proxy;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lss/ss/gK/u;->c()Z

    move-result v0

    if-nez v0, :cond_35

    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/u;->a:Lss/a;

    invoke-virtual {v2}, Lss/a;->a()Lss/y;

    move-result-object v2

    invoke-virtual {v2}, Lss/y;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/u;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    iget-object v0, p0, Lss/ss/gK/u;->e:Ljava/util/List;

    iget v1, p0, Lss/ss/gK/u;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lss/ss/gK/u;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-direct {p0, v0}, Lss/ss/gK/u;->a(Ljava/net/Proxy;)V

    return-object v0
.end method

.method private e()Z
    .registers 3

    iget v0, p0, Lss/ss/gK/u;->h:I

    iget-object v1, p0, Lss/ss/gK/u;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private f()Ljava/net/InetSocketAddress;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lss/ss/gK/u;->e()Z

    move-result v0

    if-nez v0, :cond_35

    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/u;->a:Lss/a;

    invoke-virtual {v2}, Lss/a;->a()Lss/y;

    move-result-object v2

    invoke-virtual {v2}, Lss/y;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/u;->g:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    iget-object v0, p0, Lss/ss/gK/u;->g:Ljava/util/List;

    iget v1, p0, Lss/ss/gK/u;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lss/ss/gK/u;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method private g()Z
    .registers 2

    iget-object v0, p0, Lss/ss/gK/u;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private h()Lss/an;
    .registers 3

    iget-object v0, p0, Lss/ss/gK/u;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/an;

    return-object v0
.end method


# virtual methods
.method public a(Lss/an;Ljava/io/IOException;)V
    .registers 6

    invoke-virtual {p1}, Lss/an;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_2f

    iget-object v0, p0, Lss/ss/gK/u;->a:Lss/a;

    invoke-virtual {v0}, Lss/a;->g()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lss/ss/gK/u;->a:Lss/a;

    invoke-virtual {v0}, Lss/a;->g()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/u;->a:Lss/a;

    invoke-virtual {v1}, Lss/a;->a()Lss/y;

    move-result-object v1

    invoke-virtual {v1}, Lss/y;->a()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lss/an;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_2f
    iget-object v0, p0, Lss/ss/gK/u;->b:Lss/ss/i;

    invoke-virtual {v0, p1}, Lss/ss/i;->a(Lss/an;)V

    return-void
.end method

.method public a()Z
    .registers 2

    invoke-direct {p0}, Lss/ss/gK/u;->e()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lss/ss/gK/u;->c()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lss/ss/gK/u;->g()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public b()Lss/an;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lss/ss/gK/u;->e()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-direct {p0}, Lss/ss/gK/u;->c()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lss/ss/gK/u;->g()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_18
    invoke-direct {p0}, Lss/ss/gK/u;->h()Lss/an;

    move-result-object v0

    :cond_1c
    :goto_1c
    return-object v0

    :cond_1d
    invoke-direct {p0}, Lss/ss/gK/u;->d()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/u;->c:Ljava/net/Proxy;

    :cond_23
    invoke-direct {p0}, Lss/ss/gK/u;->f()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/u;->d:Ljava/net/InetSocketAddress;

    new-instance v0, Lss/an;

    iget-object v1, p0, Lss/ss/gK/u;->a:Lss/a;

    iget-object v2, p0, Lss/ss/gK/u;->c:Ljava/net/Proxy;

    iget-object v3, p0, Lss/ss/gK/u;->d:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3}, Lss/an;-><init>(Lss/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v1, p0, Lss/ss/gK/u;->b:Lss/ss/i;

    invoke-virtual {v1, v0}, Lss/ss/i;->c(Lss/an;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lss/ss/gK/u;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lss/ss/gK/u;->b()Lss/an;

    move-result-object v0

    goto :goto_1c
.end method
