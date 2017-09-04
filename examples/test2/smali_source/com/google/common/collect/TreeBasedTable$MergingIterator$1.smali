.class Lcom/google/common/collect/TreeBasedTable$MergingIterator$1;
.super Ljava/lang/Object;
.source "TreeBasedTable.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeBasedTable$MergingIterator;-><init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/common/collect/PeekingIterator",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TreeBasedTable$MergingIterator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/TreeBasedTable$MergingIterator$1;

    const v1, 0x35a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/TreeBasedTable$MergingIterator;)V
    .registers 2

    .prologue
    .line 239
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable$MergingIterator$1;, "Lcom/google/common/collect/TreeBasedTable$MergingIterator.1;"
    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator$1;->this$0:Lcom/google/common/collect/TreeBasedTable$MergingIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native compare(Lcom/google/common/collect/PeekingIterator;Lcom/google/common/collect/PeekingIterator;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/PeekingIterator",
            "<TT;>;",
            "Lcom/google/common/collect/PeekingIterator",
            "<TT;>;)I"
        }
    .end annotation
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 239
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable$MergingIterator$1;, "Lcom/google/common/collect/TreeBasedTable$MergingIterator.1;"
    check-cast p1, Lcom/google/common/collect/PeekingIterator;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/common/collect/PeekingIterator;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeBasedTable$MergingIterator$1;->compare(Lcom/google/common/collect/PeekingIterator;Lcom/google/common/collect/PeekingIterator;)I

    move-result v0

    return v0
.end method
