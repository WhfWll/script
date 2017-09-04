.class public final Lss/ss/gK/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/ss/gK/j$a;
    }
.end annotation


# static fields
.field private static final e:Lss/am;


# instance fields
.field final a:Lss/ac;

.field public final b:Lss/ss/gK/w;

.field c:J

.field public final d:Z

.field private final f:Lss/ak;

.field private g:Lss/ss/gK/n;

.field private h:Z

.field private final i:Lss/ag;

.field private j:Lss/ag;

.field private k:Lss/ak;

.field private l:Lss/ak;

.field private m:LgK/v;

.field private n:LgK/f;

.field private final o:Z

.field private final p:Z

.field private q:Lss/ss/gK/a;

.field private r:Lss/ss/gK/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lss/ss/gK/k;

    invoke-direct {v0}, Lss/ss/gK/k;-><init>()V

    sput-object v0, Lss/ss/gK/j;->e:Lss/am;

    return-void
.end method

.method public constructor <init>(Lss/ac;Lss/ag;ZZZLss/ss/gK/w;Lss/ss/gK/s;Lss/ak;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lss/ss/gK/j;->c:J

    iput-object p1, p0, Lss/ss/gK/j;->a:Lss/ac;

    iput-object p2, p0, Lss/ss/gK/j;->i:Lss/ag;

    iput-boolean p3, p0, Lss/ss/gK/j;->d:Z

    iput-boolean p4, p0, Lss/ss/gK/j;->o:Z

    iput-boolean p5, p0, Lss/ss/gK/j;->p:Z

    if-eqz p6, :cond_1a

    :goto_13
    iput-object p6, p0, Lss/ss/gK/j;->b:Lss/ss/gK/w;

    iput-object p7, p0, Lss/ss/gK/j;->m:LgK/v;

    iput-object p8, p0, Lss/ss/gK/j;->f:Lss/ak;

    return-void

    :cond_1a
    new-instance p6, Lss/ss/gK/w;

    invoke-virtual {p1}, Lss/ac;->o()Lss/l;

    move-result-object v0

    invoke-static {p1, p2}, Lss/ss/gK/j;->a(Lss/ac;Lss/ag;)Lss/a;

    move-result-object v1

    invoke-direct {p6, v0, v1}, Lss/ss/gK/w;-><init>(Lss/l;Lss/a;)V

    goto :goto_13
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lss/p;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_33

    if-lez v1, :cond_14

    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/p;

    invoke-virtual {v0}, Lss/p;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lss/p;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lss/ac;Lss/ag;)Lss/a;
    .registers 15

    const/4 v7, 0x0

    invoke-virtual {p1}, Lss/ag;->g()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lss/ac;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {p0}, Lss/ac;->k()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    invoke-virtual {p0}, Lss/ac;->l()Lss/h;

    move-result-object v7

    :goto_13
    new-instance v0, Lss/a;

    invoke-virtual {p1}, Lss/ag;->a()Lss/y;

    move-result-object v1

    invoke-virtual {v1}, Lss/y;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lss/ag;->a()Lss/y;

    move-result-object v2

    invoke-virtual {v2}, Lss/y;->g()I

    move-result v2

    invoke-virtual {p0}, Lss/ac;->h()Lss/t;

    move-result-object v3

    invoke-virtual {p0}, Lss/ac;->i()Ljavax/net/SocketFactory;

    move-result-object v4

    invoke-virtual {p0}, Lss/ac;->n()Lss/b;

    move-result-object v8

    invoke-virtual {p0}, Lss/ac;->d()Ljava/net/Proxy;

    move-result-object v9

    invoke-virtual {p0}, Lss/ac;->t()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0}, Lss/ac;->u()Ljava/util/List;

    move-result-object v11

    invoke-virtual {p0}, Lss/ac;->e()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lss/a;-><init>(Ljava/lang/String;ILss/t;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lss/h;Lss/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0

    :cond_45
    move-object v6, v7

    move-object v5, v7

    goto :goto_13
.end method

.method static synthetic a(Lss/ss/gK/j;Lss/ag;)Lss/ag;
    .registers 2

    iput-object p1, p0, Lss/ss/gK/j;->j:Lss/ag;

    return-object p1
.end method

.method private a(Lss/ss/gK/a;Lss/ak;)Lss/ak;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-object p2

    :cond_3
    invoke-interface {p1}, Lss/ss/gK/a;->a()LgK/v;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lss/ak;->f()Lss/am;

    move-result-object v1

    invoke-virtual {v1}, Lss/am;->c()LgK/g;

    move-result-object v1

    invoke-static {v0}, LgK/n;->a(LgK/v;)LgK/f;

    move-result-object v0

    new-instance v2, Lss/ss/gK/l;

    invoke-direct {v2, p0, v1, p1, v0}, Lss/ss/gK/l;-><init>(Lss/ss/gK/j;LgK/g;Lss/ss/gK/a;LgK/f;)V

    invoke-virtual {p2}, Lss/ak;->g()Lss/ak$a;

    move-result-object v0

    new-instance v1, Lss/ss/gK/p;

    invoke-virtual {p2}, Lss/ak;->e()Lss/w;

    move-result-object v3

    invoke-static {v2}, LgK/n;->a(LgK/w;)LgK/g;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lss/ss/gK/p;-><init>(Lss/w;LgK/g;)V

    invoke-virtual {v0, v1}, Lss/ak$a;->a(Lss/am;)Lss/ak$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ak$a;->a()Lss/ak;

    move-result-object p2

    goto :goto_2
.end method

.method static synthetic a(Lss/ss/gK/j;)Lss/ss/gK/n;
    .registers 2

    iget-object v0, p0, Lss/ss/gK/j;->g:Lss/ss/gK/n;

    return-object v0
.end method

.method private static a(Lss/w;Lss/w;)Lss/w;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Lss/w$a;

    invoke-direct {v2}, Lss/w$a;-><init>()V

    invoke-virtual {p0}, Lss/w;->a()I

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_38

    invoke-virtual {p0, v1}, Lss/w;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Lss/w;->b(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    :cond_25
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_28
    invoke-static {v4}, Lss/ss/gK/o;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {p1, v4}, Lss/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_25

    :cond_34
    invoke-virtual {v2, v4, v5}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    goto :goto_25

    :cond_38
    invoke-virtual {p1}, Lss/w;->a()I

    move-result v1

    :goto_3c
    if-ge v0, v1, :cond_5b

    invoke-virtual {p1, v0}, Lss/w;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    :cond_4a
    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_4d
    invoke-static {v3}, Lss/ss/gK/o;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-virtual {p1, v0}, Lss/w;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    goto :goto_4a

    :cond_5b
    invoke-virtual {v2}, Lss/w$a;->a()Lss/w;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lss/ak;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lss/ak;->a()Lss/ag;

    move-result-object v2

    invoke-virtual {v2}, Lss/ag;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    invoke-virtual {p0}, Lss/ak;->b()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1f

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_29

    :cond_1f
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_29

    const/16 v3, 0x130

    if-eq v2, v3, :cond_29

    move v0, v1

    goto :goto_12

    :cond_29
    invoke-static {p0}, Lss/ss/gK/o;->a(Lss/ak;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_41

    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    invoke-virtual {p0, v3}, Lss/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_41
    move v0, v1

    goto :goto_12
.end method

.method private static a(Lss/ak;Lss/ak;)Z
    .registers 8

    const/4 v0, 0x1

    invoke-virtual {p1}, Lss/ak;->b()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lss/ak;->e()Lss/w;

    move-result-object v1

    const-string v2, "Last-Modified"

    invoke-virtual {v1, v2}, Lss/w;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {p1}, Lss/ak;->e()Lss/w;

    move-result-object v2

    const-string v3, "Last-Modified"

    invoke-virtual {v2, v3}, Lss/w;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_9

    :cond_2e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private b(Lss/ag;)Lss/ag;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lss/ag;->e()Lss/ag$a;

    move-result-object v0

    const-string v1, "Host"

    invoke-virtual {p1, v1}, Lss/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    const-string v1, "Host"

    invoke-virtual {p1}, Lss/ag;->a()Lss/y;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lss/ss/j;->a(Lss/y;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lss/ag$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;

    :cond_1a
    const-string v1, "Connection"

    invoke-virtual {p1, v1}, Lss/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lss/ag$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;

    :cond_29
    const-string v1, "Accept-Encoding"

    invoke-virtual {p1, v1}, Lss/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lss/ss/gK/j;->h:Z

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lss/ag$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;

    :cond_3b
    iget-object v1, p0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v1}, Lss/ac;->f()Lss/q;

    move-result-object v1

    invoke-virtual {p1}, Lss/ag;->a()Lss/y;

    move-result-object v2

    invoke-interface {v1, v2}, Lss/q;->a(Lss/y;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, "Cookie"

    invoke-direct {p0, v1}, Lss/ss/gK/j;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lss/ag$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;

    :cond_58
    const-string v1, "User-Agent"

    invoke-virtual {p1, v1}, Lss/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_67

    const-string v1, "User-Agent"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lss/ag$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;

    :cond_67
    invoke-virtual {v0}, Lss/ag$a;->a()Lss/ag;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lss/ak;)Lss/ak;
    .registers 3

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lss/ak;->f()Lss/am;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lss/ak;->g()Lss/ak$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lss/ak$a;->a(Lss/am;)Lss/ak$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ak$a;->a()Lss/ak;

    move-result-object p0

    :cond_15
    return-object p0
.end method

.method static synthetic b(Lss/ss/gK/j;)Lss/ak;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lss/ss/gK/j;->l()Lss/ak;

    move-result-object v0

    return-object v0
.end method

.method private c(Lss/ak;)Lss/ak;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lss/ss/gK/j;->h:Z

    if-eqz v0, :cond_14

    const-string v0, "gzip"

    iget-object v1, p0, Lss/ss/gK/j;->l:Lss/ak;

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lss/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-object p1

    :cond_15
    invoke-virtual {p1}, Lss/ak;->f()Lss/am;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v0, LgK/l;

    invoke-virtual {p1}, Lss/ak;->f()Lss/am;

    move-result-object v1

    invoke-virtual {v1}, Lss/am;->c()LgK/g;

    move-result-object v1

    invoke-direct {v0, v1}, LgK/l;-><init>(LgK/w;)V

    invoke-virtual {p1}, Lss/ak;->e()Lss/w;

    move-result-object v1

    invoke-virtual {v1}, Lss/w;->b()Lss/w$a;

    move-result-object v1

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lss/w$a;->b(Ljava/lang/String;)Lss/w$a;

    move-result-object v1

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lss/w$a;->b(Ljava/lang/String;)Lss/w$a;

    move-result-object v1

    invoke-virtual {v1}, Lss/w$a;->a()Lss/w;

    move-result-object v1

    invoke-virtual {p1}, Lss/ak;->g()Lss/ak$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lss/ak$a;->a(Lss/w;)Lss/ak$a;

    move-result-object v2

    new-instance v3, Lss/ss/gK/p;

    invoke-static {v0}, LgK/n;->a(LgK/w;)LgK/g;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lss/ss/gK/p;-><init>(Lss/w;LgK/g;)V

    invoke-virtual {v2, v3}, Lss/ak$a;->a(Lss/am;)Lss/ak$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ak$a;->a()Lss/ak;

    move-result-object p1

    goto :goto_14
.end method

.method private i()Z
    .registers 2

    iget-boolean v0, p0, Lss/ss/gK/j;->o:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lss/ss/gK/j;->j:Lss/ag;

    invoke-virtual {p0, v0}, Lss/ss/gK/j;->a(Lss/ag;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lss/ss/gK/j;->m:LgK/v;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private j()Lss/ss/gK/n;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lss/ss/gK/t;,
            Lss/ss/gK/q;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/j;->j:Lss/ag;

    invoke-virtual {v0}, Lss/ag;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v5, 0x1

    :goto_f
    iget-object v0, p0, Lss/ss/gK/j;->b:Lss/ss/gK/w;

    iget-object v1, p0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v1}, Lss/ac;->a()I

    move-result v1

    iget-object v2, p0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v2}, Lss/ac;->b()I

    move-result v2

    iget-object v3, p0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v3}, Lss/ac;->c()I

    move-result v3

    iget-object v4, p0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v4}, Lss/ac;->r()Z

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lss/ss/gK/w;->a(IIIZZ)Lss/ss/gK/n;

    move-result-object v0

    return-object v0

    :cond_2e
    const/4 v5, 0x0

    goto :goto_f
