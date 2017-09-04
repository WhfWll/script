.class Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/ByteArrayDataOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayDataOutputStream"
.end annotation


# instance fields
.field final byteArrayOutputSteam:Ljava/io/ByteArrayOutputStream;

.field final output:Ljava/io/DataOutput;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;

    const v1, 0x36b

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 415
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 416
    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 419
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 420
    return-void
.end method

.method constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .registers 3
    .param p1, "byteArrayOutputSteam"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p1, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->byteArrayOutputSteam:Ljava/io/ByteArrayOutputStream;

    .line 424
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    .line 425
    return-void
.end method


# virtual methods
.method public native toByteArray()[B
.end method

.method public native write(I)V
.end method

.method public native write([B)V
.end method

.method public native write([BII)V
.end method

.method public native writeBoolean(Z)V
.end method

.method public native writeByte(I)V
.end method

.method public native writeBytes(Ljava/lang/String;)V
.end method

.method public native writeChar(I)V
.end method

.method public native writeChars(Ljava/lang/String;)V
.end method

.method public native writeDouble(D)V
.end method

.method public native writeFloat(F)V
.end method

.method public native writeInt(I)V
.end method

.method public native writeLong(J)V
.end method

.method public native writeShort(I)V
.end method

.method public native writeUTF(Ljava/lang/String;)V
.end method
