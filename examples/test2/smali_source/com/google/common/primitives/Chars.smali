.class public final Lcom/google/common/primitives/Chars;
.super Ljava/lang/Object;
.source "Chars.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Chars$CharArrayAsList;,
        Lcom/google/common/primitives/Chars$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/primitives/Chars;

    const v1, 0x391

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([CCII)I
    .registers 5
    .param p0, "x0"    # [C
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->indexOf([CCII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([CCII)I
    .registers 5
    .param p0, "x0"    # [C
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([C)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    array-length v0, p0

    if-nez v0, :cond_8

    .line 455
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 457
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([C)V

    goto :goto_7
.end method

.method public static native checkedCast(J)C
.end method

.method public static native compare(CC)I
.end method

.method public static varargs concat([[C)[C
    .registers 10
    .param p0, "arrays"    # [[C

    .prologue
    .line 256
    const/4 v4, 0x0

    .line 257
    .local v4, "length":I
    move-object v0, p0

    .local v0, "arr$":[[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 258
    .local v1, "array":[C
    array-length v7, v1

    add-int/2addr v4, v7

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 260
    .end local v1    # "array":[C
    :cond_d
    new-array v6, v4, [C

    .line 261
    .local v6, "result":[C
    const/4 v5, 0x0

    .line 262
    .local v5, "pos":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 263
    .restart local v1    # "array":[C
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    array-length v7, v1

    add-int/2addr v5, v7

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 266
    .end local v1    # "array":[C
    :cond_21
    return-object v6
.end method

.method public static native contains([CC)Z
.end method

.method private static native copyOf([CI)[C
.end method

.method public static native ensureCapacity([CII)[C
.end method

.method public static native fromByteArray([B)C
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation
.end method

.method public static native fromBytes(BB)C
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation
.end method

.method public static native hashCode(C)I
.end method

.method public static native indexOf([CC)I
.end method

.method private static native indexOf([CCII)I
.end method

.method public static native indexOf([C[C)I
.end method

.method public static varargs join(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 7
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [C

    .prologue
    .line 360
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    array-length v2, p1

    .line 362
    .local v2, "len":I
    if-nez v2, :cond_9

    .line 363
    const-string v3, ""

    .line 372
    :goto_8
    return-object v3

    .line 366
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v2, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 368
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    aget-char v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1d
    if-ge v1, v2, :cond_2b

    .line 370
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-char v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 372
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method public static native lastIndexOf([CC)I
.end method

.method private static native lastIndexOf([CCII)I
.end method

.method public static native lexicographicalComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[C>;"
        }
    .end annotation
.end method

.method public static varargs max([C)C
    .registers 5
    .param p0, "array"    # [C

    .prologue
    const/4 v3, 0x0

    .line 236
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 237
    aget-char v1, p0, v3

    .line 238
    .local v1, "max":C
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 239
    aget-char v2, p0, v0

    if-le v2, v1, :cond_14

    .line 240
    aget-char v1, p0, v0

    .line 238
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v1    # "max":C
    :cond_17
    move v2, v3

    .line 236
    goto :goto_5

    .line 243
    .restart local v0    # "i":I
    .restart local v1    # "max":C
    :cond_19
    return v1
.end method

.method public static varargs min([C)C
    .registers 5
    .param p0, "array"    # [C

    .prologue
    const/4 v3, 0x0

    .line 217
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 218
    aget-char v1, p0, v3

    .line 219
    .local v1, "min":C
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 220
    aget-char v2, p0, v0

    if-ge v2, v1, :cond_14

    .line 221
    aget-char v1, p0, v0

    .line 219
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    .end local v1    # "min":C
    :cond_17
    move v2, v3

    .line 217
    goto :goto_5

    .line 224
    .restart local v0    # "i":I
    .restart local v1    # "min":C
    :cond_19
    return v1
.end method

.method public static native saturatedCast(J)C
.end method

.method public static native toArray(Ljava/util/Collection;)[C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation
.end method

.method public static native toByteArray(C)[B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation
.end method
