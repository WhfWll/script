.class final Lcom/google/common/io/CharStreams$3;
.super Ljava/lang/Object;
.source "CharStreams.java"

# interfaces
.implements Lcom/google/common/io/OutputSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/CharStreams;->newWriterSupplier(Lcom/google/common/io/OutputSupplier;Ljava/nio/charset/Charset;)Lcom/google/common/io/OutputSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/OutputSupplier",
        "<",
        "Ljava/io/OutputStreamWriter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$charset:Ljava/nio/charset/Charset;

.field final synthetic val$out:Lcom/google/common/io/OutputSupplier;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/io/CharStreams$3;

    const v1, 0x36f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/io/OutputSupplier;Ljava/nio/charset/Charset;)V
    .registers 3

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/common/io/CharStreams$3;->val$out:Lcom/google/common/io/OutputSupplier;

    iput-object p2, p0, Lcom/google/common/io/CharStreams$3;->val$charset:Ljava/nio/charset/Charset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getOutput()Ljava/io/OutputStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic getOutput()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/common/io/CharStreams$3;->getOutput()Ljava/io/OutputStreamWriter;

    move-result-object v0

    return-object v0
.end method
