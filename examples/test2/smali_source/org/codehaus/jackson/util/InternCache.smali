.class public final Lorg/codehaus/jackson/util/InternCache;
.super Ljava/util/LinkedHashMap;
.source "InternCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_ENTRIES:I = 0xc0

.field public static final instance:Lorg/codehaus/jackson/util/InternCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lorg/codehaus/jackson/util/InternCache;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/InternCache;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/util/InternCache;->instance:Lorg/codehaus/jackson/util/InternCache;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 28
    const/16 v0, 0xc0

    const v1, 0x3f4ccccd

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 29
    return-void
.end method


# virtual methods
.method public declared-synchronized intern(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 39
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/InternCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0, v0}, Lorg/codehaus/jackson/util/InternCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 44
    :cond_10
    monitor-exit p0

    return-object v0

    .line 39
    .end local v0    # "result":Ljava/lang/String;
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/InternCache;->size()I

    move-result v0

    const/16 v1, 0xc0

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
