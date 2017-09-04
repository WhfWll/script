.class Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;
.super Lcom/google/common/util/concurrent/AbstractCheckedFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MappingCheckedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractCheckedFuture",
        "<TV;TX;>;"
    }
.end annotation


# instance fields
.field final mapper:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/Exception;",
            "TX;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;

    const v1, 0x3b8

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/Exception;",
            "TX;>;)V"
        }
    .end annotation

    .prologue
    .line 781
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;, "Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture<TV;TX;>;"
    .local p1, "delegate":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    .local p2, "mapper":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Ljava/lang/Exception;TX;>;"
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 783
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;->mapper:Lcom/google/common/base/Function;

    .line 784
    return-void
.end method


# virtual methods
.method protected native mapException(Ljava/lang/Exception;)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")TX;"
        }
    .end annotation
.end method
