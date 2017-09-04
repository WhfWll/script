.class Lcom/lidroid/xutils/task/Node;
.super Ljava/lang/Object;
.source "PriorityObjectBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field next:Lcom/lidroid/xutils/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field private value:Lcom/lidroid/xutils/task/PriorityObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/PriorityObject",
            "<*>;"
        }
    .end annotation
.end field

.field private valueAsT:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 613
    .local p0, "this":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/xutils/task/Node;->valueAsT:Z

    .line 614
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/task/Node;->setValue(Ljava/lang/Object;)V

    .line 615
    return-void
.end method


# virtual methods
.method public getPriority()Lcom/lidroid/xutils/task/Priority;
    .registers 2

    .prologue
    .line 618
    .local p0, "this":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/Node;->value:Lcom/lidroid/xutils/task/PriorityObject;

    iget-object v0, v0, Lcom/lidroid/xutils/task/PriorityObject;->priority:Lcom/lidroid/xutils/task/Priority;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 623
    .local p0, "this":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/Node;->value:Lcom/lidroid/xutils/task/PriorityObject;

    if-nez v0, :cond_6

    .line 624
    const/4 v0, 0x0

    .line 628
    :goto_5
    return-object v0

    .line 625
    :cond_6
    iget-boolean v0, p0, Lcom/lidroid/xutils/task/Node;->valueAsT:Z

    if-eqz v0, :cond_d

    .line 626
    iget-object v0, p0, Lcom/lidroid/xutils/task/Node;->value:Lcom/lidroid/xutils/task/PriorityObject;

    goto :goto_5

    .line 628
    :cond_d
    iget-object v0, p0, Lcom/lidroid/xutils/task/Node;->value:Lcom/lidroid/xutils/task/PriorityObject;

    iget-object v0, v0, Lcom/lidroid/xutils/task/PriorityObject;->obj:Ljava/lang/Object;

    goto :goto_5
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 633
    .local p0, "this":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_6

    .line 634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/task/Node;->value:Lcom/lidroid/xutils/task/PriorityObject;

    .line 641
    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    :goto_5
    return-void

    .line 635
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_6
    instance-of v0, p1, Lcom/lidroid/xutils/task/PriorityObject;

    if-eqz v0, :cond_12

    .line 636
    check-cast p1, Lcom/lidroid/xutils/task/PriorityObject;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/lidroid/xutils/task/Node;->value:Lcom/lidroid/xutils/task/PriorityObject;

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/task/Node;->valueAsT:Z

    goto :goto_5

    .line 639
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_12
    new-instance v0, Lcom/lidroid/xutils/task/PriorityObject;

    sget-object v1, Lcom/lidroid/xutils/task/Priority;->DEFAULT:Lcom/lidroid/xutils/task/Priority;

    invoke-direct {v0, v1, p1}, Lcom/lidroid/xutils/task/PriorityObject;-><init>(Lcom/lidroid/xutils/task/Priority;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lidroid/xutils/task/Node;->value:Lcom/lidroid/xutils/task/PriorityObject;

    goto :goto_5
.end method
