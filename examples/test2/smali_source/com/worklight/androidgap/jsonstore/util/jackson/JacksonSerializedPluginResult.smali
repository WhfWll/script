.class public Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedPluginResult;
.super Lorg/apache/cordova/api/PluginResult;
.source "JacksonSerializedPluginResult.java"


# direct methods
.method public constructor <init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V
    .registers 4
    .param p1, "status"    # Lorg/apache/cordova/api/PluginResult$Status;
    .param p2, "message"    # Lorg/json/JSONArray;

    .prologue
    .line 23
    new-instance v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;

    invoke-direct {v0, p2}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;-><init>(Lorg/json/JSONArray;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "status"    # Lorg/apache/cordova/api/PluginResult$Status;
    .param p2, "message"    # Lorg/json/JSONObject;

    .prologue
    .line 27
    new-instance v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;

    invoke-direct {v0, p2}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 28
    return-void
.end method
