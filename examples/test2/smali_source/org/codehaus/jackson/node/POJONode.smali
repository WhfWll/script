.class public final Lorg/codehaus/jackson/node/POJONode;
.super Lorg/codehaus/jackson/node/ValueNode;
.source "POJONode.java"


# instance fields
.field protected final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public asToken()Lorg/codehaus/jackson/JsonToken;
    .registers 2

    .prologue
    .line 26
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    if-ne p1, p0, :cond_5

    .line 124
    :cond_4
    :goto_4
    return v1

    .line 116
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    .line 117
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 118
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 120
    check-cast v0, Lorg/codehaus/jackson/node/POJONode;

    .line 121
    .local v0, "other":Lorg/codehaus/jackson/node/POJONode;
    iget-object v3, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v3, :cond_22

    .line 122
    iget-object v3, v0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    .line 124
    :cond_22
    iget-object v1, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    iget-object v2, v0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method

.method public getPojo()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueAsBoolean(Z)Z
    .registers 3
    .param p1, "defaultValue"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    .line 46
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 48
    .end local p1    # "defaultValue":Z
    :cond_12
    return p1
.end method

.method public getValueAsDouble(D)D
    .registers 4
    .param p1, "defaultValue"    # D

    .prologue
    .line 72
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_e

    .line 73
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    .line 75
    .end local p1    # "defaultValue":D
    :cond_e
    return-wide p1
.end method

.method public getValueAsInt(I)I
    .registers 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_e

    .line 55
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 57
    .end local p1    # "defaultValue":I
    :cond_e
    return p1
.end method

.method public getValueAsLong(J)J
    .registers 4
    .param p1, "defaultValue"    # J

    .prologue
    .line 63
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_e

    .line 64
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 66
    .end local p1    # "defaultValue":J
    :cond_e
    return-wide p1
.end method

.method public getValueAsText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_7

    const-string v0, "null"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPojo()Z
    .registers 2

    .prologue
    .line 29
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
    .line 88
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_8

    .line 89
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 93
    :goto_7
    return-void

    .line 91
    :cond_8
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
