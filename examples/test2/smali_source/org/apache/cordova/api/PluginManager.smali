.class public Lorg/apache/cordova/api/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final app:Lorg/apache/cordova/CordovaWebView;

.field private final ctx:Lorg/apache/cordova/api/CordovaInterface;

.field private final entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/api/PluginEntry;",
            ">;"
        }
    .end annotation
.end field

.field private firstRun:Z

.field protected urlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string v0, "PluginManager"

    sput-object v0, Lorg/apache/cordova/api/PluginManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/api/CordovaInterface;)V
    .registers 4
    .param p1, "app"    # Lorg/apache/cordova/CordovaWebView;
    .param p2, "ctx"    # Lorg/apache/cordova/api/CordovaInterface;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/api/PluginManager;->urlMap:Ljava/util/HashMap;

    .line 65
    iput-object p2, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    .line 66
    iput-object p1, p0, Lorg/apache/cordova/api/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/api/PluginManager;->firstRun:Z

    .line 68
    return-void
.end method

.method private pluginConfigurationMissing()V
    .registers 3

    .prologue
    .line 407
    sget-object v0, Lorg/apache/cordova/api/PluginManager;->TAG:Ljava/lang/String;

    const-string v1, "====================================================================================="

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-object v0, Lorg/apache/cordova/api/PluginManager;->TAG:Ljava/lang/String;

    const-string v1, "ERROR: plugin.xml is missing.  Add res/xml/plugins.xml to your project."

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    sget-object v0, Lorg/apache/cordova/api/PluginManager;->TAG:Ljava/lang/String;

    const-string v1, "https://git-wip-us.apache.org/repos/asf?p=incubator-cordova-android.git;a=blob;f=framework/res/xml/plugins.xml"

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    sget-object v0, Lorg/apache/cordova/api/PluginManager;->TAG:Ljava/lang/String;

    const-string v1, "====================================================================================="

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 271
    new-instance v0, Lorg/apache/cordova/api/PluginEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/cordova/api/PluginEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 272
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    invoke-virtual {p0, v0}, Lorg/apache/cordova/api/PluginManager;->addService(Lorg/apache/cordova/api/PluginEntry;)V

    .line 273
    return-void
.end method

.method public addService(Lorg/apache/cordova/api/PluginEntry;)V
    .registers 4
    .param p1, "entry"    # Lorg/apache/cordova/api/PluginEntry;

    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/apache/cordova/api/PluginEntry;->service:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-void
.end method

