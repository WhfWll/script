.class public Lorg/codehaus/jackson/node/TreeTraversingParser;
.super Lorg/codehaus/jackson/impl/JsonParserMinimalBase;
.source "TreeTraversingParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/node/TreeTraversingParser$1;
    }
.end annotation


# instance fields
.field protected _closed:Z

.field protected _nextToken:Lorg/codehaus/jackson/JsonToken;

.field protected _nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

.field protected _objectCodec:Lorg/codehaus/jackson/ObjectCodec;

.field protected _startContainer:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonNode;)V
    .registers 3
    .param p1, "n"    # Lorg/codehaus/jackson/JsonNode;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/TreeTraversingParser;-><init>(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/ObjectCodec;)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/ObjectCodec;)V
    .registers 5
    .param p1, "n"    # Lorg/codehaus/jackson/JsonNode;
    .param p2, "codec"    # Lorg/codehaus/jackson/ObjectCodec;

    .prologue
    const/4 v1, 0x0

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserMinimalBase;-><init>(I)V

    .line 71
    iput-object p2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 72
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->isArray()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 73
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 74
    new-instance v0, Lorg/codehaus/jackson/node/NodeCursor$Array;

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/node/NodeCursor$Array;-><init>(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/node/NodeCursor;)V

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    .line 81
    :goto_18
    return-void

    .line 75
    :cond_19
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->isObject()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 76
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 77
    new-instance v0, Lorg/codehaus/jackson/node/NodeCursor$Object;

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/node/NodeCursor$Object;-><init>(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/node/NodeCursor;)V

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    goto :goto_18

    .line 79
    :cond_2b
    new-instance v0, Lorg/codehaus/jackson/node/NodeCursor$RootValue;

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/node/NodeCursor$RootValue;-><init>(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/node/NodeCursor;)V

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    goto :goto_18
.end method


# virtual methods
.method protected _handleEOF()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->_throwInternal()V

    .line 376
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_closed:Z

    if-nez v0, :cond_c

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_closed:Z

    .line 104
    iput-object v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    .line 105
    iput-object v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 107
    :cond_c
    return-void
.end method

.method protected currentNode()Lorg/codehaus/jackson/JsonNode;
    .registers 2

    .prologue
    .line 356
    iget-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_closed:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    if-nez v0, :cond_a

    .line 357
    :cond_8
    const/4 v0, 0x0

    .line 359
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->currentNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    goto :goto_9
.end method

