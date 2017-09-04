.class Lcom/google/common/collect/StandardTable$CellIterator;
.super Ljava/lang/Object;
.source "StandardTable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field columnIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field rowEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field final rowIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/StandardTable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/StandardTable$CellIterator;

    const v1, 0x324

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .registers 3

    .prologue
    .line 302
    .local p0, "this":Lcom/google/common/collect/StandardTable$CellIterator;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.CellIterator;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$CellIterator;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$CellIterator;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$CellIterator;->rowIterator:Ljava/util/Iterator;

    .line 306
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyModifiableIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$CellIterator;->columnIterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/StandardTable;
    .param p2, "x1"    # Lcom/google/common/collect/StandardTable$1;

    .prologue
    .line 302
    .local p0, "this":Lcom/google/common/collect/StandardTable$CellIterator;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.CellIterator;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$CellIterator;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public native hasNext()Z
.end method

.method public native next()Lcom/google/common/collect/Table$Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 302
    .local p0, "this":Lcom/google/common/collect/StandardTable$CellIterator;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.CellIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$CellIterator;->next()Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method

.method public native remove()V
.end method
