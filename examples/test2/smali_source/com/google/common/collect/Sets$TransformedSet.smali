.class Lcom/google/common/collect/Sets$TransformedSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TB;>;"
    }
.end annotation


# instance fields
.field final bijection:Lcom/google/common/collect/Sets$InvertibleFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Sets$InvertibleFunction",
            "<TA;TB;>;"
        }
    .end annotation
.end field

.field final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Sets$TransformedSet;

    const v1, 0x30e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Lcom/google/common/collect/Sets$InvertibleFunction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TA;>;",
            "Lcom/google/common/collect/Sets$InvertibleFunction",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 1197
    .local p0, "this":Lcom/google/common/collect/Sets$TransformedSet;, "Lcom/google/common/collect/Sets$TransformedSet<TA;TB;>;"
    .local p1, "delegate":Ljava/util/Set;, "Ljava/util/Set<TA;>;"
    .local p2, "bijection":Lcom/google/common/collect/Sets$InvertibleFunction;, "Lcom/google/common/collect/Sets$InvertibleFunction<TA;TB;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1198
    iput-object p1, p0, Lcom/google/common/collect/Sets$TransformedSet;->delegate:Ljava/util/Set;

    .line 1199
    iput-object p2, p0, Lcom/google/common/collect/Sets$TransformedSet;->bijection:Lcom/google/common/collect/Sets$InvertibleFunction;

    .line 1200
    return-void
.end method


# virtual methods
.method public native add(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)Z"
        }
    .end annotation
.end method

.method public native clear()V
.end method

.method public native contains(Ljava/lang/Object;)Z
.end method

.method public native iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TB;>;"
        }
    .end annotation
.end method

.method public native remove(Ljava/lang/Object;)Z
.end method

.method public native size()I
.end method
