.class public Lgp;
.super Lfv;


# instance fields
.field private final a:I

.field private final a:Z

.field private final a:[B


# direct methods
.method public constructor <init>(ILfh;)V
    .registers 7

    invoke-direct {p0}, Lfv;-><init>()V

    iput p1, p0, Lgp;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgp;->a:Z

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    iget-object v0, p2, Lfh;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v1, v0, :cond_40

    :try_start_17
    invoke-virtual {p2, v1}, Lfh;->a(I)Lfg;

    move-result-object v0

    check-cast v0, Lfo;

    const-string v3, "DER"

    invoke-virtual {v0, v3}, Lfo;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_26} :catch_2a

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :catch_2a
    move-exception v0

    new-instance v1, Lfu;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "malformed object: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lfu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_40
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lgp;->a:[B

    return-void
.end method

.method constructor <init>(ZI[B)V
    .registers 4

    invoke-direct {p0}, Lfv;-><init>()V

    iput-boolean p1, p0, Lgp;->a:Z

    iput p2, p0, Lgp;->a:I

    iput-object p3, p0, Lgp;->a:[B

    return-void
.end method


# virtual methods
.method final a()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lgp;->a:I

    invoke-static {v0}, Lid;->b(I)I

    move-result v0

    iget-object v1, p0, Lgp;->a:[B

    array-length v1, v1

    invoke-static {v1}, Lid;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lgp;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method final a(Lfs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x40

    iget-boolean v1, p0, Lgp;->a:Z

    if-eqz v1, :cond_8

    const/16 v0, 0x60

    :cond_8
    iget v1, p0, Lgp;->a:I

    iget-object v2, p0, Lgp;->a:[B

    invoke-virtual {p1, v0, v1, v2}, Lfs;->a(II[B)V

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lgp;->a:Z

    return v0
.end method

.method final a(Lfv;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lgp;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lgp;

    iget-boolean v1, p0, Lgp;->a:Z

    iget-boolean v2, p1, Lgp;->a:Z

    if-ne v1, v2, :cond_5

    iget v1, p0, Lgp;->a:I

    iget v2, p1, Lgp;->a:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lgp;->a:[B

    iget-object v2, p1, Lgp;->a:[B

    invoke-static {v1, v2}, Lat;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Lgp;->a:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    iget v1, p0, Lgp;->a:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lgp;->a:[B

    invoke-static {v1}, Lat;->a([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method
