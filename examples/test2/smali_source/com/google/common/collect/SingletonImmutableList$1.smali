.class Lcom/google/common/collect/SingletonImmutableList$1;
.super Lcom/google/common/collect/UnmodifiableListIterator;
.source "SingletonImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/SingletonImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
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
.field hasNext:Z

.field final synthetic this$0:Lcom/google/common/collect/SingletonImmutableList;

.field final synthetic val$start:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/SingletonImmutableList$1;

    const v1, 0x310

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/SingletonImmutableList;I)V
    .registers 4

    .prologue
    .line 64
    .local p0, "this":Lcom/google/common/collect/SingletonImmutableList$1;, "Lcom/google/common/collect/SingletonImmutableList.1;"
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableList$1;->this$0:Lcom/google/common/collect/SingletonImmutableList;

    iput p2, p0, Lcom/google/common/collect/SingletonImmutableList$1;->val$start:I

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableListIterator;-><init>()V

    .line 66
    iget v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->val$start:I

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_c
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
