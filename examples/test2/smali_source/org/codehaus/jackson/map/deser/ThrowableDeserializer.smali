.class public Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;
.super Lorg/codehaus/jackson/map/deser/BeanDeserializer;
.source "ThrowableDeserializer.java"


# static fields
.field protected static final PROP_NAME_MESSAGE:Ljava/lang/String; = "message"


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;)V
    .registers 2
    .param p1, "baseDeserializer"    # Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;)V

    .line 29
    return-void
.end method


# virtual methods
.method public deserializeFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .registers 14
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    if-eqz v8, :cond_9

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->_deserializeUsingPropertyBased(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    .line 126
    :cond_8
    :goto_8
    return-object v7

    .line 45
    :cond_9
    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    if-eqz v8, :cond_14

    .line 46
    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->_delegatingCreator:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v8, p1, p2}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_8

    .line 48
    :cond_14
    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v8}, Lorg/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 49
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not instantiate abstract type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (need to add/enable type information?)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v8

    throw v8

    .line 53
    :cond_3c
    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->_stringCreator:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    if-nez v8, :cond_61

    .line 54
    new-instance v8, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can not deserialize Throwable of type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " without having either single-String-arg constructor; or explicit @JsonCreator"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 58
    :cond_61
    const/4 v7, 0x0

    .line 59
    .local v7, "throwable":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 60
    .local v2, "pending":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 62
    .end local v7    # "throwable":Ljava/lang/Object;
    .local v3, "pendingIx":I
    :goto_64
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    sget-object v9, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v8, v9, :cond_e3

    .line 63
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "propName":Ljava/lang/String;
    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v8, v6}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    .line 65
    .local v5, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 67
    if-eqz v5, :cond_9d

    .line 68
    if-eqz v7, :cond_84

    .line 69
    invoke-virtual {v5, p1, p2, v7}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 62
    :cond_80
    :goto_80
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    goto :goto_64

    .line 73
    :cond_84
    if-nez v2, :cond_90

    .line 74
    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v8}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->size()I

    move-result v1

    .line 75
    .local v1, "len":I
    add-int v8, v1, v1

    new-array v2, v8, [Ljava/lang/Object;

    .line 77
    .end local v1    # "len":I
    :cond_90
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pendingIx":I
    .local v4, "pendingIx":I
    aput-object v5, v2, v3

    .line 78
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pendingIx":I
    .restart local v3    # "pendingIx":I
    invoke-virtual {v5, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v2, v4

    goto :goto_80

    .line 83
    :cond_9d
    const-string v8, "message"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 84
    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->_stringCreator:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/codehaus/jackson/map/deser/Creator$StringBased;->construct(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 86
    .restart local v7    # "throwable":Ljava/lang/Object;
    if-eqz v2, :cond_80

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, v3

    .restart local v1    # "len":I
    :goto_b3
    if-ge v0, v1, :cond_c3

    .line 88
    aget-object v5, v2, v0

    .end local v5    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    check-cast v5, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 89
    .restart local v5    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    add-int/lit8 v8, v0, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v5, v7, v8}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    add-int/lit8 v0, v0, 0x2

    goto :goto_b3

    .line 91
    :cond_c3
    const/4 v2, 0x0

    goto :goto_80

    .line 98
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v7    # "throwable":Ljava/lang/Object;
    :cond_c5
    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v8, :cond_d5

    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d5

    .line 99
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_80

    .line 102
    :cond_d5
    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v8, :cond_df

    .line 103
    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v8, p1, p2, v7, v6}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_80

    .line 107
    :cond_df
    invoke-virtual {p0, p1, p2, v7, v6}, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_80

    .line 110
    .end local v5    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v6    # "propName":Ljava/lang/String;
    :cond_e3
    if-nez v7, :cond_8

    .line 117
    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->_stringCreator:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/codehaus/jackson/map/deser/Creator$StringBased;->construct(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 119
    .restart local v7    # "throwable":Ljava/lang/Object;
    if-eqz v2, :cond_8

    .line 120
    const/4 v0, 0x0

    .restart local v0    # "i":I
    move v1, v3

    .restart local v1    # "len":I
    :goto_f0
    if-ge v0, v1, :cond_8

    .line 121
    aget-object v5, v2, v0

    check-cast v5, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 122
    .restart local v5    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    add-int/lit8 v8, v0, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v5, v7, v8}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    add-int/lit8 v0, v0, 0x2

    goto :goto_f0
.end method
