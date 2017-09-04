.class Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;
.super Lcom/google/common/collect/ForwardingMapEntry;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMapEntry",
        "<TC;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$3:Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;

    const v1, 0x335

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;Ljava/util/Map$Entry;)V
    .registers 3

    .prologue
    .line 407
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;, "Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;->this$3:Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 407
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;, "Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected native delegate()Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;"
        }
    .end annotation
.end method

.method public native setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation
.end method
