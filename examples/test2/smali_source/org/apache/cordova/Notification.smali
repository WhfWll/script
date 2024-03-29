.class public Lorg/apache/cordova/Notification;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "Notification.java"


# instance fields
.field public confirmResult:I

.field public progressDialog:Landroid/app/ProgressDialog;

.field public spinnerDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/cordova/Notification;->confirmResult:I

    .line 44
    iput-object v1, p0, Lorg/apache/cordova/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 45
    iput-object v1, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;

    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized activityStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 367
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lorg/apache/cordova/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_d

    .line 368
    iget-object v2, p0, Lorg/apache/cordova/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 369
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/cordova/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 371
    :cond_d
    iget-object v0, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 372
    .local v0, "cordova":Lorg/apache/cordova/api/CordovaInterface;
    new-instance v1, Lorg/apache/cordova/Notification$4;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/apache/cordova/Notification$4;-><init>(Lorg/apache/cordova/Notification;Lorg/apache/cordova/api/CordovaInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 383
    monitor-exit p0

    return-void

    .line 367
    .end local v0    # "cordova":Lorg/apache/cordova/api/CordovaInterface;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized activityStop()V
    .registers 2

    .prologue
    .line 389
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/cordova/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_d

    .line 390
    iget-object v0, p0, Lorg/apache/cordova/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/Notification;->spinnerDialog:Landroid/app/ProgressDialog;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 393
    :cond_d
    monitor-exit p0

    return-void

    .line 389
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V
    .registers 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonLabel"    # Ljava/lang/String;
    .param p4, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 158
    .local v2, "cordova":Lorg/apache/cordova/api/CordovaInterface;
    new-instance v0, Lorg/apache/cordova/Notification$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/cordova/Notification$1;-><init>(Lorg/apache/cordova/Notification;Lorg/apache/cordova/api/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V

    .line 184
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 185
    monitor-exit p0

    return-void

    .line 156
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "cordova":Lorg/apache/cordova/api/CordovaInterface;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public beep(J)V
    .registers 14
    .param p1, "count"    # J

    .prologue
    const-wide/16 v8, 0x64

    .line 114
    const/4 v6, 0x2

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 115
    .local v3, "ringtone":Landroid/net/Uri;
    iget-object v6, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 118
    .local v2, "notification":Landroid/media/Ringtone;
    if-eqz v2, :cond_3b

    .line 119
    const-wide/16 v0, 0x0

    .local v0, "i":J
    :goto_19
    cmp-long v6, v0, p1

    if-gez v6, :cond_3b

    .line 120
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 121
    const-wide/16 v4, 0x1388

    .line 122
    .local v4, "timeout":J
    :goto_22
    invoke-virtual {v2}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_37

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_37

    .line 123
    sub-long/2addr v4, v8

    .line 125
    const-wide/16 v6, 0x64

    :try_start_31
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_22

    .line 126
    :catch_35
    move-exception v6

    goto :goto_22

    .line 119
    :cond_37
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_19

    .line 131
    .end local v0    # "i":J
    .end local v4    # "timeout":J
    :cond_3b
    return-void
.end method

.method public declared-synchronized confirm(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
    .registers 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonLabels"    # Lorg/json/JSONArray;
    .param p4, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 201
    .local v2, "cordova":Lorg/apache/cordova/api/CordovaInterface;
    new-instance v0, Lorg/apache/cordova/Notification$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/cordova/Notification$2;-><init>(Lorg/apache/cordova/Notification;Lorg/apache/cordova/api/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V

    .line 259
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 260
    monitor-exit p0

    return-void

    .line 199
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "cordova":Lorg/apache/cordova/api/CordovaInterface;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    const-string v2, "beep"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 63
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/cordova/Notification;->beep(J)V

    .line 100
    :goto_12
    invoke-virtual {p3}, Lorg/apache/cordova/api/CallbackContext;->success()V

    .line 101
    :goto_15
    return v0

    .line 65
    :cond_16
    const-string v2, "vibrate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 66
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/cordova/Notification;->vibrate(J)V

    goto :goto_12

    .line 68
    :cond_26
    const-string v2, "alert"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 69
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, p3}, Lorg/apache/cordova/Notification;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V

    goto :goto_15

    .line 72
    :cond_3e
    const-string v2, "confirm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 73
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, p3}, Lorg/apache/cordova/Notification;->confirm(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V

    goto :goto_15

    .line 76
    :cond_56
    const-string v2, "prompt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 77
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, p3}, Lorg/apache/cordova/Notification;->prompt(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V

    goto :goto_15

    .line 80
    :cond_6e
    const-string v2, "activityStart"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 81
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/cordova/Notification;->activityStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 83
    :cond_82
    const-string v2, "activityStop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 84
    invoke-virtual {p0}, Lorg/apache/cordova/Notification;->activityStop()V

    goto :goto_12

    .line 86
    :cond_8e
    const-string v2, "progressStart"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 87
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/cordova/Notification;->progressStart(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 89
    :cond_a3
    const-string v2, "progressValue"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 90
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/cordova/Notification;->progressValue(I)V

    goto/16 :goto_12

    .line 92
    :cond_b4
    const-string v2, "progressStop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 93
    invoke-virtual {p0}, Lorg/apache/cordova/Notification;->progressStop()V

    goto/16 :goto_12

    :cond_c1
    move v0, v1

    .line 96
    goto/16 :goto_15
.end method

.method public declared-synchronized progressStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 402
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_d

    .line 403
    iget-object v1, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 404
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;

    .line 406
    :cond_d
    move-object v2, p0

    .line 407
    .local v2, "notification":Lorg/apache/cordova/Notification;
    iget-object v3, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 408
    .local v3, "cordova":Lorg/apache/cordova/api/CordovaInterface;
    new-instance v0, Lorg/apache/cordova/Notification$5;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/Notification$5;-><init>(Lorg/apache/cordova/Notification;Lorg/apache/cordova/Notification;Lorg/apache/cordova/api/CordovaInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 427
    monitor-exit p0

    return-void

    .line 402
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "notification":Lorg/apache/cordova/Notification;
    .end local v3    # "cordova":Lorg/apache/cordova/api/CordovaInterface;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized progressStop()V
    .registers 2

    .prologue
    .line 444
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_d

    .line 445
    iget-object v0, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 448
    :cond_d
    monitor-exit p0

    return-void

    .line 444
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized progressValue(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 435
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a

    .line 436
    iget-object v0, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 438
    :cond_a
    monitor-exit p0

    return-void

    .line 435
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prompt(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
    .registers 13
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonLabels"    # Lorg/json/JSONArray;
    .param p4, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;

    .prologue
    .line 276
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 277
    .local v2, "cordova":Lorg/apache/cordova/api/CordovaInterface;
    new-instance v5, Landroid/widget/EditText;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 279
    .local v5, "promptInput":Landroid/widget/EditText;
    new-instance v0, Lorg/apache/cordova/Notification$3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/cordova/Notification$3;-><init>(Lorg/apache/cordova/Notification;Lorg/apache/cordova/api/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V

    .line 358
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 359
    monitor-exit p0

    return-void

    .line 276
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "cordova":Lorg/apache/cordova/api/CordovaInterface;
    .end local v5    # "promptInput":Landroid/widget/EditText;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public vibrate(J)V
    .registers 8
    .param p1, "time"    # J

    .prologue
    .line 140
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_8

    .line 141
    const-wide/16 p1, 0x1f4

    .line 143
    :cond_8
    iget-object v1, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 144
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 145
    return-void
.end method
