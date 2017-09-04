.class public abstract Lfo;
.super Ljava/lang/Object;

# interfaces
.implements Lfg;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lfs;

    invoke-direct {v1, v0}, Lfs;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Lfs;->a(Lfg;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lhg;

    invoke-direct {v1, v0}, Lhg;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Lhg;->a(Lfg;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    const-string v0, "DL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lhs;

    invoke-direct {v1, v0}, Lhs;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Lhs;->a(Lfg;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_19

    :cond_34
    invoke-virtual {p0}, Lfo;->a()[B

    move-result-object v0

    goto :goto_19
.end method

.method public abstract b()Lfv;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    .end local p1    # "o":Ljava/lang/Object;
    :goto_3
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Lfg;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    check-cast p1, Lfg;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lfo;->b()Lfv;

    move-result-object v0

    invoke-interface {p1}, Lfg;->b()Lfv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfv;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lfo;->b()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->hashCode()I

    move-result v0

    return v0
.end method
