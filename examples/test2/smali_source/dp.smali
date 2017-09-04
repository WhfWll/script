.class final Ldp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic a:Lcom/arrownock/push/IAnPushRegisterAnIdCallback;

.field private synthetic a:Ldf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldf;Ljava/lang/String;Lcom/arrownock/push/IAnPushRegisterAnIdCallback;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Ldp;->a:Ldf;

    iput-object p2, p0, Ldp;->a:Ljava/lang/String;

    iput-object p3, p0, Ldp;->a:Lcom/arrownock/push/IAnPushRegisterAnIdCallback;

    iput p4, p0, Ldp;->a:I

    iput-object p5, p0, Ldp;->b:Ljava/lang/String;

    iput-object p6, p0, Ldp;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Ldp;->a:Ljava/lang/String;

    const-string v1, "android-gcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    iget-object v0, p0, Ldp;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Z

    move-result v0

    if-eqz v0, :cond_18c

    iget-object v0, p0, Ldp;->a:Ldf;

    iget-object v1, p0, Ldp;->a:Ldf;

    invoke-static {v1}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldf;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b2

    iget-object v1, p0, Ldp;->a:Ldf;

    invoke-static {v1}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    :try_end_2d
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_2d} :catch_154

    move-result-object v1

    :try_start_2e
    invoke-virtual {v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->unregister()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Ldp;->a:Ldf;

    invoke-static {v4}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v4

    invoke-virtual {v4}, Lcom/arrownock/push/AnPush;->getSenderId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got registration id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ldp;->a:Ldf;

    iget-object v2, p0, Ldp;->a:Ldf;

    invoke-static {v2}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ldf;->a(Ldf;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_68} :catch_98
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_2e .. :try_end_68} :catch_154

    move-object v2, v0

    :goto_69
    :try_start_69
    iget-object v6, p0, Ldp;->b:Ljava/lang/String;

    iget-object v0, p0, Ldp;->a:Ldf;

    iget-object v1, p0, Ldp;->c:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    iget-object v5, p0, Ldp;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RELOAD_DEVICE_TOKEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_130

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RELOAD_DEVICE_TOKEN true"

    invoke-virtual {v0, v1, v2}, Lbk;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldp;->a:Lcom/arrownock/push/IAnPushRegisterAnIdCallback;

    const/4 v1, 0x0

    iget v2, p0, Ldp;->a:I

    iget-object v3, p0, Ldp;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/arrownock/push/IAnPushRegisterAnIdCallback;->onError(Lcom/arrownock/exception/ArrownockException;ILjava/lang/String;)V

    :cond_97
    :goto_97
    return-void

    :catch_98
    move-exception v1

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "registerInEnable anid failed. reason : some bugs appear when call gcm (regId is empty) "

    invoke-virtual {v1, v2, v3}, Lbk;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ldp;->a:Lcom/arrownock/push/IAnPushRegisterAnIdCallback;

    const/4 v2, 0x0

    iget v3, p0, Ldp;->a:I

    iget-object v4, p0, Ldp;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/arrownock/push/IAnPushRegisterAnIdCallback;->onError(Lcom/arrownock/exception/ArrownockException;ILjava/lang/String;)V

    move-object v2, v0

    goto :goto_69

    :cond_b2
    iget-object v1, p0, Ldp;->a:Ldf;

    const-string v2, "GCM_SENDER_ID"

    invoke-virtual {v1, v2}, Ldf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldp;->a:Ldf;

    invoke-static {v2}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v2

    invoke-virtual {v2}, Lcom/arrownock/push/AnPush;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_cb
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_69 .. :try_end_cb} :catch_154

    move-result v1

    if-nez v1, :cond_12d

    :try_start_ce
    iget-object v1, p0, Ldp;->a:Ldf;

    invoke-static {v1}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->unregister()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Ldp;->a:Ldf;

    invoke-static {v4}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v4

    invoke-virtual {v4}, Lcom/arrownock/push/AnPush;->getSenderId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sender ID mismatched. Got new registration id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ldp;->a:Ldf;

    iget-object v2, p0, Ldp;->a:Ldf;

    invoke-static {v2}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ldf;->a(Ldf;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_112} :catch_115
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_ce .. :try_end_112} :catch_154

    move-object v2, v0

    goto/16 :goto_69

    :catch_115
    move-exception v1

    :try_start_116
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "registerInEnable anid failed. reason : some bugs appear when call gcm (regId is not empty)"

    invoke-virtual {v1, v2, v3}, Lbk;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ldp;->a:Lcom/arrownock/push/IAnPushRegisterAnIdCallback;

    const/4 v2, 0x0

    iget v3, p0, Ldp;->a:I

    iget-object v4, p0, Ldp;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/arrownock/push/IAnPushRegisterAnIdCallback;->onError(Lcom/arrownock/exception/ArrownockException;ILjava/lang/String;)V

    :cond_12d
    move-object v2, v0

    goto/16 :goto_69

    :cond_130
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "registeranId successful"

    invoke-virtual {v1, v2, v3}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ldp;->a:Ldf;

    const-string v2, "ANID"

    invoke-virtual {v1, v2, v0}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldp;->a:Ldf;

    const-string v1, "hasAlreadyRegistered"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldp;->a:Lcom/arrownock/push/IAnPushRegisterAnIdCallback;

    invoke-interface {v0}, Lcom/arrownock/push/IAnPushRegisterAnIdCallback;->onSuccess()V
    :try_end_152
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_116 .. :try_end_152} :catch_154

    goto/16 :goto_97

    :catch_154
    move-exception v0

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "registerInEnable anid failed. reason : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/arrownock/exception/ArrownockException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "errorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/arrownock/exception/ArrownockException;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbk;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ldp;->a:Lcom/arrownock/push/IAnPushRegisterAnIdCallback;

    iget v2, p0, Ldp;->a:I

    iget-object v3, p0, Ldp;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, Lcom/arrownock/push/IAnPushRegisterAnIdCallback;->onError(Lcom/arrownock/exception/ArrownockException;ILjava/lang/String;)V

    goto/16 :goto_97

    :cond_18c
    :try_start_18c
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "registerInEnable anid failed. reason : no playServices"

    invoke-virtual {v0, v1, v2}, Lbk;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldp;->a:Lcom/arrownock/push/IAnPushRegisterAnIdCallback;

    const/4 v1, 0x0

    iget v2, p0, Ldp;->a:I

    iget-object v3, p0, Ldp;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/arrownock/push/IAnPushRegisterAnIdCallback;->onError(Lcom/arrownock/exception/ArrownockException;ILjava/lang/String;)V

    goto/16 :goto_97

    :cond_1a5
    iget-object v0, p0, Ldp;->a:Ljava/lang/String;

    const-string v1, "android-arrownock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_234

    iget-object v0, p0, Ldp;->a:Ldf;

    iget-object v1, p0, Ldp;->c:Ljava/lang/String;

    iget-object v2, p0, Ldp;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ldf;->a(Ldf;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21b

    const-string v0, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21b

    iget-object v6, p0, Ldp;->b:Ljava/lang/String;

    iget-object v0, p0, Ldp;->a:Ldf;

    iget-object v1, p0, Ldp;->c:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    iget-object v5, p0, Ldp;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RELOAD_DEVICE_TOKEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f7

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RELOAD_DEVICE_TOKEN true"

    invoke-virtual {v0, v1, v2}, Lbk;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldp;->a:Lcom/arrownock/push/IAnPushRegisterAnIdCallback;

    const/4 v1, 0x0

    iget v2, p0, Ldp;->a:I

    iget-object v3, p0, Ldp;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/arrownock/push/IAnPushRegisterAnIdCallback;->onError(Lcom/arrownock/exception/ArrownockException;ILjava/lang/String;)V

    goto/16 :goto_97

    :cond_1f7
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "registeranId successful"

    invoke-virtual {v1, v2, v3}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ldp;->a:Ldf;

    const-string v2, "ANID"

    invoke-virtual {v1, v2, v0}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldp;->a:Ldf;

    const-string v1, "hasAlreadyRegistered"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldp;->a:Lcom/arrownock/push/IAnPushRegisterAnIdCallback;

    invoke-interface {v0}, Lcom/arrownock/push/IAnPushRegisterAnIdCallback;->onSuccess()V

    goto/16 :goto_97

    :cond_21b
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "registerInEnable anid failed. reason : no deviceToken"

    invoke-virtual {v0, v1, v2}, Lbk;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldp;->a:Lcom/arrownock/push/IAnPushRegisterAnIdCallback;

    const/4 v1, 0x0

    iget v2, p0, Ldp;->a:I

    iget-object v3, p0, Ldp;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/arrownock/push/IAnPushRegisterAnIdCallback;->onError(Lcom/arrownock/exception/ArrownockException;ILjava/lang/String;)V

    goto/16 :goto_97

    :cond_234
    iget-object v0, p0, Ldp;->a:Ljava/lang/String;

    const-string v1, "android-mipush"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Ldp;->a:Ldf;

    iget-object v1, p0, Ldp;->a:Ldf;

    invoke-static {v1}, Ldf;->a(Ldf;)Landroid/content/Context;

    invoke-virtual {v0}, Ldf;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ldp;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v7

    monitor-enter v7
    :try_end_254
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_18c .. :try_end_254} :catch_154

    :try_start_254
    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_296

    iget-object v0, p0, Ldp;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldp;->a:Ldf;

    const-string v3, "com.arrownock.push.MIPUSH_APPID"

    invoke-virtual {v1, v3}, Ldf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ldp;->a:Ldf;

    const-string v4, "com.arrownock.push.MIPUSH_APPKEY"

    invoke-virtual {v3, v4}, Ldf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_275
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_27a
    .catchall {:try_start_254 .. :try_end_27a} :catchall_2c7

    move-result v0

    if-eqz v0, :cond_296

    :try_start_27d
    iget-object v0, p0, Ldp;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_28a
    .catch Ljava/lang/InterruptedException; {:try_start_27d .. :try_end_28a} :catch_2ed
    .catchall {:try_start_27d .. :try_end_28a} :catchall_2c7

    :goto_28a
    :try_start_28a
    iget-object v0, p0, Ldp;->a:Ldf;

    iget-object v1, p0, Ldp;->a:Ldf;

    invoke-static {v1}, Ldf;->a(Ldf;)Landroid/content/Context;

    invoke-virtual {v0}, Ldf;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_275

    :cond_296
    iget-object v6, p0, Ldp;->b:Ljava/lang/String;

    iget-object v0, p0, Ldp;->a:Ldf;

    iget-object v1, p0, Ldp;->c:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    iget-object v5, p0, Ldp;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RELOAD_DEVICE_TOKEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ca

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RELOAD_DEVICE_TOKEN true"

    invoke-virtual {v0, v1, v2}, Lbk;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldp;->a:Lcom/arrownock/push/IAnPushRegisterAnIdCallback;

    const/4 v1, 0x0

    iget v2, p0, Ldp;->a:I

    iget-object v3, p0, Ldp;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/arrownock/push/IAnPushRegisterAnIdCallback;->onError(Lcom/arrownock/exception/ArrownockException;ILjava/lang/String;)V

    :goto_2c4
    monitor-exit v7
    :try_end_2c5
    .catchall {:try_start_28a .. :try_end_2c5} :catchall_2c7

    goto/16 :goto_97

    :catchall_2c7
    move-exception v0

    :try_start_2c8
    monitor-exit v7

    throw v0
    :try_end_2ca
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_2c8 .. :try_end_2ca} :catch_154

    :cond_2ca
    :try_start_2ca
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "registeranId successful"

    invoke-virtual {v1, v2, v3}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ldp;->a:Ldf;

    const-string v2, "ANID"

    invoke-virtual {v1, v2, v0}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldp;->a:Ldf;

    const-string v1, "hasAlreadyRegistered"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldp;->a:Lcom/arrownock/push/IAnPushRegisterAnIdCallback;

    invoke-interface {v0}, Lcom/arrownock/push/IAnPushRegisterAnIdCallback;->onSuccess()V
    :try_end_2ec
    .catchall {:try_start_2ca .. :try_end_2ec} :catchall_2c7

    goto :goto_2c4

    :catch_2ed
    move-exception v0

    goto :goto_28a
.end method
