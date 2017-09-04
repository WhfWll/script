.class Lcom/google/common/util/concurrent/AbstractService$Transition;
.super Lcom/google/common/util/concurrent/AbstractListenableFuture;
.source "AbstractService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/AbstractListenableFuture",
        "<",
        "Lcom/google/common/util/concurrent/Service$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/util/concurrent/AbstractService$Transition;

    const v1, 0x3a9

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/util/concurrent/AbstractService;)V
    .registers 2

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractListenableFuture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/AbstractService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/util/concurrent/AbstractService;
    .param p2, "x1"    # Lcom/google/common/util/concurrent/AbstractService$1;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AbstractService$Transition;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    return-void
.end method


# virtual methods
.method public native get(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/Service$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractService$Transition;->get(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method
