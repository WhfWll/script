.class Lcom/google/common/collect/TransformedImmutableList$TransformedView;
.super Lcom/google/common/collect/TransformedImmutableList;
.source "TransformedImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TransformedImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformedView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedImmutableList",
        "<TD;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TransformedImmutableList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/TransformedImmutableList$TransformedView;

    const v1, 0x357

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/TransformedImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableList$TransformedView;, "Lcom/google/common/collect/TransformedImmutableList<TD;TE;>.TransformedView;"
    .local p2, "backingList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TD;>;"
    iput-object p1, p0, Lcom/google/common/collect/TransformedImmutableList$TransformedView;->this$0:Lcom/google/common/collect/TransformedImmutableList;

    .line 37
    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedImmutableList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 35
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableList$TransformedView;, "Lcom/google/common/collect/TransformedImmutableList<TD;TE;>.TransformedView;"
    invoke-super {p0, p1}, Lcom/google/common/collect/TransformedImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 35
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableList$TransformedView;, "Lcom/google/common/collect/TransformedImmutableList<TD;TE;>.TransformedView;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/TransformedImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method native transform(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TE;"
        }
    .end annotation
.end method
