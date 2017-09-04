.class public final Lorg/codehaus/jackson/util/TokenBuffer$Parser;
.super Lorg/codehaus/jackson/impl/JsonParserMinimalBase;
.source "TokenBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/util/TokenBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Parser"
.end annotation


# instance fields
.field protected transient _byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

.field protected _closed:Z

.field protected _codec:Lorg/codehaus/jackson/ObjectCodec;

.field protected _location:Lorg/codehaus/jackson/JsonLocation;

.field protected _parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

.field protected _segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

.field protected _segmentPtr:I


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/util/TokenBuffer$Segment;Lorg/codehaus/jackson/ObjectCodec;)V
    .registers 5
    .param p1, "firstSeg"    # Lorg/codehaus/jackson/util/TokenBuffer$Segment;
    .param p2, "codec"    # Lorg/codehaus/jackson/ObjectCodec;

    .prologue
    const/4 v1, -0x1

    .line 796
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserMinimalBase;-><init>(I)V

    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_location:Lorg/codehaus/jackson/JsonLocation;

    .line 797
    iput-object p1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 798
    iput v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    .line 799
    iput-object p2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_codec:Lorg/codehaus/jackson/ObjectCodec;

    .line 800
    invoke-static {v1, v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->createRootContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 801
    return-void
.end method


# virtual methods
.method protected final _checkIsNumber()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1177
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->isNumeric()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1178
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 1180
    :cond_2c
    return-void
.end method

.method protected final _currentObject()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1172
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iget v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected _decodeBase64(Ljava/lang/String;Lorg/codehaus/jackson/util/ByteArrayBuilder;Lorg/codehaus/jackson/Base64Variant;)V
    .registers 15
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "builder"    # Lorg/codehaus/jackson/util/ByteArrayBuilder;
    .param p3, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 1096
    const/4 v4, 0x0

    .line 1097
    .local v4, "ptr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1100
    .local v3, "len":I
    :goto_8
    if-ge v4, v3, :cond_13

    .line 1104
    :goto_a
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .local v5, "ptr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1105
    .local v1, "ch":C
    if-lt v5, v3, :cond_14

    move v4, v5

    .line 1169
    .end local v1    # "ch":C
    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_13
    return-void

    .line 1108
    .end local v4    # "ptr":I
    .restart local v1    # "ch":C
    .restart local v5    # "ptr":I
    :cond_14
    const/16 v6, 0x20

    if-le v1, v6, :cond_b5

    .line 1109
    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1110
    .local v0, "bits":I
    if-gez v0, :cond_22

    .line 1111
    const/4 v6, 0x0

    invoke-virtual {p0, p3, v1, v6, v8}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_reportInvalidBase64(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 1113
    :cond_22
    move v2, v0

    .line 1115
    .local v2, "decodedData":I
    if-lt v5, v3, :cond_28

    .line 1116
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_reportBase64EOF()V

    .line 1118
    :cond_28
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1119
    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1120
    if-gez v0, :cond_38

    .line 1121
    const/4 v6, 0x1

    invoke-virtual {p0, p3, v1, v6, v8}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_reportInvalidBase64(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 1123
    :cond_38
    shl-int/lit8 v6, v2, 0x6

    or-int v2, v6, v0

    .line 1125
    if-lt v4, v3, :cond_41

    .line 1126
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_reportBase64EOF()V

    .line 1128
    :cond_41
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1129
    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1132
    if-gez v0, :cond_8b

    .line 1133
    if-eq v0, v9, :cond_53

    .line 1134
    const/4 v6, 0x2

    invoke-virtual {p0, p3, v1, v6, v8}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_reportInvalidBase64(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 1137
    :cond_53
    if-lt v5, v3, :cond_58

    .line 1138
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_reportBase64EOF()V

    .line 1140
    :cond_58
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1141
    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/Base64Variant;->usesPaddingChar(C)Z

    move-result v6

    if-nez v6, :cond_84

    .line 1142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected padding character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lorg/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p3, v1, v10, v6}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_reportInvalidBase64(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 1145
    :cond_84
    shr-int/lit8 v2, v2, 0x4

    .line 1146
    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_8

    .line 1150
    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    :cond_8b
    shl-int/lit8 v6, v2, 0x6

    or-int v2, v6, v0

    .line 1152
    if-lt v5, v3, :cond_94

    .line 1153
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_reportBase64EOF()V

    .line 1155
    :cond_94
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1156
    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1157
    if-gez v0, :cond_ac

    .line 1158
    if-eq v0, v9, :cond_a5

    .line 1159
    invoke-virtual {p0, p3, v1, v10, v8}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_reportInvalidBase64(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 1161
    :cond_a5
    shr-int/lit8 v2, v2, 0x2

    .line 1162
    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_8

    .line 1165
    :cond_ac
    shl-int/lit8 v6, v2, 0x6

    or-int v2, v6, v0

    .line 1166
    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_8

    .end local v0    # "bits":I
    .end local v2    # "decodedData":I
    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    :cond_b5
    move v4, v5

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    goto/16 :goto_a
.end method

.method protected _handleEOF()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1212
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_throwInternal()V

    .line 1213
    return-void
.end method

.method protected _reportBase64EOF()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1207
    const-string v0, "Unexpected end-of-String in base64 content"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method protected _reportInvalidBase64(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V
    .registers 8
    .param p1, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .param p2, "ch"    # C
    .param p3, "bindex"    # I
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1190
    const/16 v1, 0x20

    if-gt p2, v1, :cond_4b

    .line 1191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal white space character (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") as character #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1200
    .local v0, "base":Ljava/lang/String;
    :goto_2d
    if-eqz p4, :cond_46

    .line 1201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1203
    :cond_46
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v1

    throw v1

    .line 1192
    .end local v0    # "base":Ljava/lang/String;
    :cond_4b
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/Base64Variant;->usesPaddingChar(C)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected padding character (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\') as character #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_2d

    .line 1194
    .end local v0    # "base":Ljava/lang/String;
    :cond_7b
    invoke-static {p2}, Ljava/lang/Character;->isDefined(C)Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 1196
    :cond_87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in base64 content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_2d

    .line 1198
    .end local v0    # "base":Ljava/lang/String;
    :cond_a5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in base64 content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto/16 :goto_2d
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    if-nez v0, :cond_7

    .line 842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    .line 844
    :cond_7
    return-void
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 971
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    .line 972
    .local v0, "n":Ljava/lang/Number;
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_b

    .line 973
    check-cast v0, Ljava/math/BigInteger;

    .line 980
    .end local v0    # "n":Ljava/lang/Number;
    :goto_a
    return-object v0

    .line 975
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_b
    sget-object v1, Lorg/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 980
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_a

    .line 977
    :pswitch_23
    check-cast v0, Ljava/math/BigDecimal;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_a

    .line 975
    :pswitch_data_2a
    .packed-switch 0x3
        :pswitch_23
    .end packed-switch
.end method

.method public getBinaryValue(Lorg/codehaus/jackson/Base64Variant;)[B
    .registers 7
    .param p1, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1064
    iget-object v3, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_13

    .line 1066
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v1

    .line 1067
    .local v1, "ob":Ljava/lang/Object;
    instance-of v3, v1, [B

    if-eqz v3, :cond_13

    .line 1068
    check-cast v1, [B

    .end local v1    # "ob":Ljava/lang/Object;
    check-cast v1, [B

    .line 1084
    :goto_12
    return-object v1

    .line 1072
    :cond_13
    iget-object v3, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_39

    .line 1073
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current token ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v3

    throw v3

    .line 1075
    :cond_39
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 1076
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_41

    .line 1077
    const/4 v1, 0x0

    goto :goto_12

    .line 1079
    :cond_41
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 1080
    .local v0, "builder":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    if-nez v0, :cond_4e

    .line 1081
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .end local v0    # "builder":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    const/16 v3, 0x64

    invoke-direct {v0, v3}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(I)V

    .restart local v0    # "builder":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 1083
    :cond_4e
    invoke-virtual {p0, v2, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_decodeBase64(Ljava/lang/String;Lorg/codehaus/jackson/util/ByteArrayBuilder;Lorg/codehaus/jackson/Base64Variant;)V

    .line 1084
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v1

    goto :goto_12
.end method

.method public getCodec()Lorg/codehaus/jackson/ObjectCodec;
    .registers 2

    .prologue
    .line 808
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_codec:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;
    .registers 2

    .prologue
    .line 905
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_location:Lorg/codehaus/jackson/JsonLocation;

    if-nez v0, :cond_7

    sget-object v0, Lorg/codehaus/jackson/JsonLocation;->NA:Lorg/codehaus/jackson/JsonLocation;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_location:Lorg/codehaus/jackson/JsonLocation;

    goto :goto_6
.end method

.method public getCurrentName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 909
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 986
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    .line 987
    .local v0, "n":Ljava/lang/Number;
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_b

    .line 988
    check-cast v0, Ljava/math/BigDecimal;

    .line 998
    .end local v0    # "n":Ljava/lang/Number;
    :goto_a
    return-object v0

    .line 990
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_b
    sget-object v1, Lorg/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_36

    .line 998
    :pswitch_1a
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_a

    .line 993
    :pswitch_23
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_a

    .line 995
    :pswitch_2c
    new-instance v1, Ljava/math/BigDecimal;

    check-cast v0, Ljava/math/BigInteger;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object v0, v1

    goto :goto_a

    .line 990
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_23
        :pswitch_2c
        :pswitch_1a
        :pswitch_1a
        :pswitch_23
    .end packed-switch
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
    .line 1003
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1054
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_b

    .line 1055
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    .line 1057
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFloatValue()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1008
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1015
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_11

    .line 1016
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1018
    :goto_10
    return v0

    :cond_11
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_10
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
    .line 1023
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

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
    .line 1029
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    .line 1030
    .local v0, "n":Ljava/lang/Number;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_b

    sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->INT:Lorg/codehaus/jackson/JsonParser$NumberType;

    .line 1036
    :goto_a
    return-object v1

    .line 1031
    :cond_b
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_12

    sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->LONG:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_a

    .line 1032
    :cond_12
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_19

    sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_a

    .line 1033
    :cond_19
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_20

    sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_a

    .line 1034
    :cond_20
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_27

    sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->FLOAT:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_a

    .line 1035
    :cond_27
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_2e

    sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_a

    .line 1036
    :cond_2e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public final getNumberValue()Ljava/lang/Number;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1041
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_checkIsNumber()V

    .line 1042
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public getParsingContext()Lorg/codehaus/jackson/JsonStreamContext;
    .registers 2

    .prologue
    .line 898
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 921
    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_d

    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_20

    .line 923
    :cond_d
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    .line 924
    .local v0, "ob":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 925
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ob":Ljava/lang/Object;
    move-object v1, v0

    .line 938
    :cond_18
    :goto_18
    return-object v1

    .line 927
    .restart local v0    # "ob":Ljava/lang/Object;
    :cond_19
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 929
    .end local v0    # "ob":Ljava/lang/Object;
    :cond_20
    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v2, :cond_18

    .line 932
    sget-object v2, Lorg/codehaus/jackson/util/TokenBuffer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v3, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_44

    .line 938
    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 935
    :pswitch_38
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    .line 936
    .restart local v0    # "ob":Ljava/lang/Object;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 932
    nop

    :pswitch_data_44
    .packed-switch 0x7
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method

.method public getTextCharacters()[C
    .registers 3

    .prologue
    .line 943
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_7
.end method

.method public getTextLength()I
    .registers 3

    .prologue
    .line 949
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_7
.end method

.method public getTextOffset()I
    .registers 2

    .prologue
    .line 954
    const/4 v0, 0x0

    return v0
.end method

.method public getTokenLocation()Lorg/codehaus/jackson/JsonLocation;
    .registers 2

    .prologue
    .line 901
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public hasTextCharacters()Z
    .registers 2

    .prologue
    .line 959
    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 889
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    return v0
.end method

.method public nextToken()Lorg/codehaus/jackson/JsonToken;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 856
    iget-boolean v3, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    if-nez v3, :cond_b

    .line 885
    :cond_a
    :goto_a
    return-object v2

    .line 859
    :cond_b
    iget v3, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_24

    .line 860
    const/4 v3, 0x0

    iput v3, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    .line 861
    iget-object v3, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->next()Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 862
    iget-object v3, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    if-eqz v3, :cond_a

    .line 866
    :cond_24
    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iget v3, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->type(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 868
    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_4c

    .line 869
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v1

    .line 870
    .local v1, "ob":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_47

    check-cast v1, Ljava/lang/String;

    .end local v1    # "ob":Ljava/lang/Object;
    move-object v0, v1

    .line 871
    .local v0, "name":Ljava/lang/String;
    :goto_3f
    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 885
    .end local v0    # "name":Ljava/lang/String;
    :cond_44
    :goto_44
    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_a

    .line 870
    .restart local v1    # "ob":Ljava/lang/Object;
    :cond_47
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 872
    .end local v1    # "ob":Ljava/lang/Object;
    :cond_4c
    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_5b

    .line 873
    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2, v5, v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_44

    .line 874
    :cond_5b
    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_6a

    .line 875
    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2, v5, v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_44

    .line 876
    :cond_6a
    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_76

    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_44

    .line 879
    :cond_76
    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 881
    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    if-nez v2, :cond_44

    .line 882
    invoke-static {v5, v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->createRootContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_44
.end method

.method public peekNextToken()Lorg/codehaus/jackson/JsonToken;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 823
    iget-boolean v3, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_closed:Z

    if-eqz v3, :cond_6

    .line 830
    :cond_5
    :goto_5
    return-object v2

    .line 824
    :cond_6
    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segment:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 825
    .local v1, "seg":Lorg/codehaus/jackson/util/TokenBuffer$Segment;
    iget v3, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_segmentPtr:I

    add-int/lit8 v0, v3, 0x1

    .line 826
    .local v0, "ptr":I
    const/16 v3, 0x10

    if-lt v0, v3, :cond_14

    .line 827
    const/4 v0, 0x0

    .line 828
    if-nez v1, :cond_1b

    move-object v1, v2

    .line 830
    :cond_14
    :goto_14
    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->type(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_5

    .line 828
    :cond_1b
    invoke-virtual {v1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->next()Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v1

    goto :goto_14
.end method

.method public setCodec(Lorg/codehaus/jackson/ObjectCodec;)V
    .registers 2
    .param p1, "c"    # Lorg/codehaus/jackson/ObjectCodec;

    .prologue
    .line 811
    iput-object p1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_codec:Lorg/codehaus/jackson/ObjectCodec;

    return-void
.end method

.method public setLocation(Lorg/codehaus/jackson/JsonLocation;)V
    .registers 2
    .param p1, "l"    # Lorg/codehaus/jackson/JsonLocation;

    .prologue
    .line 804
    iput-object p1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->_location:Lorg/codehaus/jackson/JsonLocation;

    .line 805
    return-void
.end method
