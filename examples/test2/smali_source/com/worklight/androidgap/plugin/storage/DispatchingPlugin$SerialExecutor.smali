.class Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;
.super Ljava/lang/Object;
.source "DispatchingPlugin.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialExecutor"
.end annotation


# instance fields
.field private currentRunnable:Ljava/lang/Runnable;

.field private dispatcherRunnables:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;

    const v1, 0x489

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->dispatcherRunnables:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 138
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$1;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;)V
    .registers 1
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->scheduleNextRunnable()V

    return-void
.end method

.method private native declared-synchronized scheduleNextRunnable()V
.end method


# virtual methods
.method public native execute(Ljava/lang/Runnable;)V
.end method
