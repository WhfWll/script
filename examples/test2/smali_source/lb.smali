.class public final Llb;
.super Lkv;


# direct methods
.method public constructor <init>(Lla;)V
    .registers 3

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lkv;-><init>(B)V

    invoke-virtual {p1}, Lla;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Llb;->a(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lkv;-><init>(B)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Llb;->b:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    return-void
.end method


# virtual methods
.method protected final a()B
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method protected final b_()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    invoke-virtual {p0}, Llb;->d()[B

    move-result-object v0

    return-object v0
.end method
