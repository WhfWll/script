.class public abstract Lorg/codehaus/jackson/map/ser/SerializerBase;
.super Lorg/codehaus/jackson/map/JsonSerializer;
.source "SerializerBase.java"

# interfaces
.implements Lorg/codehaus/jackson/schema/SchemaAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/jackson/map/JsonSerializer",
        "<TT;>;",
        "Lorg/codehaus/jackson/schema/SchemaAware;"
    }
.end annotation


# instance fields
.field protected final _handledType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonSerializer;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerBase;->_handledType:Ljava/lang/Class;

    .line 29
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .registers 3
    .param p2, "dummy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonSerializer;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerBase;->_handledType:Ljava/lang/Class;

    .line 46
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/type/JavaType;)V
    .registers 3
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 35
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonSerializer;-><init>()V

    .line 36
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerBase;->_handledType:Ljava/lang/Class;

    .line 37
    return-void
.end method


# virtual methods
.method protected createObjectNode()Lorg/codehaus/jackson/node/ObjectNode;
    .registers 2

    .prologue
    .line 59
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->instance:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method protected createSchemaNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 64
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/SerializerBase;->createObjectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 65
    .local v0, "schema":Lorg/codehaus/jackson/node/ObjectNode;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-object v0
.end method

.method protected createSchemaNode(Ljava/lang/String;Z)Lorg/codehaus/jackson/node/ObjectNode;
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isOptional"    # Z

    .prologue
    .line 71
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ser/SerializerBase;->createSchemaNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 73
    .local v0, "schema":Lorg/codehaus/jackson/node/ObjectNode;
    if-nez p2, :cond_e

    .line 74
    const-string v2, "required"

    if-nez p2, :cond_f

    const/4 v1, 0x1

    :goto_b
    invoke-virtual {v0, v2, v1}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Z)V

    .line 76
    :cond_e
    return-object v0

    .line 74
    :cond_f
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public abstract getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public final handledType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerBase;->_handledType:Ljava/lang/Class;

    return-object v0
.end method

.method protected isDefaultSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    .local p1, "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public abstract serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .registers 5
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/SerializerBase;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    .line 174
    return-void
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/SerializerBase;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .registers 7
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    :goto_0
    instance-of v1, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_f

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 139
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    .line 142
    :cond_f
    instance-of v1, p2, Ljava/lang/Error;

    if-eqz v1, :cond_16

    .line 143
    check-cast p2, Ljava/lang/Error;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 146
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_16
    if-eqz p1, :cond_20

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_20
    const/4 v0, 0x1

    .line 147
    .local v0, "wrap":Z
    :goto_21
    instance-of v1, p2, Ljava/io/IOException;

    if-eqz v1, :cond_30

    .line 148
    if-eqz v0, :cond_2b

    instance-of v1, p2, Lorg/codehaus/jackson/map/JsonMappingException;

    if-nez v1, :cond_39

    .line 149
    :cond_2b
    check-cast p2, Ljava/io/IOException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 146
    .end local v0    # "wrap":Z
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_2e
    const/4 v0, 0x0

    goto :goto_21

    .line 151
    .restart local v0    # "wrap":Z
    :cond_30
    if-nez v0, :cond_39

    .line 152
    instance-of v1, p2, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_39

    .line 153
    check-cast p2, Ljava/lang/RuntimeException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 157
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_39
    invoke-static {p2, p3, p4}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method

.method public wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    :goto_0
    instance-of v1, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_f

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 113
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    .line 116
    :cond_f
    instance-of v1, p2, Ljava/lang/Error;

    if-eqz v1, :cond_16

    .line 117
    check-cast p2, Ljava/lang/Error;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 120
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_16
    if-eqz p1, :cond_20

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_20
    const/4 v0, 0x1

    .line 121
    .local v0, "wrap":Z
    :goto_21
    instance-of v1, p2, Ljava/io/IOException;

    if-eqz v1, :cond_30

    .line 122
    if-eqz v0, :cond_2b

    instance-of v1, p2, Lorg/codehaus/jackson/map/JsonMappingException;

    if-nez v1, :cond_39

    .line 123
    :cond_2b
    check-cast p2, Ljava/io/IOException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 120
    .end local v0    # "wrap":Z
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_2e
    const/4 v0, 0x0

    goto :goto_21

    .line 125
    .restart local v0    # "wrap":Z
    :cond_30
    if-nez v0, :cond_39

    .line 126
    instance-of v1, p2, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_39

    .line 127
    check-cast p2, Ljava/lang/RuntimeException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 131
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_39
    invoke-static {p2, p3, p4}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method
