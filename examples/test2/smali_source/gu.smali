.class public final Lgu;
.super Lfv;


# instance fields
.field private a:I

.field private a:Lfm;

.field private a:Lfp;

.field private a:Lfv;

.field private b:Lfv;


# direct methods
.method public constructor <init>(Lfh;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lfv;-><init>()V

    invoke-static {p1, v2}, Lgu;->a(Lfh;I)Lfv;

    move-result-object v0

    instance-of v3, v0, Lfp;

    if-eqz v3, :cond_7c

    check-cast v0, Lfp;

    iput-object v0, p0, Lgu;->a:Lfp;

    invoke-static {p1, v1}, Lgu;->a(Lfh;I)Lfv;

    move-result-object v0

    :goto_15
    instance-of v2, v0, Lfm;

    if-eqz v2, :cond_23

    check-cast v0, Lfm;

    iput-object v0, p0, Lgu;->a:Lfm;

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lgu;->a(Lfh;I)Lfv;

    move-result-object v0

    :cond_23
    instance-of v2, v0, Lhn;

    if-nez v2, :cond_2f

    iput-object v0, p0, Lgu;->a:Lfv;

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lgu;->a(Lfh;I)Lfv;

    move-result-object v0

    :cond_2f
    iget-object v2, p1, Lfh;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    if-eq v2, v1, :cond_41

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input vector too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    instance-of v1, v0, Lhn;

    if-nez v1, :cond_4d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    check-cast v0, Lhn;

    iget v1, v0, Lgb;->a:I

    if-ltz v1, :cond_56

    const/4 v2, 0x2

    if-le v1, v2, :cond_6b

    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid encoding value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    iput v1, p0, Lgu;->a:I

    iget-object v1, v0, Lgb;->a:Lfg;

    if-eqz v1, :cond_7a

    iget-object v0, v0, Lgb;->a:Lfg;

    invoke-interface {v0}, Lfg;->b()Lfv;

    move-result-object v0

    :goto_77
    iput-object v0, p0, Lgu;->b:Lfv;

    return-void

    :cond_7a
    const/4 v0, 0x0

    goto :goto_77

    :cond_7c
    move v1, v2

    goto :goto_15
.end method

.method private static a(Lfh;I)Lfv;
    .registers 4

    iget-object v0, p0, Lfh;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, p1, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few objects in input vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {p0, p1}, Lfh;->a(I)Lfg;

    move-result-object v0

    invoke-interface {v0}, Lfg;->b()Lfv;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lgu;->a()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method final a(Lfs;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lgu;->a:Lfp;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lgu;->a:Lfp;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lfp;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_14
    iget-object v1, p0, Lgu;->a:Lfm;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lgu;->a:Lfm;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lfm;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_23
    iget-object v1, p0, Lgu;->a:Lfv;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lgu;->a:Lfv;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lfv;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_32
    new-instance v1, Lhn;

    const/4 v2, 0x1

    iget v3, p0, Lgu;->a:I

    iget-object v4, p0, Lgu;->b:Lfv;

    invoke-direct {v1, v2, v3, v4}, Lhn;-><init>(ZILfg;)V

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lhn;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v1, 0x20

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lfs;->a(II[B)V

    return-void
.end method

.method final a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final a(Lfv;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lgu;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    if-ne p0, p1, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    check-cast p1, Lgu;

    iget-object v1, p0, Lgu;->a:Lfp;

    if-eqz v1, :cond_1e

    iget-object v1, p1, Lgu;->a:Lfp;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lgu;->a:Lfp;

    iget-object v2, p0, Lgu;->a:Lfp;

    invoke-virtual {v1, v2}, Lfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1e
    iget-object v1, p0, Lgu;->a:Lfm;

    if-eqz v1, :cond_30

    iget-object v1, p1, Lgu;->a:Lfm;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lgu;->a:Lfm;

    iget-object v2, p0, Lgu;->a:Lfm;

    invoke-virtual {v1, v2}, Lfm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_30
    iget-object v1, p0, Lgu;->a:Lfv;

    if-eqz v1, :cond_42

    iget-object v1, p1, Lgu;->a:Lfv;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lgu;->a:Lfv;

    iget-object v2, p0, Lgu;->a:Lfv;

    invoke-virtual {v1, v2}, Lfv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_42
    iget-object v0, p0, Lgu;->b:Lfv;

    iget-object v1, p1, Lgu;->b:Lfv;

    invoke-virtual {v0, v1}, Lfv;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lgu;->a:Lfp;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lgu;->a:Lfp;

    invoke-virtual {v0}, Lfp;->hashCode()I

    move-result v0

    :cond_b
    iget-object v1, p0, Lgu;->a:Lfm;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lgu;->a:Lfm;

    invoke-virtual {v1}, Lfm;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lgu;->a:Lfv;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lgu;->a:Lfv;

    invoke-virtual {v1}, Lfv;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_21
    iget-object v1, p0, Lgu;->b:Lfv;

    invoke-virtual {v1}, Lfv;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
