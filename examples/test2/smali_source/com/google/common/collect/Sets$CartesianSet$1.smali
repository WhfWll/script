.class Lcom/google/common/collect/Sets$CartesianSet$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$CartesianSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<",
        "Ljava/util/List",
        "<TB;>;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/google/common/collect/Sets$CartesianSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Sets$CartesianSet$1;

    const v1, 0x304

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Sets$CartesianSet;)V
    .registers 2

    .prologue
    .line 882
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet$1;, "Lcom/google/common/collect/Sets$CartesianSet.1;"
    iput-object p1, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->this$0:Lcom/google/common/collect/Sets$CartesianSet;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public native hasNext()Z
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 882
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet$1;, "Lcom/google/common/collect/Sets$CartesianSet.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet$1;->next()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public native next()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TB;>;"
        }
    .end annotation
.end method
