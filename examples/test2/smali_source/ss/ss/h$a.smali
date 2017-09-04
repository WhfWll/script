.class Lss/ss/h$a;
.super Lss/ss/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lss/ss/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lss/ss/g",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lss/ss/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lss/ss/g",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lss/ss/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lss/ss/g",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lss/ss/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lss/ss/g",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lss/ss/g;Lss/ss/g;Lss/ss/g;Lss/ss/g;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lss/ss/g",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lss/ss/g",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lss/ss/g",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lss/ss/g",
            "<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lss/ss/h;-><init>()V

    iput-object p1, p0, Lss/ss/h$a;->a:Ljava/lang/Class;

    iput-object p2, p0, Lss/ss/h$a;->b:Lss/ss/g;

    iput-object p3, p0, Lss/ss/h$a;->c:Lss/ss/g;

    iput-object p4, p0, Lss/ss/h$a;->d:Lss/ss/g;

    iput-object p5, p0, Lss/ss/h$a;->e:Lss/ss/g;

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 5

    iget-object v0, p0, Lss/ss/h$a;->a:Ljava/lang/Class;

    const-string v1, "sslParameters"

    invoke-static {p1, v0, v1}, Lss/ss/h$a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3e

    :try_start_a
    const-string v0, "com.google.android.gms.org.conscrypt.SSLParametersImpl"

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sslParameters"

    invoke-static {p1, v0, v1}, Lss/ss/h$a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_1e} :catch_2d

    move-result-object v0

    move-object v1, v0

    :goto_20
    const-class v0, Ljavax/net/ssl/X509TrustManager;

    const-string v2, "x509TrustManager"

    invoke-static {v1, v0, v2}, Lss/ss/h$a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_33

    :goto_2c
    return-object v0

    :catch_2d
    move-exception v0

    invoke-super {p0, p1}, Lss/ss/h;->a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    goto :goto_2c

    :cond_33
    const-class v0, Ljavax/net/ssl/X509TrustManager;

    const-string v2, "trustManager"

    invoke-static {v1, v0, v2}, Lss/ss/h$a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    goto :goto_2c

    :cond_3e
    move-object v1, v0

    goto :goto_20
.end method

.method public a(Ljavax/net/ssl/X509TrustManager;)Lss/ss/gq/f;
    .registers 3

    invoke-static {p1}, Lss/ss/gq/a;->a(Ljavax/net/ssl/X509TrustManager;)Lss/ss/gq/f;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-super {p0, p1}, Lss/ss/h;->a(Ljavax/net/ssl/X509TrustManager;)Lss/ss/gq/f;

    move-result-object v0

    goto :goto_6
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_12

    return-void

    :catch_4
    move-exception v0

    invoke-static {v0}, Lss/ss/j;->a(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_11
    throw v0

    :catch_12
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lss/ae;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_1a

    iget-object v0, p0, Lss/ss/h$a;->b:Lss/ss/g;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Lss/ss/g;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lss/ss/h$a;->c:Lss/ss/g;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {v0, p1, v1}, Lss/ss/g;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    iget-object v0, p0, Lss/ss/h$a;->e:Lss/ss/g;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lss/ss/h$a;->e:Lss/ss/g;

    invoke-virtual {v0, p1}, Lss/ss/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3}, Lss/ss/h$a;->a(Ljava/util/List;)[B

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lss/ss/h$a;->e:Lss/ss/g;

    invoke-virtual {v1, p1, v0}, Lss/ss/g;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    return-void
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lss/ss/h$a;->d:Lss/ss/g;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-object v1

    :cond_6
    iget-object v0, p0, Lss/ss/h$a;->d:Lss/ss/g;

    invoke-virtual {v0, p1}, Lss/ss/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lss/ss/h$a;->d:Lss/ss/g;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lss/ss/g;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_27

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lss/ss/j;->c:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    :goto_25
    move-object v1, v0

    goto :goto_5

    :cond_27
    move-object v0, v1

    goto :goto_25
.end method
