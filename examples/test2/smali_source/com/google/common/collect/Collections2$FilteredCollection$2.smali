.class Lcom/google/common/collect/Collections2$FilteredCollection$2;
.super Ljava/lang/Object;
.source "Collections2.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Collections2$FilteredCollection;->retainAll(Ljava/util/Collection;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Collections2$FilteredCollection;

.field final synthetic val$collection:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Collections2$FilteredCollection$2;

    const v1, 0x1a4

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Collections2$FilteredCollection;Ljava/util/Collection;)V
    .registers 3

    .prologue
    .line 206
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection$2;, "Lcom/google/common/collect/Collections2$FilteredCollection.2;"
    iput-object p1, p0, Lcom/google/common/collect/Collections2$FilteredCollection$2;->this$0:Lcom/google/common/collect/Collections2$FilteredCollection;

    iput-object p2, p0, Lcom/google/common/collect/Collections2$FilteredCollection$2;->val$collection:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native apply(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method
