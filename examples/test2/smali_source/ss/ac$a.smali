.class public final Lss/ac$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Lss/s;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/ae;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
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

.field g:Ljava/net/ProxySelector;

.field h:Lss/q;

.field i:Lss/d;

.field j:Lss/ss/e;

.field k:Ljavax/net/SocketFactory;

.field l:Ljavax/net/ssl/SSLSocketFactory;

.field m:Lss/ss/gq/f;

.field n:Ljavax/net/ssl/HostnameVerifier;

.field o:Lss/h;

.field p:Lss/b;

.field q:Lss/b;

.field r:Lss/l;

.field s:Lss/t;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v2, 0x2710

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lss/ac$a;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lss/ac$a;->f:Ljava/util/List;

    new-instance v0, Lss/s;

    invoke-direct {v0}, Lss/s;-><init>()V

    iput-object v0, p0, Lss/ac$a;->a:Lss/s;

    invoke-static {}, Lss/ac;->x()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lss/ac$a;->c:Ljava/util/List;

    invoke-static {}, Lss/ac;->y()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lss/ac$a;->d:Ljava/util/List;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lss/ac$a;->g:Ljava/net/ProxySelector;

    sget-object v0, Lss/q;->a:Lss/q;

    iput-object v0, p0, Lss/ac$a;->h:Lss/q;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lss/ac$a;->k:Ljavax/net/SocketFactory;

    sget-object v0, Lss/ss/gq/d;->a:Lss/ss/gq/d;

    iput-object v0, p0, Lss/ac$a;->n:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lss/h;->a:Lss/h;

    iput-object v0, p0, Lss/ac$a;->o:Lss/h;

    sget-object v0, Lss/b;->a:Lss/b;

    iput-object v0, p0, Lss/ac$a;->p:Lss/b;

    sget-object v0, Lss/b;->a:Lss/b;

    iput-object v0, p0, Lss/ac$a;->q:Lss/b;

    new-instance v0, Lss/l;

    invoke-direct {v0}, Lss/l;-><init>()V

    iput-object v0, p0, Lss/ac$a;->r:Lss/l;

    sget-object v0, Lss/t;->a:Lss/t;

    iput-object v0, p0, Lss/ac$a;->s:Lss/t;

    iput-boolean v1, p0, Lss/ac$a;->t:Z

    iput-boolean v1, p0, Lss/ac$a;->u:Z

    iput-boolean v1, p0, Lss/ac$a;->v:Z

    iput v2, p0, Lss/ac$a;->w:I

    iput v2, p0, Lss/ac$a;->x:I

    iput v2, p0, Lss/ac$a;->y:I

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lss/ac$a;
    .registers 11

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez p3, :cond_18

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    cmp-long v2, v0, v4

    if-nez v2, :cond_3b

    cmp-long v2, p1, v4

    if-lez v2, :cond_3b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    long-to-int v0, v0

    iput v0, p0, Lss/ac$a;->w:I

    return-object p0
.end method

.method public a(Lss/aa;)Lss/ac$a;
    .registers 3

    iget-object v0, p0, Lss/ac$a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Lss/ac;
    .registers 3

    new-instance v0, Lss/ac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/ac;-><init>(Lss/ac$a;Lss/ad;)V

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lss/ac$a;
    .registers 11

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez p3, :cond_18

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    cmp-long v2, v0, v4

    if-nez v2, :cond_3b

    cmp-long v2, p1, v4

    if-lez v2, :cond_3b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    long-to-int v0, v0

    iput v0, p0, Lss/ac$a;->x:I

    return-object p0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Lss/ac$a;
    .registers 11

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez p3, :cond_18

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    cmp-long v2, v0, v4

    if-nez v2, :cond_3b

    cmp-long v2, p1, v4

    if-lez v2, :cond_3b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    long-to-int v0, v0

    iput v0, p0, Lss/ac$a;->y:I

    return-object p0
.end method
