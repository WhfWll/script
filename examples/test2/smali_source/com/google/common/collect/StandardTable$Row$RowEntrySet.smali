.class Lcom/google/common/collect/StandardTable$Row$RowEntrySet;
.super Ljava/util/AbstractSet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable$Row;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/StandardTable$Row;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;

    const v1, 0x337

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/StandardTable$Row;)V
    .registers 2

    .prologue
    .line 369
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row$RowEntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row.RowEntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable$Row;Lcom/google/common/collect/StandardTable$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/StandardTable$Row;
    .param p2, "x1"    # Lcom/google/common/collect/StandardTable$1;

    .prologue
    .line 369
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row$RowEntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row.RowEntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;-><init>(Lcom/google/common/collect/StandardTable$Row;)V

    return-void
.end method


# virtual methods
.method public native clear()V
.end method

.method public native contains(Ljava/lang/Object;)Z
.end method

.method public native iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;>;"
        }
    .end annotation
.end method

.method public native remove(Ljava/lang/Object;)Z
.end method

.method public native size()I
.end method