.method public clearPluginObjects()V
    .registers 4

    .prologue
    .line 180
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 181
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    goto :goto_a

    .line 183
    .end local v0    # "entry":Lorg/apache/cordova/api/PluginEntry;
    :cond_1a
    return-void
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callbackId"    # Ljava/lang/String;
    .param p4, "rawArgs"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 215
    invoke-virtual {p0, p1}, Lorg/apache/cordova/api/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/api/CordovaPlugin;

    move-result-object v3

    .line 216
    .local v3, "plugin":Lorg/apache/cordova/api/CordovaPlugin;
    if-nez v3, :cond_2c

    .line 217
    sget-object v6, Lorg/apache/cordova/api/PluginManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exec() call to unknown plugin: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->CLASS_NOT_FOUND_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 219
    .local v1, "cr":Lorg/apache/cordova/api/PluginResult;
    iget-object v6, p0, Lorg/apache/cordova/api/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v6, v1, p3}, Lorg/apache/cordova/CordovaWebView;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    .line 234
    .end local v1    # "cr":Lorg/apache/cordova/api/PluginResult;
    :goto_2b
    return v5

    .line 223
    :cond_2c
    :try_start_2c
    new-instance v0, Lorg/apache/cordova/api/CallbackContext;

    iget-object v6, p0, Lorg/apache/cordova/api/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    invoke-direct {v0, p3, v6}, Lorg/apache/cordova/api/CallbackContext;-><init>(Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V

    .line 224
    .local v0, "callbackContext":Lorg/apache/cordova/api/CallbackContext;
    invoke-virtual {v3, p2, p4, v0}, Lorg/apache/cordova/api/CordovaPlugin;->execute(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v4

    .line 225
    .local v4, "wasValidAction":Z
    if-nez v4, :cond_54

    .line 226
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 227
    .restart local v1    # "cr":Lorg/apache/cordova/api/PluginResult;
    iget-object v6, p0, Lorg/apache/cordova/api/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v6, v1, p3}, Lorg/apache/cordova/CordovaWebView;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_45} :catch_46

    goto :goto_2b

    .line 231
    .end local v0    # "callbackContext":Lorg/apache/cordova/api/CallbackContext;
    .end local v1    # "cr":Lorg/apache/cordova/api/PluginResult;
    .end local v4    # "wasValidAction":Z
    :catch_46
    move-exception v2

    .line 232
    .local v2, "e":Lorg/json/JSONException;
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 233
    .restart local v1    # "cr":Lorg/apache/cordova/api/PluginResult;
    iget-object v6, p0, Lorg/apache/cordova/api/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v6, v1, p3}, Lorg/apache/cordova/CordovaWebView;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    goto :goto_2b

    .line 230
    .end local v1    # "cr":Lorg/apache/cordova/api/PluginResult;
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "callbackContext":Lorg/apache/cordova/api/CallbackContext;
    .restart local v4    # "wasValidAction":Z
    :cond_54
    :try_start_54
    invoke-virtual {v0}, Lorg/apache/cordova/api/CallbackContext;->isFinished()Z
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_57} :catch_46

    move-result v5

    goto :goto_2b
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callbackId"    # Ljava/lang/String;
    .param p4, "jsonArgs"    # Ljava/lang/String;
    .param p5, "async"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/cordova/api/PluginManager;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPlugin(Ljava/lang/String;)Lorg/apache/cordova/api/CordovaPlugin;
    .registers 6
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 253
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    if-nez v0, :cond_c

    .line 254
    const/4 v1, 0x0

    .line 260
    :cond_b
    :goto_b
    return-object v1

    .line 256
    :cond_c
    iget-object v1, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    .line 257
    .local v1, "plugin":Lorg/apache/cordova/api/CordovaPlugin;
    if-nez v1, :cond_b

    .line 258
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    iget-object v3, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-virtual {v0, v2, v3}, Lorg/apache/cordova/api/PluginEntry;->createPlugin(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/api/CordovaInterface;)Lorg/apache/cordova/api/CordovaPlugin;

    move-result-object v1

    goto :goto_b
.end method

.method public init()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 74
    sget-object v0, Lorg/apache/cordova/api/PluginManager;->TAG:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-boolean v0, p0, Lorg/apache/cordova/api/PluginManager;->firstRun:Z

    if-eqz v0, :cond_15

    .line 78
    invoke-virtual {p0}, Lorg/apache/cordova/api/PluginManager;->loadPlugins()V

    .line 79
    iput-boolean v2, p0, Lorg/apache/cordova/api/PluginManager;->firstRun:Z

    .line 90
    :goto_11
    invoke-virtual {p0}, Lorg/apache/cordova/api/PluginManager;->startupPlugins()V

    .line 91
    return-void

    .line 84
    :cond_15
    invoke-virtual {p0, v2}, Lorg/apache/cordova/api/PluginManager;->onPause(Z)V

    .line 85
    invoke-virtual {p0}, Lorg/apache/cordova/api/PluginManager;->onDestroy()V

    .line 86
    invoke-virtual {p0}, Lorg/apache/cordova/api/PluginManager;->clearPluginObjects()V

    goto :goto_11
.end method

