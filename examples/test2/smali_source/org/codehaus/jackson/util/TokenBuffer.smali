.class public Lorg/codehaus/jackson/util/TokenBuffer;
.super Lorg/codehaus/jackson/JsonGenerator;
.source "TokenBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/util/TokenBuffer$1;,
        Lorg/codehaus/jackson/util/TokenBuffer$Segment;,
        Lorg/codehaus/jackson/util/TokenBuffer$Parser;
    }
.end annotation


# static fields
.field protected static final DEFAULT_PARSER_FEATURES:I


# instance fields
.field protected _appendOffset:I

.field protected _closed:Z

.field protected _first:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

.field protected _generatorFeatures:I

.field protected _last:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

.field protected _objectCodec:Lorg/codehaus/jackson/ObjectCodec;

.field protected _writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lorg/codehaus/jackson/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/util/TokenBuffer;->DEFAULT_PARSER_FEATURES:I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/ObjectCodec;)V
    .registers 3
    .param p1, "codec"    # Lorg/codehaus/jackson/ObjectCodec;

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonGenerator;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 99
    sget v0, Lorg/codehaus/jackson/util/TokenBuffer;->DEFAULT_PARSER_FEATURES:I

    iput v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_generatorFeatures:I

    .line 100
    invoke-static {}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createRootContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 102
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_last:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_first:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    .line 104
    return-void
.end method


