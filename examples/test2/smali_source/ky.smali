.class public final Lky;
.super Lkp;


# direct methods
.method public constructor <init>(Llc;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lkp;-><init>(B)V

    invoke-virtual {p1}, Llc;->c()I

    move-result v0

    iput v0, p0, Lky;->b:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lkp;-><init>(B)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lky;->b:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    return-void
.end method


# virtual methods
.method protected final b_()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    invoke-virtual {p0}, Lky;->d()[B

    move-result-object v0

    return-object v0
.end method
