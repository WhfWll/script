.class Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMultimap$EntryCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultimap$EntryCollection;

.field final synthetic val$mapIterator:Ljava/util/Iterator;

.field valueIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;

    const v1, 0x212

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap$EntryCollection;Ljava/util/Iterator;)V
    .registers 3

    .prologue
    .line 494
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;, "Lcom/google/common/collect/ImmutableMultimap$EntryCollection.1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;->this$0:Lcom/google/common/collect/ImmutableMultimap$EntryCollection;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;->val$mapIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public native hasNext()Z
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 494
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;, "Lcom/google/common/collect/ImmutableMultimap$EntryCollection.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$EntryCollection$1;->next()Ljava/util/Map$Entry;

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
