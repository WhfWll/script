.class final Lcom/google/common/io/ByteStreams$2;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/ByteStreams;->getChecksum(Lcom/google/common/io/InputSupplier;Ljava/util/zip/Checksum;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/ByteProcessor",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$checksum:Ljava/util/zip/Checksum;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/io/ByteStreams$2;

    const v1, 0x366

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Ljava/util/zip/Checksum;)V
    .registers 2

    .prologue
    .line 708
    iput-object p1, p0, Lcom/google/common/io/ByteStreams$2;->val$checksum:Ljava/util/zip/Checksum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getResult()Ljava/lang/Long;
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/google/common/io/ByteStreams$2;->getResult()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public native processBytes([BII)Z
.end method
