.class public Lorg/codehaus/jackson/schema/JsonSchema;
.super Ljava/lang/Object;
.source "JsonSchema.java"


# instance fields
.field private final schema:Lorg/codehaus/jackson/node/ObjectNode;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/node/ObjectNode;)V
    .registers 2
    .param p1, "schema"    # Lorg/codehaus/jackson/node/ObjectNode;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/codehaus/jackson/schema/JsonSchema;->schema:Lorg/codehaus/jackson/node/ObjectNode;

    .line 31
    return-void
.end method

.method public static getDefaultSchemaNode()Lorg/codehaus/jackson/JsonNode;
    .registers 3

    .prologue
    .line 75
    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->instance:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 76
    .local v0, "objectNode":Lorg/codehaus/jackson/node/ObjectNode;
    const-string v1, "type"

    const-string v2, "any"

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    if-ne p1, p0, :cond_5

    .line 65
    :cond_4
    :goto_4
    return v1

    .line 58
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    .line 59
    :cond_9
    instance-of v3, p1, Lorg/codehaus/jackson/schema/JsonSchema;

    if-nez v3, :cond_f

    move v1, v2

    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 61
    check-cast v0, Lorg/codehaus/jackson/schema/JsonSchema;

    .line 62
    .local v0, "other":Lorg/codehaus/jackson/schema/JsonSchema;
    iget-object v3, p0, Lorg/codehaus/jackson/schema/JsonSchema;->schema:Lorg/codehaus/jackson/node/ObjectNode;

    if-nez v3, :cond_1c

    .line 63
    iget-object v3, v0, Lorg/codehaus/jackson/schema/JsonSchema;->schema:Lorg/codehaus/jackson/node/ObjectNode;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    .line 65
    :cond_1c
    iget-object v1, p0, Lorg/codehaus/jackson/schema/JsonSchema;->schema:Lorg/codehaus/jackson/node/ObjectNode;

    iget-object v2, v0, Lorg/codehaus/jackson/schema/JsonSchema;->schema:Lorg/codehaus/jackson/node/ObjectNode;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method

.method public getSchemaNode()Lorg/codehaus/jackson/node/ObjectNode;
    .registers 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonValue;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lorg/codehaus/jackson/schema/JsonSchema;->schema:Lorg/codehaus/jackson/node/ObjectNode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/codehaus/jackson/schema/JsonSchema;->schema:Lorg/codehaus/jackson/node/ObjectNode;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
