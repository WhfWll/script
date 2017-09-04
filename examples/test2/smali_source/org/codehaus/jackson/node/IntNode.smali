.class public final Lorg/codehaus/jackson/node/IntNode;
.super Lorg/codehaus/jackson/node/NumericNode;
.source "IntNode.java"


# static fields
.field private static final CANONICALS:[Lorg/codehaus/jackson/node/IntNode;

.field static final MAX_CANONICAL:I = 0xa

.field static final MIN_CANONICAL:I = -0x1


# instance fields
.field final _value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 24
    const/16 v0, 0xc

    .line 25
    .local v0, "count":I
    new-array v2, v0, [Lorg/codehaus/jackson/node/IntNode;

    sput-object v2, Lorg/codehaus/jackson/node/IntNode;->CANONICALS:[Lorg/codehaus/jackson/node/IntNode;

    .line 26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 27
    sget-object v2, Lorg/codehaus/jackson/node/IntNode;->CANONICALS:[Lorg/codehaus/jackson/node/IntNode;

    new-instance v3, Lorg/codehaus/jackson/node/IntNode;

    add-int/lit8 v4, v1, -0x1

    invoke-direct {v3, v4}, Lorg/codehaus/jackson/node/IntNode;-><init>(I)V

    aput-object v3, v2, v1

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 29
    :cond_17
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "v"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V

    iput p1, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I

    return-void
.end method

.method public static valueOf(I)Lorg/codehaus/jackson/node/IntNode;
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 45
    const/16 v0, 0xa

    if-gt p0, v0, :cond_7

    const/4 v0, -0x1

    if-ge p0, v0, :cond_d

    :cond_7
    new-instance v0, Lorg/codehaus/jackson/node/IntNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/IntNode;-><init>(I)V

    .line 46
    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lorg/codehaus/jackson/node/IntNode;->CANONICALS:[Lorg/codehaus/jackson/node/IntNode;

    add-int/lit8 v1, p0, 0x1

    aget-object v0, v0, v1

    goto :goto_c
.end method


# virtual methods
.method public asToken()Lorg/codehaus/jackson/JsonToken;
    .registers 2

    .prologue
    .line 55
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    if-ne p1, p0, :cond_5

    .line 117
    .end local p1    # "o":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .line 113
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    .line 114
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 115
    goto :goto_4

    .line 117
    :cond_15
    check-cast p1, Lorg/codehaus/jackson/node/IntNode;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Lorg/codehaus/jackson/node/IntNode;->_value:I

    iget v3, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 90
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .registers 3

    .prologue
    .line 87
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .registers 3

    .prologue
    .line 84
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getIntValue()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I

    return v0
.end method

.method public getLongValue()J
    .registers 3

    .prologue
    .line 81
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;
    .registers 2

    .prologue
    .line 58
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->INT:Lorg/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsBoolean(Z)Z
    .registers 3
    .param p1, "defaultValue"    # Z

    .prologue
    .line 99
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getValueAsText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I

    invoke-static {v0}, Lorg/codehaus/jackson/io/NumberOutput;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I

    return v0
.end method

.method public isInt()Z
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public isIntegralNumber()Z
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .registers 4
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 106
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    .line 107
    return-void
.end method
