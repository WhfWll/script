.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Longs$LongArrayAsList;,
        Lcom/google/common/primitives/Longs$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/primitives/Longs;

    const v1, 0x399

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

.method static synthetic access$000([JJII)I
    .registers 6
    .param p0, "x0"    # [J
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([JJII)I
    .registers 6
    .param p0, "x0"    # [J
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([J)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    array-length v0, p0

    if-nez v0, :cond_8

    .line 435
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 437
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([J)V

    goto :goto_7
.end method

.method public static native compare(JJ)I
.end method

.method public static varargs concat([[J)[J
    .registers 10
    .param p0, "arrays"    # [[J

    .prologue
    .line 221
    const/4 v4, 0x0

    .line 222
    .local v4, "length":I
    move-object v0, p0

    .local v0, "arr$":[[J
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 223
    .local v1, "array":[J
    array-length v7, v1

    add-int/2addr v4, v7

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 225
    .end local v1    # "array":[J
    :cond_d
    new-array v6, v4, [J

    .line 226
    .local v6, "result":[J
    const/4 v5, 0x0

    .line 227
    .local v5, "pos":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 228
    .restart local v1    # "array":[J
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    array-length v7, v1

    add-int/2addr v5, v7

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 231
    .end local v1    # "array":[J
    :cond_21
    return-object v6
.end method

.method public static native contains([JJ)Z
.end method

.method private static native copyOf([JI)[J
.end method

.method public static native ensureCapacity([JII)[J
.end method

.method public static native fromByteArray([B)J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation
.end method

.method public static native fromBytes(BBBBBBBB)J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation
.end method

.method public static native hashCode(J)I
.end method

.method public static native indexOf([JJ)I
.end method

.method private static native indexOf([JJII)I
.end method

.method public static native indexOf([J[J)I
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .registers 8
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [J

    .prologue
    .line 341
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    array-length v2, p1

    if-nez v2, :cond_9

    .line 343
    const-string v2, ""

    .line 352
    :goto_8
    return-object v2

    .line 347
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 348
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 349
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 350
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p1, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 352
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static native lastIndexOf([JJ)I
.end method

.method private static native lastIndexOf([JJII)I
.end method

.method public static native lexicographicalComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[J>;"
        }
    .end annotation
.end method

.method public static varargs max([J)J
    .registers 7
    .param p0, "array"    # [J

    .prologue
    const/4 v4, 0x0

    .line 201
    array-length v1, p0

    if-lez v1, :cond_19

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 202
    aget-wide v2, p0, v4

    .line 203
    .local v2, "max":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v1, p0

    if-ge v0, v1, :cond_1b

    .line 204
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_16

    .line 205
    aget-wide v2, p0, v0

    .line 203
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v2    # "max":J
    :cond_19
    move v1, v4

    .line 201
    goto :goto_5

    .line 208
    .restart local v0    # "i":I
    .restart local v2    # "max":J
    :cond_1b
    return-wide v2
.end method

.method public static varargs min([J)J
    .registers 7
    .param p0, "array"    # [J

    .prologue
    const/4 v4, 0x0

    .line 182
    array-length v1, p0

    if-lez v1, :cond_19

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 183
    aget-wide v2, p0, v4

    .line 184
    .local v2, "min":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v1, p0

    if-ge v0, v1, :cond_1b

    .line 185
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_16

    .line 186
    aget-wide v2, p0, v0

    .line 184
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v2    # "min":J
    :cond_19
    move v1, v4

    .line 182
    goto :goto_5

    .line 189
    .restart local v0    # "i":I
    .restart local v2    # "min":J
    :cond_1b
    return-wide v2
.end method

.method public static native toArray(Ljava/util/Collection;)[J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation
.end method

.method public static native toByteArray(J)[B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation
.end method
