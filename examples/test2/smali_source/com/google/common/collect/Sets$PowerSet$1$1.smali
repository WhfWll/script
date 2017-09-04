.class Lcom/google/common/collect/Sets$PowerSet$1$1;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$PowerSet$1;->get(I)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/Sets$PowerSet$1;

.field final synthetic val$setBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Sets$PowerSet$1$1;

    const v1, 0x309

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Sets$PowerSet$1;I)V
    .registers 3

    .prologue
    .line 1050
    .local p0, "this":Lcom/google/common/collect/Sets$PowerSet$1$1;, "Lcom/google/common/collect/Sets$PowerSet$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/Sets$PowerSet$1$1;->this$1:Lcom/google/common/collect/Sets$PowerSet$1;

    iput p2, p0, Lcom/google/common/collect/Sets$PowerSet$1$1;->val$setBits:I

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public native iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public native size()I
.end method
