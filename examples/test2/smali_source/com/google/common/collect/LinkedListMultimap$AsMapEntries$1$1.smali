.class Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;

    const v1, 0x265

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 884
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;, "Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;->this$2:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public native getKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 884
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;, "Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;->getValue()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public native getValue()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end method
