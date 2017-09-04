.class Lcom/google/common/collect/Tables$TransposeTable$CellSet;
.super Lcom/google/common/collect/Collections2$TransformedCollection;
.source "Tables.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables$TransposeTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Collections2$TransformedCollection",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;",
        "Lcom/google/common/collect/Table$Cell",
        "<TC;TR;TV;>;>;",
        "Ljava/util/Set",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TC;TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Tables$TransposeTable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;

    const v1, 0x353

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Tables$TransposeTable;)V
    .registers 4

    .prologue
    .line 276
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable$CellSet;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    iput-object p1, p0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransposeTable;

    .line 277
    iget-object v0, p1, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    # getter for: Lcom/google/common/collect/Tables$TransposeTable;->TRANSPOSE_CELL:Lcom/google/common/base/Function;
    invoke-static {}, Lcom/google/common/collect/Tables$TransposeTable;->access$000()Lcom/google/common/base/Function;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/Collections2$TransformedCollection;-><init>(Ljava/util/Collection;Lcom/google/common/base/Function;)V

    .line 278
    return-void
.end method


# virtual methods
.method public native contains(Ljava/lang/Object;)Z
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public native hashCode()I
.end method

.method public native remove(Ljava/lang/Object;)Z
.end method
