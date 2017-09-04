.class public final Lss/an;
.super Ljava/lang/Object;


# instance fields
.field final a:Lss/a;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Lss/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-nez p3, :cond_21

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object p1, p0, Lss/an;->a:Lss/a;

    iput-object p2, p0, Lss/an;->b:Ljava/net/Proxy;

    iput-object p3, p0, Lss/an;->c:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public a()Lss/a;
    .registers 2

    iget-object v0, p0, Lss/an;->a:Lss/a;

    return-object v0
.end method

.method public b()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lss/an;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public c()Ljava/net/InetSocketAddress;
    .registers 2

    iget-object v0, p0, Lss/an;->c:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public d()Z
    .registers 3

    iget-object v0, p0, Lss/an;->a:Lss/a;

    iget-object v0, v0, Lss/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lss/an;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lss/an;

    if-eqz v1, :cond_26

    check-cast p1, Lss/an;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p0, Lss/an;->a:Lss/a;

    iget-object v2, p1, Lss/an;->a:Lss/a;

    invoke-virtual {v1, v2}, Lss/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lss/an;->b:Ljava/net/Proxy;

    iget-object v2, p1, Lss/an;->b:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lss/an;->c:Ljava/net/InetSocketAddress;

    iget-object v2, p1, Lss/an;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v0, 0x1

    :cond_26
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lss/an;->a:Lss/a;

    invoke-virtual {v0}, Lss/a;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lss/an;->b:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lss/an;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