.end method

.method private k()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lss/ss/d;->b:Lss/ss/d;

    iget-object v1, p0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v0, v1}, Lss/ss/d;->a(Lss/ac;)Lss/ss/e;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lss/ss/gK/j;->l:Lss/ak;

    iget-object v2, p0, Lss/ss/gK/j;->j:Lss/ag;

    invoke-static {v1, v2}, Lss/ss/gK/b;->a(Lss/ak;Lss/ag;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lss/ss/gK/j;->j:Lss/ag;

    invoke-virtual {v1}, Lss/ag;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lss/ss/gK/m;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :try_start_21
    iget-object v1, p0, Lss/ss/gK/j;->j:Lss/ag;

    invoke-interface {v0, v1}, Lss/ss/e;->b(Lss/ag;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_27

    goto :goto_a

    :catch_27
    move-exception v0

    goto :goto_a

    :cond_29
    iget-object v1, p0, Lss/ss/gK/j;->l:Lss/ak;

    invoke-static {v1}, Lss/ss/gK/j;->b(Lss/ak;)Lss/ak;

    move-result-object v1

    invoke-interface {v0, v1}, Lss/ss/e;->a(Lss/ak;)Lss/ss/gK/a;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/j;->q:Lss/ss/gK/a;

    goto :goto_a
.end method

.method private l()Lss/ak;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/j;->g:Lss/ss/gK/n;

    invoke-interface {v0}, Lss/ss/gK/n;->b()V

    iget-object v0, p0, Lss/ss/gK/j;->g:Lss/ss/gK/n;

    invoke-interface {v0}, Lss/ss/gK/n;->a()Lss/ak$a;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/j;->j:Lss/ag;

    invoke-virtual {v0, v1}, Lss/ak$a;->a(Lss/ag;)Lss/ak$a;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/j;->b:Lss/ss/gK/w;

    invoke-virtual {v1}, Lss/ss/gK/w;->a()Lss/ss/pK/c;

    move-result-object v1

    invoke-virtual {v1}, Lss/ss/pK/c;->c()Lss/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/ak$a;->a(Lss/v;)Lss/ak$a;

    move-result-object v0

    sget-object v1, Lss/ss/gK/o;->b:Ljava/lang/String;

    iget-wide v2, p0, Lss/ss/gK/j;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lss/ak$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ak$a;

    move-result-object v0

    sget-object v1, Lss/ss/gK/o;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lss/ak$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ak$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ak$a;->a()Lss/ak;

    move-result-object v0

    iget-boolean v1, p0, Lss/ss/gK/j;->p:Z

    if-nez v1, :cond_53

    invoke-virtual {v0}, Lss/ak;->g()Lss/ak$a;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/j;->g:Lss/ss/gK/n;

    invoke-interface {v2, v0}, Lss/ss/gK/n;->a(Lss/ak;)Lss/am;

    move-result-object v0

    invoke-virtual {v1, v0}, Lss/ak$a;->a(Lss/am;)Lss/ak$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ak$a;->a()Lss/ak;

    move-result-object v0

    :cond_53
    const-string v1, "close"

    invoke-virtual {v0}, Lss/ak;->a()Lss/ag;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lss/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_73

    const-string v1, "close"

    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lss/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    :cond_73
    iget-object v1, p0, Lss/ss/gK/j;->b:Lss/ss/gK/w;

    invoke-virtual {v1}, Lss/ss/gK/w;->c()V

    :cond_78
    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/IOException;LgK/v;)Lss/ss/gK/j;
    .registers 12

    const/4 v0, 0x0

    iget-object v1, p0, Lss/ss/gK/j;->b:Lss/ss/gK/w;

    invoke-virtual {v1, p1, p2}, Lss/ss/gK/w;->a(Ljava/io/IOException;LgK/v;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    iget-object v1, p0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v1}, Lss/ac;->r()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lss/ss/gK/j;->f()Lss/ss/gK/w;

    move-result-object v6

    new-instance v0, Lss/ss/gK/j;

    iget-object v1, p0, Lss/ss/gK/j;->a:Lss/ac;

    iget-object v2, p0, Lss/ss/gK/j;->i:Lss/ag;

    iget-boolean v3, p0, Lss/ss/gK/j;->d:Z

    iget-boolean v4, p0, Lss/ss/gK/j;->o:Z

    iget-boolean v5, p0, Lss/ss/gK/j;->p:Z

    move-object v7, p2

    check-cast v7, Lss/ss/gK/s;

    iget-object v8, p0, Lss/ss/gK/j;->f:Lss/ak;

    invoke-direct/range {v0 .. v8}, Lss/ss/gK/j;-><init>(Lss/ac;Lss/ag;ZZZLss/ss/gK/w;Lss/ss/gK/s;Lss/ak;)V

    goto :goto_9
.end method

.method public a()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lss/ss/gK/q;,
            Lss/ss/gK/t;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/j;->r:Lss/ss/gK/b;

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lss/ss/gK/j;->g:Lss/ss/gK/n;

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_f
    iget-object v0, p0, Lss/ss/gK/j;->i:Lss/ag;

    invoke-direct {p0, v0}, Lss/ss/gK/j;->b(Lss/ag;)Lss/ag;

    move-result-object v1

    sget-object v0, Lss/ss/d;->b:Lss/ss/d;

    iget-object v2, p0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v0, v2}, Lss/ss/d;->a(Lss/ac;)Lss/ss/e;

    move-result-object v2

    if-eqz v2, :cond_8f

    invoke-interface {v2, v1}, Lss/ss/e;->a(Lss/ag;)Lss/ak;

    move-result-object v0

    :goto_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v3, Lss/ss/gK/b$a;

    invoke-direct {v3, v4, v5, v1, v0}, Lss/ss/gK/b$a;-><init>(JLss/ag;Lss/ak;)V

    invoke-virtual {v3}, Lss/ss/gK/b$a;->a()Lss/ss/gK/b;

    move-result-object v3

    iput-object v3, p0, Lss/ss/gK/j;->r:Lss/ss/gK/b;

    iget-object v3, p0, Lss/ss/gK/j;->r:Lss/ss/gK/b;

    iget-object v3, v3, Lss/ss/gK/b;->a:Lss/ag;

    iput-object v3, p0, Lss/ss/gK/j;->j:Lss/ag;

    iget-object v3, p0, Lss/ss/gK/j;->r:Lss/ss/gK/b;

    iget-object v3, v3, Lss/ss/gK/b;->b:Lss/ak;

    iput-object v3, p0, Lss/ss/gK/j;->k:Lss/ak;

    if-eqz v2, :cond_45

    iget-object v3, p0, Lss/ss/gK/j;->r:Lss/ss/gK/b;

    invoke-interface {v2, v3}, Lss/ss/e;->a(Lss/ss/gK/b;)V

    :cond_45
    if-eqz v0, :cond_52

    iget-object v2, p0, Lss/ss/gK/j;->k:Lss/ak;

    if-nez v2, :cond_52

    invoke-virtual {v0}, Lss/ak;->f()Lss/am;

    move-result-object v2

    invoke-static {v2}, Lss/ss/j;->a(Ljava/io/Closeable;)V

    :cond_52
    iget-object v2, p0, Lss/ss/gK/j;->j:Lss/ag;

    if-nez v2, :cond_91

    iget-object v2, p0, Lss/ss/gK/j;->k:Lss/ak;

    if-nez v2, :cond_91

    new-instance v0, Lss/ak$a;

    invoke-direct {v0}, Lss/ak$a;-><init>()V

    iget-object v1, p0, Lss/ss/gK/j;->i:Lss/ag;

    invoke-virtual {v0, v1}, Lss/ak$a;->a(Lss/ag;)Lss/ak$a;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/j;->f:Lss/ak;

    invoke-static {v1}, Lss/ss/gK/j;->b(Lss/ak;)Lss/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/ak$a;->c(Lss/ak;)Lss/ak$a;

    move-result-object v0

    sget-object v1, Lss/ae;->b:Lss/ae;

    invoke-virtual {v0, v1}, Lss/ak$a;->a(Lss/ae;)Lss/ak$a;

    move-result-object v0

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Lss/ak$a;->a(I)Lss/ak$a;

    move-result-object v0

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v0, v1}, Lss/ak$a;->a(Ljava/lang/String;)Lss/ak$a;

    move-result-object v0

    sget-object v1, Lss/ss/gK/j;->e:Lss/am;

    invoke-virtual {v0, v1}, Lss/ak$a;->a(Lss/am;)Lss/ak$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ak$a;->a()Lss/ak;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/j;->l:Lss/ak;

    goto/16 :goto_4

    :cond_8f
    const/4 v0, 0x0

    goto :goto_23

    :cond_91
    iget-object v2, p0, Lss/ss/gK/j;->j:Lss/ag;

    if-nez v2, :cond_c5

    iget-object v0, p0, Lss/ss/gK/j;->k:Lss/ak;

    invoke-virtual {v0}, Lss/ak;->g()Lss/ak$a;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/j;->i:Lss/ag;

    invoke-virtual {v0, v1}, Lss/ak$a;->a(Lss/ag;)Lss/ak$a;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/j;->f:Lss/ak;

    invoke-static {v1}, Lss/ss/gK/j;->b(Lss/ak;)Lss/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/ak$a;->c(Lss/ak;)Lss/ak$a;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/j;->k:Lss/ak;

    invoke-static {v1}, Lss/ss/gK/j;->b(Lss/ak;)Lss/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/ak$a;->b(Lss/ak;)Lss/ak$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ak$a;->a()Lss/ak;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/j;->l:Lss/ak;

    iget-object v0, p0, Lss/ss/gK/j;->l:Lss/ak;

    invoke-direct {p0, v0}, Lss/ss/gK/j;->c(Lss/ak;)Lss/ak;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/j;->l:Lss/ak;

    goto/16 :goto_4

    :cond_c5
    :try_start_c5
    invoke-direct {p0}, Lss/ss/gK/j;->j()Lss/ss/gK/n;

    move-result-object v2

    iput-object v2, p0, Lss/ss/gK/j;->g:Lss/ss/gK/n;

    iget-object v2, p0, Lss/ss/gK/j;->g:Lss/ss/gK/n;

    invoke-interface {v2, p0}, Lss/ss/gK/n;->a(Lss/ss/gK/j;)V

    invoke-direct {p0}, Lss/ss/gK/j;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lss/ss/gK/o;->a(Lss/ag;)J

    move-result-wide v2

    iget-boolean v1, p0, Lss/ss/gK/j;->d:Z

    if-eqz v1, :cond_118

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_f8

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_ed
    .catchall {:try_start_c5 .. :try_end_ed} :catchall_ed

    :catchall_ed
    move-exception v1

    if-eqz v0, :cond_f7

    invoke-virtual {v0}, Lss/ak;->f()Lss/am;

    move-result-object v0

    invoke-static {v0}, Lss/ss/j;->a(Ljava/io/Closeable;)V

    :cond_f7
    throw v1

    :cond_f8
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_10f

    :try_start_fe
    iget-object v1, p0, Lss/ss/gK/j;->g:Lss/ss/gK/n;

    iget-object v4, p0, Lss/ss/gK/j;->j:Lss/ag;

    invoke-interface {v1, v4}, Lss/ss/gK/n;->a(Lss/ag;)V

    new-instance v1, Lss/ss/gK/s;

    long-to-int v2, v2

    invoke-direct {v1, v2}, Lss/ss/gK/s;-><init>(I)V

    iput-object v1, p0, Lss/ss/gK/j;->m:LgK/v;

    goto/16 :goto_4

    :cond_10f
    new-instance v1, Lss/ss/gK/s;

    invoke-direct {v1}, Lss/ss/gK/s;-><init>()V

    iput-object v1, p0, Lss/ss/gK/j;->m:LgK/v;

    goto/16 :goto_4

    :cond_118
    iget-object v1, p0, Lss/ss/gK/j;->g:Lss/ss/gK/n;

    iget-object v4, p0, Lss/ss/gK/j;->j:Lss/ag;

    invoke-interface {v1, v4}, Lss/ss/gK/n;->a(Lss/ag;)V

    iget-object v1, p0, Lss/ss/gK/j;->g:Lss/ss/gK/n;

    iget-object v4, p0, Lss/ss/gK/j;->j:Lss/ag;

    invoke-interface {v1, v4, v2, v3}, Lss/ss/gK/n;->a(Lss/ag;J)LgK/v;

    move-result-object v1

    iput-object v1, p0, Lss/ss/gK/j;->m:LgK/v;
    :try_end_129
    .catchall {:try_start_fe .. :try_end_129} :catchall_ed

    goto/16 :goto_4
