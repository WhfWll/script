.class public Lkf;
.super Ljava/lang/Object;

# interfaces
.implements Lkc;


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field protected a:Ljava/net/Socket;

.field private a:Ljavax/net/SocketFactory;

.field protected a:Lkk;


# direct methods
.method public constructor <init>(Lkk;Ljavax/net/SocketFactory;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkf;->a:Ljavax/net/SocketFactory;

    iput-object p3, p0, Lkf;->a:Ljava/lang/String;

    iput p4, p0, Lkf;->a:I

    iput-object p1, p0, Lkf;->a:Lkk;

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkf;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkf;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljm;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lkf;->a:Ljavax/net/SocketFactory;

    iget-object v1, p0, Lkf;->a:Ljava/lang/String;

    iget v2, p0, Lkf;->a:I

    invoke-virtual {v0, v1, v2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lkf;->a:Ljava/net/Socket;

    iget-object v0, p0, Lkf;->a:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_12
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    iget-object v1, p0, Lkf;->a:Lkk;

    const/16 v2, 0xfa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v0, 0x7d67

    invoke-static {v0}, Lat;->a(I)Ljm;

    move-result-object v0

    throw v0
.end method

.method public final b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkf;->a:Ljava/net/Socket;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lkf;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_9
    return-void
.end method
