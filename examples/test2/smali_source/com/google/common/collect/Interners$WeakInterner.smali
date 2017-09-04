.class Lcom/google/common/collect/Interners$WeakInterner;
.super Ljava/lang/Object;
.source "Interners.java"

# interfaces
.implements Lcom/google/common/collect/Interner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakInterner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Interners$WeakInterner$InternReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Interner",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final frq:Lcom/google/common/base/FinalizableReferenceQueue;


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/google/common/collect/Interners$WeakInterner",
            "<TE;>.InternReference;",
            "Lcom/google/common/collect/Interners$WeakInterner",
            "<TE;>.InternReference;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Interners$WeakInterner;

    const v1, 0x233

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    new-instance v0, Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-direct {v0}, Lcom/google/common/base/FinalizableReferenceQueue;-><init>()V

    sput-object v0, Lcom/google/common/collect/Interners$WeakInterner;->frq:Lcom/google/common/base/FinalizableReferenceQueue;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 70
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Interners$WeakInterner;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Interners$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/collect/Interners$1;

    .prologue
    .line 70
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Interners$WeakInterner;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/common/base/FinalizableReferenceQueue;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/common/collect/Interners$WeakInterner;->frq:Lcom/google/common/base/FinalizableReferenceQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/Interners$WeakInterner;)Ljava/util/concurrent/ConcurrentMap;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/Interners$WeakInterner;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/common/collect/Interners$WeakInterner;->map:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method


# virtual methods
.method public native intern(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation
.end method
