.class final Lcom/google/common/base/CharMatcher$7;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/base/CharMatcher$7;

    const v1, 0x141

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public native and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 310
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public native collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
.end method

.method public native countIn(Ljava/lang/CharSequence;)I
.end method

.method public native indexIn(Ljava/lang/CharSequence;)I
.end method

.method public native indexIn(Ljava/lang/CharSequence;I)I
.end method

.method public native lastIndexIn(Ljava/lang/CharSequence;)I
.end method

.method public native matches(C)Z
.end method

.method public native matchesAllOf(Ljava/lang/CharSequence;)Z
.end method

.method public native matchesNoneOf(Ljava/lang/CharSequence;)Z
.end method

.method public native negate()Lcom/google/common/base/CharMatcher;
.end method

.method public native or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
.end method

.method public native precomputed()Lcom/google/common/base/CharMatcher;
.end method

.method public native removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
.end method

.method public native replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
.end method

.method public native replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
.end method

.method native setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V
.end method

.method public native trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
.end method
