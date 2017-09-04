.class Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;
    }
.end annotation


# instance fields
.field final cleanupQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final cleanupRunnable:Ljava/lang/Runnable;

.field volatile count:I

.field final evictionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final expirationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final maxSegmentSize:I

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final recencyQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

.field threshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    const v1, 0x1ae

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;II)V
    .registers 5
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I

    .prologue
    .line 2013
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1981
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->cleanupQueue:Ljava/util/Queue;

    .line 1996
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2830
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$1;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->cleanupRunnable:Ljava/lang/Runnable;

    .line 2014
    iput p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->maxSegmentSize:I

    .line 2015
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2017
    invoke-virtual {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->evictsBySize()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_2f
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_34
    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->recencyQueue:Ljava/util/Queue;

    .line 2021
    invoke-virtual {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V

    :goto_41
    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->evictionQueue:Ljava/util/Queue;

    .line 2025
    invoke-virtual {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->expires()Z

    move-result v0

    if-eqz v0, :cond_5b

    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V

    :goto_4e
    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->expirationQueue:Ljava/util/Queue;

    .line 2028
    return-void

    .line 2017
    :cond_51
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_34

    .line 2021
    :cond_56
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_41

    .line 2025
    :cond_5b
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_4e
.end method


# virtual methods
.method native clear()V
.end method

.method native clearValue(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation
.end method

.method native containsKey(Ljava/lang/Object;I)Z
.end method

.method native containsValue(Ljava/lang/Object;)Z
.end method

.method native drainRecencyQueue()V
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method native enqueueCleanup(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method native evictEntries()Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method native expand()V
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method native expireEntries()V
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method native get(Ljava/lang/Object;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation
.end method

.method native getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method native getFirst(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method native getLiveValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation
.end method

.method native initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation
.end method

.method native newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method native postReadCleanup()V
.end method

.method native postWriteCleanup()V
.end method

.method native preWriteCleanup()V
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method native processPendingCleanup()V
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method native put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation
.end method

.method native recordExpirationTime(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation
.end method

.method native recordLockedRead(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method native recordRead(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation
.end method

.method native recordWrite(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method native remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation
.end method

.method native remove(Ljava/lang/Object;ILjava/lang/Object;)Z
.end method

.method native removeFromChain(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method native replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation
.end method

.method native replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation
.end method

.method native runCleanup()V
.end method

.method native runLockedCleanup()V
.end method

.method native runUnlockedCleanup()V
.end method

.method native setValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method native tryExpireEntries()V
.end method

.method native unsetEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method native unsetKey(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation
.end method

.method native unsetLiveEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method native unsetValue(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation
.end method
