.class public abstract Lorg/codehaus/jackson/impl/JsonGeneratorBase;
.super Lorg/codehaus/jackson/JsonGenerator;
.source "JsonGeneratorBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/impl/JsonGeneratorBase$1;
    }
.end annotation


# instance fields
.field protected _cfgNumbersAsStrings:Z

.field protected _closed:Z

.field protected _features:I

.field protected _objectCodec:Lorg/codehaus/jackson/ObjectCodec;

.field protected _writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method protected constructor <init>(ILorg/codehaus/jackson/ObjectCodec;)V
    .registers 4
    .param p1, "features"    # I
    .param p2, "codec"    # Lorg/codehaus/jackson/ObjectCodec;

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonGenerator;-><init>()V

    .line 72
    iput p1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    .line 73
    invoke-static {}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createRootContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 74
    iput-object p2, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 75
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    .line 76
    return-void
.end method


# virtual methods
.method protected _cantHappen()V
    .registers 3

    .prologue
    .line 485
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract _releaseBuffers()V
.end method

.method protected _reportError(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 480
    new-instance v0, Lorg/codehaus/jackson/JsonGenerationException;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _reportUnsupportedOperation()V
    .registers 4

    .prologue
    .line 568
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported by generator of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final _throwInternal()V
    .registers 3

    .prologue
    .line 561
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: this code path should never get executed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract _verifyValueWrite(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method protected _writeEndArray()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    return-void
.end method

.method protected _writeEndObject()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    return-void
.end method

.method protected _writeSimpleObject(Ljava/lang/Object;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 502
    if-nez p1, :cond_6

    .line 503
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNull()V

    .line 554
    .end local p1    # "value":Ljava/lang/Object;
    :goto_5
    return-void

    .line 506
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 507
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .line 510
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_10
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_90

    move-object v0, p1

    .line 511
    check-cast v0, Ljava/lang/Number;

    .line 512
    .local v0, "n":Ljava/lang/Number;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_23

    .line 513
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(I)V

    goto :goto_5

    .line 515
    :cond_23
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2f

    .line 516
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(J)V

    goto :goto_5

    .line 518
    :cond_2f
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3b

    .line 519
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(D)V

    goto :goto_5

    .line 521
    :cond_3b
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_47

    .line 522
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(F)V

    goto :goto_5

    .line 524
    :cond_47
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_53

    .line 525
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(I)V

    goto :goto_5

    .line 527
    :cond_53
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_5f

    .line 528
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(I)V

    goto :goto_5

    .line 530
    :cond_5f
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_69

    .line 531
    check-cast v0, Ljava/math/BigInteger;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_5

    .line 533
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_69
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_73

    .line 534
    check-cast v0, Ljava/math/BigDecimal;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_5

    .line 539
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_73
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_81

    .line 540
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(I)V

    goto :goto_5

    .line 542
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_81
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_bb

    .line 543
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(J)V

    goto/16 :goto_5

    .line 546
    :cond_90
    instance-of v1, p1, [B

    if-eqz v1, :cond_9d

    .line 547
    check-cast p1, [B

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeBinary([B)V

    goto/16 :goto_5

    .line 549
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_9d
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_ac

    .line 550
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeBoolean(Z)V

    goto/16 :goto_5

    .line 552
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_ac
    instance-of v1, p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_bb

    .line 553
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeBoolean(Z)V

    goto/16 :goto_5

    .line 556
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_bb
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected _writeStartArray()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    return-void
.end method

.method protected _writeStartObject()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 211
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_closed:Z

    .line 349
    return-void
.end method

.method public final copyCurrentEvent(Lorg/codehaus/jackson/JsonParser;)V
    .registers 6
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 366
    .local v0, "t":Lorg/codehaus/jackson/JsonToken;
    if-nez v0, :cond_b

    .line 367
    const-string v1, "No current event to copy"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 369
    :cond_b
    sget-object v1, Lorg/codehaus/jackson/impl/JsonGeneratorBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_ba

    .line 429
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cantHappen()V

    .line 431
    :goto_19
    return-void

    .line 371
    :pswitch_1a
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeStartObject()V

    goto :goto_19

    .line 374
    :pswitch_1e
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeEndObject()V

    goto :goto_19

    .line 377
    :pswitch_22
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeStartArray()V

    goto :goto_19

    .line 380
    :pswitch_26
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeEndArray()V

    goto :goto_19

    .line 383
    :pswitch_2a
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeFieldName(Ljava/lang/String;)V

    goto :goto_19

    .line 386
    :pswitch_32
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->hasTextCharacters()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 387
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getTextCharacters()[C

    move-result-object v1

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getTextOffset()I

    move-result v2

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getTextLength()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeString([CII)V

    goto :goto_19

    .line 389
    :cond_48
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeString(Ljava/lang/String;)V

    goto :goto_19

    .line 393
    :pswitch_50
    sget-object v1, Lorg/codehaus/jackson/impl/JsonGeneratorBase$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_d6

    .line 401
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(J)V

    goto :goto_19

    .line 395
    :pswitch_67
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(I)V

    goto :goto_19

    .line 398
    :pswitch_6f
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_19

    .line 405
    :pswitch_77
    sget-object v1, Lorg/codehaus/jackson/impl/JsonGeneratorBase$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_de

    .line 413
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(D)V

    goto :goto_19

    .line 407
    :pswitch_8e
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_19

    .line 410
    :pswitch_96
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(F)V

    goto/16 :goto_19

    .line 417
    :pswitch_9f
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeBoolean(Z)V

    goto/16 :goto_19

    .line 420
    :pswitch_a5
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeBoolean(Z)V

    goto/16 :goto_19

    .line 423
    :pswitch_ab
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNull()V

    goto/16 :goto_19

    .line 426
    :pswitch_b0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_19

    .line 369
    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1e
        :pswitch_22
        :pswitch_26
        :pswitch_2a
        :pswitch_32
        :pswitch_50
        :pswitch_77
        :pswitch_9f
        :pswitch_a5
        :pswitch_ab
        :pswitch_b0
    .end packed-switch

    .line 393
    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_67
        :pswitch_6f
    .end packed-switch

    .line 405
    :pswitch_data_de
    .packed-switch 0x3
        :pswitch_8e
        :pswitch_96
    .end packed-switch
.end method

.method public final copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V
    .registers 5
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 440
    .local v0, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_13

    .line 441
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeFieldName(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 446
    :cond_13
    sget-object v1, Lorg/codehaus/jackson/impl/JsonGeneratorBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_48

    .line 462
    :pswitch_1e
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->copyCurrentEvent(Lorg/codehaus/jackson/JsonParser;)V

    .line 464
    :goto_21
    return-void

    .line 448
    :pswitch_22
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeStartArray()V

    .line 449
    :goto_25
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_31

    .line 450
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    goto :goto_25

    .line 452
    :cond_31
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeEndArray()V

    goto :goto_21

    .line 455
    :pswitch_35
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeStartObject()V

    .line 456
    :goto_38
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_44

    .line 457
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    goto :goto_38

    .line 459
    :cond_44
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeEndObject()V

    goto :goto_21

    .line 446
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_35
        :pswitch_1e
        :pswitch_22
    .end packed-switch
.end method

.method public disable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonGenerator;
    .registers 5
    .param p1, "f"    # Lorg/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    const/4 v2, 0x0

    .line 102
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    .line 103
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    if-ne p1, v0, :cond_13

    .line 104
    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    .line 108
    :cond_12
    :goto_12
    return-object p0

    .line 105
    :cond_13
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lorg/codehaus/jackson/JsonGenerator$Feature;

    if-ne p1, v0, :cond_12

    .line 106
    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->setHighestNonEscapedChar(I)Lorg/codehaus/jackson/JsonGenerator;

    goto :goto_12
.end method

.method public enable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonGenerator;
    .registers 4
    .param p1, "f"    # Lorg/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 91
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    .line 92
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    if-ne p1, v0, :cond_11

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    .line 97
    :cond_10
    :goto_10
    return-object p0

    .line 94
    :cond_11
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lorg/codehaus/jackson/JsonGenerator$Feature;

    if-ne p1, v0, :cond_10

    .line 95
    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->setHighestNonEscapedChar(I)Lorg/codehaus/jackson/JsonGenerator;

    goto :goto_10
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getCodec()Lorg/codehaus/jackson/ObjectCodec;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public bridge synthetic getOutputContext()Lorg/codehaus/jackson/JsonStreamContext;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->getOutputContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputContext()Lorg/codehaus/jackson/impl/JsonWriteContext;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 352
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_closed:Z

    return v0
.end method

.method public final isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z
    .registers 4
    .param p1, "f"    # Lorg/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 115
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setCodec(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonGenerator;
    .registers 2
    .param p1, "oc"    # Lorg/codehaus/jackson/ObjectCodec;

    .prologue
    .line 125
    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 126
    return-object p0
.end method

.method public useDefaultPrettyPrinter()Lorg/codehaus/jackson/JsonGenerator;
    .registers 2

    .prologue
    .line 120
    new-instance v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;-><init>()V

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->setPrettyPrinter(Lorg/codehaus/jackson/PrettyPrinter;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public writeEndArray()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_24

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 177
    :cond_24
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_3c

    .line 178
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->writeEndArray(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 182
    :goto_33
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 183
    return-void

    .line 180
    :cond_3c
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeEndArray()V

    goto :goto_33
.end method

.method public writeEndObject()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_24

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 219
    :cond_24
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 220
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_3c

    .line 221
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->writeEndObject(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 225
    :goto_3b
    return-void

    .line 223
    :cond_3c
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeEndObject()V

    goto :goto_3b
.end method

.method public writeObject(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 304
    if-nez p1, :cond_6

    .line 306
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNull()V

    .line 319
    :goto_5
    return-void

    .line 313
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    if-eqz v0, :cond_10

    .line 314
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/ObjectCodec;->writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_5

    .line 317
    :cond_10
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeSimpleObject(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 253
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeRaw(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 261
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeRaw(Ljava/lang/String;II)V

    .line 263
    return-void
.end method

.method public writeRawValue([CII)V
    .registers 5
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 269
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeRaw([CII)V

    .line 271
    return-void
.end method

.method public writeStartArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 154
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildArrayContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 156
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_17

    .line 157
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeStartArray(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 161
    :goto_16
    return-void

    .line 159
    :cond_17
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeStartArray()V

    goto :goto_16
.end method

.method public writeStartObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 196
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildObjectContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 198
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_17

    .line 199
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeStartObject(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 203
    :goto_16
    return-void

    .line 201
    :cond_17
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_writeStartObject()V

    goto :goto_16
.end method

.method public writeTree(Lorg/codehaus/jackson/JsonNode;)V
    .registers 4
    .param p1, "rootNode"    # Lorg/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 326
    if-nez p1, :cond_6

    .line 327
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->writeNull()V

    .line 334
    :goto_5
    return-void

    .line 329
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    if-nez v0, :cond_12

    .line 330
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the generator, can not serialize JsonNode-based trees"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_12
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/ObjectCodec;->writeTree(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_5
.end method
