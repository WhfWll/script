.class final Lcom/tencent/mm/sdk/b/e;
.super Landroid/os/Handler;

# interfaces
.implements Lcom/tencent/mm/sdk/b/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/sdk/b/e$a;
    }
.end annotation


# instance fields
.field private aN:Landroid/os/Looper;

.field private aO:Landroid/os/Handler$Callback;

.field aP:Lcom/tencent/mm/sdk/b/e$a;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/b/e$a;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0}, Lcom/tencent/mm/sdk/b/e;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/b/e;->aN:Landroid/os/Looper;

    iput-object p2, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    return-void
.end method

.method constructor <init>(Lcom/tencent/mm/sdk/b/e$a;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/sdk/b/e;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/b/e;->aN:Landroid/os/Looper;

    iput-object p1, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Runnable;Lcom/tencent/mm/sdk/b/g;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mm/sdk/b/e$a;->b(Ljava/lang/Runnable;Lcom/tencent/mm/sdk/b/g;)V

    :cond_9
    return-void
.end method

.method public final dispatchMessage(Landroid/os/Message;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/sdk/b/e;->aO:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_e

    :cond_a
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    invoke-virtual {p0, p1}, Lcom/tencent/mm/sdk/b/e;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/mm/sdk/b/e;->aN:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    goto :goto_d
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method public final sendMessageAtTime(Landroid/os/Message;J)Z
    .registers 12

    const-string v1, "msg is null"

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v3

    if-nez v3, :cond_15

    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_5

    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v6, p2, v0

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_78

    move-object v2, p0

    :goto_22
    new-instance v0, Lcom/tencent/mm/sdk/b/g;

    iget-object v1, p0, Lcom/tencent/mm/sdk/b/e;->aN:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/sdk/b/g;-><init>(Ljava/lang/Thread;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;Lcom/tencent/mm/sdk/b/g$a;)V

    const-wide/16 v4, 0x0

    cmp-long v1, v6, v4

    if-lez v1, :cond_38

    iput-wide v6, v0, Lcom/tencent/mm/sdk/b/g;->aY:J

    :cond_38
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    iget-object v2, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    invoke-interface {v2, v3, v0}, Lcom/tencent/mm/sdk/b/e$a;->a(Ljava/lang/Runnable;Lcom/tencent/mm/sdk/b/g;)V

    :cond_67
    invoke-super {p0, v1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v1

    if-nez v1, :cond_76

    iget-object v2, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    if-eqz v2, :cond_76

    iget-object v2, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    invoke-interface {v2, v3, v0}, Lcom/tencent/mm/sdk/b/e$a;->b(Ljava/lang/Runnable;Lcom/tencent/mm/sdk/b/g;)V

    :cond_76
    move v0, v1

    goto :goto_12

    :cond_78
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    goto :goto_22
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MMInnerHandler{listener = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
