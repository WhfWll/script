.class public final Lorg/codehaus/jackson/node/LongNode;
.super Lorg/codehaus/jackson/node/NumericNode;
.source "LongNode.java"


# instance fields
.field final _value:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "v"    # J

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V

    iput-wide p1, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    return-void
.end method

.method public static valueOf(J)Lorg/codehaus/jackson/node/LongNode;
    .registers 4
    .param p0, "l"    # J

    .prologue
    .line 27
    new-instance v0, Lorg/codehaus/jackson/node/LongNode;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/node/LongNode;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public asToken()Lorg/codehaus/jackson/JsonToken;
    .registers 2

    .prologue
    .line 35
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    if-ne p1, p0, :cond_5

    .line 92
    .end local p1    # "o":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .line 88
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    .line 89
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 90
    goto :goto_4

    .line 92
    :cond_15
    check-cast p1, Lorg/codehaus/jackson/node/LongNode;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p1, Lorg/codehaus/jackson/node/LongNode;->_value:J

    iget-wide v4, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .registers 3

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .registers 3

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getIntValue()I
    .registers 3

    .prologue
    .line 53
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    long-to-int v0, v0

    return v0
.end method

.method public getLongValue()J
    .registers 3

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    return-wide v0
.end method

.method public getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;
    .registers 2

    .prologue
    .line 38
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->LONG:Lorg/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .registers 3

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsBoolean(Z)Z
    .registers 6
    .param p1, "defaultValue"    # Z

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getValueAsText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    invoke-static {v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    long-to-int v0, v0

    iget-wide v2, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public isIntegralNumber()Z
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public isLong()Z
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .registers 5
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 81
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    .line 82
    return-void
.end method