.end method

.method public a(Lss/w;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v0}, Lss/ac;->f()Lss/q;

    move-result-object v0

    sget-object v1, Lss/q;->a:Lss/q;

    if-ne v0, v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lss/ss/gK/j;->i:Lss/ag;

    invoke-virtual {v0}, Lss/ag;->a()Lss/y;

    move-result-object v0

    invoke-static {v0, p1}, Lss/p;->a(Lss/y;Lss/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v1}, Lss/ac;->f()Lss/q;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/j;->i:Lss/ag;

    invoke-virtual {v2}, Lss/ag;->a()Lss/y;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lss/q;->a(Lss/y;Ljava/util/List;)V

    goto :goto_a
.end method

.method a(Lss/ag;)Z
    .registers 3

    invoke-virtual {p1}, Lss/ag;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lss/ss/gK/m;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Lss/y;)Z
    .registers 5

    iget-object v0, p0, Lss/ss/gK/j;->i:Lss/ag;

    invoke-virtual {v0}, Lss/ag;->a()Lss/y;

    move-result-object v0

    invoke-virtual {v0}, Lss/y;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lss/y;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Lss/y;->g()I

    move-result v1

    invoke-virtual {p1}, Lss/y;->g()I

    move-result v2

    if-ne v1, v2, :cond_2e

    invoke-virtual {v0}, Lss/y;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lss/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public b()V
    .registers 5

    iget-wide v0, p0, Lss/ss/gK/j;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lss/ss/gK/j;->c:J

    return-void
