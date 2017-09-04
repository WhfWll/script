.class final Lcom/google/common/base/CharMatcher$8;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match:C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/base/CharMatcher$8;

    const v1, 0x142

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(C)V
    .registers 2

    .prologue
    .line 392
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$8;->val$match:C

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
    .line 392
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public native matches(C)Z
.end method

.method public native negate()Lcom/google/common/base/CharMatcher;
.end method

.method public native or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
.end method

.method public native precomputed()Lcom/google/common/base/CharMatcher;
.end method

.method public native replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
.end method

.method native setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V
.end method
