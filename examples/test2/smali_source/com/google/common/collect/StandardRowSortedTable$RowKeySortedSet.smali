.class Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;
.super Lcom/google/common/collect/StandardTable$RowKeySet;
.source "StandardRowSortedTable.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardRowSortedTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowKeySortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>.RowKeySet;",
        "Ljava/util/SortedSet",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/StandardRowSortedTable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;

    const v1, 0x31e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/StandardRowSortedTable;)V
    .registers 2

    .prologue
    .line 79
    .local p0, "this":Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;, "Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowKeySortedSet;"
    iput-object p1, p0, Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$RowKeySet;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardRowSortedTable;Lcom/google/common/collect/StandardRowSortedTable$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/StandardRowSortedTable;
    .param p2, "x1"    # Lcom/google/common/collect/StandardRowSortedTable$1;

    .prologue
    .line 79
    .local p0, "this":Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;, "Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowKeySortedSet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;-><init>(Lcom/google/common/collect/StandardRowSortedTable;)V

    return-void
.end method


# virtual methods
.method public native comparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TR;>;"
        }
    .end annotation
.end method

.method public native first()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public native headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedSet",
            "<TR;>;"
        }
    .end annotation
.end method

.method public native last()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public native subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)",
            "Ljava/util/SortedSet",
            "<TR;>;"
        }
    .end annotation
.end method

.method public native tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedSet",
            "<TR;>;"
        }
    .end annotation
.end method