.method public loadPlugins()V
    .registers 16

    .prologue
    .line 97
    iget-object v11, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v11}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "config"

    const-string v13, "xml"

    iget-object v14, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v14}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 98
    .local v3, "id":I
    if-nez v3, :cond_41

    .line 100
    iget-object v11, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v11}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "plugins"

    const-string v13, "xml"

    iget-object v14, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v14}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 101
    sget-object v11, Lorg/apache/cordova/api/PluginManager;->TAG:Ljava/lang/String;

    const-string v12, "Using plugins.xml instead of config.xml.  plugins.xml will eventually be deprecated"

    invoke-static {v11, v12}, Lorg/apache/cordova/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_41
    if-nez v3, :cond_47

    .line 104
    invoke-direct {p0}, Lorg/apache/cordova/api/PluginManager;->pluginConfigurationMissing()V

    .line 174
    :cond_46
    return-void

    .line 108
    :cond_47
    iget-object v11, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v11}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 109
    .local v10, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v2, -0x1

    .line 110
    .local v2, "eventType":I
    const-string v8, ""

    .local v8, "service":Ljava/lang/String;
    const-string v7, ""

    .local v7, "pluginClass":Ljava/lang/String;
    const-string v6, ""

    .line 111
    .local v6, "paramType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 112
    .local v5, "onload":Z
    const/4 v1, 0x0

    .line 113
    .local v1, "entry":Lorg/apache/cordova/api/PluginEntry;
    const/4 v4, 0x0

    .line 114
    .local v4, "insideFeature":Z
    :goto_5f
    const/4 v11, 0x1

    if-eq v2, v11, :cond_46

    .line 115
    const/4 v11, 0x2

    if-ne v2, v11, :cond_114

    .line 116
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, "strNode":Ljava/lang/String;
    const-string v11, "plugin"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_99

    .line 119
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 120
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-interface {v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 122
    const-string v11, "true"

    const/4 v12, 0x0

    const-string v13, "onload"

    invoke-interface {v10, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 123
    new-instance v1, Lorg/apache/cordova/api/PluginEntry;

    .end local v1    # "entry":Lorg/apache/cordova/api/PluginEntry;
    invoke-direct {v1, v8, v7, v5}, Lorg/apache/cordova/api/PluginEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    .restart local v1    # "entry":Lorg/apache/cordova/api/PluginEntry;
    invoke-virtual {p0, v1}, Lorg/apache/cordova/api/PluginManager;->addService(Lorg/apache/cordova/api/PluginEntry;)V

    .line 167
    .end local v9    # "strNode":Ljava/lang/String;
    :cond_94
    :goto_94
    :try_start_94
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_97
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_94 .. :try_end_97} :catch_12a
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_130

    move-result v2

    goto :goto_5f

    .line 127
    .restart local v9    # "strNode":Ljava/lang/String;
    :cond_99
    const-string v11, "url-filter"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ae

    .line 128
    iget-object v11, p0, Lorg/apache/cordova/api/PluginManager;->urlMap:Ljava/util/HashMap;

    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v10, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_94

    .line 130
    :cond_ae
    const-string v11, "feature"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_be

    .line 131
    const/4 v4, 0x1

    .line 134
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_94

    .line 136
    :cond_be
    const-string v11, "param"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_94

    .line 137
    if-eqz v4, :cond_94

    .line 139
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 140
    const-string v11, "service"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_104

    .line 141
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-interface {v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 144
    :cond_de
    :goto_de
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_94

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_94

    .line 146
    const-string v11, "true"

    const/4 v12, 0x0

    const-string v13, "onload"

    invoke-interface {v10, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 147
    new-instance v1, Lorg/apache/cordova/api/PluginEntry;

    .end local v1    # "entry":Lorg/apache/cordova/api/PluginEntry;
    invoke-direct {v1, v8, v7, v5}, Lorg/apache/cordova/api/PluginEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    .restart local v1    # "entry":Lorg/apache/cordova/api/PluginEntry;
    invoke-virtual {p0, v1}, Lorg/apache/cordova/api/PluginManager;->addService(Lorg/apache/cordova/api/PluginEntry;)V

    .line 149
    const-string v8, ""

    .line 150
    const-string v7, ""

    goto :goto_94

    .line 142
    :cond_104
    const-string v11, "package"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_de

    .line 143
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-interface {v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_de

    .line 155
    .end local v9    # "strNode":Ljava/lang/String;
    :cond_114
    const/4 v11, 0x3

    if-ne v2, v11, :cond_94

    .line 157
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 158
    .restart local v9    # "strNode":Ljava/lang/String;
    const-string v11, "feature"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_94

    .line 161
    const-string v8, ""

    .line 162
    const-string v7, ""

    .line 163
    const/4 v4, 0x0

    goto/16 :goto_94

    .line 168
    .end local v9    # "strNode":Ljava/lang/String;
    :catch_12a
    move-exception v0

    .line 169
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_5f

    .line 170
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_130
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5f
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 315
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 316
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    iget-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    if-eqz v2, :cond_a

    .line 317
    iget-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    invoke-virtual {v2}, Lorg/apache/cordova/api/CordovaPlugin;->onDestroy()V

    goto :goto_a

    .line 320
    .end local v0    # "entry":Lorg/apache/cordova/api/PluginEntry;
    :cond_20
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 349
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 350
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    iget-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    if-eqz v2, :cond_a

    .line 351
    iget-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    invoke-virtual {v2, p1}, Lorg/apache/cordova/api/CordovaPlugin;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_a

    .line 354
    .end local v0    # "entry":Lorg/apache/cordova/api/PluginEntry;
    :cond_20
    return-void
.end method

.method public onOverrideUrlLoading(Ljava/lang/String;)Z
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->urlMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 364
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 365
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 366
    .local v1, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 367
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/cordova/api/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/api/CordovaPlugin;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/cordova/api/CordovaPlugin;->onOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v2

    .line 370
    .end local v1    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_30
    return v2

    :cond_31
    const/4 v2, 0x0

    goto :goto_30
.end method

.method public onPause(Z)V
    .registers 5
    .param p1, "multitasking"    # Z

    .prologue
    .line 291
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 292
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    iget-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    if-eqz v2, :cond_a

    .line 293
    iget-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    invoke-virtual {v2, p1}, Lorg/apache/cordova/api/CordovaPlugin;->onPause(Z)V

    goto :goto_a

    .line 296
    .end local v0    # "entry":Lorg/apache/cordova/api/PluginEntry;
    :cond_20
    return-void
.end method

.method public onReset()V
    .registers 4

    .prologue
    .line 396
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 397
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/cordova/api/PluginEntry;>;"
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 398
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/api/PluginEntry;

    iget-object v1, v2, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    .line 399
    .local v1, "plugin":Lorg/apache/cordova/api/CordovaPlugin;
    if-eqz v1, :cond_a

    .line 400
    invoke-virtual {v1}, Lorg/apache/cordova/api/CordovaPlugin;->onReset()V

    goto :goto_a

    .line 403
    .end local v1    # "plugin":Lorg/apache/cordova/api/CordovaPlugin;
    :cond_1e
    return-void
.end method

.method public onResume(Z)V
    .registers 5
    .param p1, "multitasking"    # Z

    .prologue
    .line 304
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 305
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    iget-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    if-eqz v2, :cond_a

    .line 306
    iget-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    invoke-virtual {v2, p1}, Lorg/apache/cordova/api/CordovaPlugin;->onResume(Z)V

    goto :goto_a

    .line 309
    .end local v0    # "entry":Lorg/apache/cordova/api/PluginEntry;
    :cond_20
    return-void
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 330
    iget-object v3, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3, p1, p2}, Lorg/apache/cordova/api/CordovaInterface;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 331
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_a

    move-object v3, v2

    .line 342
    :goto_9
    return-object v3

    .line 334
    :cond_a
    iget-object v3, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 335
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    iget-object v3, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    if-eqz v3, :cond_14

    .line 336
    iget-object v3, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    invoke-virtual {v3, p1, p2}, Lorg/apache/cordova/api/CordovaPlugin;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 337
    if-eqz v2, :cond_14

    move-object v3, v2

    .line 338
    goto :goto_9

    .line 342
    .end local v0    # "entry":Lorg/apache/cordova/api/PluginEntry;
    :cond_2e
    const/4 v3, 0x0

    goto :goto_9
.end method

.method public shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 382
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->urlMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 383
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 384
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 385
    .local v1, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 386
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/cordova/api/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/api/CordovaPlugin;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/cordova/api/CordovaPlugin;->shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    .line 389
    .end local v1    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_30
    return-object v2

    :cond_31
    const/4 v2, 0x0

    goto :goto_30
.end method

.method public startupPlugins()V
    .registers 5

    .prologue
    .line 189
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 190
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    iget-boolean v2, v0, Lorg/apache/cordova/api/PluginEntry;->onload:Z

    if-eqz v2, :cond_a

    .line 191
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    iget-object v3, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-virtual {v0, v2, v3}, Lorg/apache/cordova/api/PluginEntry;->createPlugin(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/api/CordovaInterface;)Lorg/apache/cordova/api/CordovaPlugin;

    goto :goto_a

    .line 194
    .end local v0    # "entry":Lorg/apache/cordova/api/PluginEntry;
    :cond_22
    return-void
.end method