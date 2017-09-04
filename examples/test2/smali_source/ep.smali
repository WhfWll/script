.class public final Lep;
.super Ljava/lang/Object;

# interfaces
.implements Ldz;


# instance fields
.field private synthetic a:Lcom/arrownock/push/PushService;


# direct methods
.method private constructor <init>(Lcom/arrownock/push/PushService;)V
    .registers 2

    iput-object p1, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/arrownock/push/PushService;B)V
    .registers 3

    invoke-direct {p0, p1}, Lep;-><init>(Lcom/arrownock/push/PushService;)V

    return-void
.end method

.method private static a()Lcom/arrownock/push/AnPushStatus;
    .registers 2

    invoke-static {}, Lcom/arrownock/push/PushService;->a()Lji;

    move-result-object v0

    if-eqz v0, :cond_17

    sget-object v0, Lea;->d:Lea;

    invoke-static {}, Lcom/arrownock/push/PushService;->a()Lji;

    move-result-object v1

    iget-object v1, v1, Lji;->a:Lea;

    invoke-virtual {v0, v1}, Lea;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/arrownock/push/AnPushStatus;->ENABLE:Lcom/arrownock/push/AnPushStatus;

    :goto_16
    return-object v0

    :cond_17
    sget-object v0, Lcom/arrownock/push/AnPushStatus;->DISABLE:Lcom/arrownock/push/AnPushStatus;

    goto :goto_16
.end method


# virtual methods
.method public final a()V
    .registers 5

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    sget-object v1, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    const-string v2, "Push service connected"

    invoke-virtual {v0, v1, v2}, Lbk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-static {v0}, Lcom/arrownock/push/PushService;->a(Lcom/arrownock/push/PushService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "retryInterval"

    const-wide/16 v2, 0x9c4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pushHostRetrytime"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/arrownock/push/PushService;->a(Lcom/arrownock/push/PushService;J)J

    iget-object v0, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-static {v0}, Lcom/arrownock/push/PushService;->c(Lcom/arrownock/push/PushService;)V

    iget-object v0, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-static {v0}, Lcom/arrownock/push/PushService;->b(Lcom/arrownock/push/PushService;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    sget-object v0, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    const-string v1, "New message arrived. Creating wakelock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lep;->a:Lcom/arrownock/push/PushService;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/arrownock/push/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "anPush"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :try_start_26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2b} :catch_40

    :goto_2b
    iget-object v2, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-static {v2, v0}, Lcom/arrownock/push/PushService;->a(Lcom/arrownock/push/PushService;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-static {v0}, Lcom/arrownock/push/PushService;->b(Lcom/arrownock/push/PushService;)V

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    sget-object v0, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    const-string v1, "Releasing wakelock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_40
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_4b
    const-string v3, "alert"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "android"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_55} :catch_56

    goto :goto_2b

    :catch_56
    move-exception v2

    goto :goto_2b
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "keepalive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    const-string v1, "send keepalive complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const-string v0, "keepalive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    const-string v1, "send keepalive failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 6

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    sget-object v1, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "General Problem occured. Exception Type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Exception Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-virtual {v0}, Lcom/arrownock/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->getCallback()Lcom/arrownock/push/IAnPushCallback;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->getCallback()Lcom/arrownock/push/IAnPushCallback;

    move-result-object v0

    sget-object v1, Lcom/arrownock/push/AnPushStatus;->ENABLE:Lcom/arrownock/push/AnPushStatus;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/arrownock/push/IAnPushCallback;->statusChanged(Lcom/arrownock/push/AnPushStatus;Lcom/arrownock/exception/ArrownockException;)V
    :try_end_1c
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    goto :goto_1c
.end method

.method public final b(Ljava/lang/Throwable;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-virtual {v0}, Lcom/arrownock/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->getCallback()Lcom/arrownock/push/IAnPushCallback;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->getCallback()Lcom/arrownock/push/IAnPushCallback;

    move-result-object v0

    invoke-static {}, Lep;->a()Lcom/arrownock/push/AnPushStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/arrownock/push/IAnPushCallback;->statusChanged(Lcom/arrownock/push/AnPushStatus;Lcom/arrownock/exception/ArrownockException;)V
    :try_end_1e
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_1e} :catch_51

    :cond_1e
    :goto_1e
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    sget-object v1, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    const-string v2, "Push service disonnected"

    invoke-virtual {v0, v1, v2}, Lbk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-static {v0}, Lcom/arrownock/push/PushService;->a(Lcom/arrownock/push/PushService;)Z

    move-result v0

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Push Service status:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-static {v2}, Lcom/arrownock/push/PushService;->a(Lcom/arrownock/push/PushService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    iget-object v0, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-static {v0}, Lcom/arrownock/push/PushService;->d(Lcom/arrownock/push/PushService;)V

    return-void

    :catch_51
    move-exception v0

    goto :goto_1e
.end method

.method public final c(Ljava/lang/Throwable;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-virtual {v0}, Lcom/arrownock/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->getCallback()Lcom/arrownock/push/IAnPushCallback;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->getCallback()Lcom/arrownock/push/IAnPushCallback;

    move-result-object v0

    invoke-static {}, Lep;->a()Lcom/arrownock/push/AnPushStatus;

    move-result-object v1

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xbba

    invoke-direct {v2, v3, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/arrownock/push/IAnPushCallback;->statusChanged(Lcom/arrownock/push/AnPushStatus;Lcom/arrownock/exception/ArrownockException;)V
    :try_end_28
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_28} :catch_72

    :cond_28
    :goto_28
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    sget-object v1, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to connect to push server. Exception Type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Exception Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-static {v0}, Lcom/arrownock/push/PushService;->b(Lcom/arrownock/push/PushService;)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-static {v0}, Lcom/arrownock/push/PushService;->c(Lcom/arrownock/push/PushService;)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lep;->a:Lcom/arrownock/push/PushService;

    iget-object v1, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-static {v1}, Lcom/arrownock/push/PushService;->a(Lcom/arrownock/push/PushService;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/arrownock/push/PushService;->scheduleReconnect(J)V

    :cond_71
    return-void

    :catch_72
    move-exception v0

    goto :goto_28
.end method

.method public final d(Ljava/lang/Throwable;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-virtual {v0}, Lcom/arrownock/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->getCallback()Lcom/arrownock/push/IAnPushCallback;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->getCallback()Lcom/arrownock/push/IAnPushCallback;

    move-result-object v0

    invoke-static {}, Lep;->a()Lcom/arrownock/push/AnPushStatus;

    move-result-object v1

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xbbb

    invoke-direct {v2, v3, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/arrownock/push/IAnPushCallback;->statusChanged(Lcom/arrownock/push/AnPushStatus;Lcom/arrownock/exception/ArrownockException;)V
    :try_end_28
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_28} :catch_57

    :cond_28
    :goto_28
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    sget-object v1, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to disconnect from push server. Exception Type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Exception Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_57
    move-exception v0

    goto :goto_28
.end method

.method public final e(Ljava/lang/Throwable;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lep;->a:Lcom/arrownock/push/PushService;

    invoke-virtual {v0}, Lcom/arrownock/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->getCallback()Lcom/arrownock/push/IAnPushCallback;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->getCallback()Lcom/arrownock/push/IAnPushCallback;

    move-result-object v0

    invoke-static {}, Lep;->a()Lcom/arrownock/push/AnPushStatus;

    move-result-object v1

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xbba

    invoke-direct {v2, v3, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/arrownock/push/IAnPushCallback;->statusChanged(Lcom/arrownock/push/AnPushStatus;Lcom/arrownock/exception/ArrownockException;)V
    :try_end_28
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method
