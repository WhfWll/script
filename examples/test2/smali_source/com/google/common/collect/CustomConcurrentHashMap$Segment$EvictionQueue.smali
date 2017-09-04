.class Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;
.super Ljava/util/AbstractQueue;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EvictionQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractQueue",
        "<",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;

    const v1, 0x1c9

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V
    .registers 3

    .prologue
    .line 2903
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->this$1:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 2906
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public native clear()V
.end method

.method public native contains(Ljava/lang/Object;)Z
.end method

.method public native isEmpty()Z
.end method

.method public native iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public native offer(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2903
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->offer(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    return v0
.end method

.method public native peek()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2903
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->peek()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public native poll()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2903
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->poll()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public native remove(Ljava/lang/Object;)Z
.end method

.method public native size()I
.end method
