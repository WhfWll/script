.class final Ldq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/arrownock/push/IAnPushRegistrationCallback;

.field private synthetic a:Ldf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic a:Z

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldf;Ljava/lang/String;Lcom/arrownock/push/IAnPushRegistrationCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iput-object p1, p0, Ldq;->a:Ldf;

    iput-object p2, p0, Ldq;->a:Ljava/lang/String;

    iput-object p3, p0, Ldq;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    iput-object p4, p0, Ldq;->b:Ljava/lang/String;

    iput-object p5, p0, Ldq;->c:Ljava/lang/String;

    iput-object p6, p0, Ldq;->d:Ljava/lang/String;

    iput-boolean p7, p0, Ldq;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Ldq;->a:Ljava/lang/String;

    const-string v2, "android-gcm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    iget-object v0, p0, Ldq;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Z

    move-result v0

    if-eqz v0, :cond_146

    iget-object v0, p0, Ldq;->a:Ldf;

    iget-object v2, p0, Ldq;->a:Ldf;

    invoke-static {v2}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldf;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c9

    iget-object v0, p0, Ldq;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    :try_end_2e
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_1 .. :try_end_2e} :catch_be

    move-result-object v0

    :try_start_2f
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->unregister()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Ldq;->a:Ldf;

    invoke-static {v5}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v5

    invoke-virtual {v5}, Lcom/arrownock/push/AnPush;->getSenderId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "GCM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got registration id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ldq;->a:Ldf;

    iget-object v3, p0, Ldq;->a:Ldf;

    invoke-static {v3}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3, v2}, Ldf;->a(Ldf;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_69} :catch_a8
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_2f .. :try_end_69} :catch_be

    :cond_69
    :goto_69
    :try_start_69
    iget-object v0, p0, Ldq;->a:Ldf;

    const-string v3, "ANID"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Ldq;->b:Ljava/lang/String;

    if-nez v0, :cond_142

    if-nez v6, :cond_89

    iget-object v0, p0, Ldq;->a:Ldf;

    iget-object v3, p0, Ldq;->a:Ldf;

    invoke-static {v3}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Ldq;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ldf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a8

    :goto_88
    move-object v6, v0

    :cond_89
    :goto_89
    iget-object v0, p0, Ldq;->a:Ldf;

    iget-object v1, p0, Ldq;->c:Ljava/lang/String;

    iget-object v3, p0, Ldq;->d:Ljava/lang/String;

    iget-boolean v4, p0, Ldq;->a:Z

    iget-object v5, p0, Ldq;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldq;->a:Ldf;

    const-string v2, "ANID"

    invoke-virtual {v1, v2, v0}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ldq;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    if-eqz v1, :cond_a7

    iget-object v1, p0, Ldq;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    invoke-interface {v1, v0}, Lcom/arrownock/push/IAnPushRegistrationCallback;->onSuccess(Ljava/lang/String;)V

    :cond_a7
    :goto_a7
    return-void

    :catch_a8
    move-exception v0

    iget-object v3, p0, Ldq;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    if-eqz v3, :cond_69

    iget-object v1, p0, Ldq;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7d3

    invoke-direct {v2, v0, v3}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Lcom/arrownock/push/IAnPushRegistrationCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V
    :try_end_bd
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_69 .. :try_end_bd} :catch_be

    goto :goto_a7

    :catch_be
    move-exception v0

    iget-object v1, p0, Ldq;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    if-eqz v1, :cond_a7

    iget-object v1, p0, Ldq;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    invoke-interface {v1, v0}, Lcom/arrownock/push/IAnPushRegistrationCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V

    goto :goto_a7

    :cond_c9
    :try_start_c9
    iget-object v0, p0, Ldq;->a:Ldf;

    const-string v3, "GCM_SENDER_ID"

    invoke-virtual {v0, v3}, Ldf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Ldq;->a:Ldf;

    invoke-static {v3}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v3

    invoke-virtual {v3}, Lcom/arrownock/push/AnPush;->getSenderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e2
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_c9 .. :try_end_e2} :catch_be

    move-result v0

    if-nez v0, :cond_69

    :try_start_e5
    iget-object v0, p0, Ldq;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->unregister()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Ldq;->a:Ldf;

    invoke-static {v5}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v5

    invoke-virtual {v5}, Lcom/arrownock/push/AnPush;->getSenderId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "GCM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sender ID mismatched. Got new registration id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ldq;->a:Ldf;

    iget-object v3, p0, Ldq;->a:Ldf;

    invoke-static {v3}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3, v2}, Ldf;->a(Ldf;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_129} :catch_12b
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_e5 .. :try_end_129} :catch_be

    goto/16 :goto_69

    :catch_12b
    move-exception v0

    :try_start_12c
    iget-object v3, p0, Ldq;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    if-eqz v3, :cond_69

    iget-object v1, p0, Ldq;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7d3

    invoke-direct {v2, v0, v3}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Lcom/arrownock/push/IAnPushRegistrationCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V

    goto/16 :goto_a7

    :cond_142
    iget-object v6, p0, Ldq;->b:Ljava/lang/String;

    goto/16 :goto_89

    :cond_146
    iget-object v0, p0, Ldq;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Ldq;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    const-string v2, "No valid Google Play Services APK found."

    const/16 v3, 0x7d3

    invoke-direct {v1, v2, v3}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/arrownock/push/IAnPushRegistrationCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V

    goto/16 :goto_a7

    :cond_15a
    iget-object v0, p0, Ldq;->a:Ljava/lang/String;

    const-string v2, "android-arrownock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fc

    iget-object v0, p0, Ldq;->a:Ldf;

    iget-object v2, p0, Ldq;->c:Ljava/lang/String;

    iget-object v3, p0, Ldq;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Ldf;->a(Ldf;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1ed

    const-string v0, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ed

    iget-object v0, p0, Ldq;->a:Ldf;

    const-string v3, "ANID"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Ldq;->b:Ljava/lang/String;

    if-nez v0, :cond_1d8

    if-nez v6, :cond_19d

    iget-object v0, p0, Ldq;->a:Ldf;

    iget-object v3, p0, Ldq;->a:Ldf;

    invoke-static {v3}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Ldq;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ldf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19c

    move-object v1, v0

    :cond_19c
    move-object v6, v1

    :cond_19d
    :goto_19d
    iget-object v0, p0, Ldq;->a:Ldf;

    iget-object v1, p0, Ldq;->c:Ljava/lang/String;

    iget-object v3, p0, Ldq;->d:Ljava/lang/String;

    iget-boolean v4, p0, Ldq;->a:Z

    iget-object v5, p0, Ldq;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RELOAD_DEVICE_TOKEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1db

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device token is deprecated, apply for a new one."

    invoke-virtual {v0, v1, v2}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldq;->a:Ldf;

    const-string v1, "deviceToken"

    invoke-virtual {v0, v1}, Ldf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ldq;->a:Ldf;

    iget-object v1, p0, Ldq;->c:Ljava/lang/String;

    iget-object v2, p0, Ldq;->d:Ljava/lang/String;

    iget-object v3, p0, Ldq;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    iget-boolean v4, p0, Ldq;->a:Z

    iget-object v5, p0, Ldq;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushRegistrationCallback;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a7

    :cond_1d8
    iget-object v6, p0, Ldq;->b:Ljava/lang/String;

    goto :goto_19d

    :cond_1db
    iget-object v1, p0, Ldq;->a:Ldf;

    const-string v2, "ANID"

    invoke-virtual {v1, v2, v0}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ldq;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    if-eqz v1, :cond_a7

    iget-object v1, p0, Ldq;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    invoke-interface {v1, v0}, Lcom/arrownock/push/IAnPushRegistrationCallback;->onSuccess(Ljava/lang/String;)V

    goto/16 :goto_a7

    :cond_1ed
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device token is null."

    invoke-virtual {v0, v1, v2}, Lbk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a7

    :cond_1fc
    iget-object v0, p0, Ldq;->a:Ljava/lang/String;

    const-string v2, "android-mipush"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Ldq;->a:Ldf;

    iget-object v2, p0, Ldq;->a:Ldf;

    invoke-static {v2}, Ldf;->a(Ldf;)Landroid/content/Context;

    invoke-virtual {v0}, Ldf;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ldq;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v7

    monitor-enter v7
    :try_end_21c
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_12c .. :try_end_21c} :catch_be

    :try_start_21c
    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25e

    iget-object v0, p0, Ldq;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Ldq;->a:Ldf;

    const-string v4, "com.arrownock.push.MIPUSH_APPID"

    invoke-virtual {v3, v4}, Ldf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ldq;->a:Ldf;

    const-string v5, "com.arrownock.push.MIPUSH_APPKEY"

    invoke-virtual {v4, v5}, Ldf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_23d
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_242
    .catchall {:try_start_21c .. :try_end_242} :catchall_2a0

    move-result v0

    if-eqz v0, :cond_25e

    :try_start_245
    iget-object v0, p0, Ldq;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_252
    .catch Ljava/lang/InterruptedException; {:try_start_245 .. :try_end_252} :catch_2a6
    .catchall {:try_start_245 .. :try_end_252} :catchall_2a0

    :goto_252
    :try_start_252
    iget-object v0, p0, Ldq;->a:Ldf;

    iget-object v2, p0, Ldq;->a:Ldf;

    invoke-static {v2}, Ldf;->a(Ldf;)Landroid/content/Context;

    invoke-virtual {v0}, Ldf;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_23d

    :cond_25e
    iget-object v0, p0, Ldq;->a:Ldf;

    const-string v3, "ANID"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Ldq;->b:Ljava/lang/String;

    if-nez v0, :cond_2a3

    if-nez v6, :cond_27f

    iget-object v0, p0, Ldq;->a:Ldf;

    iget-object v3, p0, Ldq;->a:Ldf;

    invoke-static {v3}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Ldq;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ldf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27e

    move-object v1, v0

    :cond_27e
    move-object v6, v1

    :cond_27f
    :goto_27f
    iget-object v0, p0, Ldq;->a:Ldf;

    iget-object v1, p0, Ldq;->c:Ljava/lang/String;

    iget-object v3, p0, Ldq;->d:Ljava/lang/String;

    iget-boolean v4, p0, Ldq;->a:Z

    iget-object v5, p0, Ldq;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldq;->a:Ldf;

    const-string v2, "ANID"

    invoke-virtual {v1, v2, v0}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ldq;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    if-eqz v1, :cond_29d

    iget-object v1, p0, Ldq;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    invoke-interface {v1, v0}, Lcom/arrownock/push/IAnPushRegistrationCallback;->onSuccess(Ljava/lang/String;)V

    :cond_29d
    monitor-exit v7
    :try_end_29e
    .catchall {:try_start_252 .. :try_end_29e} :catchall_2a0

    goto/16 :goto_a7

    :catchall_2a0
    move-exception v0

    :try_start_2a1
    monitor-exit v7

    throw v0
    :try_end_2a3
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_2a1 .. :try_end_2a3} :catch_be

    :cond_2a3
    :try_start_2a3
    iget-object v6, p0, Ldq;->b:Ljava/lang/String;
    :try_end_2a5
    .catchall {:try_start_2a3 .. :try_end_2a5} :catchall_2a0

    goto :goto_27f

    :catch_2a6
    move-exception v0

    goto :goto_252

    :cond_2a8
    move-object v0, v1

    goto/16 :goto_88
.end method
