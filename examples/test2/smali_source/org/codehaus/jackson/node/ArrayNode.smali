.class public final Lorg/codehaus/jackson/node/ArrayNode;
.super Lorg/codehaus/jackson/node/ContainerNode;
.source "ArrayNode.java"


# instance fields
.field protected _children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V
    .registers 2
    .param p1, "nc"    # Lorg/codehaus/jackson/node/JsonNodeFactory;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/node/ContainerNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    return-void
.end method

.method private _add(Lorg/codehaus/jackson/JsonNode;)V
    .registers 3
    .param p1, "node"    # Lorg/codehaus/jackson/JsonNode;

    .prologue
    .line 579
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    .line 582
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    return-void
.end method

.method private _insert(ILorg/codehaus/jackson/JsonNode;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "node"    # Lorg/codehaus/jackson/JsonNode;

    .prologue
    .line 587
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    .line 589
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    :goto_10
    return-void

    .line 592
    :cond_11
    if-gez p1, :cond_1a

    .line 593
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_10

    .line 594
    :cond_1a
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_28

    .line 595
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 597
    :cond_28
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_10
.end method

.method private _sameChildren(Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "otherChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codehaus/jackson/JsonNode;>;"
    const/4 v3, 0x0

    .line 607
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 608
    .local v1, "len":I
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->size()I

    move-result v2

    if-eq v2, v1, :cond_d

    move v2, v3

    .line 616
    :goto_c
    return v2

    .line 611
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v1, :cond_27

    .line 612
    iget-object v2, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    move v2, v3

    .line 613
    goto :goto_c

    .line 611
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 616
    :cond_27
    const/4 v2, 0x1

    goto :goto_c
.end method


# virtual methods
.method public _set(ILorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codehaus/jackson/JsonNode;

    .prologue
    .line 571
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    if-ltz p1, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_35

    .line 572
    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_35
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    return-object v0
.end method

.method public add(D)V
    .registers 4
    .param p1, "v"    # D

    .prologue
    .line 353
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(D)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public add(F)V
    .registers 3
    .param p1, "v"    # F

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(F)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public add(I)V
    .registers 3
    .param p1, "v"    # I

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(I)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public add(J)V
    .registers 4
    .param p1, "v"    # J

    .prologue
    .line 343
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(J)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .registers 3
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 370
    if-nez p1, :cond_6

    .line 371
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->addNull()V

    .line 375
    :goto_5
    return-void

    .line 373
    :cond_6
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->textNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_5
.end method

.method public add(Ljava/math/BigDecimal;)V
    .registers 3
    .param p1, "v"    # Ljava/math/BigDecimal;

    .prologue
    .line 359
    if-nez p1, :cond_6

    .line 360
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->addNull()V

    .line 364
    :goto_5
    return-void

    .line 362
    :cond_6
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_5
.end method

.method public add(Lorg/codehaus/jackson/JsonNode;)V
    .registers 2
    .param p1, "value"    # Lorg/codehaus/jackson/JsonNode;

    .prologue
    .line 200
    if-nez p1, :cond_6

    .line 201
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object p1

    .line 203
    :cond_6
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V

    .line 204
    return-void
.end method

.method public add(Z)V
    .registers 3
    .param p1, "v"    # Z

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->booleanNode(Z)Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public add([B)V
    .registers 3
    .param p1, "v"    # [B

    .prologue
    .line 386
    if-nez p1, :cond_6

    .line 387
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->addNull()V

    .line 391
    :goto_5
    return-void

    .line 389
    :cond_6
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->binaryNode([B)Lorg/codehaus/jackson/node/BinaryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_5
.end method

.method public addAll(Ljava/util/Collection;)Lorg/codehaus/jackson/JsonNode;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;)",
            "Lorg/codehaus/jackson/JsonNode;"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codehaus/jackson/JsonNode;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 240
    .local v0, "len":I
    if-lez v0, :cond_11

    .line 241
    iget-object v1, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v1, :cond_12

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    .line 247
    :cond_11
    :goto_11
    return-object p0

    .line 244
    :cond_12
    iget-object v1, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_11
.end method

.method public addAll(Lorg/codehaus/jackson/node/ArrayNode;)Lorg/codehaus/jackson/JsonNode;
    .registers 5
    .param p1, "other"    # Lorg/codehaus/jackson/node/ArrayNode;

    .prologue
    .line 218
    invoke-virtual {p1}, Lorg/codehaus/jackson/node/ArrayNode;->size()I

    move-result v0

    .line 219
    .local v0, "len":I
    if-lez v0, :cond_18

    .line 220
    iget-object v1, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v1, :cond_13

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    .line 223
    :cond_13
    iget-object v1, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/node/ArrayNode;->addContentsTo(Ljava/util/List;)V

    .line 225
    :cond_18
    return-object p0
.end method

.method public addArray()Lorg/codehaus/jackson/node/ArrayNode;
    .registers 2

    .prologue
    .line 299
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->arrayNode()Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    .line 300
    .local v0, "n":Lorg/codehaus/jackson/node/ArrayNode;
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V

    .line 301
    return-object v0
.end method

.method protected addContentsTo(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, "dst":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/JsonNode;>;"
    iget-object v2, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v2, :cond_1a

    .line 501
    iget-object v2, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/JsonNode;

    .line 502
    .local v1, "n":Lorg/codehaus/jackson/JsonNode;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 505
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "n":Lorg/codehaus/jackson/JsonNode;
    :cond_1a
    return-void
.end method

.method public addNull()V
    .registers 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V

    .line 333
    return-void
.end method

.method public addObject()Lorg/codehaus/jackson/node/ObjectNode;
    .registers 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 313
    .local v0, "n":Lorg/codehaus/jackson/node/ObjectNode;
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V

    .line 314
    return-object v0
.end method

.method public addPOJO(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 323
    if-nez p1, :cond_6

    .line 324
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->addNull()V

    .line 328
    :goto_5
    return-void

    .line 326
    :cond_6
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->POJONode(Ljava/lang/Object;)Lorg/codehaus/jackson/node/POJONode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_5
.end method

.method public asToken()Lorg/codehaus/jackson/JsonToken;
    .registers 2

    .prologue
    .line 27
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 516
    if-ne p1, p0, :cond_5

    .line 525
    :cond_4
    :goto_4
    return v1

    .line 517
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    .line 518
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 519
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 521
    check-cast v0, Lorg/codehaus/jackson/node/ArrayNode;

    .line 522
    .local v0, "other":Lorg/codehaus/jackson/node/ArrayNode;
    iget-object v3, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v3, :cond_24

    iget-object v3, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2c

    .line 523
    :cond_24
    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ArrayNode;->size()I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    .line 525
    :cond_2c
    iget-object v1, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;->_sameChildren(Ljava/util/ArrayList;)Z

    move-result v1

    goto :goto_4
.end method

.method public bridge synthetic findParent(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->findParent(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public findParent(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v3, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v3, :cond_1f

    .line 152
    iget-object v3, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/JsonNode;

    .line 153
    .local v1, "node":Lorg/codehaus/jackson/JsonNode;
    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonNode;->findParent(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 154
    .local v2, "parent":Lorg/codehaus/jackson/JsonNode;
    if-eqz v2, :cond_a

    .line 155
    check-cast v2, Lorg/codehaus/jackson/node/ObjectNode;

    .line 159
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "node":Lorg/codehaus/jackson/JsonNode;
    .end local v2    # "parent":Lorg/codehaus/jackson/JsonNode;
    :goto_1e
    return-object v2

    :cond_1f
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method public findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/JsonNode;>;"
    iget-object v2, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v2, :cond_1b

    .line 166
    iget-object v2, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/JsonNode;

    .line 167
    .local v1, "node":Lorg/codehaus/jackson/JsonNode;
    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/JsonNode;->findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_a

    .line 170
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "node":Lorg/codehaus/jackson/JsonNode;
    :cond_1b
    return-object p2
.end method

.method public findValue(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v3, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v3, :cond_1d

    .line 116
    iget-object v3, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/JsonNode;

    .line 117
    .local v1, "node":Lorg/codehaus/jackson/JsonNode;
    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonNode;->findValue(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 118
    .local v2, "value":Lorg/codehaus/jackson/JsonNode;
    if-eqz v2, :cond_a

    .line 123
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "node":Lorg/codehaus/jackson/JsonNode;
    .end local v2    # "value":Lorg/codehaus/jackson/JsonNode;
    :goto_1c
    return-object v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/JsonNode;>;"
    iget-object v2, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v2, :cond_1b

    .line 130
    iget-object v2, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/JsonNode;

    .line 131
    .local v1, "node":Lorg/codehaus/jackson/JsonNode;
    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/JsonNode;->findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_a

    .line 134
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "node":Lorg/codehaus/jackson/JsonNode;
    :cond_1b
    return-object p2
.end method

.method public findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v2, :cond_1b

    .line 141
    iget-object v2, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/JsonNode;

    .line 142
    .local v1, "node":Lorg/codehaus/jackson/JsonNode;
    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/JsonNode;->findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_a

    .line 145
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "node":Lorg/codehaus/jackson/JsonNode;
    :cond_1b
    return-object p2
.end method

.method public get(I)Lorg/codehaus/jackson/JsonNode;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 47
    if-ltz p1, :cond_17

    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_17

    .line 48
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 50
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .registers 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElements()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    invoke-static {}, Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;->instance()Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_8
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 532
    iget-object v3, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 533
    const/4 v0, 0x1

    .line 542
    .local v0, "hash":I
    :cond_5
    return v0

    .line 535
    .end local v0    # "hash":I
    :cond_6
    iget-object v3, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 536
    .restart local v0    # "hash":I
    iget-object v3, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/JsonNode;

    .line 537
    .local v2, "n":Lorg/codehaus/jackson/JsonNode;
    if-eqz v2, :cond_12

    .line 538
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    goto :goto_12
.end method

.method public insert(ID)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "v"    # D

    .prologue
    .line 449
    invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(D)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insert(IF)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "v"    # F

    .prologue
    .line 444
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(F)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insert(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "v"    # I

    .prologue
    .line 434
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(I)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insert(IJ)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "v"    # J

    .prologue
    .line 439
    invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(J)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insert(ILjava/lang/String;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 466
    if-nez p2, :cond_6

    .line 467
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    .line 471
    :goto_5
    return-void

    .line 469
    :cond_6
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ArrayNode;->textNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V

    goto :goto_5
.end method

.method public insert(ILjava/math/BigDecimal;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "v"    # Ljava/math/BigDecimal;

    .prologue
    .line 455
    if-nez p2, :cond_6

    .line 456
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    .line 460
    :goto_5
    return-void

    .line 458
    :cond_6
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V

    goto :goto_5
.end method

.method public insert(ILorg/codehaus/jackson/JsonNode;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codehaus/jackson/JsonNode;

    .prologue
    .line 259
    if-nez p2, :cond_6

    .line 260
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object p2

    .line 262
    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V

    .line 263
    return-void
.end method

.method public insert(IZ)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "v"    # Z

    .prologue
    .line 476
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ArrayNode;->booleanNode(Z)Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insert(I[B)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "v"    # [B

    .prologue
    .line 482
    if-nez p2, :cond_6

    .line 483
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    .line 487
    :goto_5
    return-void

    .line 485
    :cond_6
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ArrayNode;->binaryNode([B)Lorg/codehaus/jackson/node/BinaryNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V

    goto :goto_5
.end method

.method public insertArray(I)Lorg/codehaus/jackson/node/ArrayNode;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 395
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->arrayNode()Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    .line 396
    .local v0, "n":Lorg/codehaus/jackson/node/ArrayNode;
    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V

    .line 397
    return-object v0
.end method

.method public insertNull(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 428
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V

    .line 429
    return-void
.end method

.method public insertObject(I)Lorg/codehaus/jackson/node/ObjectNode;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 408
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 409
    .local v0, "n":Lorg/codehaus/jackson/node/ObjectNode;
    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V

    .line 410
    return-object v0
.end method

.method public insertPOJO(ILjava/lang/Object;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 419
    if-nez p2, :cond_6

    .line 420
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    .line 424
    :goto_5
    return-void

    .line 422
    :cond_6
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ArrayNode;->POJONode(Ljava/lang/Object;)Lorg/codehaus/jackson/node/POJONode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V

    goto :goto_5
.end method

.method public isArray()Z
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public path(I)Lorg/codehaus/jackson/JsonNode;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 62
    if-ltz p1, :cond_17

    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_17

    .line 63
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 65
    :goto_16
    return-object v0

    :cond_17
    invoke-static {}, Lorg/codehaus/jackson/node/MissingNode;->getInstance()Lorg/codehaus/jackson/node/MissingNode;

    move-result-object v0

    goto :goto_16
.end method

.method public path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .registers 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {}, Lorg/codehaus/jackson/node/MissingNode;->getInstance()Lorg/codehaus/jackson/node/MissingNode;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lorg/codehaus/jackson/JsonNode;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 272
    if-ltz p1, :cond_17

    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_17

    .line 273
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 275
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public removeAll()Lorg/codehaus/jackson/node/ArrayNode;
    .registers 2

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    .line 282
    return-object p0
.end method

.method public bridge synthetic removeAll()Lorg/codehaus/jackson/node/ContainerNode;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->removeAll()Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .registers 6
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 79
    iget-object v2, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v2, :cond_1f

    .line 80
    iget-object v2, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/JsonNode;

    .line 86
    .local v1, "n":Lorg/codehaus/jackson/JsonNode;
    check-cast v1, Lorg/codehaus/jackson/node/BaseJsonNode;

    .end local v1    # "n":Lorg/codehaus/jackson/JsonNode;
    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/node/BaseJsonNode;->writeTo(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_d

    .line 89
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1f
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 90
    return-void
.end method

.method public serializeWithType(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .registers 7
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p3, "typeSer"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p3, p0, p1}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 98
    iget-object v2, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v2, :cond_1f

    .line 99
    iget-object v2, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/JsonNode;

    .line 100
    .local v1, "n":Lorg/codehaus/jackson/JsonNode;
    check-cast v1, Lorg/codehaus/jackson/node/BaseJsonNode;

    .end local v1    # "n":Lorg/codehaus/jackson/JsonNode;
    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/node/BaseJsonNode;->writeTo(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_d

    .line 103
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1f
    invoke-virtual {p3, p0, p1}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 104
    return-void
.end method

.method public set(ILorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codehaus/jackson/JsonNode;

    .prologue
    .line 192
    if-nez p2, :cond_6

    .line 193
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object p2

    .line 195
    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/node/ArrayNode;->_set(ILorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->size()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 550
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 551
    iget-object v3, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v3, :cond_38

    .line 552
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "len":I
    :goto_1d
    if-ge v0, v1, :cond_38

    .line 553
    if-lez v0, :cond_26

    .line 554
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 556
    :cond_26
    iget-object v3, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 559
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_38
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
