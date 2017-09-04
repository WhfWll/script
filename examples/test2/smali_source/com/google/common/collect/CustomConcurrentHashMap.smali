.class Lcom/google/common/collect/CustomConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;,
        Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;,
        Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Values;,
        Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;,
        Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;,
        Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$ValueIterator;,
        Lcom/google/common/collect/CustomConcurrentHashMap$KeyIterator;,
        Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Segment;,
        Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;,
        Lcom/google/common/collect/CustomConcurrentHashMap$SoftValueReference;,
        Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference;,
        Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$WeakEvictableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$QueueHolder;,
        Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;,
        Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CLEANUP_MAX:I = 0x10

.field static final DISCARDING_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<**>;>;"
        }
    .end annotation
.end field

.field static final DRAIN_THRESHOLD:I = 0x3f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final UNSET:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final cleanupExecutor:Ljava/util/concurrent/Executor;

.field final concurrencyLevel:I

.field final transient entryFactory:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final evictionListener:Lcom/google/common/collect/MapEvictionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapEvictionListener",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field final evictionNotificationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

.field final maximumSize:I

.field final transient segmentMask:I

.field final transient segmentShift:I

.field final transient segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation
.end field

.field final ticker:Lcom/google/common/base/Ticker;

.field final valueEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/CustomConcurrentHashMap;

    const v1, 0x1b3

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 804
    .line 0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$1;

    invoke-direct {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->UNSET:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$2;

    invoke-direct {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$2;-><init>()V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .registers 13
    .param p1, "builder"    # Lcom/google/common/collect/MapMaker;

    .prologue
    .line 201
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 202
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getConcurrencyLevel()I

    move-result v8

    const/high16 v9, 0x10000

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->concurrencyLevel:I

    .line 204
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getKeyStrength()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    .line 205
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getValueStrength()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->valueStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    .line 207
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getKeyEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 208
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getValueEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 210
    iget v8, p1, Lcom/google/common/collect/MapMaker;->maximumSize:I

    iput v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->maximumSize:I

    .line 211
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getExpireAfterAccessNanos()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->expireAfterAccessNanos:J

    .line 212
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getExpireAfterWriteNanos()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->expireAfterWriteNanos:J

    .line 214
    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->expires()Z

    move-result v9

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->evictsBySize()Z

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->getFactory(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;ZZ)Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->entryFactory:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 216
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getCleanupExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->cleanupExecutor:Ljava/util/concurrent/Executor;

    .line 217
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getTicker()Lcom/google/common/base/Ticker;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->ticker:Lcom/google/common/base/Ticker;

    .line 219
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getEvictionListener()Lcom/google/common/collect/MapEvictionListener;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->evictionListener:Lcom/google/common/collect/MapEvictionListener;

    .line 220
    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->evictionListener:Lcom/google/common/collect/MapEvictionListener;

    sget-object v9, Lcom/google/common/collect/MapMaker$NullListener;->INSTANCE:Lcom/google/common/collect/MapMaker$NullListener;

    if-ne v8, v9, :cond_92

    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v8

    :goto_63
    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->evictionNotificationQueue:Ljava/util/Queue;

    .line 224
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getInitialCapacity()I

    move-result v8

    const/high16 v9, 0x40000000

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 226
    .local v1, "initialCapacity":I
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->evictsBySize()Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 227
    iget v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->maximumSize:I

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 233
    :cond_7b
    const/4 v6, 0x0

    .line 234
    .local v6, "segmentShift":I
    const/4 v5, 0x1

    .line 236
    .local v5, "segmentCount":I
    :goto_7d
    iget v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->concurrencyLevel:I

    if-ge v5, v8, :cond_98

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->evictsBySize()Z

    move-result v8

    if-eqz v8, :cond_8d

    mul-int/lit8 v8, v5, 0x2

    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->maximumSize:I

    if-gt v8, v9, :cond_98

    .line 237
    :cond_8d
    add-int/lit8 v6, v6, 0x1

    .line 238
    shl-int/lit8 v5, v5, 0x1

    goto :goto_7d

    .line 220
    .end local v1    # "initialCapacity":I
    .end local v5    # "segmentCount":I
    .end local v6    # "segmentShift":I
    :cond_92
    new-instance v8, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_63

    .line 240
    .restart local v1    # "initialCapacity":I
    .restart local v5    # "segmentCount":I
    .restart local v6    # "segmentShift":I
    :cond_98
    rsub-int/lit8 v8, v6, 0x20

    iput v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentShift:I

    .line 241
    add-int/lit8 v8, v5, -0x1

    iput v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentMask:I

    .line 243
    invoke-virtual {p0, v5}, Lcom/google/common/collect/CustomConcurrentHashMap;->newSegmentArray(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    .line 245
    div-int v4, v1, v5

    .line 246
    .local v4, "segmentCapacity":I
    mul-int v8, v4, v5

    if-ge v8, v1, :cond_ae

    .line 247
    add-int/lit8 v4, v4, 0x1

    .line 250
    :cond_ae
    const/4 v7, 0x1

    .line 251
    .local v7, "segmentSize":I
    :goto_af
    if-ge v7, v4, :cond_b4

    .line 252
    shl-int/lit8 v7, v7, 0x1

    goto :goto_af

    .line 255
    :cond_b4
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->evictsBySize()Z

    move-result v8

    if-eqz v8, :cond_d8

    .line 257
    iget v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->maximumSize:I

    div-int/2addr v8, v5

    add-int/lit8 v2, v8, 0x1

    .line 258
    .local v2, "maximumSegmentSize":I
    iget v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->maximumSize:I

    rem-int v3, v8, v5

    .line 259
    .local v3, "remainder":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c4
    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    array-length v8, v8

    if-ge v0, v8, :cond_ea

    .line 260
    if-ne v0, v3, :cond_cd

    .line 261
    add-int/lit8 v2, v2, -0x1

    .line 263
    :cond_cd
    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-virtual {p0, v7, v2}, Lcom/google/common/collect/CustomConcurrentHashMap;->createSegment(II)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v9

    aput-object v9, v8, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_c4

    .line 266
    .end local v0    # "i":I
    .end local v2    # "maximumSegmentSize":I
    .end local v3    # "remainder":I
    :cond_d8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_d9
    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    array-length v8, v8

    if-ge v0, v8, :cond_ea

    .line 267
    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    const/4 v9, -0x1

    invoke-virtual {p0, v7, v9}, Lcom/google/common/collect/CustomConcurrentHashMap;->createSegment(II)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v9

    aput-object v9, v8, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_d9

    .line 271
    :cond_ea
    return-void
.end method

.method static native connectEvictables(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method static native connectExpirables(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method static native discardingQueue()Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation
.end method

.method static native nullEntry()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method static native nullifyEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method static native nullifyExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method private static native rehash(I)I
.end method

.method static native unset()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end method


# virtual methods
.method public native clear()V
.end method

.method public native containsKey(Ljava/lang/Object;)Z
.end method

.method public native containsValue(Ljava/lang/Object;)Z
.end method

.method native copyEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
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

.method native createSegment(II)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation
.end method

.method native enqueueNotification(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation
.end method

.method public native entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method native evictsBySize()Z
.end method

.method native expires()Z
.end method

.method native expiresAfterAccess()Z
.end method

.method native expiresAfterWrite()Z
.end method

.method public native get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method native getEntry(Ljava/lang/Object;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method native hash(Ljava/lang/Object;)I
.end method

.method native isCollected(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation
.end method

.method public native isEmpty()Z
.end method

.method native isExpired(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation
.end method

.method native isExpired(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;J)Z"
        }
    .end annotation
.end method

.method native isInlineCleanup()Z
.end method

.method native isLive(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation
.end method

.method native isUnset(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation
.end method

.method native isUnset(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation
.end method

.method public native keySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end method

.method native newEntry(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .param p3    # Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
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

.method final native newSegmentArray(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation
.end method

.method native newValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;TV;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end method

.method native processPendingNotifications()V
.end method

.method public native put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation
.end method

.method public native putAll(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation
.end method

.method public native putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation
.end method

.method native reclaimKey(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation
.end method

.method native reclaimValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation
.end method

.method public native remove(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public native remove(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public native replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation
.end method

.method public native replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation
.end method

.method native segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation
.end method

.method public native size()I
.end method

.method public native values()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end method

.method native writeReplace()Ljava/lang/Object;
.end method
