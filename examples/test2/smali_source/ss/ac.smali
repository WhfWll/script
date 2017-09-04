.class public Lss/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/ac$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/n;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/ae;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lss/s;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/ae;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/n;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/aa;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/aa;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:Lss/q;

.field final i:Lss/d;

.field final j:Lss/ss/e;

.field final k:Ljavax/net/SocketFactory;

.field final l:Ljavax/net/ssl/SSLSocketFactory;

.field final m:Lss/ss/gq/f;

.field final n:Ljavax/net/ssl/HostnameVerifier;

.field final o:Lss/h;

.field final p:Lss/b;

.field final q:Lss/b;

.field final r:Lss/l;

.field final s:Lss/t;

.field final t:Z

.field final u:Z

.field final v:Z

.field final w:I

.field final x:I

.field final y:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Lss/ae;

    sget-object v1, Lss/ae;->d:Lss/ae;

    aput-object v1, v0, v2

    sget-object v1, Lss/ae;->c:Lss/ae;

    aput-object v1, v0, v3

    sget-object v1, Lss/ae;->b:Lss/ae;

    aput-object v1, v0, v4

    invoke-static {v0}, Lss/ss/j;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lss/ac;->z:Ljava/util/List;

    new-array v0, v5, [Lss/n;

    sget-object v1, Lss/n;->a:Lss/n;

    aput-object v1, v0, v2

    sget-object v1, Lss/n;->b:Lss/n;

    aput-object v1, v0, v3

    sget-object v1, Lss/n;->c:Lss/n;

    aput-object v1, v0, v4

    invoke-static {v0}, Lss/ss/j;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lss/ac;->A:Ljava/util/List;

    new-instance v0, Lss/ad;

    invoke-direct {v0}, Lss/ad;-><init>()V

    sput-object v0, Lss/ss/d;->b:Lss/ss/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Lss/ac$a;

    invoke-direct {v0}, Lss/ac$a;-><init>()V

    invoke-direct {p0, v0}, Lss/ac;-><init>(Lss/ac$a;)V

    return-void
.end method

.method private constructor <init>(Lss/ac$a;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lss/ac$a;->a:Lss/s;

    iput-object v0, p0, Lss/ac;->a:Lss/s;

    iget-object v0, p1, Lss/ac$a;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lss/ac;->b:Ljava/net/Proxy;

    iget-object v0, p1, Lss/ac$a;->c:Ljava/util/List;

    iput-object v0, p0, Lss/ac;->c:Ljava/util/List;

    iget-object v0, p1, Lss/ac$a;->d:Ljava/util/List;

    iput-object v0, p0, Lss/ac;->d:Ljava/util/List;

    iget-object v0, p1, Lss/ac$a;->e:Ljava/util/List;

    invoke-static {v0}, Lss/ss/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lss/ac;->e:Ljava/util/List;

    iget-object v0, p1, Lss/ac$a;->f:Ljava/util/List;

    invoke-static {v0}, Lss/ss/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lss/ac;->f:Ljava/util/List;

    iget-object v0, p1, Lss/ac$a;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, Lss/ac;->g:Ljava/net/ProxySelector;

    iget-object v0, p1, Lss/ac$a;->h:Lss/q;

    iput-object v0, p0, Lss/ac;->h:Lss/q;

    iget-object v0, p1, Lss/ac$a;->i:Lss/d;

    iput-object v0, p0, Lss/ac;->i:Lss/d;

    iget-object v0, p1, Lss/ac$a;->j:Lss/ss/e;

    iput-object v0, p0, Lss/ac;->j:Lss/ss/e;

    iget-object v0, p1, Lss/ac$a;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lss/ac;->k:Ljavax/net/SocketFactory;

    iget-object v0, p0, Lss/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/n;

    if-nez v1, :cond_53

    invoke-virtual {v0}, Lss/n;->a()Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_53
    const/4 v0, 0x1

    :goto_54
    move v1, v0

    goto :goto_3f

    :cond_56
    move v0, v2

    goto :goto_54

    :cond_58
    iget-object v0, p1, Lss/ac$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_5e

    if-nez v1, :cond_a3

    :cond_5e
    iget-object v0, p1, Lss/ac$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lss/ac;->l:Ljavax/net/ssl/SSLSocketFactory;

    :goto_62
    iget-object v0, p0, Lss/ac;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_106

    iget-object v0, p1, Lss/ac$a;->m:Lss/ss/gq/f;

    if-nez v0, :cond_106

    invoke-static {}, Lss/ss/h;->a()Lss/ss/h;

    move-result-object v0

    iget-object v1, p0, Lss/ac;->l:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lss/ss/h;->a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    if-nez v0, :cond_bd

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to extract the trust manager on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lss/ss/h;->a()Lss/ss/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sslSocketFactory is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lss/ac;->l:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a3
    :try_start_a3
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lss/ac;->l:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_b5
    .catch Ljava/security/GeneralSecurityException; {:try_start_a3 .. :try_end_b5} :catch_b6

    goto :goto_62

    :catch_b6
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_bd
    invoke-static {}, Lss/ss/h;->a()Lss/ss/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lss/ss/h;->a(Ljavax/net/ssl/X509TrustManager;)Lss/ss/gq/f;

    move-result-object v0

    iput-object v0, p0, Lss/ac;->m:Lss/ss/gq/f;

    iget-object v0, p1, Lss/ac$a;->o:Lss/h;

    invoke-virtual {v0}, Lss/h;->a()Lss/h$a;

    move-result-object v0

    iget-object v1, p0, Lss/ac;->m:Lss/ss/gq/f;

    invoke-virtual {v0, v1}, Lss/h$a;->a(Lss/ss/gq/f;)Lss/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/h$a;->a()Lss/h;

    move-result-object v0

    iput-object v0, p0, Lss/ac;->o:Lss/h;

    :goto_d9
    iget-object v0, p1, Lss/ac$a;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lss/ac;->n:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lss/ac$a;->p:Lss/b;

    iput-object v0, p0, Lss/ac;->p:Lss/b;

    iget-object v0, p1, Lss/ac$a;->q:Lss/b;

    iput-object v0, p0, Lss/ac;->q:Lss/b;

    iget-object v0, p1, Lss/ac$a;->r:Lss/l;

    iput-object v0, p0, Lss/ac;->r:Lss/l;

    iget-object v0, p1, Lss/ac$a;->s:Lss/t;

    iput-object v0, p0, Lss/ac;->s:Lss/t;

    iget-boolean v0, p1, Lss/ac$a;->t:Z

    iput-boolean v0, p0, Lss/ac;->t:Z

    iget-boolean v0, p1, Lss/ac$a;->u:Z

    iput-boolean v0, p0, Lss/ac;->u:Z

    iget-boolean v0, p1, Lss/ac$a;->v:Z

    iput-boolean v0, p0, Lss/ac;->v:Z

    iget v0, p1, Lss/ac$a;->w:I

    iput v0, p0, Lss/ac;->w:I

    iget v0, p1, Lss/ac$a;->x:I

    iput v0, p0, Lss/ac;->x:I

    iget v0, p1, Lss/ac$a;->y:I

    iput v0, p0, Lss/ac;->y:I

    return-void

    :cond_106
    iget-object v0, p1, Lss/ac$a;->m:Lss/ss/gq/f;

    iput-object v0, p0, Lss/ac;->m:Lss/ss/gq/f;

    iget-object v0, p1, Lss/ac$a;->o:Lss/h;

    iput-object v0, p0, Lss/ac;->o:Lss/h;

    goto :goto_d9
.end method

.method synthetic constructor <init>(Lss/ac$a;Lss/ad;)V
    .registers 3

    invoke-direct {p0, p1}, Lss/ac;-><init>(Lss/ac$a;)V

    return-void
.end method

.method static synthetic x()Ljava/util/List;
    .registers 1

    sget-object v0, Lss/ac;->z:Ljava/util/List;

    return-object v0
.end method

.method static synthetic y()Ljava/util/List;
    .registers 1

    sget-object v0, Lss/ac;->A:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lss/ac;->w:I

    return v0
.end method

.method public a(Lss/ag;)Lss/g;
    .registers 3

    new-instance v0, Lss/af;

    invoke-direct {v0, p0, p1}, Lss/af;-><init>(Lss/ac;Lss/ag;)V

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lss/ac;->x:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lss/ac;->y:I

    return v0
.end method

.method public d()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lss/ac;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public e()Ljava/net/ProxySelector;
    .registers 2

    iget-object v0, p0, Lss/ac;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public f()Lss/q;
    .registers 2

    iget-object v0, p0, Lss/ac;->h:Lss/q;

    return-object v0
.end method

.method g()Lss/ss/e;
    .registers 2

    iget-object v0, p0, Lss/ac;->i:Lss/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lss/ac;->i:Lss/d;

    iget-object v0, v0, Lss/d;->a:Lss/ss/e;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lss/ac;->j:Lss/ss/e;

    goto :goto_8
.end method

.method public h()Lss/t;
    .registers 2

    iget-object v0, p0, Lss/ac;->s:Lss/t;

    return-object v0
.end method

.method public i()Ljavax/net/SocketFactory;
    .registers 2

    iget-object v0, p0, Lss/ac;->k:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    iget-object v0, p0, Lss/ac;->l:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    iget-object v0, p0, Lss/ac;->n:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public l()Lss/h;
    .registers 2

    iget-object v0, p0, Lss/ac;->o:Lss/h;

    return-object v0
.end method

.method public m()Lss/b;
    .registers 2

    iget-object v0, p0, Lss/ac;->q:Lss/b;

    return-object v0
.end method

.method public n()Lss/b;
    .registers 2

    iget-object v0, p0, Lss/ac;->p:Lss/b;

    return-object v0
.end method

.method public o()Lss/l;
    .registers 2

    iget-object v0, p0, Lss/ac;->r:Lss/l;

    return-object v0
.end method

.method public p()Z
    .registers 2

    iget-boolean v0, p0, Lss/ac;->t:Z

    return v0
.end method

.method public q()Z
    .registers 2

    iget-boolean v0, p0, Lss/ac;->u:Z

    return v0
.end method

.method public r()Z
    .registers 2

    iget-boolean v0, p0, Lss/ac;->v:Z

    return v0
.end method

.method public s()Lss/s;
    .registers 2

    iget-object v0, p0, Lss/ac;->a:Lss/s;

    return-object v0
.end method

.method public t()Ljava/util/List;
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

    iget-object v0, p0, Lss/ac;->c:Ljava/util/List;

    return-object v0
.end method

.method public u()Ljava/util/List;
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

    iget-object v0, p0, Lss/ac;->d:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lss/aa;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lss/ac;->e:Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lss/aa;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lss/ac;->f:Ljava/util/List;

    return-object v0
.end method
