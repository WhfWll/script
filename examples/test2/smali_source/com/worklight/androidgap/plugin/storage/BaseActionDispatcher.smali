.class public abstract Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.super Ljava/lang/Object;
.source "BaseActionDispatcher.java"

# interfaces
.implements Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$1;,
        Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;,
        Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;,
        Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;
    }
.end annotation


# static fields
.field protected static final RC_FALSE:I = 0x0

.field protected static final RC_OK:I = 0x0

.field protected static final RC_TRUE:I = 0x1


# instance fields
.field protected logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

.field private name:Ljava/lang/String;

.field private parameters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->getCoreLogger()Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    .line 41
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->name:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->parameters:Ljava/util/LinkedList;

    .line 43
    return-void
.end method

.method private collectParameters(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;Lorg/json/JSONArray;)V
    .registers 15
    .param p1, "context"    # Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;
    .param p2, "args"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 98
    .local v2, "i":I
    iget-object v9, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->parameters:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;

    .line 99
    .local v7, "parameter":Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;
    const/4 v6, 0x0

    .line 101
    .local v6, "matched":Z
    invoke-virtual {v7}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->getTypes()[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    move-result-object v0

    .local v0, "arr$":[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1a
    if-ge v4, v5, :cond_2c

    aget-object v1, v0, v4

    .line 102
    .local v1, "expectedType":Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;
    invoke-direct {p0, p2, v2, v1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->convertParameter(Lorg/json/JSONArray;ILcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)Ljava/lang/Object;

    move-result-object v8

    .line 104
    .local v8, "value":Ljava/lang/Object;
    if-eqz v8, :cond_65

    .line 105
    const/4 v6, 0x1

    .line 107
    invoke-virtual {v7}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->getName()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->addParameter(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {p1, v9, v8}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->access$100(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    .end local v1    # "expectedType":Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_2c
    invoke-virtual {v7}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->isRequired()Z

    move-result v9

    if-eqz v9, :cond_68

    if-nez v6, :cond_68

    .line 117
    new-instance v9, Ljava/lang/Throwable;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid type for parameter \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" in action dispatcher \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v9

    .line 101
    .restart local v1    # "expectedType":Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 122
    .end local v1    # "expectedType":Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_68
    add-int/lit8 v2, v2, 0x1

    .line 123
    goto :goto_7

    .line 124
    .end local v0    # "arr$":[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "matched":Z
    .end local v7    # "parameter":Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;
    :cond_6b
    return-void
.end method

.method private convertParameter(Lorg/json/JSONArray;ILcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)Ljava/lang/Object;
    .registers 8
    .param p1, "args"    # Lorg/json/JSONArray;
    .param p2, "index"    # I
    .param p3, "expectedType"    # Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 129
    :try_start_1
    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$1;->$SwitchMap$com$worklight$androidgap$plugin$storage$BaseActionDispatcher$ParameterType:[I

    invoke-virtual {p3}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4a

    .line 170
    :goto_c
    return-object v1

    .line 131
    :pswitch_d
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->deserializeJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_c

    .line 136
    :pswitch_16
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_c

    .line 140
    :pswitch_1f
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_c

    .line 144
    :pswitch_28
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c

    .line 148
    :pswitch_31
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_c

    .line 152
    :pswitch_3a
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->deserializeJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_c

    .line 157
    :pswitch_43
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_46} :catch_48

    move-result-object v1

    goto :goto_c

    .line 166
    :catch_48
    move-exception v0

    .line 170
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_c

    .line 129
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_16
        :pswitch_1f
        :pswitch_28
        :pswitch_31
        :pswitch_3a
        :pswitch_43
    .end packed-switch
.end method


# virtual methods
.method protected varargs addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "loggable"    # Z
    .param p4, "types"    # [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    .prologue
    .line 56
    iget-object v7, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->parameters:Ljava/util/LinkedList;

    new-instance v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;-><init>(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$1;)V

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method protected varargs addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "types"    # [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    .prologue
    .line 52
    iget-object v7, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->parameters:Ljava/util/LinkedList;

    new-instance v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;-><init>(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$1;)V

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public abstract dispatch(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public dispatch(Lorg/apache/cordova/api/CordovaInterface;Lorg/json/JSONArray;)Lorg/apache/cordova/api/PluginResult;
    .registers 10
    .param p1, "context"    # Lorg/apache/cordova/api/CordovaInterface;
    .param p2, "args"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;

    invoke-direct {v0, p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;-><init>(Lorg/apache/cordova/api/CordovaInterface;)V

    .line 67
    .local v0, "baseContext":Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;
    invoke-direct {p0, v0, p2}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->collectParameters(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;Lorg/json/JSONArray;)V

    .line 69
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 70
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoking action dispatcher \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" with parameters:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 77
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->parameters:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;

    .line 78
    .local v3, "parameter":Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;
    invoke-virtual {v3}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "paramName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 80
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getUntypedParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    goto :goto_37

    .line 82
    :cond_74
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=[value not logged]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    goto :goto_37

    .line 87
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "paramName":Ljava/lang/String;
    .end local v3    # "parameter":Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;
    :cond_93
    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->dispatch(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;

    move-result-object v4

    return-object v4
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;->name:Ljava/lang/String;

    return-object v0
.end method
