.class Lcom/google/common/collect/AbstractBiMap$ValueSet$1;
.super Ljava/lang/Object;
.source "AbstractBiMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractBiMap$ValueSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/AbstractBiMap$ValueSet;

.field final synthetic val$iterator:Ljava/util/Iterator;

.field valueToRemove:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;

    const v1, 0x182

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/AbstractBiMap$ValueSet;Ljava/util/Iterator;)V
    .registers 3

    .prologue
    .line 238
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$ValueSet$1;, "Lcom/google/common/collect/AbstractBiMap$ValueSet.1;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->this$1:Lcom/google/common/collect/AbstractBiMap$ValueSet;

    iput-object p2, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native hasNext()Z
.end method

.method public native next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public native remove()V
.end method
