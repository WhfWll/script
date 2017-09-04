.class public final Lorg/codehaus/jackson/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "JsonStringEncoder.java"


# static fields
.field private static final HEX_BYTES:[B

.field private static final HEX_CHARS:[C

.field private static final INT_0:I = 0x30

.field private static final INT_BACKSLASH:I = 0x5c

.field private static final INT_U:I = 0x75

.field private static final SURR1_FIRST:I = 0xd800

.field private static final SURR1_LAST:I = 0xdbff

.field private static final SURR2_FIRST:I = 0xdc00

.field private static final SURR2_LAST:I = 0xdfff

.field protected static final _threadEncoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/codehaus/jackson/io/JsonStringEncoder;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

.field protected final _quoteBuffer:[C

.field protected _textBuffer:Lorg/codehaus/jackson/util/TextBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_CHARS:[C

    .line 24
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_BYTES:[B

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x30

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    .line 69
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x2

    aput-char v3, v0, v1

    .line 71
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x3

    aput-char v3, v0, v1

    .line 72
    return-void
.end method

.method private _appendByteEscape(IILorg/codehaus/jackson/util/ByteArrayBuilder;I)I
    .registers 8
    .param p1, "ch"    # I
    .param p2, "escCode"    # I
    .param p3, "byteBuilder"    # Lorg/codehaus/jackson/util/ByteArrayBuilder;
    .param p4, "ptr"    # I

    .prologue
    const/16 v2, 0x30

    .line 360
    invoke-virtual {p3, p4}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->setCurrentSegmentLength(I)V

    .line 361
    const/16 v1, 0x5c

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 362
    if-gez p2, :cond_49

    .line 363
    const/16 v1, 0x75

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 364
    const/16 v1, 0xff

    if-le p1, v1, :cond_42

    .line 365
    shr-int/lit8 v0, p1, 0x8

    .line 366
    .local v0, "hi":I
    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_BYTES:[B

    shr-int/lit8 v2, v0, 0x4

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 367
    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_BYTES:[B

    and-int/lit8 v2, v0, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 368
    and-int/lit16 p1, p1, 0xff

    .line 373
    .end local v0    # "hi":I
    :goto_2b
    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_BYTES:[B

    shr-int/lit8 v2, p1, 0x4

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 374
    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_BYTES:[B

    and-int/lit8 v2, p1, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 378
    :goto_3d
    invoke-virtual {p3}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->getCurrentSegmentLength()I

    move-result v1

    return v1

    .line 370
    :cond_42
    invoke-virtual {p3, v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 371
    invoke-virtual {p3, v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto :goto_2b

    .line 376
    :cond_49
    int-to-byte v1, p2

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto :goto_3d
.end method

.method private _appendSingleEscape(I[C)I
    .registers 7
    .param p1, "escCode"    # I
    .param p2, "quoteBuffer"    # [C

    .prologue
    const/4 v2, 0x1

    .line 346
    if-gez p1, :cond_1e

    .line 347
    add-int/lit8 v1, p1, 0x1

    neg-int v0, v1

    .line 348
    .local v0, "value":I
    const/16 v1, 0x75

    aput-char v1, p2, v2

    .line 350
    const/4 v1, 0x4

    sget-object v2, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_CHARS:[C

    shr-int/lit8 v3, v0, 0x4

    aget-char v2, v2, v3

    aput-char v2, p2, v1

    .line 351
    const/4 v1, 0x5

    sget-object v2, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_CHARS:[C

    and-int/lit8 v3, v0, 0xf

    aget-char v2, v2, v3

    aput-char v2, p2, v1

    .line 352
    const/4 v1, 0x6

    .line 355
    .end local v0    # "value":I
    :goto_1d
    return v1

    .line 354
    :cond_1e
    int-to-char v1, p1

    aput-char v1, p2, v2

    .line 355
    const/4 v1, 0x2

    goto :goto_1d
.end method

.method private _convertSurrogate(II)I
    .registers 6
    .param p1, "firstPart"    # I
    .param p2, "secondPart"    # I

    .prologue
    const v2, 0xdc00

    .line 387
    if-lt p2, v2, :cond_a

    const v0, 0xdfff

    if-le p2, v0, :cond_3b

    .line 388
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; illegal combination"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_3b
    const/high16 v0, 0x10000

    const v1, 0xd800

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p2, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private _throwIllegalSurrogate(I)V
    .registers 5
    .param p1, "code"    # I

    .prologue
    .line 395
    const v0, 0x10ffff

    if-le p1, v0, :cond_28

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_28
    const v0, 0xd800

    if-lt p1, v0, :cond_78

    .line 399
    const v0, 0xdbff

    if-gt p1, v0, :cond_55

    .line 400
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched first part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched second part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lorg/codehaus/jackson/io/JsonStringEncoder;
    .registers 4

    .prologue
    .line 80
    sget-object v2, Lorg/codehaus/jackson/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 81
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/codehaus/jackson/io/JsonStringEncoder;>;"
    if-nez v1, :cond_1d

    const/4 v0, 0x0

    .line 83
    .local v0, "enc":Lorg/codehaus/jackson/io/JsonStringEncoder;
    :goto_b
    if-nez v0, :cond_1c

    .line 84
    new-instance v0, Lorg/codehaus/jackson/io/JsonStringEncoder;

    .end local v0    # "enc":Lorg/codehaus/jackson/io/JsonStringEncoder;
    invoke-direct {v0}, Lorg/codehaus/jackson/io/JsonStringEncoder;-><init>()V

    .line 85
    .restart local v0    # "enc":Lorg/codehaus/jackson/io/JsonStringEncoder;
    sget-object v2, Lorg/codehaus/jackson/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 87
    :cond_1c
    return-object v0

    .line 81
    .end local v0    # "enc":Lorg/codehaus/jackson/io/JsonStringEncoder;
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/io/JsonStringEncoder;

    move-object v0, v2

    goto :goto_b
.end method


# virtual methods
.method public encodeAsUTF8(Ljava/lang/String;)[B
    .registers 12
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 255
    .local v0, "byteBuilder":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    if-nez v0, :cond_c

    .line 257
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .end local v0    # "byteBuilder":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    const/4 v9, 0x0

    invoke-direct {v0, v9}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    .restart local v0    # "byteBuilder":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 259
    :cond_c
    const/4 v3, 0x0

    .line 260
    .local v3, "inputPtr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 261
    .local v2, "inputEnd":I
    const/4 v7, 0x0

    .line 262
    .local v7, "outputPtr":I
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->resetAndGetFirstSegment()[B

    move-result-object v5

    .line 263
    .local v5, "outputBuffer":[B
    array-length v6, v5

    .local v6, "outputEnd":I
    move v4, v3

    .line 266
    .end local v3    # "inputPtr":I
    .local v4, "inputPtr":I
    :goto_18
    if-ge v4, v2, :cond_f0

    .line 267
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c":I
    move v4, v3

    .line 270
    .end local v3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :goto_21
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_46

    .line 271
    if-lt v7, v6, :cond_2d

    .line 272
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 273
    array-length v6, v5

    .line 274
    const/4 v7, 0x0

    .line 276
    :cond_2d
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .local v8, "outputPtr":I
    int-to-byte v9, v1

    aput-byte v9, v5, v7

    .line 277
    if-lt v4, v2, :cond_3d

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v3, v4

    .line 335
    .end local v1    # "c":I
    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :goto_36
    iget-object v9, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v9, v7}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v9

    return-object v9

    .line 280
    .end local v3    # "inputPtr":I
    .end local v7    # "outputPtr":I
    .restart local v1    # "c":I
    .restart local v4    # "inputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_3d
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, v3

    .end local v3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto :goto_21

    .line 284
    :cond_46
    if-lt v7, v6, :cond_ed

    .line 285
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 286
    array-length v6, v5

    .line 287
    const/4 v7, 0x0

    move v8, v7

    .line 289
    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :goto_4f
    const/16 v9, 0x800

    if-ge v1, v9, :cond_71

    .line 290
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v9, v1, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    move v3, v4

    .line 328
    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :goto_5d
    if-lt v7, v6, :cond_65

    .line 329
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 330
    array-length v6, v5

    .line 331
    const/4 v7, 0x0

    .line 333
    :cond_65
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, v3

    .line 334
    .end local v3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto :goto_18

    .line 293
    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_71
    const v9, 0xd800

    if-lt v1, v9, :cond_7b

    const v9, 0xdfff

    if-le v1, v9, :cond_9a

    .line 294
    :cond_7b
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v9, v1, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 295
    if-lt v7, v6, :cond_8c

    .line 296
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 297
    array-length v6, v5

    .line 298
    const/4 v7, 0x0

    .line 300
    :cond_8c
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v3, v4

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_5d

    .line 302
    .end local v3    # "inputPtr":I
    .end local v7    # "outputPtr":I
    .restart local v4    # "inputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_9a
    const v9, 0xdbff

    if-le v1, v9, :cond_a2

    .line 303
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 306
    :cond_a2
    if-lt v4, v2, :cond_a7

    .line 307
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 309
    :cond_a7
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-direct {p0, v1, v9}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_convertSurrogate(II)I

    move-result v1

    .line 310
    const v9, 0x10ffff

    if-le v1, v9, :cond_b9

    .line 311
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 313
    :cond_b9
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v9, v1, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 314
    if-lt v7, v6, :cond_ca

    .line 315
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 316
    array-length v6, v5

    .line 317
    const/4 v7, 0x0

    .line 319
    :cond_ca
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    .line 320
    if-lt v8, v6, :cond_eb

    .line 321
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 322
    array-length v6, v5

    .line 323
    const/4 v7, 0x0

    .line 325
    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    :goto_dd
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    goto/16 :goto_5d

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_eb
    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    goto :goto_dd

    .end local v3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :cond_ed
    move v8, v7

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto/16 :goto_4f

    .end local v1    # "c":I
    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    :cond_f0
    move v3, v4

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto/16 :goto_36
.end method

.method public quoteAsString(Ljava/lang/String;)[C
    .registers 19
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    .line 103
    .local v14, "textBuffer":Lorg/codehaus/jackson/util/TextBuffer;
    if-nez v14, :cond_10

    .line 105
    new-instance v14, Lorg/codehaus/jackson/util/TextBuffer;

    .end local v14    # "textBuffer":Lorg/codehaus/jackson/util/TextBuffer;
    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lorg/codehaus/jackson/util/TextBuffer;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    .restart local v14    # "textBuffer":Lorg/codehaus/jackson/util/TextBuffer;
    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    .line 107
    :cond_10
    invoke-virtual {v14}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v12

    .line 108
    .local v12, "outputBuffer":[C
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v4

    .line 109
    .local v4, "escCodes":[I
    array-length v3, v4

    .line 110
    .local v3, "escCodeCount":I
    const/4 v6, 0x0

    .line 111
    .local v6, "inPtr":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 112
    .local v8, "inputLen":I
    const/4 v10, 0x0

    .line 115
    .local v10, "outPtr":I
    :goto_1f
    if-ge v6, v8, :cond_7b

    .line 118
    :goto_21
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 119
    .local v1, "c":C
    if-ge v1, v3, :cond_6a

    aget v15, v4, v1

    if-eqz v15, :cond_6a

    .line 132
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "inPtr":I
    .local v7, "inPtr":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    aget v2, v4, v15

    .line 133
    .local v2, "escCode":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_appendSingleEscape(I[C)I

    move-result v9

    .line 134
    .local v9, "length":I
    add-int v15, v10, v9

    array-length v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_85

    .line 135
    array-length v15, v12

    sub-int v5, v15, v10

    .line 136
    .local v5, "first":I
    if-lez v5, :cond_5a

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v0, v12, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    :cond_5a
    invoke-virtual {v14}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v12

    .line 140
    sub-int v13, v9, v5

    .line 141
    .local v13, "second":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    invoke-static {v15, v5, v12, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    add-int/2addr v10, v13

    .end local v5    # "first":I
    .end local v13    # "second":I
    :goto_68
    move v6, v7

    .line 148
    .end local v7    # "inPtr":I
    .restart local v6    # "inPtr":I
    goto :goto_1f

    .line 122
    .end local v2    # "escCode":I
    .end local v9    # "length":I
    :cond_6a
    array-length v15, v12

    if-lt v10, v15, :cond_72

    .line 123
    invoke-virtual {v14}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v12

    .line 124
    const/4 v10, 0x0

    .line 126
    :cond_72
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "outPtr":I
    .local v11, "outPtr":I
    aput-char v1, v12, v10

    .line 127
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v8, :cond_83

    move v10, v11

    .line 149
    .end local v1    # "c":C
    .end local v11    # "outPtr":I
    .restart local v10    # "outPtr":I
    :cond_7b
    invoke-virtual {v14, v10}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 150
    invoke-virtual {v14}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v15

    return-object v15

    .end local v10    # "outPtr":I
    .restart local v1    # "c":C
    .restart local v11    # "outPtr":I
    :cond_83
    move v10, v11

    .line 130
    .end local v11    # "outPtr":I
    .restart local v10    # "outPtr":I
    goto :goto_21

    .line 144
    .end local v6    # "inPtr":I
    .restart local v2    # "escCode":I
    .restart local v7    # "inPtr":I
    .restart local v9    # "length":I
    :cond_85
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v0, v12, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    add-int/2addr v10, v9

    goto :goto_68
.end method

.method public quoteAsUTF8(Ljava/lang/String;)[B
    .registers 14
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x7f

    .line 159
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 160
    .local v0, "byteBuilder":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    if-nez v0, :cond_e

    .line 162
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .end local v0    # "byteBuilder":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    const/4 v10, 0x0

    invoke-direct {v0, v10}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    .restart local v0    # "byteBuilder":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 164
    :cond_e
    const/4 v5, 0x0

    .line 165
    .local v5, "inputPtr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 166
    .local v4, "inputEnd":I
    const/4 v8, 0x0

    .line 167
    .local v8, "outputPtr":I
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->resetAndGetFirstSegment()[B

    move-result-object v7

    .line 170
    .local v7, "outputBuffer":[B
    :goto_18
    if-ge v5, v4, :cond_56

    .line 171
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v2

    .line 175
    .local v2, "escCodes":[I
    :goto_1e
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 176
    .local v1, "ch":I
    if-gt v1, v11, :cond_28

    aget v10, v2, v1

    if-eqz v10, :cond_44

    .line 188
    :cond_28
    array-length v10, v7

    if-lt v8, v10, :cond_30

    .line 189
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 190
    const/4 v8, 0x0

    .line 193
    :cond_30
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inputPtr":I
    .local v6, "inputPtr":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 194
    if-gt v1, v11, :cond_5f

    .line 195
    aget v3, v2, v1

    .line 197
    .local v3, "escape":I
    invoke-direct {p0, v1, v3, v0, v8}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_appendByteEscape(IILorg/codehaus/jackson/util/ByteArrayBuilder;I)I

    move-result v8

    .line 198
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->getCurrentSegment()[B

    move-result-object v7

    move v5, v6

    .line 199
    .end local v6    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    goto :goto_18

    .line 179
    .end local v3    # "escape":I
    :cond_44
    array-length v10, v7

    if-lt v8, v10, :cond_4c

    .line 180
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 181
    const/4 v8, 0x0

    .line 183
    :cond_4c
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .local v9, "outputPtr":I
    int-to-byte v10, v1

    aput-byte v10, v7, v8

    .line 184
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v4, :cond_5d

    move v8, v9

    .line 245
    .end local v1    # "ch":I
    .end local v2    # "escCodes":[I
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_56
    iget-object v10, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v10, v8}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v10

    return-object v10

    .end local v8    # "outputPtr":I
    .restart local v1    # "ch":I
    .restart local v2    # "escCodes":[I
    .restart local v9    # "outputPtr":I
    :cond_5d
    move v8, v9

    .line 187
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_1e

    .line 200
    .end local v5    # "inputPtr":I
    .restart local v6    # "inputPtr":I
    :cond_5f
    const/16 v10, 0x7ff

    if-gt v1, v10, :cond_81

    .line 201
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 202
    and-int/lit8 v10, v1, 0x3f

    or-int/lit16 v1, v10, 0x80

    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v5, v6

    .line 239
    .end local v6    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    :goto_72
    array-length v10, v7

    if-lt v8, v10, :cond_7a

    .line 240
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 241
    const/4 v8, 0x0

    .line 243
    :cond_7a
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    int-to-byte v10, v1

    aput-byte v10, v7, v8

    move v8, v9

    .line 244
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_18

    .line 205
    .end local v5    # "inputPtr":I
    .restart local v6    # "inputPtr":I
    :cond_81
    const v10, 0xd800

    if-lt v1, v10, :cond_8b

    const v10, 0xdfff

    if-le v1, v10, :cond_ae

    .line 206
    :cond_8b
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0xc

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 207
    array-length v10, v7

    if-lt v9, v10, :cond_107

    .line 208
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 209
    const/4 v8, 0x0

    .line 211
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :goto_9c
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 212
    and-int/lit8 v10, v1, 0x3f

    or-int/lit16 v1, v10, 0x80

    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v5, v6

    .end local v6    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    goto :goto_72

    .line 214
    .end local v5    # "inputPtr":I
    .restart local v6    # "inputPtr":I
    :cond_ae
    const v10, 0xdbff

    if-le v1, v10, :cond_b6

    .line 215
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 218
    :cond_b6
    if-lt v6, v4, :cond_bb

    .line 219
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 221
    :cond_bb
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-direct {p0, v1, v10}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_convertSurrogate(II)I

    move-result v1

    .line 222
    const v10, 0x10ffff

    if-le v1, v10, :cond_cd

    .line 223
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 225
    :cond_cd
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 226
    array-length v10, v7

    if-lt v9, v10, :cond_105

    .line 227
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 228
    const/4 v8, 0x0

    .line 230
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :goto_de
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 231
    array-length v10, v7

    if-lt v9, v10, :cond_103

    .line 232
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 233
    const/4 v8, 0x0

    .line 235
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :goto_f1
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 236
    and-int/lit8 v10, v1, 0x3f

    or-int/lit16 v1, v10, 0x80

    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto/16 :goto_72

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    :cond_103
    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_f1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    :cond_105
    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_de

    .end local v5    # "inputPtr":I
    .end local v8    # "outputPtr":I
    .restart local v6    # "inputPtr":I
    .restart local v9    # "outputPtr":I
    :cond_107
    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_9c
.end method
