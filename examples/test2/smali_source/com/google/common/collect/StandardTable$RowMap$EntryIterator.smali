.class Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;
.super Ljava/lang/Object;
.source "StandardTable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable$RowMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/StandardTable$RowMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;

    const v1, 0x339

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/StandardTable$RowMap;)V
    .registers 3

    .prologue
    .line 926
    .local p0, "this":Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.RowMap.EntryIterator;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;->this$1:Lcom/google/common/collect/StandardTable$RowMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;->this$1:Lcom/google/common/collect/StandardTable$RowMap;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$RowMap;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public native hasNext()Z
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 926
    .local p0, "this":Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.RowMap.EntryIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public native next()Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end method

.method public native remove()V
.end method
