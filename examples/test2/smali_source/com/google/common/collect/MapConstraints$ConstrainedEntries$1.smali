.class Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;
.super Lcom/google/common/collect/ForwardingIterator;
.source "MapConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MapConstraints$ConstrainedEntries;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;

    const v1, 0x28a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/MapConstraints$ConstrainedEntries;Ljava/util/Iterator;)V
    .registers 3

    .prologue
    .line 583
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;, "Lcom/google/common/collect/MapConstraints$ConstrainedEntries.1;"
    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;->this$0:Lcom/google/common/collect/MapConstraints$ConstrainedEntries;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 583
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;, "Lcom/google/common/collect/MapConstraints$ConstrainedEntries.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;->delegate()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected native delegate()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 583
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;, "Lcom/google/common/collect/MapConstraints$ConstrainedEntries.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public native next()Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end method
