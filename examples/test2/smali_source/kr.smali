.class public final Lkr;
.super Lli;


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZILjava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lli;-><init>(B)V

    iput-object p1, p0, Lkr;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lkr;->a:Z

    iput p3, p0, Lkr;->a:I

    iput-object p4, p0, Lkr;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a()B
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final b()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lkr;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lkr;->b:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lkr;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_20

    move-result-object v0

    return-object v0

    :catch_20
    move-exception v0

    new-instance v1, Ljm;

    invoke-direct {v1, v0}, Ljm;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final b_()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v0, "MQIsdp"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v0, 0x0

    iget-boolean v3, p0, Lkr;->a:Z

    if-eqz v3, :cond_19

    const/4 v0, 0x2

    :cond_19
    iget-object v3, p0, Lkr;->b:Ljava/lang/String;

    if-eqz v3, :cond_20

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    :cond_20
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    iget v0, p0, Lkr;->a:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_30

    move-result-object v0

    return-object v0

    :catch_30
    move-exception v0

    new-instance v1, Ljm;

    invoke-direct {v1, v0}, Ljm;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
