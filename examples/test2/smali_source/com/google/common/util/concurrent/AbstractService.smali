.class public abstract Lcom/google/common/util/concurrent/AbstractService;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractService$1;,
        Lcom/google/common/util/concurrent/AbstractService$Transition;
    }
.end annotation


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

.field private shutdownWhenStartupFinishes:Z

.field private final startup:Lcom/google/common/util/concurrent/AbstractService$Transition;

.field private state:Lcom/google/common/util/concurrent/Service$State;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 45
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;-><init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/AbstractService$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;

    .line 46
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;-><init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/AbstractService$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

    .line 52
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdownWhenStartupFinishes:Z

    .line 251
    return-void
.end method


# virtual methods
.method protected abstract doStart()V
.end method

.method protected abstract doStop()V
.end method

.method public final isRunning()Z
    .registers 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected final notifyFailed(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 207
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 211
    :try_start_8
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_29

    .line 212
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->setException(Ljava/lang/Throwable;)Z

    .line 213
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Service failed to start."

    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->setException(Ljava/lang/Throwable;)Z

    .line 219
    :cond_1f
    :goto_1f
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_35

    .line 221
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 223
    return-void

    .line 215
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_1f

    .line 216
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->setException(Ljava/lang/Throwable;)Z
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_35

    goto :goto_1f

    .line 221
    :catchall_35
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected final notifyStarted()V
    .registers 4

    .prologue
    .line 155
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 157
    :try_start_5
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v1, v2, :cond_30

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot notifyStarted() when the service is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "failure":Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    .line 161
    throw v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_29

    .line 171
    .end local v0    # "failure":Ljava/lang/IllegalStateException;
    :catchall_29
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 164
    :cond_30
    :try_start_30
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    .line 165
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdownWhenStartupFinishes:Z

    if-eqz v1, :cond_41

    .line 166
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->stop()Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_29

    .line 171
    :goto_3b
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 173
    return-void

    .line 168
    :cond_41
    :try_start_41
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_29

    goto :goto_3b
.end method

.method protected final notifyStopped()V
    .registers 4

    .prologue
    .line 184
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 186
    :try_start_5
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v1, v2, :cond_36

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v1, v2, :cond_36

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot notifyStopped() when the service is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "failure":Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    .line 190
    throw v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2f

    .line 196
    .end local v0    # "failure":Ljava/lang/IllegalStateException;
    :catchall_2f
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 193
    :cond_36
    :try_start_36
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    .line 194
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_2f

    .line 196
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 198
    return-void
.end method

.method public final start()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/util/concurrent/Service$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 89
    :try_start_5
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v1, v2, :cond_12

    .line 90
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    .line 91
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStart()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_12} :catch_1a
    .catchall {:try_start_5 .. :try_end_12} :catchall_24

    .line 97
    :cond_12
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 100
    :goto_17
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;

    return-object v1

    .line 93
    :catch_1a
    move-exception v0

    .line 95
    .local v0, "startupFailure":Ljava/lang/Throwable;
    :try_start_1b
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_24

    .line 97
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_17

    .end local v0    # "startupFailure":Ljava/lang/Throwable;
    :catchall_24
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public startAndWait()Lcom/google/common/util/concurrent/Service$State;
    .registers 3

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->makeUninterruptible(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/UninterruptibleFuture;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/util/concurrent/UninterruptibleFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service$State;
    :try_end_e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v1

    .line 132
    :catch_f
    move-exception v0

    .line 133
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final state()Lcom/google/common/util/concurrent/Service$State;
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 234
    :try_start_5
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdownWhenStartupFinishes:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_17

    .line 235
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_1f

    .line 240
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_16
    return-object v0

    .line 237
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_1f

    .line 240
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_16

    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final stop()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/util/concurrent/Service$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 107
    :try_start_5
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v1, v2, :cond_25

    .line 108
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    .line 109
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1d} :catch_36
    .catchall {:try_start_5 .. :try_end_1d} :catchall_4e

    .line 122
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 125
    :goto_22
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

    return-object v1

    .line 111
    :cond_25
    :try_start_25
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v1, v2, :cond_40

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdownWhenStartupFinishes:Z

    .line 113
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_35} :catch_36
    .catchall {:try_start_25 .. :try_end_35} :catchall_4e

    goto :goto_1d

    .line 118
    :catch_36
    move-exception v0

    .line 120
    .local v0, "shutdownFailure":Ljava/lang/Throwable;
    :try_start_37
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_4e

    .line 122
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_22

    .line 114
    .end local v0    # "shutdownFailure":Ljava/lang/Throwable;
    :cond_40
    :try_start_40
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v1, v2, :cond_1d

    .line 115
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/util/concurrent/Service$State;

    .line 116
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStop()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_4d} :catch_36
    .catchall {:try_start_40 .. :try_end_4d} :catchall_4e

    goto :goto_1d

    .line 122
    :catchall_4e
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public stopAndWait()Lcom/google/common/util/concurrent/Service$State;
    .registers 3

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->stop()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->makeUninterruptible(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/UninterruptibleFuture;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/util/concurrent/UninterruptibleFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service$State;
    :try_end_e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v1

    .line 141
    :catch_f
    move-exception v0

    .line 142
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
