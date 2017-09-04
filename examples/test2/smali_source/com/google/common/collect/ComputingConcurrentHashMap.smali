.class Lcom/google/common/collect/ComputingConcurrentHashMap;
.super Lcom/google/common/collect/CustomConcurrentHashMap;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMaker$Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ComputingConcurrentHashMap$1;,
        Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;,
        Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,
        Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;,
        Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;,
        Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference;,
        Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CustomConcurrentHashMap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/MapMaker$Cache",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field final computingFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/ComputingConcurrentHashMap;

    const v1, 0x1b4

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V
    .registers 4
    .param p1, "builder"    # Lcom/google/common/collect/MapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker;",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>;"
    .local p2, "computingFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;+TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    .line 51
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    iput-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->computingFunction:Lcom/google/common/base/Function;

    .line 52
    return-void
.end method


# virtual methods
.method public native apply(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public native asMap()Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
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

.method native segmentFor(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ComputingConcurrentHashMap",
            "<TK;TV;>.ComputingSegment;"
        }
    .end annotation
.end method

.method bridge synthetic segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 40
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object v0

    return-object v0
.end method

.method native writeReplace()Ljava/lang/Object;
.end method