.end method

.method public c()Lss/ak;
    .registers 2

    iget-object v0, p0, Lss/ss/gK/j;->l:Lss/ak;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lss/ss/gK/j;->l:Lss/ak;

    return-object v0
.end method

.method public d()Lss/k;
    .registers 2

    iget-object v0, p0, Lss/ss/gK/j;->b:Lss/ss/gK/w;

    invoke-virtual {v0}, Lss/ss/gK/w;->a()Lss/ss/pK/c;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/j;->b:Lss/ss/gK/w;

    invoke-virtual {v0}, Lss/ss/gK/w;->b()V

    return-void
.end method

.method public f()Lss/ss/gK/w;
    .registers 3

    iget-object v0, p0, Lss/ss/gK/j;->n:LgK/f;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lss/ss/gK/j;->n:LgK/f;

    invoke-static {v0}, Lss/ss/j;->a(Ljava/io/Closeable;)V

    :cond_9
    :goto_9
    iget-object v0, p0, Lss/ss/gK/j;->l:Lss/ak;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lss/ss/gK/j;->l:Lss/ak;

    invoke-virtual {v0}, Lss/ak;->f()Lss/am;

    move-result-object v0

    invoke-static {v0}, Lss/ss/j;->a(Ljava/io/Closeable;)V

    :goto_16
    iget-object v0, p0, Lss/ss/gK/j;->b:Lss/ss/gK/w;

    return-object v0

    :cond_19
    iget-object v0, p0, Lss/ss/gK/j;->m:LgK/v;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lss/ss/gK/j;->m:LgK/v;

    invoke-static {v0}, Lss/ss/j;->a(Ljava/io/Closeable;)V

    goto :goto_9

    :cond_23
    iget-object v0, p0, Lss/ss/gK/j;->b:Lss/ss/gK/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lss/ss/gK/w;->a(Ljava/io/IOException;)V

    goto :goto_16
