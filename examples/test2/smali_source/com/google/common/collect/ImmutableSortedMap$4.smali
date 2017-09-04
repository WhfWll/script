.class Lcom/google/common/collect/ImmutableSortedMap$4;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSortedMap;->valueIterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableSortedMap;

.field final synthetic val$entryIterator:Lcom/google/common/collect/UnmodifiableIterator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/ImmutableSortedMap$4;

    const v1, 0x225

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;Lcom/google/common/collect/UnmodifiableIterator;)V
    .registers 3

    .prologue
    .line 552
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$4;, "Lcom/google/common/collect/ImmutableSortedMap.4;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$4;->this$0:Lcom/google/common/collect/ImmutableSortedMap;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableSortedMap$4;->val$entryIterator:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

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
