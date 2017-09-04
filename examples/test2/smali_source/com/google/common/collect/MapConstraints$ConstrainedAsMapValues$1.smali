.class Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;
.super Ljava/lang/Object;
.source "MapConstraints.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;

    const v1, 0x286

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;Ljava/util/Iterator;)V
    .registers 3

    .prologue
    .line 527
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues.1;"
    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;->this$0:Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native hasNext()Z
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 527
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;->next()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public native next()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end method

.method public native remove()V
.end method
