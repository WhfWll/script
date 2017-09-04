.class Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/NativeToJsMessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JsMessage"
.end annotation


# instance fields
.field final jsPayloadOrCallbackId:Ljava/lang/String;

.field final pluginResult:Lorg/apache/cordova/api/PluginResult;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "js"    # Ljava/lang/String;

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    if-nez p1, :cond_b

    .line 382
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 384
    :cond_b
    iput-object p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->jsPayloadOrCallbackId:Ljava/lang/String;

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    .line 386
    return-void
.end method

.method constructor <init>(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V
    .registers 4
    .param p1, "pluginResult"    # Lorg/apache/cordova/api/PluginResult;
    .param p2, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    if-eqz p2, :cond_7

    if-nez p1, :cond_d

    .line 389
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 391
    :cond_d
    iput-object p2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->jsPayloadOrCallbackId:Ljava/lang/String;

    .line 392
    iput-object p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    .line 393
    return-void
.end method


# virtual methods
.method calculateEncodedLength()I
    .registers 5

    .prologue
    .line 396
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    if-nez v2, :cond_d

    .line 397
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->jsPayloadOrCallbackId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 422
    :goto_c
    return v0

    .line 399
    :cond_d
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v2}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 400
    .local v1, "statusLen":I
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->jsPayloadOrCallbackId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 401
    .local v0, "ret":I
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v2}, Lorg/apache/cordova/api/PluginResult;->getMessageType()I

    move-result v2

    packed-switch v2, :pswitch_data_78

    .line 420
    :pswitch_31
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v2}, Lorg/apache/cordova/api/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_c

    .line 404
    :pswitch_3d
    add-int/lit8 v0, v0, 0x1

    .line 405
    goto :goto_c

    .line 407
    :pswitch_40
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v2}, Lorg/apache/cordova/api/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 408
    goto :goto_c

    .line 410
    :pswitch_4e
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v2}, Lorg/apache/cordova/api/PluginResult;->getStrMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 411
    goto :goto_c

    .line 413
    :pswitch_5c
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v2}, Lorg/apache/cordova/api/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 414
    goto :goto_c

    .line 416
    :pswitch_6a
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v2}, Lorg/apache/cordova/api/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 417
    goto :goto_c

    .line 401
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_31
        :pswitch_40
        :pswitch_3d
        :pswitch_3d
        :pswitch_6a
        :pswitch_5c
    .end packed-switch
.end method

.method encodeAsJsMessage(Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 472
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    if-nez v2, :cond_a

    .line 473
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->jsPayloadOrCallbackId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :goto_9
    return-void

    .line 475
    :cond_a
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v2}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v0

    .line 476
    .local v0, "status":I
    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v2}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_20

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v2}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_67

    :cond_20
    const/4 v1, 0x1

    .line 477
    .local v1, "success":Z
    :goto_21
    const-string v2, "cordova.callbackFromNative(\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->jsPayloadOrCallbackId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v3}, Lorg/apache/cordova/api/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v3}, Lorg/apache/cordova/api/PluginResult;->getKeepCallback()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 476
    .end local v1    # "success":Z
    :cond_67
    const/4 v1, 0x0

    goto :goto_21
.end method

.method encodeAsMessage(Ljava/lang/StringBuilder;)V
    .registers 11
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v6, 0x53

    const/16 v8, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 426
    iget-object v7, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    if-nez v7, :cond_16

    .line 427
    const/16 v4, 0x4a

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->jsPayloadOrCallbackId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    :goto_15
    return-void

    .line 431
    :cond_16
    iget-object v7, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v7}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v3

    .line 432
    .local v3, "status":I
    sget-object v7, Lorg/apache/cordova/api/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v7}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v7

    if-ne v3, v7, :cond_69

    move v1, v4

    .line 433
    .local v1, "noResult":Z
    :goto_25
    sget-object v7, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v7}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v7

    if-ne v3, v7, :cond_6b

    move v2, v4

    .line 434
    .local v2, "resultOk":Z
    :goto_2e
    iget-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v4}, Lorg/apache/cordova/api/PluginResult;->getKeepCallback()Z

    move-result v0

    .line 436
    .local v0, "keepCallback":Z
    if-nez v1, :cond_38

    if-eqz v2, :cond_6d

    :cond_38
    move v4, v6

    :goto_39
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_70

    const/16 v4, 0x31

    :goto_41
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->jsPayloadOrCallbackId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    iget-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v4}, Lorg/apache/cordova/api/PluginResult;->getMessageType()I

    move-result v4

    packed-switch v4, :pswitch_data_c6

    .line 467
    :pswitch_5f
    iget-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v4}, Lorg/apache/cordova/api/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .end local v0    # "keepCallback":Z
    .end local v1    # "noResult":Z
    .end local v2    # "resultOk":Z
    :cond_69
    move v1, v5

    .line 432
    goto :goto_25

    .restart local v1    # "noResult":Z
    :cond_6b
    move v2, v5

    .line 433
    goto :goto_2e

    .line 436
    .restart local v0    # "keepCallback":Z
    .restart local v2    # "resultOk":Z
    :cond_6d
    const/16 v4, 0x46

    goto :goto_39

    :cond_70
    const/16 v4, 0x30

    goto :goto_41

    .line 444
    :pswitch_73
    iget-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v4}, Lorg/apache/cordova/api/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 447
    :pswitch_81
    const/16 v4, 0x4e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 450
    :pswitch_87
    const/16 v4, 0x6e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v5}, Lorg/apache/cordova/api/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_15

    .line 454
    :pswitch_98
    const/16 v4, 0x73

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    iget-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v4}, Lorg/apache/cordova/api/PluginResult;->getStrMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_15

    .line 458
    :pswitch_a8
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    iget-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v4}, Lorg/apache/cordova/api/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_15

    .line 462
    :pswitch_b6
    const/16 v4, 0x41

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    iget-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/api/PluginResult;

    invoke-virtual {v4}, Lorg/apache/cordova/api/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_15

    .line 442
    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_98
        :pswitch_5f
        :pswitch_87
        :pswitch_73
        :pswitch_81
        :pswitch_b6
        :pswitch_a8
    .end packed-switch
.end method
