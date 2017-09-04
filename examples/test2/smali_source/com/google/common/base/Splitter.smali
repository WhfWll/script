.class public final Lcom/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Splitter$6;,
        Lcom/google/common/base/Splitter$AbstractIterator;,
        Lcom/google/common/base/Splitter$SplittingIterator;,
        Lcom/google/common/base/Splitter$Strategy;
    }
.end annotation


# instance fields
.field private final limit:I

.field private final omitEmptyStrings:Z

.field private final strategy:Lcom/google/common/base/Splitter$Strategy;

.field private final trimmer:Lcom/google/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/base/Splitter;

    const v1, 0x172

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/Splitter$Strategy;)V
    .registers 5
    .param p1, "strategy"    # Lcom/google/common/base/Splitter$Strategy;

    .prologue
    .line 101
    const/4 v0, 0x0

    sget-object v1, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V

    .line 102
    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V
    .registers 5
    .param p1, "strategy"    # Lcom/google/common/base/Splitter$Strategy;
    .param p2, "omitEmptyStrings"    # Z
    .param p3, "trimmer"    # Lcom/google/common/base/CharMatcher;
    .param p4, "limit"    # I

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    .line 107
    iput-boolean p2, p0, Lcom/google/common/base/Splitter;->omitEmptyStrings:Z

    .line 108
    iput-object p3, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;

    .line 109
    iput p4, p0, Lcom/google/common/base/Splitter;->limit:I

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/base/Splitter;)Lcom/google/common/base/Splitter$Strategy;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/base/Splitter;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/base/Splitter;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/base/Splitter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/common/base/Splitter;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/common/base/Splitter;->omitEmptyStrings:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/base/Splitter;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/common/base/Splitter;

    .prologue
    .line 94
    iget v0, p0, Lcom/google/common/base/Splitter;->limit:I

    return v0
.end method

.method public static native fixedLength(I)Lcom/google/common/base/Splitter;
.end method

.method public static native on(C)Lcom/google/common/base/Splitter;
.end method

.method public static native on(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;
.end method

.method public static native on(Ljava/lang/String;)Lcom/google/common/base/Splitter;
.end method

.method public static native on(Ljava/util/regex/Pattern;)Lcom/google/common/base/Splitter;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.regex"
    .end annotation
.end method

.method public static native onPattern(Ljava/lang/String;)Lcom/google/common/base/Splitter;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.regex"
    .end annotation
.end method


# virtual methods
.method public native limit(I)Lcom/google/common/base/Splitter;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation
.end method

.method public native omitEmptyStrings()Lcom/google/common/base/Splitter;
.end method

.method public native split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native trimResults()Lcom/google/common/base/Splitter;
.end method

.method public native trimResults(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;
.end method
