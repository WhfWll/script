.class final Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ShortDeser;
.super Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser;
.source "ArrayDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/ArrayDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShortDeser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser",
        "<[S>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 335
    const-class v0, [S

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final handleNonArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[S
    .registers 6
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 362
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 363
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ShortDeser;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 365
    :cond_f
    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ShortDeser;->_parseShortPrimitive(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)S

    move-result v2

    aput-short v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public bridge synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ShortDeser;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[S

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[S
    .registers 10
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v5

    if-nez v5, :cond_b

    .line 342
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ShortDeser;->handleNonArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[S

    move-result-object v5

    .line 356
    :goto_a
    return-object v5

    .line 344
    :cond_b
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->getArrayBuilders()Lorg/codehaus/jackson/map/util/ArrayBuilders;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->getShortBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    move-result-object v0

    .line 345
    .local v0, "builder":Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;->resetAndStart()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    .line 346
    .local v1, "chunk":[S
    const/4 v2, 0x0

    .line 348
    .local v2, "ix":I
    :goto_1a
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_36

    .line 349
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ShortDeser;->_parseShortPrimitive(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)S

    move-result v4

    .line 350
    .local v4, "value":S
    array-length v5, v1

    if-lt v2, v5, :cond_30

    .line 351
    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;->appendCompletedChunk(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "chunk":[S
    check-cast v1, [S

    .line 352
    .restart local v1    # "chunk":[S
    const/4 v2, 0x0

    .line 354
    :cond_30
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ix":I
    .local v3, "ix":I
    aput-short v4, v1, v2

    move v2, v3

    .line 355
    .end local v3    # "ix":I
    .restart local v2    # "ix":I
    goto :goto_1a

    .line 356
    .end local v4    # "value":S
    :cond_36
    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;->completeAndClearBuffer(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [S

    goto :goto_a
.end method
