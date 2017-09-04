.class public Lorg/codehaus/jackson/io/SerializedString;
.super Ljava/lang/Object;
.source "SerializedString.java"

# interfaces
.implements Lorg/codehaus/jackson/SerializableString;


# instance fields
.field protected _quotedChars:[C

.field protected _quotedUTF8Ref:[B

.field protected _unquotedUTF8Ref:[B

.field protected final _value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final asQuotedChars()[C
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->_quotedChars:[C

    .line 54
    .local v0, "result":[C
    if-nez v0, :cond_10

    .line 55
    invoke-static {}, Lorg/codehaus/jackson/io/JsonStringEncoder;->getInstance()Lorg/codehaus/jackson/io/JsonStringEncoder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/io/JsonStringEncoder;->quoteAsString(Ljava/lang/String;)[C

    move-result-object v0

    .line 56
    iput-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->_quotedChars:[C

    .line 58
    :cond_10
    return-object v0
.end method

.method public final asQuotedUTF8()[B
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->_quotedUTF8Ref:[B

    .line 82
    .local v0, "result":[B
    if-nez v0, :cond_10

    .line 83
    invoke-static {}, Lorg/codehaus/jackson/io/JsonStringEncoder;->getInstance()Lorg/codehaus/jackson/io/JsonStringEncoder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/io/JsonStringEncoder;->quoteAsUTF8(Ljava/lang/String;)[B

    move-result-object v0

    .line 84
    iput-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->_quotedUTF8Ref:[B

    .line 86
    :cond_10
    return-object v0
.end method

.method public final asUnquotedUTF8()[B
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 68
    .local v0, "result":[B
    if-nez v0, :cond_10

    .line 69
    invoke-static {}, Lorg/codehaus/jackson/io/JsonStringEncoder;->getInstance()Lorg/codehaus/jackson/io/JsonStringEncoder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/io/JsonStringEncoder;->encodeAsUTF8(Ljava/lang/String;)[B

    move-result-object v0

    .line 70
    iput-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 72
    :cond_10
    return-object v0
.end method

.method public final charLength()I
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 104
    if-ne p1, p0, :cond_4

    const/4 v1, 0x1

    .line 107
    :goto_3
    return v1

    .line 105
    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_3

    :cond_12
    move-object v0, p1

    .line 106
    check-cast v0, Lorg/codehaus/jackson/io/SerializedString;

    .line 107
    .local v0, "other":Lorg/codehaus/jackson/io/SerializedString;
    iget-object v1, p0, Lorg/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    iget-object v2, v0, Lorg/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public final getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->_value:Ljava/lang/String;

    return-object v0
.end method
