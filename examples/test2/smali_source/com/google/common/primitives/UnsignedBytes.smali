.class public final Lcom/google/common/primitives/UnsignedBytes;
.super Ljava/lang/Object;
.source "UnsignedBytes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/primitives/UnsignedBytes;

    const v1, 0x3a0

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkedCast(J)B
.end method

.method public static native compare(BB)I
.end method

.method public static varargs join(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [B

    .prologue
    .line 156
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    array-length v2, p1

    if-nez v2, :cond_9

    .line 158
    const-string v2, ""

    .line 167
    :goto_8
    return-object v2

    .line 162
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 163
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1c
    array-length v2, p1

    if-ge v1, v2, :cond_2f

    .line 165
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v1

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 167
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static native lexicographicalComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end method

.method static native lexicographicalComparatorJavaImpl()Ljava/util/Comparator;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end method

.method public static varargs max([B)B
    .registers 6
    .param p0, "array"    # [B

    .prologue
    const/4 v4, 0x0

    .line 135
    array-length v3, p0

    if-lez v3, :cond_1e

    const/4 v3, 0x1

    :goto_5
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 136
    aget-byte v3, p0, v4

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    .line 137
    .local v1, "max":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_f
    array-length v3, p0

    if-ge v0, v3, :cond_20

    .line 138
    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    .line 139
    .local v2, "next":I
    if-le v2, v1, :cond_1b

    .line 140
    move v1, v2

    .line 137
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .end local v0    # "i":I
    .end local v1    # "max":I
    .end local v2    # "next":I
    :cond_1e
    move v3, v4

    .line 135
    goto :goto_5

    .line 143
    .restart local v0    # "i":I
    .restart local v1    # "max":I
    :cond_20
    int-to-byte v3, v1

    return v3
.end method

.method public static varargs min([B)B
    .registers 6
    .param p0, "array"    # [B

    .prologue
    const/4 v4, 0x0

    .line 115
    array-length v3, p0

    if-lez v3, :cond_1e

    const/4 v3, 0x1

    :goto_5
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 116
    aget-byte v3, p0, v4

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    .line 117
    .local v1, "min":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_f
    array-length v3, p0

    if-ge v0, v3, :cond_20

    .line 118
    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    .line 119
    .local v2, "next":I
    if-ge v2, v1, :cond_1b

    .line 120
    move v1, v2

    .line 117
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .end local v0    # "i":I
    .end local v1    # "min":I
    .end local v2    # "next":I
    :cond_1e
    move v3, v4

    .line 115
    goto :goto_5

    .line 123
    .restart local v0    # "i":I
    .restart local v1    # "min":I
    :cond_20
    int-to-byte v3, v1

    return v3
.end method

.method public static native saturatedCast(J)B
.end method

.method public static native toInt(B)I
.end method
