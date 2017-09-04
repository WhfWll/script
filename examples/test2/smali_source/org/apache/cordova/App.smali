.class public Lorg/apache/cordova/App;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "App.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public backHistory()V
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/cordova/App;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/App$2;

    invoke-direct {v1, p0}, Lorg/apache/cordova/App$2;-><init>(Lorg/apache/cordova/App;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public clearCache()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/cordova/App;->webView:Lorg/apache/cordova/CordovaWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->clearCache(Z)V

    .line 101
    return-void
.end method

.method public clearHistory()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/cordova/App;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->clearHistory()V

    .line 168
    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .registers 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 46
    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    .line 47
    .local v2, "status":Lorg/apache/cordova/api/PluginResult$Status;
    const-string v1, ""

    .line 50
    .local v1, "result":Ljava/lang/String;
    :try_start_6
    const-string v5, "clearCache"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 51
    invoke-virtual {p0}, Lorg/apache/cordova/App;->clearCache()V

    .line 84
    :cond_11
    :goto_11
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v5, v2, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 88
    :goto_19
    return v3

    .line 53
    :cond_1a
    const-string v5, "show"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 57
    iget-object v5, p0, Lorg/apache/cordova/App;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lorg/apache/cordova/App$1;

    invoke-direct {v6, p0}, Lorg/apache/cordova/App$1;-><init>(Lorg/apache/cordova/App;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_30} :catch_31

    goto :goto_11

    .line 86
    :catch_31
    move-exception v0

    .line 87
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    invoke-virtual {p3, v3}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    move v3, v4

    .line 88
    goto :goto_19

    .line 63
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3e
    :try_start_3e
    const-string v5, "loadUrl"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 64
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/cordova/App;->loadUrl(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_11

    .line 66
    :cond_54
    const-string v5, "cancelLoadUrl"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 69
    const-string v5, "clearHistory"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 70
    invoke-virtual {p0}, Lorg/apache/cordova/App;->clearHistory()V

    goto :goto_11

    .line 72
    :cond_68
    const-string v5, "backHistory"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 73
    invoke-virtual {p0}, Lorg/apache/cordova/App;->backHistory()V

    goto :goto_11

    .line 75
    :cond_74
    const-string v5, "overrideButton"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 76
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/cordova/App;->overrideButton(Ljava/lang/String;Z)V

    goto :goto_11

    .line 78
    :cond_8a
    const-string v5, "overrideBackbutton"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 79
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v5

    invoke-virtual {p0, v5}, Lorg/apache/cordova/App;->overrideBackbutton(Z)V

    goto/16 :goto_11

    .line 81
    :cond_9c
    const-string v5, "exitApp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 82
    invoke-virtual {p0}, Lorg/apache/cordova/App;->exitApp()V
    :try_end_a7
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_a7} :catch_31

    goto/16 :goto_11
.end method

.method public exitApp()V
    .registers 4

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/cordova/App;->webView:Lorg/apache/cordova/CordovaWebView;

    const-string v1, "exit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaWebView;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public isBackbuttonOverridden()Z
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/cordova/App;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->isBackButtonBound()Z

    move-result v0

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 15
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "props"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 111
    const-string v9, "App"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "App.loadUrl("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v8, 0x0

    .line 113
    .local v8, "wait":I
    const/4 v5, 0x0

    .line 114
    .local v5, "openExternal":Z
    const/4 v0, 0x0

    .line 117
    .local v0, "clearHistory":Z
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_a6

    .line 119
    invoke-virtual {p2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    .line 120
    .local v4, "keys":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_37
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_a6

    .line 121
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "key":Ljava/lang/String;
    const-string v9, "wait"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 123
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 120
    :cond_4d
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 125
    :cond_50
    const-string v9, "openexternal"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 126
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    goto :goto_4d

    .line 128
    :cond_5d
    const-string v9, "clearhistory"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 129
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4d

    .line 132
    :cond_6a
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 133
    .local v7, "value":Ljava/lang/Object;
    if-eqz v7, :cond_4d

    .line 136
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 137
    check-cast v7, Ljava/lang/String;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 139
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_82
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Boolean;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_94

    .line 140
    check-cast v7, Ljava/lang/Boolean;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 142
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_94
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 143
    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 151
    .end local v2    # "i":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Lorg/json/JSONArray;
    :cond_a6
    if-lez v8, :cond_ae

    .line 153
    :try_start_a8
    monitor-enter p0
    :try_end_a9
    .catch Ljava/lang/InterruptedException; {:try_start_a8 .. :try_end_a9} :catch_b7

    .line 154
    int-to-long v10, v8

    :try_start_aa
    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V

    .line 155
    monitor-exit p0
    :try_end_ae
    .catchall {:try_start_aa .. :try_end_ae} :catchall_b4

    .line 160
    :cond_ae
    :goto_ae
    iget-object v9, p0, Lorg/apache/cordova/App;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v9, p1, v5, v0, v6}, Lorg/apache/cordova/CordovaWebView;->showWebPage(Ljava/lang/String;ZZLjava/util/HashMap;)V

    .line 161
    return-void

    .line 155
    :catchall_b4
    move-exception v9

    :try_start_b5
    monitor-exit p0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    :try_start_b6
    throw v9
    :try_end_b7
    .catch Ljava/lang/InterruptedException; {:try_start_b6 .. :try_end_b7} :catch_b7

    .line 156
    :catch_b7
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_ae
.end method

.method public overrideBackbutton(Z)V
    .registers 4
    .param p1, "override"    # Z

    .prologue
    .line 189
    const-string v0, "App"

    const-string v1, "WARNING: Back Button Default Behaviour will be overridden.  The backbutton event will be fired!"

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lorg/apache/cordova/App;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CordovaWebView;->bindButton(Z)V

    .line 191
    return-void
.end method

.method public overrideButton(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "button"    # Ljava/lang/String;
    .param p2, "override"    # Z

    .prologue
    .line 201
    const-string v0, "DroidGap"

    const-string v1, "WARNING: Volume Button Default Behaviour will be overridden.  The volume event will be fired!"

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lorg/apache/cordova/App;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/CordovaWebView;->bindButton(Ljava/lang/String;Z)V

    .line 203
    return-void
.end method
