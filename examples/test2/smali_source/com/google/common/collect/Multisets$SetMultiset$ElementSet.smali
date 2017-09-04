.class Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;
.super Lcom/google/common/collect/ForwardingSet;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets$SetMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multisets$SetMultiset;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;

    const v1, 0x2e3

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Multisets$SetMultiset;)V
    .registers 2

    .prologue
    .line 288
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>.ElementSet;"
    iput-object p1, p0, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;->this$0:Lcom/google/common/collect/Multisets$SetMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method public native add(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method public native addAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 288
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>.ElementSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 288
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;, "Lcom/google/common/collect/Multisets$SetMultiset<TE;>.ElementSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;->delegate()Ljava/util/Set;

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
