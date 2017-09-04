.class Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;
.super Lcom/google/common/collect/UnmodifiableListIterator;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

.field final synthetic val$forward:Lcom/google/common/collect/UnmodifiableListIterator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;

    const v1, 0x20c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;Lcom/google/common/collect/UnmodifiableListIterator;)V
    .registers 3

    .prologue
    .line 471
    .local p0, "this":Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;, "Lcom/google/common/collect/ImmutableList$ReverseImmutableList.1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->this$0:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->val$forward:Lcom/google/common/collect/UnmodifiableListIterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableListIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public native hasNext()Z
.end method

.method public native hasPrevious()Z
.end method

.method public native next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public native nextIndex()I
.end method

.method public native previous()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public native previousIndex()I
.end method
