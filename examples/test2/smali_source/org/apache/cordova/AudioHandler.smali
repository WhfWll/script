.class public Lorg/apache/cordova/AudioHandler;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "AudioHandler.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field pausedForPhone:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/cordova/AudioPlayer;",
            ">;"
        }
    .end annotation
.end field

.field players:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/AudioPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-string v0, "AudioHandler"

    sput-object v0, Lorg/apache/cordova/AudioHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/AudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method private release(Ljava/lang/String;)Z
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 187
    const/4 v1, 0x0

    .line 192
    :goto_9
    return v1

    .line 189
    :cond_a
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 190
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->destroy()V

    .line 192
    const/4 v1, 0x1

    goto :goto_9
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .registers 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 67
    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    .line 68
    .local v6, "status":Lorg/apache/cordova/api/PluginResult$Status;
    const-string v4, ""

    .line 70
    .local v4, "result":Ljava/lang/String;
    const-string v9, "startRecordingAudio"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 71
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/cordova/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/cordova/AudioHandler;->startRecordingAudio(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_1d
    new-instance v8, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v8, v6, v4}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    invoke-virtual {p3, v8}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 120
    :goto_25
    return v7

    .line 73
    :cond_26
    const-string v9, "stopRecordingAudio"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 74
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/cordova/AudioHandler;->stopRecordingAudio(Ljava/lang/String;)V

    goto :goto_1d

    .line 76
    :cond_36
    const-string v9, "startPlayingAudio"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 77
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/cordova/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/cordova/AudioHandler;->startPlayingAudio(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 79
    :cond_4e
    const-string v9, "seekToAudio"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 80
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/cordova/AudioHandler;->seekToAudio(Ljava/lang/String;I)V

    goto :goto_1d

    .line 82
    :cond_62
    const-string v9, "pausePlayingAudio"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72

    .line 83
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/cordova/AudioHandler;->pausePlayingAudio(Ljava/lang/String;)V

    goto :goto_1d

    .line 85
    :cond_72
    const-string v9, "stopPlayingAudio"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 86
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/cordova/AudioHandler;->stopPlayingAudio(Ljava/lang/String;)V

    goto :goto_1d

    .line 87
    :cond_82
    const-string v9, "setVolume"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9e

    .line 89
    const/4 v8, 0x0

    :try_start_8b
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/cordova/AudioHandler;->setVolume(Ljava/lang/String;F)V
    :try_end_9b
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_9b} :catch_9c

    goto :goto_1d

    .line 90
    :catch_9c
    move-exception v8

    goto :goto_1d

    .line 93
    :cond_9e
    const-string v9, "getCurrentPositionAudio"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b8

    .line 94
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/cordova/AudioHandler;->getCurrentPositionAudio(Ljava/lang/String;)F

    move-result v2

    .line 95
    .local v2, "f":F
    new-instance v8, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v8, v6, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;F)V

    invoke-virtual {p3, v8}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto/16 :goto_25

    .line 98
    .end local v2    # "f":F
    :cond_b8
    const-string v9, "getDurationAudio"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d6

    .line 99
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/cordova/AudioHandler;->getDurationAudio(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    .line 100
    .restart local v2    # "f":F
    new-instance v8, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v8, v6, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;F)V

    invoke-virtual {p3, v8}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto/16 :goto_25

    .line 103
    .end local v2    # "f":F
    :cond_d6
    const-string v9, "create"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f6

    .line 104
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/cordova/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "src":Ljava/lang/String;
    new-instance v0, Lorg/apache/cordova/AudioPlayer;

    invoke-direct {v0, p0, v3, v5}, Lorg/apache/cordova/AudioPlayer;-><init>(Lorg/apache/cordova/AudioHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    iget-object v8, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v8, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d

    .line 109
    .end local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "src":Ljava/lang/String;
    :cond_f6
    const-string v9, "release"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_110

    .line 110
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/cordova/AudioHandler;->release(Ljava/lang/String;)Z

    move-result v1

    .line 111
    .local v1, "b":Z
    new-instance v8, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v8, v6, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Z)V

    invoke-virtual {p3, v8}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto/16 :goto_25

    .end local v1    # "b":Z
    :cond_110
    move v7, v8

    .line 115
    goto/16 :goto_25
.end method

.method public getAudioOutputDevice()I
    .registers 7

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 331
    iget-object v3, p0, Lorg/apache/cordova/AudioHandler;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 332
    .local v0, "audiMgr":Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v3

    if-ne v3, v1, :cond_18

    .line 339
    :goto_17
    return v1

    .line 335
    :cond_18
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v1

    if-ne v1, v2, :cond_20

    move v1, v2

    .line 336
    goto :goto_17

    .line 339
    :cond_20
    const/4 v1, -0x1

    goto :goto_17
