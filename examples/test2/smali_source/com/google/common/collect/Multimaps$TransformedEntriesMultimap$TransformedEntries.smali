.class Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$TransformedEntries;
.super Lcom/google/common/collect/Collections2$TransformedCollection;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformedEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Collections2$TransformedCollection",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV1;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$TransformedEntries;

    const v1, 0x2d1

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;Lcom/google/common/collect/Maps$EntryTransformer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    .prologue
    .line 1418
    .local p0, "this":Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$TransformedEntries;, "Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>.TransformedEntries;"
    .local p2, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$TransformedEntries;->this$0:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;

    .line 1419
    iget-object v0, p1, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$TransformedEntries$1;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$TransformedEntries$1;-><init>(Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;Lcom/google/common/collect/Maps$EntryTransformer;)V

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/Collections2$TransformedCollection;-><init>(Ljava/util/Collection;Lcom/google/common/base/Function;)V

    .line 1435
    return-void
.end method


# virtual methods
.method public native contains(Ljava/lang/Object;)Z
.end method

.method public native remove(Ljava/lang/Object;)Z
.end method
