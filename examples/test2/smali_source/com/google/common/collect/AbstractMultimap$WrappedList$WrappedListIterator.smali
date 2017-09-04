.class Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;
.super Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap$WrappedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>.WrappedCollection.WrappedIterator;",
        "Ljava/util/ListIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/AbstractMultimap$WrappedList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;

    const v1, 0x19e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/AbstractMultimap$WrappedList;)V
    .registers 2

    .prologue
    .line 802
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/AbstractMultimap$WrappedList;I)V
    .registers 4
    .param p2, "index"    # I

    .prologue
    .line 804
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    .line 805
    invoke-virtual {p1}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;Ljava/util/Iterator;)V

    .line 806
    return-void
.end method

.method private native getDelegateListIterator()Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation
.end method


# virtual methods
.method public native add(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public native hasPrevious()Z
.end method

.method public native nextIndex()I
.end method

.method public native previous()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public native previousIndex()I
.end method

.method public native set(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method