.end method

.method public getCurrentPositionAudio(Ljava/lang/String;)F
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 277
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_13

    .line 278
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->getCurrentPosition()J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v2, 0x447a0000

    div-float/2addr v1, v2

    .line 280
    :goto_12
    return v1

    :cond_13
    const/high16 v1, -0x40800000

    goto :goto_12
.end method

.method public getDurationAudio(Ljava/lang/String;Ljava/lang/String;)F
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 293
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_f

    .line 294
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->getDuration(Ljava/lang/String;)F

    move-result v1

    .line 301
    :goto_e
    return v1

    .line 299
    :cond_f
    new-instance v0, Lorg/apache/cordova/AudioPlayer;

    .end local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/cordova/AudioPlayer;-><init>(Lorg/apache/cordova/AudioHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .restart local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->getDuration(Ljava/lang/String;)F

    move-result v1

    goto :goto_e
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 127
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

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

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 128
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->destroy()V

    goto :goto_a

    .line 130
    .end local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    :cond_1a
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 131
    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 151
    const-string v2, "telephone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 154
    const-string v2, "ringing"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "offhook"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 157
    :cond_19
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 158
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->getState()I

    move-result v2

    sget-object v3, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_RUNNING:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-virtual {v3}, Lorg/apache/cordova/AudioPlayer$STATE;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_23

    .line 159
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->pausePlaying()V

    goto :goto_23

    .line 167
    .end local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_44
    const-string v2, "idle"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 168
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 169
    .restart local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    invoke-virtual {v0, v4}, Lorg/apache/cordova/AudioPlayer;->startPlaying(Ljava/lang/String;)V

    goto :goto_52

    .line 171
    .end local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    :cond_62
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 174
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_67
    return-object v4
.end method

.method public onReset()V
    .registers 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/apache/cordova/AudioHandler;->onDestroy()V

    .line 139
    return-void
.end method

.method public pausePlayingAudio(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 252
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_d

    .line 253
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->pausePlaying()V

    .line 255
    :cond_d
    return-void
.end method

.method public seekToAudio(Ljava/lang/String;I)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "milliseconds"    # I

    .prologue
    .line 240
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 241
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_d

    .line 242
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->seekToPlaying(I)V

    .line 244
    :cond_d
    return-void
.end method

.method public setAudioOutputDevice(I)V
    .registers 9
    .param p1, "output"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 312
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 313
    .local v0, "audiMgr":Landroid/media/AudioManager;
    if-ne p1, v6, :cond_18

    .line 314
    invoke-virtual {v0, v4, v6, v3}, Landroid/media/AudioManager;->setRouting(III)V

    .line 322
    :goto_17
    return-void

    .line 316
    :cond_18
    if-ne p1, v5, :cond_1e

    .line 317
    invoke-virtual {v0, v4, v5, v3}, Landroid/media/AudioManager;->setRouting(III)V

    goto :goto_17

    .line 320
    :cond_1e
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "AudioHandler.setAudioOutputDevice() Error: Unknown output device."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public setVolume(Ljava/lang/String;F)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "volume"    # F

    .prologue
    .line 350
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 351
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_e

    .line 352
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->setVolume(F)V

    .line 356
    :goto_d
    return-void

    .line 354
    :cond_e
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioHandler.setVolume() Error: Unknown Audio Player "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public startPlayingAudio(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 227
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-nez v0, :cond_14

    .line 228
    new-instance v0, Lorg/apache/cordova/AudioPlayer;

    .end local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/cordova/AudioPlayer;-><init>(Lorg/apache/cordova/AudioHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .restart local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_14
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->startPlaying(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public startRecordingAudio(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 202
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-nez v0, :cond_14

    .line 203
    new-instance v0, Lorg/apache/cordova/AudioPlayer;

    .end local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/cordova/AudioPlayer;-><init>(Lorg/apache/cordova/AudioHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .restart local v0    # "audio":Lorg/apache/cordova/AudioPlayer;
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_14
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->startRecording(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public stopPlayingAudio(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 263
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_d

    .line 264
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->stopPlaying()V

    .line 268
    :cond_d
    return-void
.end method

.method public stopRecordingAudio(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 215
    .local v0, "audio":Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_d

    .line 216
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->stopRecording()V

    .line 218
    :cond_d
    return-void
.end method
