.class Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;
.super Lcom/google/common/collect/ForwardingSet;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapBasedElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;

    const v1, 0x188

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedElementSet;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 358
    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->map:Ljava/util/Map;

    .line 359
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->delegate:Ljava/util/Set;

    .line 360
    return-void
.end method


# virtual methods
.method public native clear()V
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 350
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedElementSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 350
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedElementSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected native delegate()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end method

.method public native getMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end method

.method public native iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public native remove(Ljava/lang/Object;)Z
.end method

.method public native removeAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public native retainAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation
.end method
