.class Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/MoreExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SameThreadExecutorService"
.end annotation


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private runningTasks:I

.field private shutdown:Z

.field private final termination:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;

    const v1, 0x3bc

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 228
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    .line 231
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->termination:Ljava/util/concurrent/locks/Condition;

    .line 240
    iput v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->runningTasks:I

    .line 241
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->shutdown:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/MoreExecutors$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/util/concurrent/MoreExecutors$1;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;-><init>()V

    return-void
.end method

.method private native endTask()V
.end method

.method private native startTask()V
.end method


# virtual methods
.method public native awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public native execute(Ljava/lang/Runnable;)V
.end method

.method public native isShutdown()Z
.end method

.method public native isTerminated()Z
.end method

.method public native shutdown()V
.end method

.method public native shutdownNow()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end method
