.class final Lcom/google/common/io/ByteStreams$4;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/ByteStreams;->slice(Lcom/google/common/io/InputSupplier;JJ)Lcom/google/common/io/InputSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/InputSupplier",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$length:J

.field final synthetic val$offset:J

.field final synthetic val$supplier:Lcom/google/common/io/InputSupplier;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/io/ByteStreams$4;

    const v1, 0x368

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/io/InputSupplier;JJ)V
    .registers 6

    .prologue
    .line 808
    iput-object p1, p0, Lcom/google/common/io/ByteStreams$4;->val$supplier:Lcom/google/common/io/InputSupplier;

    iput-wide p2, p0, Lcom/google/common/io/ByteStreams$4;->val$offset:J

    iput-wide p4, p0, Lcom/google/common/io/ByteStreams$4;->val$length:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getInput()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic getInput()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/google/common/io/ByteStreams$4;->getInput()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