# virtual methods
.method protected final _append(Lorg/codehaus/jackson/JsonToken;)V
    .registers 5
    .param p1, "type"    # Lorg/codehaus/jackson/JsonToken;

    .prologue
    .line 726
    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_last:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iget v2, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    invoke-virtual {v1, v2, p1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->append(ILorg/codehaus/jackson/JsonToken;)Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v0

    .line 727
    .local v0, "next":Lorg/codehaus/jackson/util/TokenBuffer$Segment;
    if-nez v0, :cond_11

    .line 728
    iget v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    .line 733
    :goto_10
    return-void

    .line 730
    :cond_11
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_last:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 731
    const/4 v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    goto :goto_10
.end method

.method protected final _append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V
    .registers 6
    .param p1, "type"    # Lorg/codehaus/jackson/JsonToken;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 736
    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_last:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iget v2, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    invoke-virtual {v1, v2, p1, p2}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->append(ILorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v0

    .line 737
    .local v0, "next":Lorg/codehaus/jackson/util/TokenBuffer$Segment;
    if-nez v0, :cond_11

    .line 738
    iget v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    .line 743
    :goto_10
    return-void

    .line 740
    :cond_11
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_last:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 741
    const/4 v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    goto :goto_10
.end method

.method protected _reportUnsupportedOperation()V
    .registers 3

    .prologue
    .line 746
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Called operation not supported for TokenBuffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asParser()Lorg/codehaus/jackson/JsonParser;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public asParser(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonParser;
    .registers 5
    .param p1, "src"    # Lorg/codehaus/jackson/JsonParser;

    .prologue
    .line 145
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_first:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;-><init>(Lorg/codehaus/jackson/util/TokenBuffer$Segment;Lorg/codehaus/jackson/ObjectCodec;)V

    .line 146
    .local v0, "p":Lorg/codehaus/jackson/util/TokenBuffer$Parser;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getTokenLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->setLocation(Lorg/codehaus/jackson/JsonLocation;)V

    .line 147
    return-object v0
.end method

.method public asParser(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonParser;
    .registers 4
    .param p1, "codec"    # Lorg/codehaus/jackson/ObjectCodec;

    .prologue
    .line 136
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_first:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {v0, v1, p1}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;-><init>(Lorg/codehaus/jackson/util/TokenBuffer$Segment;Lorg/codehaus/jackson/ObjectCodec;)V

    return-object v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_closed:Z

    .line 354
    return-void
.end method

.method public copyCurrentEvent(Lorg/codehaus/jackson/JsonParser;)V
    .registers 5
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 625
    sget-object v0, Lorg/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b6

    .line 685
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :pswitch_17
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeStartObject()V

    .line 687
    :goto_1a
    return-void

    .line 630
    :pswitch_1b
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    goto :goto_1a

    .line 633
    :pswitch_1f
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeStartArray()V

    goto :goto_1a

    .line 636
    :pswitch_23
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndArray()V

    goto :goto_1a

    .line 639
    :pswitch_27
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    goto :goto_1a

    .line 642
    :pswitch_2f
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->hasTextCharacters()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 643
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getTextCharacters()[C

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getTextOffset()I

    move-result v1

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getTextLength()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/util/TokenBuffer;->writeString([CII)V

    goto :goto_1a

    .line 645
    :cond_45
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    goto :goto_1a

    .line 649
    :pswitch_4d
    sget-object v0, Lorg/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_d2

    .line 657
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->writeNumber(J)V

    goto :goto_1a

    .line 651
    :pswitch_64
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeNumber(I)V

    goto :goto_1a

    .line 654
    :pswitch_6c
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_1a

    .line 661
    :pswitch_74
    sget-object v0, Lorg/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_da

    .line 669
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->writeNumber(D)V

    goto :goto_1a

    .line 663
    :pswitch_8b
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_1a

    .line 666
    :pswitch_93
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeNumber(F)V

    goto :goto_1a

    .line 673
    :pswitch_9b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeBoolean(Z)V

    goto/16 :goto_1a

    .line 676
    :pswitch_a1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeBoolean(Z)V

    goto/16 :goto_1a

    .line 679
    :pswitch_a7
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeNull()V

    goto/16 :goto_1a

    .line 682
    :pswitch_ac
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 625
    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2f
        :pswitch_4d
        :pswitch_74
        :pswitch_9b
        :pswitch_a1
        :pswitch_a7
        :pswitch_ac
    .end packed-switch

    .line 649
    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_64
        :pswitch_6c
    .end packed-switch

    .line 661
    :pswitch_data_da
    .packed-switch 0x3
        :pswitch_8b
        :pswitch_93
    .end packed-switch
.end method

.method public copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V
    .registers 5
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 694
    .local v0, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_13

    .line 695
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 700
    :cond_13
    sget-object v1, Lorg/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_48

    .line 716
    :pswitch_1e
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentEvent(Lorg/codehaus/jackson/JsonParser;)V

    .line 718
    :goto_21
    return-void

    .line 702
    :pswitch_22
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeStartArray()V

    .line 703
    :goto_25
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_31

    .line 704
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    goto :goto_25

    .line 706
    :cond_31
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndArray()V

    goto :goto_21

    .line 709
    :pswitch_35
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeStartObject()V

    .line 710
    :goto_38
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_44

    .line 711
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    goto :goto_38

    .line 713
    :cond_44
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    goto :goto_21

    .line 700
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_35
        :pswitch_1e
        :pswitch_22
    .end packed-switch
.end method

.method public disable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonGenerator;
    .registers 4
    .param p1, "f"    # Lorg/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 313
    iget v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_generatorFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_generatorFeatures:I

    .line 314
    return-object p0
.end method

.method public enable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonGenerator;
    .registers 4
    .param p1, "f"    # Lorg/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 307
    iget v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_generatorFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_generatorFeatures:I

    .line 308
    return-object p0
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    return-void
.end method

.method public getCodec()Lorg/codehaus/jackson/ObjectCodec;
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public bridge synthetic getOutputContext()Lorg/codehaus/jackson/JsonStreamContext;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->getOutputContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputContext()Lorg/codehaus/jackson/impl/JsonWriteContext;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 357
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_closed:Z

    return v0
.end method

.method public isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z
    .registers 4
    .param p1, "f"    # Lorg/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 321
    iget v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_generatorFeatures:I

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

.method public serialize(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 10
    .param p1, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v3, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_first:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 170
    .local v3, "segment":Lorg/codehaus/jackson/util/TokenBuffer$Segment;
    const/4 v2, -0x1

    .line 173
    .local v2, "ptr":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x10

    if-lt v2, v5, :cond_11

    .line 174
    const/4 v2, 0x0

    .line 175
    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->next()Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v3

    .line 176
    if-nez v3, :cond_11

    .line 262
    :cond_10
    return-void

    .line 178
    :cond_11
    invoke-virtual {v3, v2}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->type(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    .line 179
    .local v4, "t":Lorg/codehaus/jackson/JsonToken;
    if-eqz v4, :cond_10

    .line 182
    sget-object v5, Lorg/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_108

    .line 259
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Internal error: should never end up through this code path"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 184
    :pswitch_2a
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    goto :goto_3

    .line 187
    :pswitch_2e
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    goto :goto_3

    .line 190
    :pswitch_32
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeStartArray()V

    goto :goto_3

    .line 193
    :pswitch_36
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeEndArray()V

    goto :goto_3

    .line 198
    :pswitch_3a
    invoke-virtual {v3, v2}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 199
    .local v1, "ob":Ljava/lang/Object;
    instance-of v5, v1, Lorg/codehaus/jackson/SerializableString;

    if-eqz v5, :cond_48

    .line 200
    check-cast v1, Lorg/codehaus/jackson/SerializableString;

    .end local v1    # "ob":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Lorg/codehaus/jackson/SerializableString;)V

    goto :goto_3

    .line 202
    .restart local v1    # "ob":Ljava/lang/Object;
    :cond_48
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ob":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_3

    .line 208
    :pswitch_4e
    invoke-virtual {v3, v2}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 209
    .restart local v1    # "ob":Ljava/lang/Object;
    instance-of v5, v1, Lorg/codehaus/jackson/SerializableString;

    if-eqz v5, :cond_5c

    .line 210
    check-cast v1, Lorg/codehaus/jackson/SerializableString;

    .end local v1    # "ob":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Lorg/codehaus/jackson/SerializableString;)V

    goto :goto_3

    .line 212
    .restart local v1    # "ob":Ljava/lang/Object;
    :cond_5c
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ob":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 218
    :pswitch_62
    invoke-virtual {v3, v2}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 219
    .local v0, "n":Ljava/lang/Number;
    instance-of v5, v0, Ljava/math/BigInteger;

    if-eqz v5, :cond_72

    .line 220
    check-cast v0, Ljava/math/BigInteger;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_3

    .line 221
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_72
    instance-of v5, v0, Ljava/lang/Long;

    if-eqz v5, :cond_7e

    .line 222
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    goto :goto_3

    .line 224
    :cond_7e
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    goto/16 :goto_3

    .line 230
    .end local v0    # "n":Ljava/lang/Number;
    :pswitch_87
    invoke-virtual {v3, v2}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 231
    .local v0, "n":Ljava/lang/Object;
    instance-of v5, v0, Ljava/math/BigDecimal;

    if-eqz v5, :cond_96

    .line 232
    check-cast v0, Ljava/math/BigDecimal;

    .end local v0    # "n":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    goto/16 :goto_3

    .line 233
    .restart local v0    # "n":Ljava/lang/Object;
    :cond_96
    instance-of v5, v0, Ljava/lang/Float;

    if-eqz v5, :cond_a5

    .line 234
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "n":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p1, v5}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    goto/16 :goto_3

    .line 235
    .restart local v0    # "n":Ljava/lang/Object;
    :cond_a5
    instance-of v5, v0, Ljava/lang/Double;

    if-eqz v5, :cond_b4

    .line 236
    check-cast v0, Ljava/lang/Double;

    .end local v0    # "n":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    goto/16 :goto_3

    .line 237
    .restart local v0    # "n":Ljava/lang/Object;
    :cond_b4
    if-nez v0, :cond_bb

    .line 238
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    goto/16 :goto_3

    .line 239
    :cond_bb
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_c6

    .line 240
    check-cast v0, Ljava/lang/String;

    .end local v0    # "n":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 242
    .restart local v0    # "n":Ljava/lang/Object;
    :cond_c6
    new-instance v5, Lorg/codehaus/jackson/JsonGenerationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized value type for VALUE_NUMBER_FLOAT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", can not serialize"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 247
    .end local v0    # "n":Ljava/lang/Object;
    :pswitch_ed
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lorg/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    goto/16 :goto_3

    .line 250
    :pswitch_f3
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    goto/16 :goto_3

    .line 253
    :pswitch_f9
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    goto/16 :goto_3

    .line 256
    :pswitch_fe
    invoke-virtual {v3, v2}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 182
    nop

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2e
        :pswitch_32
        :pswitch_36
        :pswitch_3a
        :pswitch_4e
        :pswitch_62
        :pswitch_87
        :pswitch_ed
        :pswitch_f3
        :pswitch_f9
        :pswitch_fe
    .end packed-switch
.end method

.method public setCodec(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonGenerator;
    .registers 2
    .param p1, "oc"    # Lorg/codehaus/jackson/ObjectCodec;

    .prologue
    .line 332
    iput-object p1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 333
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v7, 0x64

    .line 268
    const/16 v0, 0x64

    .line 270
    .local v0, "MAX_COUNT":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v6, "[TokenBuffer: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser()Lorg/codehaus/jackson/JsonParser;

    move-result-object v3

    .line 273
    .local v3, "jp":Lorg/codehaus/jackson/JsonParser;
    const/4 v1, 0x0

    .line 278
    .local v1, "count":I
    :goto_13
    :try_start_13
    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_36

    move-result-object v5

    .line 282
    .local v5, "t":Lorg/codehaus/jackson/JsonToken;
    if-nez v5, :cond_3d

    .line 292
    if-lt v1, v7, :cond_2c

    .line 293
    const-string v6, " ... (truncated "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, -0x64

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " entries)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_2c
    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 279
    .end local v5    # "t":Lorg/codehaus/jackson/JsonToken;
    :catch_36
    move-exception v2

    .line 280
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 283
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v5    # "t":Lorg/codehaus/jackson/JsonToken;
    :cond_3d
    if-ge v1, v7, :cond_4d

    .line 284
    if-lez v1, :cond_46

    .line 285
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_46
    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonToken;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    .line 290
    goto :goto_13
.end method

.method public useDefaultPrettyPrinter()Lorg/codehaus/jackson/JsonGenerator;
    .registers 1

    .prologue
    .line 327
    return-object p0
.end method

.method public writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .registers 7
    .param p1, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 611
    new-array v0, p4, [B

    .line 612
    .local v0, "copy":[B
    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeObject(Ljava/lang/Object;)V

    .line 614
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 3
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 563
    if-eqz p1, :cond_8

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    :goto_4
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;)V

    .line 564
    return-void

    .line 563
    :cond_8
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_4
.end method

.method public final writeEndArray()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 377
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;)V

    .line 379
    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 380
    .local v0, "c":Lorg/codehaus/jackson/impl/JsonWriteContext;
    if-eqz v0, :cond_f

    .line 381
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 383
    :cond_f
    return-void
.end method

.method public final writeEndObject()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 397
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;)V

    .line 399
    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 400
    .local v0, "c":Lorg/codehaus/jackson/impl/JsonWriteContext;
    if-eqz v0, :cond_f

    .line 401
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 403
    :cond_f
    return-void
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 409
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public writeFieldName(Lorg/codehaus/jackson/SerializableString;)V
    .registers 4
    .param p1, "name"    # Lorg/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 417
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method public writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V
    .registers 4
    .param p1, "name"    # Lorg/codehaus/jackson/io/SerializedString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 425
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 426
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {p1}, Lorg/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    .line 427
    return-void
.end method

.method public writeNull()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 568
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;)V

    .line 569
    return-void
.end method

.method public writeNumber(D)V
    .registers 6
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 527
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 528
    return-void
.end method

.method public writeNumber(F)V
    .registers 4
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 532
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 533
    return-void
.end method

.method public writeNumber(I)V
    .registers 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 517
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 518
    return-void
.end method

.method public writeNumber(J)V
    .registers 6
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 522
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 523
    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .registers 3
    .param p1, "encodedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 558
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 559
    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .registers 3
    .param p1, "dec"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 537
    if-nez p1, :cond_6

    .line 538
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeNull()V

    .line 542
    :goto_5
    return-void

    .line 540
    :cond_6
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .registers 3
    .param p1, "v"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 546
    if-nez p1, :cond_6

    .line 547
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeNull()V

    .line 551
    :goto_5
    return-void

    .line 549
    :cond_6
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    goto :goto_5
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
    .line 582
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 583
    return-void
.end method

.method public writeRaw(C)V
    .registers 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    .line 492
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    .line 477
    return-void
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .registers 4
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
    .line 481
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    .line 482
    return-void
.end method

.method public writeRaw([CII)V
    .registers 4
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
    .line 486
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    .line 487
    return-void
.end method

.method public writeRawUTF8String([BII)V
    .registers 4
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    .line 464
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    .line 497
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .registers 4
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
    .line 501
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    .line 502
    return-void
.end method

.method public writeRawValue([CII)V
    .registers 4
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
    .line 506
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    .line 507
    return-void
.end method

.method public final writeStartArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 369
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;)V

    .line 370
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildArrayContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 371
    return-void
.end method

.method public final writeStartObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 389
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;)V

    .line 390
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildObjectContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 391
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 437
    if-nez p1, :cond_6

    .line 438
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeNull()V

    .line 442
    :goto_5
    return-void

    .line 440
    :cond_6
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public writeString(Lorg/codehaus/jackson/SerializableString;)V
    .registers 3
    .param p1, "text"    # Lorg/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 451
    if-nez p1, :cond_6

    .line 452
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeNull()V

    .line 456
    :goto_5
    return-void

    .line 454
    :cond_6
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public writeString([CII)V
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
    .line 446
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public writeTree(Lorg/codehaus/jackson/JsonNode;)V
    .registers 3
    .param p1, "rootNode"    # Lorg/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 592
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 593
    return-void
.end method

.method public writeUTF8String([BII)V
    .registers 4
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    .line 472
    return-void
.end method
