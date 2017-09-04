.class final Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets$PowerSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BitFilteredSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final input:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field remainingSetBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;

    const v1, 0x30b

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;I)V
    .registers 3
    .param p2, "allSetBits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;I)V"
        }
    .end annotation

    .prologue
    .line 1067
    .local p0, "this":Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;, "Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator<TE;>;"
    .local p1, "input":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 1068
    iput-object p1, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->input:Lcom/google/common/collect/ImmutableList;

    .line 1069
    iput p2, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->remainingSetBits:I

    .line 1070
    return-void
.end method


# virtual methods
.method public native hasNext()Z
.end method

.method public native next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method
