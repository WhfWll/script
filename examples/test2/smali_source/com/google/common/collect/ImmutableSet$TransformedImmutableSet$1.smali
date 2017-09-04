.class Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;

    const v1, 0x21d

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;I)V
    .registers 3
    .param p2, "x0"    # I

    .prologue
    .line 484
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;, "Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet.1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;->this$0:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected native get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method
