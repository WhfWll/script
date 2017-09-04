.class Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TC;",
        "Ljava/util/Map",
        "<TR;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;

.field final synthetic val$columnIterator:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;

    const v1, 0x331

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;Ljava/util/Iterator;)V
    .registers 3

    .prologue
    .line 986
    .local p0, "this":Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;, "Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet.1;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;->this$2:Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;->val$columnIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public native hasNext()Z
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 986
    .local p0, "this":Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;, "Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public native next()Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation
.end method