.method protected currentNumericNode()Lorg/codehaus/jackson/JsonNode;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->currentNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 366
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->isNumber()Z

    move-result v2

    if-nez v2, :cond_32

    .line 367
    :cond_c
    if-nez v0, :cond_2d

    const/4 v1, 0x0

    .line 368
    .local v1, "t":Lorg/codehaus/jackson/JsonToken;
    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current token ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/node/TreeTraversingParser;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v2

    throw v2

    .line 367
    .end local v1    # "t":Lorg/codehaus/jackson/JsonToken;
    :cond_2d
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->asToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_f

    .line 370
    :cond_32
    return-object v0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->currentNumericNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryValue(Lorg/codehaus/jackson/Base64Variant;)[B
    .registers 6
    .param p1, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->currentNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 331
    .local v1, "n":Lorg/codehaus/jackson/JsonNode;
    if-eqz v1, :cond_23

    .line 332
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->getBinaryValue()[B

    move-result-object v0

    .line 334
    .local v0, "data":[B
    if-eqz v0, :cond_d

    .line 346
    .end local v0    # "data":[B
    .end local v1    # "n":Lorg/codehaus/jackson/JsonNode;
    :goto_c
    return-object v0

    .line 338
    .restart local v0    # "data":[B
    .restart local v1    # "n":Lorg/codehaus/jackson/JsonNode;
    :cond_d
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->isPojo()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 339
    check-cast v1, Lorg/codehaus/jackson/node/POJONode;

    .end local v1    # "n":Lorg/codehaus/jackson/JsonNode;
    invoke-virtual {v1}, Lorg/codehaus/jackson/node/POJONode;->getPojo()Ljava/lang/Object;

    move-result-object v2

    .line 340
    .local v2, "ob":Ljava/lang/Object;
    instance-of v3, v2, [B

    if-eqz v3, :cond_23

    .line 341
    check-cast v2, [B

    .end local v2    # "ob":Ljava/lang/Object;
    check-cast v2, [B

    move-object v0, v2

    goto :goto_c

    .line 346
    .end local v0    # "data":[B
    :cond_23
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getCodec()Lorg/codehaus/jackson/ObjectCodec;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;
    .registers 2

    .prologue
    .line 202
    sget-object v0, Lorg/codehaus/jackson/JsonLocation;->NA:Lorg/codehaus/jackson/JsonLocation;

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->currentNumericNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->currentNumericNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 310
    iget-boolean v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_closed:Z

    if-nez v1, :cond_17

    .line 311
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->currentNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 312
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->isPojo()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 313
    check-cast v0, Lorg/codehaus/jackson/node/POJONode;

    .end local v0    # "n":Lorg/codehaus/jackson/JsonNode;
    invoke-virtual {v0}, Lorg/codehaus/jackson/node/POJONode;->getPojo()Ljava/lang/Object;

    move-result-object v1

    .line 316
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getFloatValue()F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->currentNumericNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->getDoubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getIntValue()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->currentNumericNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getLongValue()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->currentNumericNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->getLongValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->currentNumericNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 269
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    goto :goto_7
.end method

.method public getNumberValue()Ljava/lang/Number;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->currentNumericNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getParsingContext()Lorg/codehaus/jackson/JsonStreamContext;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-boolean v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_closed:Z

    if-eqz v2, :cond_6

    .line 234
    :cond_5
    :goto_5
    return-object v1

    .line 218
    :cond_6
    sget-object v2, Lorg/codehaus/jackson/node/TreeTraversingParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v3, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4c

    .line 234
    :cond_13
    iget-object v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v2, :cond_5

    iget-object v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 220
    :pswitch_1e
    iget-object v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v1}, Lorg/codehaus/jackson/node/NodeCursor;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 222
    :pswitch_25
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->currentNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 225
    :pswitch_2e
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->currentNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->getNumberValue()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 227
    :pswitch_3b
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->currentNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 228
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->isBinary()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 230
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->getValueAsText()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 218
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_25
        :pswitch_2e
        :pswitch_2e
        :pswitch_3b
    .end packed-switch
.end method

.method public getTextCharacters()[C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getTextOffset()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public getTokenLocation()Lorg/codehaus/jackson/JsonLocation;
    .registers 2

    .prologue
    .line 197
    sget-object v0, Lorg/codehaus/jackson/JsonLocation;->NA:Lorg/codehaus/jackson/JsonLocation;

    return-object v0
.end method

.method public hasTextCharacters()Z
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_closed:Z

    return v0
.end method

.method public nextToken()Lorg/codehaus/jackson/JsonToken;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 118
    iget-object v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_f

    .line 119
    iget-object v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    iput-object v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 120
    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 121
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 155
    :goto_e
    return-object v0

    .line 124
    :cond_f
    iget-boolean v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_startContainer:Z

    if-eqz v1, :cond_4f

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_startContainer:Z

    .line 127
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->currentHasChildren()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 128
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2b

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    :goto_26
    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 130
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_e

    .line 128
    :cond_2b
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    goto :goto_26

    .line 132
    :cond_2e
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->iterateChildren()Lorg/codehaus/jackson/node/NodeCursor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    .line 133
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 134
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_4a

    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4c

    .line 135
    :cond_4a
    iput-boolean v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_startContainer:Z

    .line 137
    :cond_4c
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_e

    .line 140
    :cond_4f
    iget-object v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    if-nez v1, :cond_56

    .line 141
    iput-boolean v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_closed:Z

    goto :goto_e

    .line 145
    :cond_56
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 146
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_73

    .line 147
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_6e

    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_70

    .line 148
    :cond_6e
    iput-boolean v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_startContainer:Z

    .line 150
    :cond_70
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_e

    .line 153
    :cond_73
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->endToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 154
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->getParent()Lorg/codehaus/jackson/node/NodeCursor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_nodeCursor:Lorg/codehaus/jackson/node/NodeCursor;

    .line 155
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_e
.end method

.method public setCodec(Lorg/codehaus/jackson/ObjectCodec;)V
    .registers 2
    .param p1, "c"    # Lorg/codehaus/jackson/ObjectCodec;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 86
    return-void
.end method

.method public skipChildren()Lorg/codehaus/jackson/JsonParser;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_e

    .line 165
    iput-boolean v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_startContainer:Z

    .line 166
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 171
    :cond_d
    :goto_d
    return-object p0

    .line 167
    :cond_e
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_d

    .line 168
    iput-boolean v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_startContainer:Z

    .line 169
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_d
.end method
