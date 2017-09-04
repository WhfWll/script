.class public final Lcom/google/common/primitives/Floats;
.super Ljava/lang/Object;
.source "Floats.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Floats$FloatArrayAsList;,
        Lcom/google/common/primitives/Floats$LexicographicalComparator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/primitives/Floats;

    const v1, 0x395

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

.method static synthetic access$000([FFII)I
    .registers 5
    .param p0, "x0"    # [F
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([FFII)I
    .registers 5
    .param p0, "x0"    # [F
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([F)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    array-length v0, p0

    if-nez v0, :cond_8

    .line 373
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 375
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;-><init>([F)V

    goto :goto_7
.end method

.method public static native compare(FF)I
.end method

.method public static varargs concat([[F)[F
    .registers 10
    .param p0, "arrays"    # [[F

    .prologue
    .line 220
    const/4 v4, 0x0

    .line 221
    .local v4, "length":I
    move-object v0, p0

    .local v0, "arr$":[[F
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 222
    .local v1, "array":[F
    array-length v7, v1

    add-int/2addr v4, v7

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 224
    .end local v1    # "array":[F
    :cond_d
    new-array v6, v4, [F

    .line 225
    .local v6, "result":[F
    const/4 v5, 0x0

    .line 226
    .local v5, "pos":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 227
    .restart local v1    # "array":[F
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    array-length v7, v1

    add-int/2addr v5, v7

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 230
    .end local v1    # "array":[F
    :cond_21
    return-object v6
.end method

.method public static native contains([FF)Z
.end method

.method private static native copyOf([FI)[F
.end method

.method public static native ensureCapacity([FII)[F
.end method

.method public static native hashCode(F)I
.end method

.method public static native indexOf([FF)I
.end method

.method private static native indexOf([FFII)I
.end method

.method public static native indexOf([F[F)I
.end method

.method public static varargs join(Ljava/lang/String;[F)Ljava/lang/String;
    .registers 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [F

    .prologue
    .line 276
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    array-length v2, p1

    if-nez v2, :cond_9

    .line 278
    const-string v2, ""

    .line 287
    :goto_8
    return-object v2

    .line 282
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xc

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 283
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 284
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 285
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 287
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static native lastIndexOf([FF)I
.end method

.method private static native lastIndexOf([FFII)I
.end method

.method public static native lexicographicalComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[F>;"
        }
    .end annotation
.end method

.method public static varargs max([F)F
    .registers 5
    .param p0, "array"    # [F

    .prologue
    const/4 v3, 0x0

    .line 202
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 203
    aget v1, p0, v3

    .line 204
    .local v1, "max":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 205
    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v1    # "max":F
    :cond_17
    move v2, v3

    .line 202
    goto :goto_5

    .line 207
    .restart local v0    # "i":I
    .restart local v1    # "max":F
    :cond_19
    return v1
.end method

.method public static varargs min([F)F
    .registers 5
    .param p0, "array"    # [F

    .prologue
    const/4 v3, 0x0

    .line 184
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 185
    aget v1, p0, v3

    .line 186
    .local v1, "min":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 187
    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v1    # "min":F
    :cond_17
    move v2, v3

    .line 184
    goto :goto_5

    .line 189
    .restart local v0    # "i":I
    .restart local v1    # "min":F
    :cond_19
    return v1
.end method

.method public static native toArray(Ljava/util/Collection;)[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Float;",
            ">;)[F"
        }
    .end annotation
.end method
