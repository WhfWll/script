.class public final Lss/a;
.super Ljava/lang/Object;


# instance fields
.field final a:Lss/y;

.field final b:Lss/t;

.field final c:Ljavax/net/SocketFactory;

.field final d:Lss/b;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/ae;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/n;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:Ljava/net/Proxy;

.field final i:Ljavax/net/ssl/SSLSocketFactory;

.field final j:Ljavax/net/ssl/HostnameVerifier;

.field final k:Lss/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILss/t;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lss/h;Lss/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lss/t;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lss/h;",
            "Lss/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Lss/ae;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lss/n;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lss/y$a;

    invoke-direct {v1}, Lss/y$a;-><init>()V

    if-eqz p5, :cond_28

    const-string v0, "https"

    :goto_c
    invoke-virtual {v1, v0}, Lss/y$a;->a(Ljava/lang/String;)Lss/y$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lss/y$a;->b(Ljava/lang/String;)Lss/y$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lss/y$a;->a(I)Lss/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/y$a;->c()Lss/y;

    move-result-object v0

    iput-object v0, p0, Lss/a;->a:Lss/y;

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    const-string v0, "http"

    goto :goto_c

    :cond_2b
    iput-object p3, p0, Lss/a;->b:Lss/t;

    if-nez p4, :cond_37

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iput-object p4, p0, Lss/a;->c:Ljavax/net/SocketFactory;

    if-nez p8, :cond_43

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    iput-object p8, p0, Lss/a;->d:Lss/b;

    if-nez p10, :cond_4f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    invoke-static {p10}, Lss/ss/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lss/a;->e:Ljava/util/List;

    if-nez p11, :cond_5f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionSpecs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    invoke-static {p11}, Lss/ss/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lss/a;->f:Ljava/util/List;

    if-nez p12, :cond_6f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    iput-object p12, p0, Lss/a;->g:Ljava/net/ProxySelector;

    iput-object p9, p0, Lss/a;->h:Ljava/net/Proxy;

    iput-object p5, p0, Lss/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, Lss/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, Lss/a;->k:Lss/h;

    return-void
.end method


# virtual methods
.method public a()Lss/y;
    .registers 2

    iget-object v0, p0, Lss/a;->a:Lss/y;

    return-object v0
.end method

.method public b()Lss/t;
    .registers 2

    iget-object v0, p0, Lss/a;->b:Lss/t;

    return-object v0
.end method

.method public c()Ljavax/net/SocketFactory;
    .registers 2

    iget-object v0, p0, Lss/a;->c:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public d()Lss/b;
    .registers 2

    iget-object v0, p0, Lss/a;->d:Lss/b;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lss/ae;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lss/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lss/a;

    if-eqz v1, :cond_6c

    check-cast p1, Lss/a;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p0, Lss/a;->a:Lss/y;

    iget-object v2, p1, Lss/a;->a:Lss/y;

    invoke-virtual {v1, v2}, Lss/y;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lss/a;->b:Lss/t;

    iget-object v2, p1, Lss/a;->b:Lss/t;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lss/a;->d:Lss/b;

    iget-object v2, p1, Lss/a;->d:Lss/b;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lss/a;->e:Ljava/util/List;

    iget-object v2, p1, Lss/a;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lss/a;->f:Ljava/util/List;

    iget-object v2, p1, Lss/a;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lss/a;->g:Ljava/net/ProxySelector;

    iget-object v2, p1, Lss/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lss/a;->h:Ljava/net/Proxy;

    iget-object v2, p1, Lss/a;->h:Ljava/net/Proxy;

    invoke-static {v1, v2}, Lss/ss/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lss/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Lss/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v1, v2}, Lss/ss/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lss/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Lss/a;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v1, v2}, Lss/ss/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lss/a;->k:Lss/h;

    iget-object v2, p1, Lss/a;->k:Lss/h;

    invoke-static {v1, v2}, Lss/ss/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const/4 v0, 0x1

    :cond_6c
    return v0
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lss/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lss/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/net/ProxySelector;
    .registers 2

    iget-object v0, p0, Lss/a;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public h()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lss/a;->h:Ljava/net/Proxy;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lss/a;->a:Lss/y;

    invoke-virtual {v0}, Lss/y;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lss/a;->b:Lss/t;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lss/a;->d:Lss/b;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lss/a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lss/a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lss/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lss/a;->h:Ljava/net/Proxy;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lss/a;->h:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    :goto_42
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lss/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lss/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_4f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lss/a;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lss/a;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_5c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lss/a;->k:Lss/h;

    if-eqz v2, :cond_69

    iget-object v1, p0, Lss/a;->k:Lss/h;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_69
    add-int/2addr v0, v1

    return v0

    :cond_6b
    move v0, v1

    goto :goto_42

    :cond_6d
    move v0, v1

    goto :goto_4f

    :cond_6f
    move v0, v1

    goto :goto_5c
.end method

.method public i()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    iget-object v0, p0, Lss/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    iget-object v0, p0, Lss/a;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public k()Lss/h;
    .registers 2

    iget-object v0, p0, Lss/a;->k:Lss/h;

    return-object v0
.end method
