.class final Lcom/google/common/collect/SortedMaps$3;
.super Ljava/lang/Object;
.source "SortedMaps.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/SortedMaps;->filterValues(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$valuePredicate:Lcom/google/common/base/Predicate;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/SortedMaps$3;

    const v1, 0x318

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/base/Predicate;)V
    .registers 2

    .prologue
    .line 376
    iput-object p1, p0, Lcom/google/common/collect/SortedMaps$3;->val$valuePredicate:Lcom/google/common/base/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 376
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/collect/SortedMaps$3;->apply(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public native apply(Ljava/util/Map$Entry;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation
.end method
