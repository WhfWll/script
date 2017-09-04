.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMap$Values;,
        Lcom/google/common/collect/RegularImmutableMap$KeySet;,
        Lcom/google/common/collect/RegularImmutableMap$EntrySet;,
        Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;,
        Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;,
        Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final transient keySetHashCode:I

.field private final transient mask:I

.field private final transient table:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient values:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/RegularImmutableMap;

    const v1, 0x2fa

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method varargs constructor <init>([Ljava/util/Map$Entry;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    .local p1, "immutableEntries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<**>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 49
    array-length v7, p1

    .line 50
    .local v7, "size":I
    invoke-direct {p0, v7}, Lcom/google/common/collect/RegularImmutableMap;->createEntryArray(I)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v10

    iput-object v10, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    .line 52
    invoke-static {v7}, Lcom/google/common/collect/RegularImmutableMap;->chooseTableSize(I)I

    move-result v9

    .line 53
    .local v9, "tableSize":I
    invoke-direct {p0, v9}, Lcom/google/common/collect/RegularImmutableMap;->createEntryArray(I)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v10

    iput-object v10, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    .line 54
    add-int/lit8 v10, v9, -0x1

    iput v10, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    .line 56
    const/4 v5, 0x0

    .line 57
    .local v5, "keySetHashCodeMutable":I
    const/4 v1, 0x0

    .local v1, "entryIndex":I
    :goto_1a
    if-ge v1, v7, :cond_65

    .line 60
    aget-object v0, p1, v1

    .line 61
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 62
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 63
    .local v4, "keyHashCode":I
    add-int/2addr v5, v4

    .line 64
    invoke-static {v4}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v10

    iget v11, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int v8, v10, v11

    .line 65
    .local v8, "tableIndex":I
    iget-object v10, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    aget-object v2, v10, v8

    .line 67
    .local v2, "existing":Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;, "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3, v10, v2}, Lcom/google/common/collect/RegularImmutableMap;->newLinkedEntry(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;)Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v6

    .line 69
    .local v6, "linkedEntry":Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;, "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    iget-object v10, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    aput-object v6, v10, v8

    .line 70
    iget-object v10, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    aput-object v6, v10, v1

    .line 71
    :goto_43
    if-eqz v2, :cond_62

    .line 72
    invoke-interface {v2}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_60

    const/4 v10, 0x1

    :goto_50
    const-string v11, "duplicate key: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v10, v11, v12}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-interface {v2}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->next()Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v2

    goto :goto_43

    .line 72
    :cond_60
    const/4 v10, 0x0

    goto :goto_50

    .line 57
    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 76
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "existing":Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;, "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "keyHashCode":I
    .end local v6    # "linkedEntry":Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;, "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    .end local v8    # "tableIndex":I
    :cond_65
    iput v5, p0, Lcom/google/common/collect/RegularImmutableMap;->keySetHashCode:I

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableMap;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableMap;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableMap;

    .prologue
    .line 36
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap;->keySetHashCode:I

    return v0
.end method

.method private static native chooseTableSize(I)I
.end method

.method private native createEntryArray(I)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method private static native newLinkedEntry(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;)Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .param p2    # Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method


# virtual methods
.method public native containsValue(Ljava/lang/Object;)Z
.end method

.method public native entrySet()Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 35
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public native get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public native isEmpty()Z
.end method

.method native isPartialView()Z
.end method

.method public native keySet()Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 35
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public native size()I
.end method

.method public native toString()Ljava/lang/String;
.end method

.method public native values()Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 35
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
