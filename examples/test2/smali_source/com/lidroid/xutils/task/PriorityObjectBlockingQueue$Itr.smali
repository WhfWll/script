.class Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "PriorityObjectBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private current:Lcom/lidroid/xutils/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private currentElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:Lcom/lidroid/xutils/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;


# direct methods
.method constructor <init>(Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;)V
    .registers 3

    .prologue
    .line 502
    iput-object p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    invoke-virtual {p1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 505
    :try_start_8
    iget-object v0, p1, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    .line 506
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    if-eqz v0, :cond_1a

    .line 507
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    invoke-virtual {v0}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1e

    .line 509
    :cond_1a
    invoke-virtual {p1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 511
    return-void

    .line 508
    :catchall_1e
    move-exception v0

    .line 509
    invoke-virtual {p1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 510
    throw v0
.end method

.method private nextNode(Lcom/lidroid/xutils/task/Node;)Lcom/lidroid/xutils/task/Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/task/Node",
            "<TE;>;)",
            "Lcom/lidroid/xutils/task/Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 519
    .local p1, "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :goto_0
    iget-object v0, p1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    .line 520
    .local v0, "s":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    if-ne v0, p1, :cond_b

    .line 521
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    iget-object v1, v1, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v0, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    .line 523
    .end local v0    # "s":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :cond_a
    return-object v0

    .line 522
    .restart local v0    # "s":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :cond_b
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    .line 524
    move-object p1, v0

    .line 518
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 529
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 531
    :try_start_5
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    if-nez v1, :cond_16

    .line 532
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_f

    .line 538
    :catchall_f
    move-exception v1

    .line 539
    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v2}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 540
    throw v1

    .line 533
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->currentElement:Ljava/lang/Object;

    .line 534
    .local v0, "x":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    iput-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->lastRet:Lcom/lidroid/xutils/task/Node;

    .line 535
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    invoke-direct {p0, v1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->nextNode(Lcom/lidroid/xutils/task/Node;)Lcom/lidroid/xutils/task/Node;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    .line 536
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    if-nez v1, :cond_31

    const/4 v1, 0x0

    :goto_29
    iput-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_f

    .line 539
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 537
    return-object v0

    .line 536
    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    invoke-virtual {v1}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_f

    move-result-object v1

    goto :goto_29
.end method

.method public remove()V
    .registers 6

    .prologue
    .line 544
    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->lastRet:Lcom/lidroid/xutils/task/Node;

    if-nez v3, :cond_a

    .line 545
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 546
    :cond_a
    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v3}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 548
    :try_start_f
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->lastRet:Lcom/lidroid/xutils/task/Node;

    .line 549
    .local v0, "node":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->lastRet:Lcom/lidroid/xutils/task/Node;

    .line 550
    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    iget-object v2, v3, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    .local v2, "trail":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    iget-object v1, v2, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_2a

    .line 551
    .local v1, "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :goto_1a
    if-nez v1, :cond_22

    .line 559
    :goto_1c
    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v3}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 561
    return-void

    .line 553
    :cond_22
    if-ne v1, v0, :cond_31

    .line 554
    :try_start_24
    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v3, v1, v2}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->unlink(Lcom/lidroid/xutils/task/Node;Lcom/lidroid/xutils/task/Node;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2a

    goto :goto_1c

    .line 558
    .end local v0    # "node":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .end local v1    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .end local v2    # "trail":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :catchall_2a
    move-exception v3

    .line 559
    iget-object v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v4}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 560
    throw v3

    .line 552
    .restart local v0    # "node":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .restart local v1    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .restart local v2    # "trail":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :cond_31
    move-object v2, v1

    :try_start_32
    iget-object v1, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_2a

    goto :goto_1a
.end method
