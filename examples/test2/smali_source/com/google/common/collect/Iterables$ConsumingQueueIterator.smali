.class Lcom/google/common/collect/Iterables$ConsumingQueueIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConsumingQueueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;

    const v1, 0x244

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Queue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 918
    .local p0, "this":Lcom/google/common/collect/Iterables$ConsumingQueueIterator;, "Lcom/google/common/collect/Iterables$ConsumingQueueIterator<TT;>;"
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 919
    iput-object p1, p0, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;->queue:Ljava/util/Queue;

    .line 920
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Queue;Lcom/google/common/collect/Iterables$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/Queue;
    .param p2, "x1"    # Lcom/google/common/collect/Iterables$1;

    .prologue
    .line 915
    .local p0, "this":Lcom/google/common/collect/Iterables$ConsumingQueueIterator;, "Lcom/google/common/collect/Iterables$ConsumingQueueIterator<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;-><init>(Ljava/util/Queue;)V

    return-void
.end method


# virtual methods
.method public native computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
