.class public final Lss/ss/pK/c;
.super Lss/ss/ss/d$b;

# interfaces
.implements Lss/k;


# instance fields
.field public b:Ljava/net/Socket;

.field public volatile c:Lss/ss/ss/d;

.field public d:I

.field public e:LgK/g;

.field public f:LgK/f;

.field public g:I

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lss/ss/gK/w;",
            ">;>;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:J

.field private final k:Lss/an;

.field private l:Ljava/net/Socket;

.field private m:Lss/v;

.field private n:Lss/ae;


# direct methods
.method public constructor <init>(Lss/an;)V
    .registers 4

    invoke-direct {p0}, Lss/ss/ss/d$b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lss/ss/pK/c;->h:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lss/ss/pK/c;->j:J

    iput-object p1, p0, Lss/ss/pK/c;->k:Lss/an;

    return-void
.end method

.method private a(II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lss/ss/pK/c;->d()Lss/ag;

    move-result-object v0

    invoke-virtual {v0}, Lss/ag;->a()Lss/y;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lss/ss/j;->a(Lss/y;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HTTP/1.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_26
    new-instance v3, Lss/ss/gK/e;

    const/4 v1, 0x0

    iget-object v4, p0, Lss/ss/pK/c;->e:LgK/g;

    iget-object v5, p0, Lss/ss/pK/c;->f:LgK/f;

    invoke-direct {v3, v1, v4, v5}, Lss/ss/gK/e;-><init>(Lss/ss/gK/w;LgK/g;LgK/f;)V

    iget-object v1, p0, Lss/ss/pK/c;->e:LgK/g;

    invoke-interface {v1}, LgK/g;->a()LgK/x;

    move-result-object v1

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, LgK/x;->a(JLjava/util/concurrent/TimeUnit;)LgK/x;

    iget-object v1, p0, Lss/ss/pK/c;->f:LgK/f;

    invoke-interface {v1}, LgK/f;->a()LgK/x;

    move-result-object v1

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, LgK/x;->a(JLjava/util/concurrent/TimeUnit;)LgK/x;

    invoke-virtual {v0}, Lss/ag;->c()Lss/w;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lss/ss/gK/e;->a(Lss/w;Ljava/lang/String;)V

    invoke-virtual {v3}, Lss/ss/gK/e;->b()V

    invoke-virtual {v3}, Lss/ss/gK/e;->c()Lss/ak$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lss/ak$a;->a(Lss/ag;)Lss/ak$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ak$a;->a()Lss/ak;

    move-result-object v4

    invoke-static {v4}, Lss/ss/gK/o;->a(Lss/ak;)J

    move-result-wide v0

    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-nez v5, :cond_6a

    const-wide/16 v0, 0x0

    :cond_6a
    invoke-virtual {v3, v0, v1}, Lss/ss/gK/e;->b(J)LgK/w;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v3}, Lss/ss/j;->b(LgK/w;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {v0}, LgK/w;->close()V

    invoke-virtual {v4}, Lss/ak;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_d8

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected response code for CONNECT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lss/ak;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_9d
    iget-object v0, p0, Lss/ss/pK/c;->e:LgK/g;

    invoke-interface {v0}, LgK/g;->c()LgK/e;

    move-result-object v0

    invoke-virtual {v0}, LgK/e;->f()Z

    move-result v0

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lss/ss/pK/c;->f:LgK/f;

    invoke-interface {v0}, LgK/f;->c()LgK/e;

    move-result-object v0

    invoke-virtual {v0}, LgK/e;->f()Z

    move-result v0

    if-nez v0, :cond_d7

    :cond_b5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_bd
    iget-object v0, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-virtual {v0}, Lss/an;->a()Lss/a;

    move-result-object v0

    invoke-virtual {v0}, Lss/a;->d()Lss/b;

    move-result-object v0

    iget-object v1, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-interface {v0, v1, v4}, Lss/b;->a(Lss/an;Lss/ak;)Lss/ag;

    move-result-object v0

    if-nez v0, :cond_26

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d7
    return-void

    :sswitch_data_d8
    .sparse-switch
        0xc8 -> :sswitch_9d
        0x197 -> :sswitch_bd
    .end sparse-switch
.end method

.method private a(IIILss/ss/a;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lss/ss/pK/c;->l:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_6
    invoke-static {}, Lss/ss/h;->a()Lss/ss/h;

    move-result-object v0

    iget-object v1, p0, Lss/ss/pK/c;->l:Ljava/net/Socket;

    iget-object v2, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-virtual {v2}, Lss/an;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lss/ss/h;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_15
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_15} :catch_85

    iget-object v0, p0, Lss/ss/pK/c;->l:Ljava/net/Socket;

    invoke-static {v0}, LgK/n;->b(Ljava/net/Socket;)LgK/w;

    move-result-object v0

    invoke-static {v0}, LgK/n;->a(LgK/w;)LgK/g;

    move-result-object v0

    iput-object v0, p0, Lss/ss/pK/c;->e:LgK/g;

    iget-object v0, p0, Lss/ss/pK/c;->l:Ljava/net/Socket;

    invoke-static {v0}, LgK/n;->a(Ljava/net/Socket;)LgK/v;

    move-result-object v0

    invoke-static {v0}, LgK/n;->a(LgK/v;)LgK/f;

    move-result-object v0

    iput-object v0, p0, Lss/ss/pK/c;->f:LgK/f;

    iget-object v0, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-virtual {v0}, Lss/an;->a()Lss/a;

    move-result-object v0

    invoke-virtual {v0}, Lss/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_a5

    invoke-direct {p0, p2, p3, p4}, Lss/ss/pK/c;->a(IILss/ss/a;)V

    :goto_3c
    iget-object v0, p0, Lss/ss/pK/c;->n:Lss/ae;

    sget-object v1, Lss/ae;->c:Lss/ae;

    if-eq v0, v1, :cond_48

    iget-object v0, p0, Lss/ss/pK/c;->n:Lss/ae;

    sget-object v1, Lss/ae;->d:Lss/ae;

    if-ne v0, v1, :cond_ae

    :cond_48
    iget-object v0, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, Lss/ss/ss/d$a;

    invoke-direct {v0, v3}, Lss/ss/ss/d$a;-><init>(Z)V

    iget-object v1, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    iget-object v2, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-virtual {v2}, Lss/an;->a()Lss/a;

    move-result-object v2

    invoke-virtual {v2}, Lss/a;->a()Lss/y;

    move-result-object v2

    invoke-virtual {v2}, Lss/y;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lss/ss/pK/c;->e:LgK/g;

    iget-object v4, p0, Lss/ss/pK/c;->f:LgK/f;

    invoke-virtual {v0, v1, v2, v3, v4}, Lss/ss/ss/d$a;->a(Ljava/net/Socket;Ljava/lang/String;LgK/g;LgK/f;)Lss/ss/ss/d$a;

    move-result-object v0

    iget-object v1, p0, Lss/ss/pK/c;->n:Lss/ae;

    invoke-virtual {v0, v1}, Lss/ss/ss/d$a;->a(Lss/ae;)Lss/ss/ss/d$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lss/ss/ss/d$a;->a(Lss/ss/ss/d$b;)Lss/ss/ss/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ss/ss/d$a;->a()Lss/ss/ss/d;

    move-result-object v0

    invoke-virtual {v0}, Lss/ss/ss/d;->d()V

    invoke-virtual {v0}, Lss/ss/ss/d;->b()I

    move-result v1

    iput v1, p0, Lss/ss/pK/c;->g:I

    iput-object v0, p0, Lss/ss/pK/c;->c:Lss/ss/ss/d;

    :goto_84
    return-void

    :catch_85
    move-exception v0

    new-instance v0, Ljava/net/ConnectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-virtual {v2}, Lss/an;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a5
    sget-object v0, Lss/ae;->b:Lss/ae;

    iput-object v0, p0, Lss/ss/pK/c;->n:Lss/ae;

    iget-object v0, p0, Lss/ss/pK/c;->l:Ljava/net/Socket;

    iput-object v0, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    goto :goto_3c

    :cond_ae
    iput v3, p0, Lss/ss/pK/c;->g:I

    goto :goto_84
.end method

.method private a(IILss/ss/a;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-virtual {v0}, Lss/an;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1, p2}, Lss/ss/pK/c;->a(II)V

    :cond_c
    iget-object v0, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-virtual {v0}, Lss/an;->a()Lss/a;

    move-result-object v2

    invoke-virtual {v2}, Lss/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :try_start_16
    iget-object v3, p0, Lss/ss/pK/c;->l:Ljava/net/Socket;

    invoke-virtual {v2}, Lss/a;->a()Lss/y;

    move-result-object v4

    invoke-virtual {v4}, Lss/y;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lss/a;->a()Lss/y;

    move-result-object v5

    invoke-virtual {v5}, Lss/y;->g()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_2f
    .catch Ljava/lang/AssertionError; {:try_start_16 .. :try_end_2f} :catch_143
    .catchall {:try_start_16 .. :try_end_2f} :catchall_dd

    :try_start_2f
    invoke-virtual {p3, v0}, Lss/ss/a;->a(Ljavax/net/ssl/SSLSocket;)Lss/n;

    move-result-object v3

    invoke-virtual {v3}, Lss/n;->d()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-static {}, Lss/ss/h;->a()Lss/ss/h;

    move-result-object v4

    invoke-virtual {v2}, Lss/a;->a()Lss/y;

    move-result-object v5

    invoke-virtual {v5}, Lss/y;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lss/a;->e()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Lss/ss/h;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_4c
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-static {v4}, Lss/v;->a(Ljavax/net/ssl/SSLSession;)Lss/v;

    move-result-object v4

    invoke-virtual {v2}, Lss/a;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v2}, Lss/a;->a()Lss/y;

    move-result-object v6

    invoke-virtual {v6}, Lss/y;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_eb

    invoke-virtual {v4}, Lss/v;->b()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hostname "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lss/a;->a()Lss/y;

    move-result-object v2

    invoke-virtual {v2}, Lss/y;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not verified:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n    certificate: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lss/h;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n    DN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n    subjectAltNames: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lss/ss/gq/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_cd
    .catch Ljava/lang/AssertionError; {:try_start_2f .. :try_end_cd} :catch_cd
    .catchall {:try_start_2f .. :try_end_cd} :catchall_13e

    :catch_cd
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_d1
    :try_start_d1
    invoke-static {v0}, Lss/ss/j;->a(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_13d

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_dd
    .catchall {:try_start_d1 .. :try_end_dd} :catchall_dd

    :catchall_dd
    move-exception v0

    :goto_de
    if-eqz v1, :cond_e7

    invoke-static {}, Lss/ss/h;->a()Lss/ss/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lss/ss/h;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_e7
    invoke-static {v1}, Lss/ss/j;->a(Ljava/net/Socket;)V

    throw v0

    :cond_eb
    :try_start_eb
    invoke-virtual {v2}, Lss/a;->k()Lss/h;

    move-result-object v5

    invoke-virtual {v2}, Lss/a;->a()Lss/y;

    move-result-object v2

    invoke-virtual {v2}, Lss/y;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lss/v;->b()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lss/h;->a(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3}, Lss/n;->d()Z

    move-result v2

    if-eqz v2, :cond_10c

    invoke-static {}, Lss/ss/h;->a()Lss/ss/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lss/ss/h;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    :cond_10c
    iput-object v0, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    iget-object v2, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    invoke-static {v2}, LgK/n;->b(Ljava/net/Socket;)LgK/w;

    move-result-object v2

    invoke-static {v2}, LgK/n;->a(LgK/w;)LgK/g;

    move-result-object v2

    iput-object v2, p0, Lss/ss/pK/c;->e:LgK/g;

    iget-object v2, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    invoke-static {v2}, LgK/n;->a(Ljava/net/Socket;)LgK/v;

    move-result-object v2

    invoke-static {v2}, LgK/n;->a(LgK/v;)LgK/f;

    move-result-object v2

    iput-object v2, p0, Lss/ss/pK/c;->f:LgK/f;

    iput-object v4, p0, Lss/ss/pK/c;->m:Lss/v;

    if-eqz v1, :cond_13a

    invoke-static {v1}, Lss/ae;->a(Ljava/lang/String;)Lss/ae;

    move-result-object v1

    :goto_12e
    iput-object v1, p0, Lss/ss/pK/c;->n:Lss/ae;
    :try_end_130
    .catch Ljava/lang/AssertionError; {:try_start_eb .. :try_end_130} :catch_cd
    .catchall {:try_start_eb .. :try_end_130} :catchall_13e

    if-eqz v0, :cond_139

    invoke-static {}, Lss/ss/h;->a()Lss/ss/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lss/ss/h;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_139
    return-void

    :cond_13a
    :try_start_13a
    sget-object v1, Lss/ae;->b:Lss/ae;
    :try_end_13c
    .catch Ljava/lang/AssertionError; {:try_start_13a .. :try_end_13c} :catch_cd
    .catchall {:try_start_13a .. :try_end_13c} :catchall_13e

    goto :goto_12e

    :cond_13d
    :try_start_13d
    throw v0
    :try_end_13e
    .catchall {:try_start_13d .. :try_end_13e} :catchall_dd

    :catchall_13e
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_de

    :catch_143
    move-exception v0

    goto :goto_d1
.end method

.method private d()Lss/ag;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lss/ag$a;

    invoke-direct {v0}, Lss/ag$a;-><init>()V

    iget-object v1, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-virtual {v1}, Lss/an;->a()Lss/a;

    move-result-object v1

    invoke-virtual {v1}, Lss/a;->a()Lss/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/ag$a;->a(Lss/y;)Lss/ag$a;

    move-result-object v0

    const-string v1, "Host"

    iget-object v2, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-virtual {v2}, Lss/an;->a()Lss/a;

    move-result-object v2

    invoke-virtual {v2}, Lss/a;->a()Lss/y;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lss/ss/j;->a(Lss/y;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lss/ag$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lss/ag$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lss/ag$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ag$a;->a()Lss/ag;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lss/an;
    .registers 2

    iget-object v0, p0, Lss/ss/pK/c;->k:Lss/an;

    return-object v0
.end method

.method public a(IIILjava/util/List;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lss/n;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lss/ss/gK/t;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lss/ss/pK/c;->n:Lss/ae;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v3, Lss/ss/a;

    invoke-direct {v3, p4}, Lss/ss/a;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-virtual {v0}, Lss/an;->b()Ljava/net/Proxy;

    move-result-object v4

    iget-object v0, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-virtual {v0}, Lss/an;->a()Lss/a;

    move-result-object v5

    iget-object v0, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-virtual {v0}, Lss/an;->a()Lss/a;

    move-result-object v0

    invoke-virtual {v0}, Lss/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_a3

    sget-object v0, Lss/n;->c:Lss/n;

    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    new-instance v0, Lss/ss/gK/t;

    new-instance v1, Ljava/net/UnknownServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEARTEXT communication not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lss/ss/gK/t;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_50
    :try_start_50
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    :goto_55
    iput-object v2, p0, Lss/ss/pK/c;->l:Ljava/net/Socket;

    invoke-direct {p0, p1, p2, p3, v3}, Lss/ss/pK/c;->a(IIILss/ss/a;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5a} :catch_77

    :cond_5a
    :goto_5a
    iget-object v2, p0, Lss/ss/pK/c;->n:Lss/ae;

    if-nez v2, :cond_a2

    :try_start_5e
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v6, :cond_6e

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v6, :cond_50

    :cond_6e
    invoke-virtual {v5}, Lss/a;->c()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_75} :catch_77

    move-result-object v2

    goto :goto_55

    :catch_77
    move-exception v2

    iget-object v6, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    invoke-static {v6}, Lss/ss/j;->a(Ljava/net/Socket;)V

    iget-object v6, p0, Lss/ss/pK/c;->l:Ljava/net/Socket;

    invoke-static {v6}, Lss/ss/j;->a(Ljava/net/Socket;)V

    iput-object v1, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    iput-object v1, p0, Lss/ss/pK/c;->l:Ljava/net/Socket;

    iput-object v1, p0, Lss/ss/pK/c;->e:LgK/g;

    iput-object v1, p0, Lss/ss/pK/c;->f:LgK/f;

    iput-object v1, p0, Lss/ss/pK/c;->m:Lss/v;

    iput-object v1, p0, Lss/ss/pK/c;->n:Lss/ae;

    if-nez v0, :cond_9e

    new-instance v0, Lss/ss/gK/t;

    invoke-direct {v0, v2}, Lss/ss/gK/t;-><init>(Ljava/io/IOException;)V

    :goto_95
    if-eqz p5, :cond_9d

    invoke-virtual {v3, v2}, Lss/ss/a;->a(Ljava/io/IOException;)Z

    move-result v2

    if-nez v2, :cond_5a

    :cond_9d
    throw v0

    :cond_9e
    invoke-virtual {v0, v2}, Lss/ss/gK/t;->a(Ljava/io/IOException;)V

    goto :goto_95

    :cond_a2
    return-void

    :cond_a3
    move-object v0, v1

    goto :goto_5a
.end method

.method public a(Lss/ss/ss/d;)V
    .registers 3

    invoke-virtual {p1}, Lss/ss/ss/d;->b()I

    move-result v0

    iput v0, p0, Lss/ss/pK/c;->g:I

    return-void
.end method

.method public a(Lss/ss/ss/p;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lss/ss/ss/a;->k:Lss/ss/ss/a;

    invoke-virtual {p1, v0}, Lss/ss/ss/p;->a(Lss/ss/ss/a;)V

    return-void
.end method

.method public a(Z)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1a
    move v0, v1

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    iget-object v2, p0, Lss/ss/pK/c;->c:Lss/ss/ss/d;

    if-nez v2, :cond_1b

    if-eqz p1, :cond_1b

    :try_start_22
    iget-object v2, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_22 .. :try_end_27} :catch_43
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_4c

    move-result v3

    :try_start_28
    iget-object v2, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v2, p0, Lss/ss/pK/c;->e:LgK/g;

    invoke-interface {v2}, LgK/g;->f()Z
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_45

    move-result v2

    if-eqz v2, :cond_3d

    :try_start_36
    iget-object v2, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_1b

    :cond_3d
    iget-object v2, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_1b

    :catch_43
    move-exception v1

    goto :goto_1b

    :catchall_45
    move-exception v2

    iget-object v4, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_4c
    .catch Ljava/net/SocketTimeoutException; {:try_start_36 .. :try_end_4c} :catch_43
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception v0

    move v0, v1

    goto :goto_1b
.end method

.method public b()Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lss/ss/pK/c;->b:Ljava/net/Socket;

    return-object v0
.end method

.method public c()Lss/v;
    .registers 2

    iget-object v0, p0, Lss/ss/pK/c;->m:Lss/v;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-virtual {v1}, Lss/an;->a()Lss/a;

    move-result-object v1

    invoke-virtual {v1}, Lss/a;->a()Lss/y;

    move-result-object v1

    invoke-virtual {v1}, Lss/y;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-virtual {v1}, Lss/an;->a()Lss/a;

    move-result-object v1

    invoke-virtual {v1}, Lss/a;->a()Lss/y;

    move-result-object v1

    invoke-virtual {v1}, Lss/y;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-virtual {v1}, Lss/an;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/ss/pK/c;->k:Lss/an;

    invoke-virtual {v1}, Lss/an;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lss/ss/pK/c;->m:Lss/v;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lss/ss/pK/c;->m:Lss/v;

    invoke-virtual {v0}, Lss/v;->a()Lss/j;

    move-result-object v0

    :goto_65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/ss/pK/c;->n:Lss/ae;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_80
    const-string v0, "none"

    goto :goto_65
.end method
