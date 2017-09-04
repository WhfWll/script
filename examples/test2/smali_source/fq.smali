.class public abstract Lfq;
.super Lfv;

# interfaces
.implements Lfr;


# instance fields
.field a:[B


# direct methods
.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Lfv;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lfq;->a:[B

    return-void
.end method


# virtual methods
.method public final a()Lfv;
    .registers 2

    invoke-virtual {p0}, Lfq;->b()Lfv;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lfq;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method final a(Lfv;)Z
    .registers 4

    instance-of v0, p1, Lfq;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    check-cast p1, Lfq;

    iget-object v0, p0, Lfq;->a:[B

    iget-object v1, p1, Lfq;->a:[B

    invoke-static {v0, v1}, Lat;->a([B[B)Z

    move-result v0

    goto :goto_5
.end method

.method public b()[B
    .registers 2

    iget-object v0, p0, Lfq;->a:[B

    return-object v0
.end method

.method final c()Lfv;
    .registers 3

    new-instance v0, Lhe;

    iget-object v1, p0, Lfq;->a:[B

    invoke-direct {v0, v1}, Lhe;-><init>([B)V

    return-object v0
.end method

.method final d()Lfv;
    .registers 3

    new-instance v0, Lhe;

    iget-object v1, p0, Lfq;->a:[B

    invoke-direct {v0, v1}, Lhe;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lfq;->b()[B

    move-result-object v0

    invoke-static {v0}, Lat;->a([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lfq;->a:[B

    invoke-static {v2}, Ljb;->a([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
