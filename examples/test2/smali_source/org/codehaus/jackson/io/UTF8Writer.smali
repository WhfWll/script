.class public final Lorg/codehaus/jackson/io/UTF8Writer;
.super Ljava/io/Writer;
.source "UTF8Writer.java"


# static fields
.field static final SURR1_FIRST:I = 0xd800

.field static final SURR1_LAST:I = 0xdbff

.field static final SURR2_FIRST:I = 0xdc00

.field static final SURR2_LAST:I = 0xdfff


# instance fields
.field protected final _context:Lorg/codehaus/jackson/io/IOContext;

.field _out:Ljava/io/OutputStream;

.field _outBuffer:[B

.field final _outBufferEnd:I

.field _outPtr:I

.field _surrogate:I


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "ctxt"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 29
    iput v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_surrogate:I

    .line 33
    iput-object p1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_context:Lorg/codehaus/jackson/io/IOContext;

    .line 34
    iput-object p2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    .line 36
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocWriteEncodingBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    .line 41
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBufferEnd:I

    .line 42
    iput v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    .line 43
    return-void
.end method

.method private convertSurrogate(I)I
    .registers 6
    .param p1, "secondPart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v3, 0xdc00

    .line 361
    iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_surrogate:I

    .line 362
    .local v0, "firstPart":I
    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_surrogate:I

    .line 365
    if-lt p1, v3, :cond_f

    const v1, 0xdfff

    if-le p1, v1, :cond_40

    .line 366
    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broken surrogate pair: first char 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", second 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; illegal combination"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_40
    const/high16 v1, 0x10000

    const v2, 0xd800

    sub-int v2, v0, v2

    shl-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    sub-int v2, p1, v3

    add-int/2addr v1, v2

    return v1
.end method

.method private throwIllegal(I)V
    .registers 5
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    const v0, 0x10ffff

    if-le p1, v0, :cond_28

    .line 375
    new-instance v0, Ljava/io/IOException;

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

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_28
    const v0, 0xd800

    if-lt p1, v0, :cond_78

    .line 378
    const v0, 0xdbff

    if-gt p1, v0, :cond_55

    .line 379
    new-instance v0, Ljava/io/IOException;

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

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_55
    new-instance v0, Ljava/io/IOException;

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

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_78
    new-instance v0, Ljava/io/IOException;

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

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .registers 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V

    .line 50
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 57
    iget-object v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    if-eqz v3, :cond_30

    .line 58
    iget v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    if-lez v3, :cond_15

    .line 59
    iget-object v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 60
    iput v6, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    .line 62
    :cond_15
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    .line 63
    .local v2, "out":Ljava/io/OutputStream;
    iput-object v7, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    .line 65
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    .line 66
    .local v0, "buf":[B
    if-eqz v0, :cond_24

    .line 67
    iput-object v7, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    .line 68
    iget-object v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_context:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseWriteEncodingBuffer([B)V

    .line 71
    :cond_24
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 76
    iget v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_surrogate:I

    .line 77
    .local v1, "code":I
    iput v6, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_surrogate:I

    .line 78
    if-lez v1, :cond_30

    .line 79
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 82
    .end local v0    # "buf":[B
    .end local v1    # "code":I
    .end local v2    # "out":Ljava/io/OutputStream;
    :cond_30
    return-void
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_19

    .line 89
    iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    if-lez v0, :cond_14

    .line 90
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    iput v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    .line 93
    :cond_14
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 95
    :cond_19
    return-void
.end method

.method public write(I)V
    .registers 8
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 205
    iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_surrogate:I

    if-lez v2, :cond_2a

    .line 206
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I

    move-result p1

    .line 218
    :cond_9
    iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    iget v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBufferEnd:I

    if-lt v2, v3, :cond_1a

    .line 219
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 220
    iput v5, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    .line 223
    :cond_1a
    const/16 v2, 0x80

    if-ge p1, v2, :cond_3f

    .line 224
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    .line 245
    :goto_29
    return-void

    .line 208
    :cond_2a
    const v2, 0xd800

    if-lt p1, v2, :cond_9

    const v2, 0xdfff

    if-gt p1, v2, :cond_9

    .line 210
    const v2, 0xdbff

    if-le p1, v2, :cond_3c

    .line 211
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 214
    :cond_3c
    iput p1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_surrogate:I

    goto :goto_29

    .line 226
    :cond_3f
    iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    .line 227
    .local v0, "ptr":I
    const/16 v2, 0x800

    if-ge p1, v2, :cond_5e

    .line 228
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ptr":I
    .local v1, "ptr":I
    shr-int/lit8 v3, p1, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 229
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v0    # "ptr":I
    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 243
    :goto_5b
    iput v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    goto :goto_29

    .line 230
    :cond_5e
    const v2, 0xffff

    if-gt p1, v2, :cond_88

    .line 231
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ptr":I
    .restart local v1    # "ptr":I
    shr-int/lit8 v3, p1, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 232
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v0    # "ptr":I
    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 233
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ptr":I
    .restart local v1    # "ptr":I
    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    move v0, v1

    .end local v1    # "ptr":I
    .restart local v0    # "ptr":I
    goto :goto_5b

    .line 235
    :cond_88
    const v2, 0x10ffff

    if-le p1, v2, :cond_90

    .line 236
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 238
    :cond_90
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ptr":I
    .restart local v1    # "ptr":I
    shr-int/lit8 v3, p1, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 239
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v0    # "ptr":I
    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 240
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ptr":I
    .restart local v1    # "ptr":I
    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 241
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v0    # "ptr":I
    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    goto :goto_5b
.end method

.method public write(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->write(Ljava/lang/String;II)V

    .line 251
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 16
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x80

    .line 256
    const/4 v9, 0x2

    if-ge p3, v9, :cond_10

    .line 257
    const/4 v9, 0x1

    if-ne p3, v9, :cond_f

    .line 258
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p0, v9}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V

    .line 347
    :cond_f
    :goto_f
    return-void

    .line 264
    :cond_10
    iget v9, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_surrogate:I

    if-lez v9, :cond_24

    .line 265
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 266
    .local v8, "second":C
    add-int/lit8 p3, p3, -0x1

    .line 267
    invoke-direct {p0, v8}, Lorg/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V

    move p2, v3

    .line 271
    .end local v3    # "off":I
    .end local v8    # "second":C
    .restart local p2    # "off":I
    :cond_24
    iget v6, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    .line 272
    .local v6, "outPtr":I
    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    .line 273
    .local v4, "outBuf":[B
    iget v5, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBufferEnd:I

    .line 276
    .local v5, "outBufLast":I
    add-int/2addr p3, p2

    move v3, p2

    .line 279
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_2c
    if-ge v3, p3, :cond_fb

    .line 283
    if-lt v6, v5, :cond_37

    .line 284
    iget-object v9, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 285
    const/4 v6, 0x0

    .line 288
    :cond_37
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 290
    .local v0, "c":I
    if-ge v0, v11, :cond_f7

    .line 291
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    int-to-byte v9, v0

    aput-byte v9, v4, v6

    .line 293
    sub-int v1, p3, p2

    .line 294
    .local v1, "maxInCount":I
    sub-int v2, v5, v7

    .line 296
    .local v2, "maxOutCount":I
    if-le v1, v2, :cond_4b

    .line 297
    move v1, v2

    .line 299
    :cond_4b
    add-int/2addr v1, p2

    move v3, p2

    .line 302
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_4d
    if-lt v3, v1, :cond_51

    move v6, v7

    .line 303
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_2c

    .line 305
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_51
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 306
    if-lt v0, v11, :cond_74

    move v3, p2

    .line 314
    .end local v1    # "maxInCount":I
    .end local v2    # "maxOutCount":I
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_5a
    const/16 v9, 0x800

    if-ge v0, v9, :cond_7c

    .line 315
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 316
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    move p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    :goto_72
    move v3, p2

    .line 345
    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_2c

    .line 309
    .end local v3    # "off":I
    .end local v6    # "outPtr":I
    .restart local v1    # "maxInCount":I
    .restart local v2    # "maxOutCount":I
    .restart local v7    # "outPtr":I
    .restart local p2    # "off":I
    :cond_74
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    int-to-byte v9, v0

    aput-byte v9, v4, v7

    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_4d

    .line 319
    .end local v1    # "maxInCount":I
    .end local v2    # "maxOutCount":I
    :cond_7c
    const v9, 0xd800

    if-lt v0, v9, :cond_86

    const v9, 0xdfff

    if-le v0, v9, :cond_a4

    .line 320
    :cond_86
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 321
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 322
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    goto :goto_2c

    .line 326
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_a4
    const v9, 0xdbff

    if-le v0, v9, :cond_ae

    .line 327
    iput v7, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    .line 328
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 330
    :cond_ae
    iput v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_surrogate:I

    .line 332
    if-lt v3, p3, :cond_b8

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    move p2, v3

    .line 346
    .end local v0    # "c":I
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :goto_b4
    iput v6, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    goto/16 :goto_f

    .line 335
    .end local v6    # "outPtr":I
    .end local p2    # "off":I
    .restart local v0    # "c":I
    .restart local v3    # "off":I
    .restart local v7    # "outPtr":I
    :cond_b8
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-direct {p0, v9}, Lorg/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I

    move-result v0

    .line 336
    const v9, 0x10ffff

    if-le v0, v9, :cond_cc

    .line 337
    iput v7, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    .line 338
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 340
    :cond_cc
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 341
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    shr-int/lit8 v9, v0, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 342
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 343
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_72

    :cond_f7
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto/16 :goto_5a

    .end local v0    # "c":I
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_fb
    move p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    goto :goto_b4
.end method

.method public write([C)V
    .registers 4
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->write([CII)V

    .line 102
    return-void
.end method

.method public write([CII)V
    .registers 16
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x80

    .line 108
    const/4 v9, 0x2

    if-ge p3, v9, :cond_e

    .line 109
    const/4 v9, 0x1

    if-ne p3, v9, :cond_d

    .line 110
    aget-char v9, p1, p2

    invoke-virtual {p0, v9}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V

    .line 199
    :cond_d
    :goto_d
    return-void

    .line 116
    :cond_e
    iget v9, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_surrogate:I

    if-lez v9, :cond_20

    .line 117
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-char v8, p1, p2

    .line 118
    .local v8, "second":C
    add-int/lit8 p3, p3, -0x1

    .line 119
    invoke-direct {p0, v8}, Lorg/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V

    move p2, v3

    .line 123
    .end local v3    # "off":I
    .end local v8    # "second":C
    .restart local p2    # "off":I
    :cond_20
    iget v6, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    .line 124
    .local v6, "outPtr":I
    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBuffer:[B

    .line 125
    .local v4, "outBuf":[B
    iget v5, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outBufferEnd:I

    .line 128
    .local v5, "outBufLast":I
    add-int/2addr p3, p2

    move v3, p2

    .line 131
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_28
    if-ge v3, p3, :cond_f1

    .line 135
    if-lt v6, v5, :cond_33

    .line 136
    iget-object v9, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 137
    const/4 v6, 0x0

    .line 140
    :cond_33
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-char v0, p1, v3

    .line 142
    .local v0, "c":I
    if-ge v0, v11, :cond_ed

    .line 143
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    int-to-byte v9, v0

    aput-byte v9, v4, v6

    .line 145
    sub-int v1, p3, p2

    .line 146
    .local v1, "maxInCount":I
    sub-int v2, v5, v7

    .line 148
    .local v2, "maxOutCount":I
    if-le v1, v2, :cond_45

    .line 149
    move v1, v2

    .line 151
    :cond_45
    add-int/2addr v1, p2

    move v3, p2

    .line 154
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_47
    if-lt v3, v1, :cond_4b

    move v6, v7

    .line 155
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_28

    .line 157
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_4b
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-char v0, p1, v3

    .line 158
    if-lt v0, v11, :cond_6c

    move v3, p2

    .line 166
    .end local v1    # "maxInCount":I
    .end local v2    # "maxOutCount":I
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_52
    const/16 v9, 0x800

    if-ge v0, v9, :cond_74

    .line 167
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 168
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    move p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    :goto_6a
    move v3, p2

    .line 197
    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_28

    .line 161
    .end local v3    # "off":I
    .end local v6    # "outPtr":I
    .restart local v1    # "maxInCount":I
    .restart local v2    # "maxOutCount":I
    .restart local v7    # "outPtr":I
    .restart local p2    # "off":I
    :cond_6c
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    int-to-byte v9, v0

    aput-byte v9, v4, v7

    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_47

    .line 171
    .end local v1    # "maxInCount":I
    .end local v2    # "maxOutCount":I
    :cond_74
    const v9, 0xd800

    if-lt v0, v9, :cond_7e

    const v9, 0xdfff

    if-le v0, v9, :cond_9c

    .line 172
    :cond_7e
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 173
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 174
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    goto :goto_28

    .line 178
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_9c
    const v9, 0xdbff

    if-le v0, v9, :cond_a6

    .line 179
    iput v7, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    .line 180
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 182
    :cond_a6
    iput v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_surrogate:I

    .line 184
    if-lt v3, p3, :cond_b0

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    move p2, v3

    .line 198
    .end local v0    # "c":I
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :goto_ac
    iput v6, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    goto/16 :goto_d

    .line 187
    .end local v6    # "outPtr":I
    .end local p2    # "off":I
    .restart local v0    # "c":I
    .restart local v3    # "off":I
    .restart local v7    # "outPtr":I
    :cond_b0
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-char v9, p1, v3

    invoke-direct {p0, v9}, Lorg/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I

    move-result v0

    .line 188
    const v9, 0x10ffff

    if-le v0, v9, :cond_c2

    .line 189
    iput v7, p0, Lorg/codehaus/jackson/io/UTF8Writer;->_outPtr:I

    .line 190
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 192
    :cond_c2
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 193
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    shr-int/lit8 v9, v0, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 194
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 195
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_6a

    :cond_ed
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto/16 :goto_52

    .end local v0    # "c":I
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_f1
    move p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    goto :goto_ac
.end method
