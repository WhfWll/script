.class Lcom/google/common/collect/Interners$WeakInterner$InternReference;
.super Lcom/google/common/base/FinalizableWeakReference;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners$WeakInterner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/FinalizableWeakReference",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final hashCode:I

.field final synthetic this$0:Lcom/google/common/collect/Interners$WeakInterner;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Interners$WeakInterner$InternReference;

    const v1, 0x232

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Interners$WeakInterner;Ljava/lang/Object;I)V
    .registers 5
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner$InternReference;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>.InternReference;"
    .local p2, "key":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->this$0:Lcom/google/common/collect/Interners$WeakInterner;

    .line 133
    # getter for: Lcom/google/common/collect/Interners$WeakInterner;->frq:Lcom/google/common/base/FinalizableReferenceQueue;
    invoke-static {}, Lcom/google/common/collect/Interners$WeakInterner;->access$100()Lcom/google/common/base/FinalizableReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/FinalizableWeakReference;-><init>(Ljava/lang/Object;Lcom/google/common/base/FinalizableReferenceQueue;)V

    .line 134
    iput p3, p0, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->hashCode:I

    .line 135
    return-void
.end method


# virtual methods
.method public native equals(Ljava/lang/Object;)Z
.end method

.method public native finalizeReferent()V
.end method

.method public native get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public native hashCode()I
.end method
