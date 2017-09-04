.class public final Ljy;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field public a:Ljava/lang/String;

.field private a:Ljava/util/Hashtable;

.field public a:Ljj;

.field public a:Ljs;

.field public a:Lkk;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x17

    if-le v0, v4, :cond_1d

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1d
    invoke-static {p2}, Lkk;->a(Ljava/lang/String;)Lkk;

    move-result-object v0

    iput-object v0, p0, Ljy;->a:Lkk;

    iput-object p1, p0, Ljy;->b:Ljava/lang/String;

    const-string v0, "tcp://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    move v0, v1

    :goto_2e
    iput v0, p0, Ljy;->a:I

    iput-object p2, p0, Ljy;->a:Ljava/lang/String;

    iput-object v6, p0, Ljy;->a:Ljj;

    iget-object v0, p0, Ljy;->a:Ljj;

    if-nez v0, :cond_3f

    new-instance v0, Ljj;

    invoke-direct {v0}, Ljj;-><init>()V

    iput-object v0, p0, Ljy;->a:Ljj;

    :cond_3f
    iget-object v0, p0, Ljy;->a:Lkk;

    const/16 v4, 0x65

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v1

    aput-object p1, v5, v2

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Lkk;->a(I[Ljava/lang/Object;)V

    iget-object v0, p0, Ljy;->a:Ljj;

    invoke-virtual {v0}, Ljj;->a()V

    new-instance v0, Ljs;

    iget-object v1, p0, Ljy;->a:Ljj;

    iget-object v2, p0, Ljy;->a:Lkk;

    invoke-direct {v0, p0, v1, v2}, Ljs;-><init>(Ljy;Ljj;Lkk;)V

    iput-object v0, p0, Ljy;->a:Ljs;

    iget-object v0, p0, Ljy;->a:Ljj;

    iget-object v0, v0, Ljj;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljy;->a:Ljava/util/Hashtable;

    return-void

    :cond_6e
    const-string v0, "ssl://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    move v0, v2

    goto :goto_2e

    :cond_78
    const-string v0, "local://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    move v0, v3

    goto :goto_2e

    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static a(Ljava/lang/String;I)I
    .registers 4

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    :goto_9
    return p1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_9
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljr;
    .registers 4

    const/4 v1, -0x1

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_28

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Ljy;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljr;

    if-nez v0, :cond_27

    new-instance v0, Ljr;

    iget-object v1, p0, Ljy;->a:Ljs;

    invoke-direct {v0, p1, v1}, Ljr;-><init>(Ljava/lang/String;Ljs;)V

    iget-object v1, p0, Ljy;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    return-object v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljk;)Lkc;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v5, 0x7d69

    const/4 v3, 0x6

    iget-object v0, p2, Ljk;->a:Ljavax/net/SocketFactory;

    iget v2, p0, Ljy;->a:I

    packed-switch v2, :pswitch_data_8e

    :cond_b
    :goto_b
    return-object v1

    :pswitch_c
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x75b

    invoke-static {v1, v3}, Ljy;->a(Ljava/lang/String;I)I

    move-result v3

    if-nez v0, :cond_2a

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p2, Ljk;->a:Ljavax/net/SocketFactory;

    :cond_22
    new-instance v1, Lkf;

    iget-object v4, p0, Ljy;->a:Lkk;

    invoke-direct {v1, v4, v0, v2, v3}, Lkf;-><init>(Lkk;Ljavax/net/SocketFactory;Ljava/lang/String;I)V

    goto :goto_b

    :cond_2a
    instance-of v1, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_22

    invoke-static {v5}, Lat;->a(I)Ljm;

    move-result-object v0

    throw v0

    :pswitch_33
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22b3

    invoke-static {v2, v4}, Ljy;->a(Ljava/lang/String;I)I

    move-result v4

    if-nez v0, :cond_77

    :try_start_43
    new-instance v0, Lki;

    invoke-direct {v0}, Lki;-><init>()V

    invoke-static {}, Lki;->a()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_4b
    .catch Lkg; {:try_start_43 .. :try_end_4b} :catch_6d

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    :goto_4e
    new-instance v1, Lke;

    iget-object v5, p0, Ljy;->a:Lkk;

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v1, v5, v0, v3, v4}, Lke;-><init>(Lkk;Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;I)V

    move-object v0, v1

    check-cast v0, Lke;

    iget v3, p2, Ljk;->b:I

    iput v3, v0, Lke;->a:I

    if-eqz v2, :cond_b

    invoke-static {}, Lki;->a()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object v0, v1

    check-cast v0, Lke;

    invoke-virtual {v0, v2}, Lke;->a([Ljava/lang/String;)V

    goto :goto_b

    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Lkg;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lat;->a(Ljava/lang/Throwable;)Ljm;

    move-result-object v0

    throw v0

    :cond_77
    instance-of v2, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_8c

    invoke-static {v5}, Lat;->a(I)Ljm;

    move-result-object v0

    throw v0

    :pswitch_80
    new-instance v1, Ljz;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljz;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :cond_8c
    move-object v2, v1

    goto :goto_4e

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_33
        :pswitch_80
    .end packed-switch
.end method

.method public final a([Ljava/lang/String;[I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;,
            Ljq;
        }
    .end annotation

    const/4 v2, 0x0

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    iget-object v0, p0, Ljy;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, ""

    move v1, v2

    :goto_16
    array-length v3, p1

    if-ge v1, v3, :cond_52

    if-lez v1, :cond_2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_16

    :cond_52
    iget-object v1, p0, Ljy;->a:Lkk;

    const/16 v3, 0x6a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_5e
    new-instance v0, Llf;

    invoke-direct {v0, p1, p2}, Llf;-><init>([Ljava/lang/String;[I)V

    iget-object v1, p0, Ljy;->a:Ljs;

    invoke-virtual {v1, v0}, Ljs;->a(Lli;)Ljl;

    move-result-object v0

    iget v1, v1, Ljs;->a:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljl;->a(J)V

    return-void
.end method
