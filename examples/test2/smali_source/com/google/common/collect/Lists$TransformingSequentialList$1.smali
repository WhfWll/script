.class Lcom/google/common/collect/Lists$TransformingSequentialList$1;
.super Ljava/lang/Object;
.source "Lists.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Lists$TransformingSequentialList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Lists$TransformingSequentialList;

.field final synthetic val$delegate:Ljava/util/ListIterator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;

    const v1, 0x27d

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Lists$TransformingSequentialList;Ljava/util/ListIterator;)V
    .registers 3

    .prologue
    .line 375
    .local p0, "this":Lcom/google/common/collect/Lists$TransformingSequentialList$1;, "Lcom/google/common/collect/Lists$TransformingSequentialList.1;"
    iput-object p1, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->this$0:Lcom/google/common/collect/Lists$TransformingSequentialList;

    iput-object p2, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->val$delegate:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native add(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public native hasNext()Z
.end method

.method public native hasPrevious()Z
.end method

.method public native next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public native nextIndex()I
.end method

.method public native previous()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public native previousIndex()I
.end method

.method public native remove()V
.end method

.method public native set(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
