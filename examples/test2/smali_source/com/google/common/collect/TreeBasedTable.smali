.class public Lcom/google/common/collect/TreeBasedTable;
.super Lcom/google/common/collect/StandardRowSortedTable;
.source "TreeBasedTable.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeBasedTable$MergingIterator;,
        Lcom/google/common/collect/TreeBasedTable$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/StandardRowSortedTable",
        "<TR;TC;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final columnComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/TreeBasedTable;

    const v1, 0x35c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TR;>;",
            "Ljava/util/Comparator",
            "<-TC;>;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable;, "Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    .local p1, "rowComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TR;>;"
    .local p2, "columnComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TC;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Lcom/google/common/collect/TreeBasedTable$Factory;

    invoke-direct {v1, p2}, Lcom/google/common/collect/TreeBasedTable$Factory;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/StandardRowSortedTable;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Supplier;)V

    .line 133
    iput-object p2, p0, Lcom/google/common/collect/TreeBasedTable;->columnComparator:Ljava/util/Comparator;

    .line 134
    return-void
.end method

.method public static native create()Lcom/google/common/collect/TreeBasedTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Comparable;",
            "C::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/TreeBasedTable",
            "<TR;TC;TV;>;"
        }
    .end annotation
.end method

.method public static native create(Lcom/google/common/collect/TreeBasedTable;)Lcom/google/common/collect/TreeBasedTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/TreeBasedTable",
            "<TR;TC;+TV;>;)",
            "Lcom/google/common/collect/TreeBasedTable",
            "<TR;TC;TV;>;"
        }
    .end annotation
.end method

.method public static native create(Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/TreeBasedTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TR;>;",
            "Ljava/util/Comparator",
            "<-TC;>;)",
            "Lcom/google/common/collect/TreeBasedTable",
            "<TR;TC;TV;>;"
        }
    .end annotation
.end method


# virtual methods
.method public bridge synthetic cellSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable;, "Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .registers 1

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable;, "Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->clear()V

    return-void
.end method

.method public bridge synthetic column(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable;, "Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public native columnComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TC;>;"
        }
    .end annotation
.end method

.method public bridge synthetic columnKeySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable;, "Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable;, "Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->columnMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public native contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public native containsColumn(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public native containsRow(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public native containsValue(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method native createColumnKeyIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TC;>;"
        }
    .end annotation
.end method

.method public native equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public native get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable;, "Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .registers 2

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable;, "Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable;, "Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/StandardRowSortedTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Table;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/collect/Table;

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable;, "Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->putAll(Lcom/google/common/collect/Table;)V

    return-void
.end method

.method public native remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public bridge synthetic row(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable;, "Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public native rowComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TR;>;"
        }
    .end annotation
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable;, "Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public native rowKeySet()Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TR;>;"
        }
    .end annotation
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable;, "Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public native rowMap()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic size()I
    .registers 2

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable;, "Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable;, "Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable;, "Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
