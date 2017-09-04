.class public Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdDeserializer;
.source "JsonOrgJSONObjectDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectDeserializer$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/StdDeserializer",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field protected static final instance:Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectDeserializer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectDeserializer;

    const v1, 0x454

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    new-instance v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectDeserializer;

    invoke-direct {v0}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectDeserializer;-><init>()V

    sput-object v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectDeserializer;->instance:Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectDeserializer;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 28
    const-class v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 29
    return-void
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
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public native deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method
