.class Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/ByteArrayDataInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayDataInputStream"
.end annotation


# instance fields
.field final input:Ljava/io/DataInput;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;

    const v1, 0x36a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    .line 259
    return-void
.end method

.method constructor <init>([BI)V
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "start"    # I

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-direct {v1, p1, p2, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;->input:Ljava/io/DataInput;

    .line 264
    return-void
.end method


# virtual methods
.method public native readBoolean()Z
.end method

.method public native readByte()B
.end method

.method public native readChar()C
.end method

.method public native readDouble()D
.end method

.method public native readFloat()F
.end method

.method public native readFully([B)V
.end method

.method public native readFully([BII)V
.end method

.method public native readInt()I
.end method

.method public native readLine()Ljava/lang/String;
.end method

.method public native readLong()J
.end method

.method public native readShort()S
.end method

.method public native readUTF()Ljava/lang/String;
.end method

.method public native readUnsignedByte()I
.end method

.method public native readUnsignedShort()I
.end method

.method public native skipBytes(I)I
.end method
