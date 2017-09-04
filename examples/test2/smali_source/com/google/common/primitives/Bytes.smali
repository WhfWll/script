.class public final Lcom/google/common/primitives/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Bytes$ByteArrayAsList;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/primitives/Bytes;

    const v1, 0x38f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([BBII)I
    .registers 5
    .param p0, "x0"    # [B
    .param p1, "x1"    # B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([BBII)I
    .registers 5
    .param p0, "x0"    # [B
    .param p1, "x1"    # B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([B)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    array-length v0, p0

    if-nez v0, :cond_8

    .line 254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 256
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;-><init>([B)V

    goto :goto_7
.end method

.method public static varargs concat([[B)[B
    .registers 10
    .param p0, "arrays"    # [[B

    .prologue
    .line 165
    const/4 v4, 0x0

    .line 166
    .local v4, "length":I
    move-object v0, p0

    .local v0, "arr$":[[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 167
    .local v1, "array":[B
    array-length v7, v1

    add-int/2addr v4, v7

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 169
    .end local v1    # "array":[B
    :cond_d
    new-array v6, v4, [B

    .line 170
    .local v6, "result":[B
    const/4 v5, 0x0

    .line 171
    .local v5, "pos":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 172
    .restart local v1    # "array":[B
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    array-length v7, v1

    add-int/2addr v5, v7

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 175
    .end local v1    # "array":[B
    :cond_21
    return-object v6
.end method

.method public static native contains([BB)Z
.end method

.method private static native copyOf([BI)[B
.end method

.method public static native ensureCapacity([BII)[B
.end method

.method public static native hashCode(B)I
.end method

.method public static native indexOf([BB)I
.end method

.method private static native indexOf([BBII)I
.end method

.method public static native indexOf([B[B)I
.end method

.method public static native lastIndexOf([BB)I
.end method

.method private static native lastIndexOf([BBII)I
.end method

.method public static native toArray(Ljava/util/Collection;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation
.end method
