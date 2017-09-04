.class public Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;
.super Lorg/codehaus/jackson/map/module/SimpleModule;
.source "JsonOrgModule.java"


# static fields
.field private static final mapper:Lorg/codehaus/jackson/map/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;

    const v1, 0x456

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 27
    .line 0
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    sput-object v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 28
    new-instance v1, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;

    invoke-direct {v1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;-><init>()V

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->registerModule(Lorg/codehaus/jackson/map/Module;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 31
    const-string v0, "JsonOrgModule"

    new-instance v1, Lorg/codehaus/jackson/Version;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v4, v3}, Lorg/codehaus/jackson/Version;-><init>(IIILjava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/module/SimpleModule;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/Version;)V

    .line 33
    const-class v0, Lorg/json/JSONArray;

    sget-object v1, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArrayDeserializer;->instance:Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArrayDeserializer;

    invoke-virtual {p0, v0, v1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    .line 35
    const-class v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectDeserializer;->instance:Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectDeserializer;

    invoke-virtual {p0, v0, v1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    .line 38
    const-class v0, Lorg/json/JSONArray;

    sget-object v1, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;->instance:Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    .line 39
    const-class v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;->instance:Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    .line 41
    return-void
.end method

.method public static native deserializeJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native deserializeJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native serialize(Lorg/json/JSONArray;)Ljava/lang/String;
.end method

.method public static native serialize(Lorg/json/JSONObject;)Ljava/lang/String;
.end method
