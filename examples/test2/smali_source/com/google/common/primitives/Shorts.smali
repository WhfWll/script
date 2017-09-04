.class public final Lcom/google/common/primitives/Shorts;
.super Ljava/lang/Object;
.source "Shorts.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Shorts$ShortArrayAsList;,
        Lcom/google/common/primitives/Shorts$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/primitives/Shorts;

    const v1, 0x39c

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

.method static synthetic access$000([SSII)I
    .registers 5
    .param p0, "x0"    # [S
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([SSII)I
    .registers 5
    .param p0, "x0"    # [S
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([S)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    array-length v0, p0

    if-nez v0, :cond_8

    .line 453
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 455
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([S)V

    goto :goto_7
.end method

.method public static native checkedCast(J)S
.end method

.method public static native compare(SS)I
.end method

.method public static varargs concat([[S)[S
    .registers 10
    .param p0, "arrays"    # [[S

    .prologue
    .line 254
    const/4 v4, 0x0

    .line 255
    .local v4, "length":I
    move-object v0, p0

    .local v0, "arr$":[[S
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 256
    .local v1, "array":[S
    array-length v7, v1

    add-int/2addr v4, v7

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 258
    .end local v1    # "array":[S
    :cond_d
    new-array v6, v4, [S

    .line 259
    .local v6, "result":[S
    const/4 v5, 0x0

    .line 260
    .local v5, "pos":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 261
    .restart local v1    # "array":[S
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    array-length v7, v1

    add-int/2addr v5, v7

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 264
    .end local v1    # "array":[S
    :cond_21
    return-object v6
.end method

.method public static native contains([SS)Z
.end method

.method private static native copyOf([SI)[S
.end method

.method public static native ensureCapacity([SII)[S
.end method

.method public static native fromByteArray([B)S
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation
.end method

.method public static native fromBytes(BB)S
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation
.end method

.method public static native hashCode(S)I
.end method

.method public static native indexOf([SS)I
.end method

.method private static native indexOf([SSII)I
.end method

.method public static native indexOf([S[S)I
.end method

.method public static varargs join(Ljava/lang/String;[S)Ljava/lang/String;
    .registers 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [S

    .prologue
    .line 359
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    array-length v2, p1

    if-nez v2, :cond_9

    .line 361
    const-string v2, ""

    .line 370
    :goto_8
    return-object v2

    .line 365
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 366
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-short v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 368
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-short v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 370
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static native lastIndexOf([SS)I
.end method

.method private static native lastIndexOf([SSII)I
.end method

.method public static native lexicographicalComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[S>;"
        }
    .end annotation
.end method

.method public static varargs max([S)S
    .registers 5
    .param p0, "array"    # [S

    .prologue
    const/4 v3, 0x0

    .line 234
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 235
    aget-short v1, p0, v3

    .line 236
    .local v1, "max":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 237
    aget-short v2, p0, v0

    if-le v2, v1, :cond_14

    .line 238
    aget-short v1, p0, v0

    .line 236
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v1    # "max":S
    :cond_17
    move v2, v3

    .line 234
    goto :goto_5

    .line 241
    .restart local v0    # "i":I
    .restart local v1    # "max":S
    :cond_19
    return v1
.end method

.method public static varargs min([S)S
    .registers 5
    .param p0, "array"    # [S

    .prologue
    const/4 v3, 0x0

    .line 215
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 216
    aget-short v1, p0, v3

    .line 217
    .local v1, "min":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 218
    aget-short v2, p0, v0

    if-ge v2, v1, :cond_14

    .line 219
    aget-short v1, p0, v0

    .line 217
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v1    # "min":S
    :cond_17
    move v2, v3

    .line 215
    goto :goto_5

    .line 222
    .restart local v0    # "i":I
    .restart local v1    # "min":S
    :cond_19
    return v1
.end method

.method public static native saturatedCast(J)S
.end method

.method public static native toArray(Ljava/util/Collection;)[S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Short;",
            ">;)[S"
        }
    .end annotation
.end method

.method public static native toByteArray(S)[B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation
.end method
