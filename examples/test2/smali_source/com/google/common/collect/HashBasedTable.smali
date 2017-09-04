.class public Lcom/google/common/collect/HashBasedTable;
.super Lcom/google/common/collect/StandardTable;
.source "HashBasedTable.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBasedTable$Factory;
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
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/HashBasedTable;

    const v1, 0x1f6

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Lcom/google/common/collect/HashBasedTable$Factory;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;",
            "Lcom/google/common/collect/HashBasedTable$Factory",
            "<TC;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/google/common/collect/HashBasedTable;, "Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    .local p1, "backingMap":Ljava/util/Map;, "Ljava/util/Map<TR;Ljava/util/Map<TC;TV;>;>;"
    .local p2, "factory":Lcom/google/common/collect/HashBasedTable$Factory;, "Lcom/google/common/collect/HashBasedTable$Factory<TC;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/StandardTable;-><init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V

    .line 110
    return-void
.end method

.method public static native create()Lcom/google/common/collect/HashBasedTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashBasedTable",
            "<TR;TC;TV;>;"
        }
    .end annotation
.end method

.method public static native create(II)Lcom/google/common/collect/HashBasedTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/common/collect/HashBasedTable",
            "<TR;TC;TV;>;"
        }
    .end annotation
.end method

.method public static native create(Lcom/google/common/collect/Table;)Lcom/google/common/collect/HashBasedTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Table",
            "<+TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/HashBasedTable",
            "<TR;TC;TV;>;"
        }
    .end annotation
.end method


# virtual methods
.method public bridge synthetic cellSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/HashBasedTable;, "Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .registers 1

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/HashBasedTable;, "Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->clear()V

    return-void
.end method

.method public bridge synthetic column(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/HashBasedTable;, "Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnKeySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/HashBasedTable;, "Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/HashBasedTable;, "Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->columnMap()Ljava/util/Map;

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
    .line 52
    .local p0, "this":Lcom/google/common/collect/HashBasedTable;, "Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/HashBasedTable;, "Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/HashBasedTable;, "Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Table;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/collect/Table;

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/HashBasedTable;, "Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable;->putAll(Lcom/google/common/collect/Table;)V

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
    .line 52
    .local p0, "this":Lcom/google/common/collect/HashBasedTable;, "Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/HashBasedTable;, "Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/HashBasedTable;, "Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/HashBasedTable;, "Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/HashBasedTable;, "Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/HashBasedTable;, "Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
