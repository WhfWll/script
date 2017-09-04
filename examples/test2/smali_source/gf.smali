.class public final Lgf;
.super Lfq;


# instance fields
.field a:[Lfq;


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Lfq;-><init>([B)V

    return-void
.end method

.method public constructor <init>([Lfq;)V
    .registers 3

    invoke-static {p1}, Lgf;->a([Lfq;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lfq;-><init>([B)V

    iput-object p1, p0, Lgf;->a:[Lfq;

    return-void
.end method

.method private static a([Lfq;)[B
    .registers 5

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    array-length v0, p0

    if-eq v1, v0, :cond_57

    :try_start_a
    aget-object v0, p0, v1

    check-cast v0, Lhe;

    invoke-virtual {v0}, Lhe;->b()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_15} :catch_19
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_15} :catch_3d

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :catch_19
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found in input should only contain DEROctetString"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3d
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception converting octets "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_57
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lgf;->a()Ljava/util/Enumeration;

    move-result-object v2

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfg;

    invoke-interface {v0}, Lfg;->b()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_6

    :cond_1d
    add-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final a()Ljava/util/Enumeration;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lgf;->a:[Lfq;

    if-nez v0, :cond_36

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v0, v1

    :goto_b
    iget-object v2, p0, Lgf;->a:[B

    array-length v2, v2

    if-ge v0, v2, :cond_31

    add-int/lit16 v2, v0, 0x3e8

    iget-object v4, p0, Lgf;->a:[B

    array-length v4, v4

    if-le v2, v4, :cond_2e

    iget-object v2, p0, Lgf;->a:[B

    array-length v2, v2

    :goto_1a
    sub-int/2addr v2, v0

    new-array v2, v2, [B

    iget-object v4, p0, Lgf;->a:[B

    array-length v5, v2

    invoke-static {v4, v0, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lhe;

    invoke-direct {v4, v2}, Lhe;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_b

    :cond_2e
    add-int/lit16 v2, v0, 0x3e8

    goto :goto_1a

    :cond_31
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_35
    return-object v0

    :cond_36
    new-instance v0, Lgg;

    invoke-direct {v0, p0}, Lgg;-><init>(Lgf;)V

    goto :goto_35
.end method

.method public final a(Lfs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Lfs;->b(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lfs;->b(I)V

    invoke-virtual {p0}, Lgf;->a()Ljava/util/Enumeration;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfg;

    invoke-virtual {p1, v0}, Lfs;->a(Lfg;)V

    goto :goto_f

    :cond_1f
    invoke-virtual {p1, v2}, Lfs;->b(I)V

    invoke-virtual {p1, v2}, Lfs;->b(I)V

    return-void
.end method

.method final a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final b()[B
    .registers 2

    iget-object v0, p0, Lgf;->a:[B

    return-object v0
.end method