.end method

.method public g()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lss/ss/gK/j;->l:Lss/ak;

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lss/ss/gK/j;->j:Lss/ag;

    if-nez v0, :cond_17

    iget-object v0, p0, Lss/ss/gK/j;->k:Lss/ak;

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call sendRequest() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iget-object v0, p0, Lss/ss/gK/j;->j:Lss/ag;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lss/ss/gK/j;->p:Z

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lss/ss/gK/j;->g:Lss/ss/gK/n;

    iget-object v1, p0, Lss/ss/gK/j;->j:Lss/ag;

    invoke-interface {v0, v1}, Lss/ss/gK/n;->a(Lss/ag;)V

    invoke-direct {p0}, Lss/ss/gK/j;->l()Lss/ak;

    move-result-object v0

    :goto_2a
    invoke-virtual {v0}, Lss/ak;->e()Lss/w;

    move-result-object v1

    invoke-virtual {p0, v1}, Lss/ss/gK/j;->a(Lss/w;)V

    iget-object v1, p0, Lss/ss/gK/j;->k:Lss/ak;

    if-eqz v1, :cond_146

    iget-object v1, p0, Lss/ss/gK/j;->k:Lss/ak;

    invoke-static {v1, v0}, Lss/ss/gK/j;->a(Lss/ak;Lss/ak;)Z

    move-result v1

    if-eqz v1, :cond_13d

    iget-object v1, p0, Lss/ss/gK/j;->k:Lss/ak;

    invoke-virtual {v1}, Lss/ak;->g()Lss/ak$a;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/j;->i:Lss/ag;

    invoke-virtual {v1, v2}, Lss/ak$a;->a(Lss/ag;)Lss/ak$a;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/j;->f:Lss/ak;

    invoke-static {v2}, Lss/ss/gK/j;->b(Lss/ak;)Lss/ak;

    move-result-object v2

    invoke-virtual {v1, v2}, Lss/ak$a;->c(Lss/ak;)Lss/ak$a;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/j;->k:Lss/ak;

    invoke-virtual {v2}, Lss/ak;->e()Lss/w;

    move-result-object v2

    invoke-virtual {v0}, Lss/ak;->e()Lss/w;

    move-result-object v3

    invoke-static {v2, v3}, Lss/ss/gK/j;->a(Lss/w;Lss/w;)Lss/w;

    move-result-object v2

    invoke-virtual {v1, v2}, Lss/ak$a;->a(Lss/w;)Lss/ak$a;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/j;->k:Lss/ak;

    invoke-static {v2}, Lss/ss/gK/j;->b(Lss/ak;)Lss/ak;

    move-result-object v2

    invoke-virtual {v1, v2}, Lss/ak$a;->b(Lss/ak;)Lss/ak$a;

    move-result-object v1

    invoke-static {v0}, Lss/ss/gK/j;->b(Lss/ak;)Lss/ak;

    move-result-object v2

    invoke-virtual {v1, v2}, Lss/ak$a;->a(Lss/ak;)Lss/ak$a;

    move-result-object v1

    invoke-virtual {v1}, Lss/ak$a;->a()Lss/ak;

    move-result-object v1

    iput-object v1, p0, Lss/ss/gK/j;->l:Lss/ak;

    invoke-virtual {v0}, Lss/ak;->f()Lss/am;

    move-result-object v0

    invoke-virtual {v0}, Lss/am;->close()V

    invoke-virtual {p0}, Lss/ss/gK/j;->e()V

    sget-object v0, Lss/ss/d;->b:Lss/ss/d;

    iget-object v1, p0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v0, v1}, Lss/ss/d;->a(Lss/ac;)Lss/ss/e;

    move-result-object v0

    invoke-interface {v0}, Lss/ss/e;->a()V

    iget-object v1, p0, Lss/ss/gK/j;->k:Lss/ak;

    iget-object v2, p0, Lss/ss/gK/j;->l:Lss/ak;

    invoke-static {v2}, Lss/ss/gK/j;->b(Lss/ak;)Lss/ak;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lss/ss/e;->a(Lss/ak;Lss/ak;)V

    iget-object v0, p0, Lss/ss/gK/j;->l:Lss/ak;

    invoke-direct {p0, v0}, Lss/ss/gK/j;->c(Lss/ak;)Lss/ak;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/j;->l:Lss/ak;

    goto/16 :goto_6

    :cond_a7
    iget-boolean v0, p0, Lss/ss/gK/j;->o:Z

    if-nez v0, :cond_c1

    new-instance v0, Lss/ss/gK/j$a;

    const/4 v1, 0x0

    iget-object v2, p0, Lss/ss/gK/j;->j:Lss/ag;

    iget-object v3, p0, Lss/ss/gK/j;->b:Lss/ss/gK/w;

    invoke-virtual {v3}, Lss/ss/gK/w;->a()Lss/ss/pK/c;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lss/ss/gK/j$a;-><init>(Lss/ss/gK/j;ILss/ag;Lss/k;)V

    iget-object v1, p0, Lss/ss/gK/j;->j:Lss/ag;

    invoke-virtual {v0, v1}, Lss/ss/gK/j$a;->a(Lss/ag;)Lss/ak;

    move-result-object v0

    goto/16 :goto_2a

    :cond_c1
    iget-object v0, p0, Lss/ss/gK/j;->n:LgK/f;

    if-eqz v0, :cond_da

    iget-object v0, p0, Lss/ss/gK/j;->n:LgK/f;

    invoke-interface {v0}, LgK/f;->c()LgK/e;

    move-result-object v0

    invoke-virtual {v0}, LgK/e;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_da

    iget-object v0, p0, Lss/ss/gK/j;->n:LgK/f;

    invoke-interface {v0}, LgK/f;->e()LgK/f;

    :cond_da
    iget-wide v0, p0, Lss/ss/gK/j;->c:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_115

    iget-object v0, p0, Lss/ss/gK/j;->j:Lss/ag;

    invoke-static {v0}, Lss/ss/gK/o;->a(Lss/ag;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_10e

    iget-object v0, p0, Lss/ss/gK/j;->m:LgK/v;

    instance-of v0, v0, Lss/ss/gK/s;

    if-eqz v0, :cond_10e

    iget-object v0, p0, Lss/ss/gK/j;->m:LgK/v;

    check-cast v0, Lss/ss/gK/s;

    invoke-virtual {v0}, Lss/ss/gK/s;->b()J

    move-result-wide v0

    iget-object v2, p0, Lss/ss/gK/j;->j:Lss/ag;

    invoke-virtual {v2}, Lss/ag;->e()Lss/ag$a;

    move-result-object v2

    const-string v3, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lss/ag$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ag$a;->a()Lss/ag;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/j;->j:Lss/ag;

    :cond_10e
    iget-object v0, p0, Lss/ss/gK/j;->g:Lss/ss/gK/n;

    iget-object v1, p0, Lss/ss/gK/j;->j:Lss/ag;

    invoke-interface {v0, v1}, Lss/ss/gK/n;->a(Lss/ag;)V

    :cond_115
    iget-object v0, p0, Lss/ss/gK/j;->m:LgK/v;

    if-eqz v0, :cond_131

    iget-object v0, p0, Lss/ss/gK/j;->n:LgK/f;

    if-eqz v0, :cond_137

    iget-object v0, p0, Lss/ss/gK/j;->n:LgK/f;

    invoke-interface {v0}, LgK/f;->close()V

    :goto_122
    iget-object v0, p0, Lss/ss/gK/j;->m:LgK/v;

    instance-of v0, v0, Lss/ss/gK/s;

    if-eqz v0, :cond_131

    iget-object v1, p0, Lss/ss/gK/j;->g:Lss/ss/gK/n;

    iget-object v0, p0, Lss/ss/gK/j;->m:LgK/v;

    check-cast v0, Lss/ss/gK/s;

    invoke-interface {v1, v0}, Lss/ss/gK/n;->a(Lss/ss/gK/s;)V

    :cond_131
    invoke-direct {p0}, Lss/ss/gK/j;->l()Lss/ak;

    move-result-object v0

    goto/16 :goto_2a

    :cond_137
    iget-object v0, p0, Lss/ss/gK/j;->m:LgK/v;

    invoke-interface {v0}, LgK/v;->close()V

    goto :goto_122

    :cond_13d
    iget-object v1, p0, Lss/ss/gK/j;->k:Lss/ak;

    invoke-virtual {v1}, Lss/ak;->f()Lss/am;

    move-result-object v1

    invoke-static {v1}, Lss/ss/j;->a(Ljava/io/Closeable;)V

    :cond_146
    invoke-virtual {v0}, Lss/ak;->g()Lss/ak$a;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/j;->i:Lss/ag;

    invoke-virtual {v1, v2}, Lss/ak$a;->a(Lss/ag;)Lss/ak$a;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/j;->f:Lss/ak;

    invoke-static {v2}, Lss/ss/gK/j;->b(Lss/ak;)Lss/ak;

    move-result-object v2

    invoke-virtual {v1, v2}, Lss/ak$a;->c(Lss/ak;)Lss/ak$a;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/j;->k:Lss/ak;

    invoke-static {v2}, Lss/ss/gK/j;->b(Lss/ak;)Lss/ak;

    move-result-object v2

    invoke-virtual {v1, v2}, Lss/ak$a;->b(Lss/ak;)Lss/ak$a;

    move-result-object v1

    invoke-static {v0}, Lss/ss/gK/j;->b(Lss/ak;)Lss/ak;

    move-result-object v0

    invoke-virtual {v1, v0}, Lss/ak$a;->a(Lss/ak;)Lss/ak$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ak$a;->a()Lss/ak;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/j;->l:Lss/ak;

    iget-object v0, p0, Lss/ss/gK/j;->l:Lss/ak;

    invoke-static {v0}, Lss/ss/gK/j;->a(Lss/ak;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lss/ss/gK/j;->k()V

    iget-object v0, p0, Lss/ss/gK/j;->q:Lss/ss/gK/a;

    iget-object v1, p0, Lss/ss/gK/j;->l:Lss/ak;

    invoke-direct {p0, v0, v1}, Lss/ss/gK/j;->a(Lss/ss/gK/a;Lss/ak;)Lss/ak;

    move-result-object v0

    invoke-direct {p0, v0}, Lss/ss/gK/j;->c(Lss/ak;)Lss/ak;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/j;->l:Lss/ak;

    goto/16 :goto_6
.end method

.method public h()Lss/ag;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lss/ss/gK/j;->l:Lss/ak;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_b
    iget-object v0, p0, Lss/ss/gK/j;->b:Lss/ss/gK/w;

    invoke-virtual {v0}, Lss/ss/gK/w;->a()Lss/ss/pK/c;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-interface {v0}, Lss/k;->a()Lss/an;

    move-result-object v0

    :goto_17
    iget-object v2, p0, Lss/ss/gK/j;->l:Lss/ak;

    invoke-virtual {v2}, Lss/ak;->b()I

    move-result v2

    iget-object v3, p0, Lss/ss/gK/j;->i:Lss/ag;

    invoke-virtual {v3}, Lss/ag;->b()Ljava/lang/String;

    move-result-object v3

    sparse-switch v2, :sswitch_data_f4

    :cond_26
    :goto_26
    return-object v1

    :cond_27
    move-object v0, v1

    goto :goto_17

    :sswitch_29
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lss/an;->b()Ljava/net/Proxy;

    move-result-object v1

    :goto_2f
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_46

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    iget-object v1, p0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v1}, Lss/ac;->d()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_2f

    :cond_46
    :sswitch_46
    iget-object v1, p0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v1}, Lss/ac;->m()Lss/b;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/j;->l:Lss/ak;

    invoke-interface {v1, v0, v2}, Lss/b;->a(Lss/an;Lss/ak;)Lss/ag;

    move-result-object v1

    goto :goto_26

    :sswitch_53
    const-string v0, "GET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_63
    :sswitch_63
    iget-object v0, p0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v0}, Lss/ac;->q()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lss/ss/gK/j;->l:Lss/ak;

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Lss/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v2, p0, Lss/ss/gK/j;->i:Lss/ag;

    invoke-virtual {v2}, Lss/ag;->a()Lss/y;

    move-result-object v2

    invoke-virtual {v2, v0}, Lss/y;->c(Ljava/lang/String;)Lss/y;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lss/y;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lss/ss/gK/j;->i:Lss/ag;

    invoke-virtual {v4}, Lss/ag;->a()Lss/y;

    move-result-object v4

    invoke-virtual {v4}, Lss/y;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    iget-object v2, p0, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v2}, Lss/ac;->p()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_9d
    iget-object v2, p0, Lss/ss/gK/j;->i:Lss/ag;

    invoke-virtual {v2}, Lss/ag;->e()Lss/ag$a;

    move-result-object v2

    invoke-static {v3}, Lss/ss/gK/m;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c3

    invoke-static {v3}, Lss/ss/gK/m;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d8

    const-string v3, "GET"

    invoke-virtual {v2, v3, v1}, Lss/ag$a;->a(Ljava/lang/String;Lss/ai;)Lss/ag$a;

    :goto_b4
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Lss/ag$a;->b(Ljava/lang/String;)Lss/ag$a;

    const-string v1, "Content-Length"

    invoke-virtual {v2, v1}, Lss/ag$a;->b(Ljava/lang/String;)Lss/ag$a;

    const-string v1, "Content-Type"

    invoke-virtual {v2, v1}, Lss/ag$a;->b(Ljava/lang/String;)Lss/ag$a;

    :cond_c3
    invoke-virtual {p0, v0}, Lss/ss/gK/j;->a(Lss/y;)Z

    move-result v1

    if-nez v1, :cond_ce

    const-string v1, "Authorization"

    invoke-virtual {v2, v1}, Lss/ag$a;->b(Ljava/lang/String;)Lss/ag$a;

    :cond_ce
    invoke-virtual {v2, v0}, Lss/ag$a;->a(Lss/y;)Lss/ag$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ag$a;->a()Lss/ag;

    move-result-object v1

    goto/16 :goto_26

    :cond_d8
    invoke-virtual {v2, v3, v1}, Lss/ag$a;->a(Ljava/lang/String;Lss/ai;)Lss/ag$a;

    goto :goto_b4

    :sswitch_dc
    iget-object v0, p0, Lss/ss/gK/j;->m:LgK/v;

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lss/ss/gK/j;->m:LgK/v;

    instance-of v0, v0, Lss/ss/gK/s;

    if-eqz v0, :cond_f1

    :cond_e6
    const/4 v0, 0x1

    :goto_e7
    iget-boolean v2, p0, Lss/ss/gK/j;->o:Z

    if-eqz v2, :cond_ed

    if-eqz v0, :cond_26

    :cond_ed
    iget-object v1, p0, Lss/ss/gK/j;->i:Lss/ag;

    goto/16 :goto_26

    :cond_f1
    const/4 v0, 0x0

    goto :goto_e7

    nop

    :sswitch_data_f4
    .sparse-switch
        0x12c -> :sswitch_63
        0x12d -> :sswitch_63
        0x12e -> :sswitch_63
        0x12f -> :sswitch_63
        0x133 -> :sswitch_53
        0x134 -> :sswitch_53
        0x191 -> :sswitch_46
        0x197 -> :sswitch_29
        0x198 -> :sswitch_dc
    .end sparse-switch
.end method
