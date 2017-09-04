.class final Lcom/google/common/io/ByteStreams$3;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/ByteStreams;->getDigest(Lcom/google/common/io/InputSupplier;Ljava/security/MessageDigest;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/ByteProcessor",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic val$md:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/io/ByteStreams$3;

    const v1, 0x367

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Ljava/security/MessageDigest;)V
    .registers 2

    .prologue
    .line 736
    iput-object p1, p0, Lcom/google/common/io/ByteStreams$3;->val$md:Ljava/security/MessageDigest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/google/common/io/ByteStreams$3;->getResult()[B

    move-result-object v0

    return-object v0
.end method

.method public native getResult()[B
.end method

.method public native processBytes([BII)Z
.end method
