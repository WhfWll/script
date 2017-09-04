.class Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;
.super Lcom/google/common/util/concurrent/ForwardingFuture;
.source "Futures.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenableFutureAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/ForwardingFuture",
        "<TV;>;",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final defaultAdapterExecutor:Ljava/util/concurrent/Executor;

.field private static final threadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final adapterExecutor:Ljava/util/concurrent/Executor;

.field private final delegate:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final executionList:Lcom/google/common/util/concurrent/ExecutionList;

.field private final hasListeners:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;

    const v1, 0x3b7

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    const-string v1, "ListenableFutureAdapter-thread-%d"

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    .line 809
    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    sget-object v0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->defaultAdapterExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Future;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 825
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;, "Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter<TV;>;"
    .local p1, "delegate":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    sget-object v0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->defaultAdapterExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V

    .line 826
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p2, "adapterExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 828
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;, "Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter<TV;>;"
    .local p1, "delegate":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;-><init>()V

    .line 815
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionList;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ExecutionList;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->executionList:Lcom/google/common/util/concurrent/ExecutionList;

    .line 819
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->hasListeners:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 829
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->delegate:Ljava/util/concurrent/Future;

    .line 830
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->adapterExecutor:Ljava/util/concurrent/Executor;

    .line 831
    return-void
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;)Ljava/util/concurrent/Future;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->delegate:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;)Lcom/google/common/util/concurrent/ExecutionList;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->executionList:Lcom/google/common/util/concurrent/ExecutionList;

    return-object v0
.end method


# virtual methods
.method public native addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 802
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;, "Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected native delegate()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation
.end method
