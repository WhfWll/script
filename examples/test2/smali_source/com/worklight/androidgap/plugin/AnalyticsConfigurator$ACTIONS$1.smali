.class final enum Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$1;
.super Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
.source "AnalyticsConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;-><init>(Ljava/lang/String;ILcom/worklight/androidgap/plugin/AnalyticsConfigurator$1;)V

    return-void
.end method


# virtual methods
.method public doAction(Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;Ljava/lang/String;)V
    .registers 18
    .param p1, "configurator"    # Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 91
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v6, "passedPrefs":Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONObject;

    sget-object v10, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->prefs:Landroid/content/SharedPreferences;

    sget-object v11, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->TEALEAF_PROPS:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    invoke-virtual {v11}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "{}"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    .local v7, "tealeafPrefs":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 98
    .local v4, "itCompare":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    monitor-enter v4
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_20} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_20} :catch_b1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_20} :catch_f0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_20} :catch_f4

    .line 99
    :cond_20
    :goto_20
    :try_start_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_56

    .line 100
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_45

    .line 101
    .local v5, "key":Ljava/lang/String;
    const/4 v9, 0x0

    .line 103
    .local v9, "val":Ljava/lang/String;
    :try_start_2d
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v9, v0
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_35} :catch_fb
    .catchall {:try_start_2d .. :try_end_35} :catchall_45

    .line 107
    :goto_35
    if-eqz v9, :cond_20

    :try_start_37
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 109
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_20

    .line 112
    .end local v5    # "key":Ljava/lang/String;
    .end local v9    # "val":Ljava/lang/String;
    :catchall_45
    move-exception v10

    monitor-exit v4
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_45

    :try_start_47
    throw v10
    :try_end_48
    .catch Ljava/lang/ClassNotFoundException; {:try_start_47 .. :try_end_48} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_47 .. :try_end_48} :catch_b1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_47 .. :try_end_48} :catch_f0
    .catch Ljava/lang/IllegalAccessException; {:try_start_47 .. :try_end_48} :catch_f4

    .line 152
    .end local v4    # "itCompare":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v6    # "passedPrefs":Lorg/json/JSONObject;
    .end local v7    # "tealeafPrefs":Lorg/json/JSONObject;
    :catch_48
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v2, v1

    .line 163
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_4a
    :goto_4a
    if-eqz v2, :cond_55

    .line 164
    # getter for: Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "configureTealeaf was called, but the required Tealeaf libraries are not present on the classpath."

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :cond_55
    return-void

    .line 112
    .restart local v4    # "itCompare":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v6    # "passedPrefs":Lorg/json/JSONObject;
    .restart local v7    # "tealeafPrefs":Lorg/json/JSONObject;
    :cond_56
    :try_start_56
    monitor-exit v4
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_45

    .line 114
    :try_start_57
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I
    :try_end_5a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_57 .. :try_end_5a} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_57 .. :try_end_5a} :catch_b1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_57 .. :try_end_5a} :catch_f0
    .catch Ljava/lang/IllegalAccessException; {:try_start_57 .. :try_end_5a} :catch_f4

    move-result v10

    if-eqz v10, :cond_55

    .line 121
    :try_start_5d
    sget-object v10, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$1;->disable:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    invoke-virtual {v10}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->doAction(Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/net/MalformedURLException; {:try_start_5d .. :try_end_6d} :catch_f8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5d .. :try_end_6d} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5d .. :try_end_6d} :catch_b1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5d .. :try_end_6d} :catch_f0
    .catch Ljava/lang/IllegalAccessException; {:try_start_5d .. :try_end_6d} :catch_f4

    .line 127
    :goto_6d
    :try_start_6d
    const-string v10, "com.tl.uic.util.ConfigurationUtil"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "setProperty"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 128
    .local v8, "tlMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 130
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    monitor-enter v3
    :try_end_8b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6d .. :try_end_8b} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6d .. :try_end_8b} :catch_b1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6d .. :try_end_8b} :catch_f0
    .catch Ljava/lang/IllegalAccessException; {:try_start_6d .. :try_end_8b} :catch_f4

    .line 131
    :goto_8b
    :try_start_8b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b4

    .line 132
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 133
    .restart local v5    # "key":Ljava/lang/String;
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 134
    .restart local v9    # "val":Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v12, 0x1

    aput-object v9, v11, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v7, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8b

    .line 137
    .end local v5    # "key":Ljava/lang/String;
    .end local v9    # "val":Ljava/lang/String;
    :catchall_ae
    move-exception v10

    monitor-exit v3
    :try_end_b0
    .catchall {:try_start_8b .. :try_end_b0} :catchall_ae

    :try_start_b0
    throw v10
    :try_end_b1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b0 .. :try_end_b1} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b0 .. :try_end_b1} :catch_b1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b0 .. :try_end_b1} :catch_f0
    .catch Ljava/lang/IllegalAccessException; {:try_start_b0 .. :try_end_b1} :catch_f4

    .line 154
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "itCompare":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v6    # "passedPrefs":Lorg/json/JSONObject;
    .end local v7    # "tealeafPrefs":Lorg/json/JSONObject;
    .end local v8    # "tlMethod":Ljava/lang/reflect/Method;
    :catch_b1
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v2, v1

    .line 160
    goto :goto_4a

    .line 137
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v4    # "itCompare":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v6    # "passedPrefs":Lorg/json/JSONObject;
    .restart local v7    # "tealeafPrefs":Lorg/json/JSONObject;
    .restart local v8    # "tlMethod":Ljava/lang/reflect/Method;
    :cond_b4
    :try_start_b4
    monitor-exit v3
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_ae

    .line 139
    :try_start_b5
    sget-object v10, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    sget-object v11, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->TEALEAF_PROPS:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    invoke-virtual {v11}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    sget-object v10, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->prefs:Landroid/content/SharedPreferences;

    sget-object v11, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->ENABLED:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    invoke-virtual {v11}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_d8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b5 .. :try_end_d8} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b5 .. :try_end_d8} :catch_b1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b5 .. :try_end_d8} :catch_f0
    .catch Ljava/lang/IllegalAccessException; {:try_start_b5 .. :try_end_d8} :catch_f4

    move-result v10

    if-eqz v10, :cond_4a

    .line 145
    :try_start_db
    sget-object v10, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$1;->enable:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    invoke-virtual {v10}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->doAction(Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;Ljava/lang/String;)V
    :try_end_eb
    .catch Ljava/net/MalformedURLException; {:try_start_db .. :try_end_eb} :catch_ed
    .catch Ljava/lang/ClassNotFoundException; {:try_start_db .. :try_end_eb} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_db .. :try_end_eb} :catch_b1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_db .. :try_end_eb} :catch_f0
    .catch Ljava/lang/IllegalAccessException; {:try_start_db .. :try_end_eb} :catch_f4

    goto/16 :goto_4a

    .line 147
    :catch_ed
    move-exception v10

    goto/16 :goto_4a

    .line 156
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "itCompare":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v6    # "passedPrefs":Lorg/json/JSONObject;
    .end local v7    # "tealeafPrefs":Lorg/json/JSONObject;
    .end local v8    # "tlMethod":Ljava/lang/reflect/Method;
    :catch_f0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    move-object v2, v1

    .line 160
    goto/16 :goto_4a

    .line 158
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_f4
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/IllegalAccessException;
    move-object v2, v1

    goto/16 :goto_4a

    .line 123
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .restart local v4    # "itCompare":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v6    # "passedPrefs":Lorg/json/JSONObject;
    .restart local v7    # "tealeafPrefs":Lorg/json/JSONObject;
    :catch_f8
    move-exception v10

    goto/16 :goto_6d

    .line 104
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v9    # "val":Ljava/lang/String;
    :catch_fb
    move-exception v10

    goto/16 :goto_35
.end method
