.class public final Lke;
.super Lkf;


# instance fields
.field public a:I

.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkk;Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lkf;-><init>(Lkk;Ljavax/net/SocketFactory;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljm;
        }
    .end annotation

    invoke-super {p0}, Lkf;->a()V

    iget-object v0, p0, Lke;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lke;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lke;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    if-nez v1, :cond_19

    iget-object v0, p0, Lke;->a:Ljava/net/Socket;

    iget v2, p0, Lke;->a:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_19
    iget-object v0, p0, Lke;->a:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    iget-object v0, p0, Lke;->a:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    iput-object p1, p0, Lke;->a:[Ljava/lang/String;

    iget-object v0, p0, Lke;->a:Ljava/net/Socket;

    if-eqz v0, :cond_57

    if-eqz p1, :cond_57

    iget-object v0, p0, Lke;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, ""

    move v1, v2

    :goto_14
    array-length v3, p1

    if-ge v1, v3, :cond_44

    if-lez v1, :cond_2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_14

    :cond_44
    iget-object v1, p0, Lke;->a:Lkk;

    const/16 v3, 0x104

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_50
    iget-object v0, p0, Lke;->a:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_57
    return-void
.end method
