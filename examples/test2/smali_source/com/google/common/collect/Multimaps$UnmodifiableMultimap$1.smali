.class Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;
.super Lcom/google/common/collect/ForwardingMap;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->asMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field asMapValues:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;

.field final synthetic val$unmodifiableMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;

    const v1, 0x2d8

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;Ljava/util/Map;)V
    .registers 3

    .prologue
    .line 489
    .local p0, "this":Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;, "Lcom/google/common/collect/Multimaps$UnmodifiableMultimap.1;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->this$0:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->val$unmodifiableMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    return-void
.end method


# virtual methods
.method public native containsValue(Ljava/lang/Object;)Z
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 489
    .local p0, "this":Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;, "Lcom/google/common/collect/Multimaps$UnmodifiableMultimap.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected native delegate()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end method

.method public native entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 489
    .local p0, "this":Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;, "Lcom/google/common/collect/Multimaps$UnmodifiableMultimap.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public native get(Ljava/lang/Object;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end method

.method public native values()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end method
