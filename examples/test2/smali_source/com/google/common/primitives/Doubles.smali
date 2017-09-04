.class public final Lcom/google/common/primitives/Doubles;
.super Ljava/lang/Object;
.source "Doubles.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Doubles$DoubleArrayAsList;,
        Lcom/google/common/primitives/Doubles$LexicographicalComparator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/primitives/Doubles;

    const v1, 0x393

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([DDII)I
    .registers 6
    .param p0, "x0"    # [D
    .param p1, "x1"    # D
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->indexOf([DDII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([DDII)I
    .registers 6
    .param p0, "x0"    # [D
    .param p1, "x1"    # D
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->lastIndexOf([DDII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([D)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    array-length v0, p0

    if-nez v0, :cond_8

    .line 376
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 378
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([D)V

    goto :goto_7
.end method

.method public static native compare(DD)I
.end method

.method public static varargs concat([[D)[D
    .registers 10
    .param p0, "arrays"    # [[D

    .prologue
    .line 223
    const/4 v4, 0x0

    .line 224
    .local v4, "length":I
    move-object v0, p0

    .local v0, "arr$":[[D
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 225
    .local v1, "array":[D
    array-length v7, v1

    add-int/2addr v4, v7

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 227
    .end local v1    # "array":[D
    :cond_d
    new-array v6, v4, [D

    .line 228
    .local v6, "result":[D
    const/4 v5, 0x0

    .line 229
    .local v5, "pos":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 230
    .restart local v1    # "array":[D
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    array-length v7, v1

    add-int/2addr v5, v7

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 233
    .end local v1    # "array":[D
    :cond_21
    return-object v6
.end method

.method public static native contains([DD)Z
.end method

.method private static native copyOf([DI)[D
.end method

.method public static native ensureCapacity([DII)[D
.end method

.method public static native hashCode(D)I
.end method

.method public static native indexOf([DD)I
.end method

.method private static native indexOf([DDII)I
.end method

.method public static native indexOf([D[D)I
.end method

.method public static varargs join(Ljava/lang/String;[D)Ljava/lang/String;
    .registers 8
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [D

    .prologue
    .line 279
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    array-length v2, p1

    if-nez v2, :cond_9

    .line 281
    const-string v2, ""

    .line 290
    :goto_8
    return-object v2

    .line 285
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xc

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 286
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 287
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 288
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p1, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 290
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static native lastIndexOf([DD)I
.end method

.method private static native lastIndexOf([DDII)I
.end method

.method public static native lexicographicalComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[D>;"
        }
    .end annotation
.end method

.method public static varargs max([D)D
    .registers 7
    .param p0, "array"    # [D

    .prologue
    const/4 v4, 0x0

    .line 205
    array-length v1, p0

    if-lez v1, :cond_17

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 206
    aget-wide v2, p0, v4

    .line 207
    .local v2, "max":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v1, p0

    if-ge v0, v1, :cond_19

    .line 208
    aget-wide v4, p0, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v2    # "max":D
    :cond_17
    move v1, v4

    .line 205
    goto :goto_5

    .line 210
    .restart local v0    # "i":I
    .restart local v2    # "max":D
    :cond_19
    return-wide v2
.end method

.method public static varargs min([D)D
    .registers 7
    .param p0, "array"    # [D

    .prologue
    const/4 v4, 0x0

    .line 187
    array-length v1, p0

    if-lez v1, :cond_17

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 188
    aget-wide v2, p0, v4

    .line 189
    .local v2, "min":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v1, p0

    if-ge v0, v1, :cond_19

    .line 190
    aget-wide v4, p0, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v2    # "min":D
    :cond_17
    move v1, v4

    .line 187
    goto :goto_5

    .line 192
    .restart local v0    # "i":I
    .restart local v2    # "min":D
    :cond_19
    return-wide v2
.end method

.method public static native toArray(Ljava/util/Collection;)[D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;)[D"
        }
    .end annotation
.end method
