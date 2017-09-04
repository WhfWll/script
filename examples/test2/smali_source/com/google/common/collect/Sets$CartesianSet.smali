.class Lcom/google/common/collect/Sets$CartesianSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CartesianSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Sets$CartesianSet$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/List",
        "<TB;>;>;"
    }
.end annotation


# instance fields
.field final axes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Sets$CartesianSet",
            "<TB;>.Axis;>;"
        }
    .end annotation
.end field

.field final size:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Sets$CartesianSet;

    const v1, 0x306

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Set",
            "<+TB;>;>;)V"
        }
    .end annotation

    .prologue
    .line 865
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet;, "Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    .local p1, "sets":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Set<+TB;>;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 866
    const-wide/16 v2, 0x1

    .line 867
    .local v2, "dividend":J
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 868
    .local v1, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/collect/Sets$CartesianSet<TB;>.Axis;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 869
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<+TB;>;"
    new-instance v0, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    long-to-int v6, v2

    invoke-direct {v0, p0, v5, v6}, Lcom/google/common/collect/Sets$CartesianSet$Axis;-><init>(Lcom/google/common/collect/Sets$CartesianSet;Ljava/util/Set;I)V

    .line 870
    .local v0, "axis":Lcom/google/common/collect/Sets$CartesianSet$Axis;, "Lcom/google/common/collect/Sets$CartesianSet<TB;>.Axis;"
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 871
    invoke-virtual {v0}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->size()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v2, v6

    .line 872
    goto :goto_d

    .line 873
    .end local v0    # "axis":Lcom/google/common/collect/Sets$CartesianSet$Axis;, "Lcom/google/common/collect/Sets$CartesianSet<TB;>.Axis;"
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<+TB;>;"
    :cond_29
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    .line 874
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v6

    iput v6, p0, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    .line 875
    return-void
.end method


# virtual methods
.method public native contains(Ljava/lang/Object;)Z
.end method

.method public native equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public native hashCode()I
.end method

.method public native iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/List",
            "<TB;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 861
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet;, "Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public native size()I
.end method
