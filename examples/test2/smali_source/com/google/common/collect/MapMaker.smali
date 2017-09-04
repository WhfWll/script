.class public final Lcom/google/common/collect/MapMaker;
.super Lcom/google/common/collect/GenericMapMaker;
.source "MapMaker.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMaker$ComputingMapAdapter;,
        Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;,
        Lcom/google/common/collect/MapMaker$NullConcurrentMap;,
        Lcom/google/common/collect/MapMaker$Cache;,
        Lcom/google/common/collect/MapMaker$NullListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/GenericMapMaker",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_CLEANUP_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x4

.field private static final DEFAULT_EXPIRATION_NANOS:I = 0x0

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_TICKER:Lcom/google/common/base/Ticker;

.field static final UNSET_INT:I = -0x1


# instance fields
.field cleanupExecutor:Ljava/util/concurrent/Executor;

.field concurrencyLevel:I

.field expireAfterAccessNanos:J

.field expireAfterWriteNanos:J

.field initialCapacity:I

.field keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

.field maximumSize:I

.field ticker:Lcom/google/common/base/Ticker;

.field useCustomMap:Z

.field useNullMap:Z

.field valueEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field valueStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/MapMaker;

    const v1, 0x29a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 123
    .line 0
    new-instance v0, Lcom/google/common/collect/MapMaker$1;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMaker;->DEFAULT_CLEANUP_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/common/collect/MapMaker$2;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker$2;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMaker;->DEFAULT_TICKER:Lcom/google/common/base/Ticker;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 163
    invoke-direct {p0}, Lcom/google/common/collect/GenericMapMaker;-><init>()V

    .line 139
    iput v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    .line 140
    iput v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 141
    iput v0, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    .line 146
    iput-wide v2, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    .line 147
    iput-wide v2, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    .line 163
    return-void
.end method

.method private native checkExpiration(JLjava/util/concurrent/TimeUnit;)V
.end method


# virtual methods
.method public bridge synthetic concurrencyLevel(I)Lcom/google/common/collect/GenericMapMaker;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker;->concurrencyLevel(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public native concurrencyLevel(I)Lcom/google/common/collect/MapMaker;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.concurrent.ConcurrentHashMap concurrencyLevel"
    .end annotation
.end method

.method public native evictionListener(Lcom/google/common/collect/MapEvictionListener;)Lcom/google/common/collect/GenericMapMaker;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapEvictionListener",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic expiration(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/GenericMapMaker;
    .registers 5
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->expiration(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public native expiration(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public bridge synthetic expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/GenericMapMaker;
    .registers 5
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public native expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation
.end method

.method public bridge synthetic expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/GenericMapMaker;
    .registers 5
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public native expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation
.end method

.method native getCleanupExecutor()Ljava/util/concurrent/Executor;
.end method

.method native getConcurrencyLevel()I
.end method

.method native getEvictionListener()Lcom/google/common/collect/MapEvictionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapEvictionListener",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method native getExpireAfterAccessNanos()J
.end method

.method native getExpireAfterWriteNanos()J
.end method

.method native getInitialCapacity()I
.end method

.method native getKeyEquivalence()Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method native getKeyStrength()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
.end method

.method native getTicker()Lcom/google/common/base/Ticker;
.end method

.method native getValueEquivalence()Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method native getValueStrength()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
.end method

.method public bridge synthetic initialCapacity(I)Lcom/google/common/collect/GenericMapMaker;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker;->initialCapacity(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public native initialCapacity(I)Lcom/google/common/collect/MapMaker;
.end method

.method native makeCache(Lcom/google/common/base/Function;)Lcom/google/common/collect/MapMaker$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)",
            "Lcom/google/common/collect/MapMaker$Cache",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public native makeComputingMap(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public native makeMap()Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic maximumSize(I)Lcom/google/common/collect/GenericMapMaker;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker;->maximumSize(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public native maximumSize(I)Lcom/google/common/collect/MapMaker;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation
.end method

.method native privateKeyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/MapMaker;"
        }
    .end annotation
.end method

.method native privateValueEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/MapMaker;"
        }
    .end annotation
.end method

.method native setKeyStrength(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;)Lcom/google/common/collect/MapMaker;
.end method

.method native setValueStrength(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;)Lcom/google/common/collect/MapMaker;
.end method

.method public bridge synthetic softKeys()Lcom/google/common/collect/GenericMapMaker;
    .registers 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->softKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public native softKeys()Lcom/google/common/collect/MapMaker;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.SoftReference"
    .end annotation
.end method

.method public bridge synthetic softValues()Lcom/google/common/collect/GenericMapMaker;
    .registers 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->softValues()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public native softValues()Lcom/google/common/collect/MapMaker;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.SoftReference"
    .end annotation
.end method

.method public native toString()Ljava/lang/String;
.end method

.method public bridge synthetic weakKeys()Lcom/google/common/collect/GenericMapMaker;
    .registers 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public native weakKeys()Lcom/google/common/collect/MapMaker;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation
.end method

.method public bridge synthetic weakValues()Lcom/google/common/collect/GenericMapMaker;
    .registers 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->weakValues()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public native weakValues()Lcom/google/common/collect/MapMaker;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation
.end method
