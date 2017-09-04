.class final Ldg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/arrownock/push/IAnPushCallback;

.field private synthetic a:Ldf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic a:Z

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldf;Ljava/lang/String;Lcom/arrownock/push/IAnPushCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iput-object p1, p0, Ldg;->a:Ldf;

    iput-object p2, p0, Ldg;->a:Ljava/lang/String;

    iput-object p3, p0, Ldg;->a:Lcom/arrownock/push/IAnPushCallback;

    iput-object p4, p0, Ldg;->b:Ljava/lang/String;

    iput-object p5, p0, Ldg;->c:Ljava/lang/String;

    iput-object p6, p0, Ldg;->d:Ljava/lang/String;

    iput-boolean p7, p0, Ldg;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    const/4 v9, 0x1

    const/4 v7, 0x0

    :try_start_2
    iget-object v0, p0, Ldg;->a:Ljava/lang/String;

    const-string v1, "android-gcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_163

    iget-object v0, p0, Ldg;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Z

    move-result v0

    if-eqz v0, :cond_151

    iget-object v0, p0, Ldg;->a:Ldf;

    iget-object v1, p0, Ldg;->a:Ldf;

    invoke-static {v1}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldf;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d1

    iget-object v0, p0, Ldg;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    :try_end_2f
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_2 .. :try_end_2f} :catch_c4

    move-result-object v0

    :try_start_30
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->unregister()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Ldg;->a:Ldf;

    invoke-static {v4}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v4

    invoke-virtual {v4}, Lcom/arrownock/push/AnPush;->getSenderId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got registration id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ldg;->a:Ldf;

    iget-object v2, p0, Ldg;->a:Ldf;

    invoke-static {v2}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2, v1}, Ldf;->a(Ldf;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_6a} :catch_ac
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_30 .. :try_end_6a} :catch_c4

    move-object v2, v1

    :goto_6b
    :try_start_6b
    iget-object v0, p0, Ldg;->a:Ldf;

    const-string v1, "ANID"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Ldg;->b:Ljava/lang/String;

    if-nez v0, :cond_14d

    if-nez v6, :cond_8b

    iget-object v0, p0, Ldg;->a:Ldf;

    iget-object v1, p0, Ldg;->a:Ldf;

    invoke-static {v1}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Ldg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ldf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b8

    :goto_8a
    move-object v6, v0

    :cond_8b
    :goto_8b
    iget-object v0, p0, Ldg;->a:Ldf;

    iget-object v1, p0, Ldg;->c:Ljava/lang/String;

    iget-object v3, p0, Ldg;->d:Ljava/lang/String;

    iget-boolean v4, p0, Ldg;->a:Z

    iget-object v5, p0, Ldg;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldg;->a:Ldf;

    const-string v2, "ANID"

    invoke-virtual {v1, v2, v0}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ldg;->a:Lcom/arrownock/push/IAnPushCallback;

    if-eqz v1, :cond_ab

    iget-object v1, p0, Ldg;->a:Lcom/arrownock/push/IAnPushCallback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/arrownock/push/IAnPushCallback;->register(ZLjava/lang/String;Lcom/arrownock/exception/ArrownockException;)V

    :cond_ab
    :goto_ab
    return-void

    :catch_ac
    move-exception v0

    iget-object v2, p0, Ldg;->a:Lcom/arrownock/push/IAnPushCallback;

    if-eqz v2, :cond_cf

    iget-object v1, p0, Ldg;->a:Lcom/arrownock/push/IAnPushCallback;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x7d3

    invoke-direct {v4, v0, v5}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2, v3, v4}, Lcom/arrownock/push/IAnPushCallback;->register(ZLjava/lang/String;Lcom/arrownock/exception/ArrownockException;)V
    :try_end_c3
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_6b .. :try_end_c3} :catch_c4

    goto :goto_ab

    :catch_c4
    move-exception v0

    iget-object v1, p0, Ldg;->a:Lcom/arrownock/push/IAnPushCallback;

    if-eqz v1, :cond_ab

    iget-object v1, p0, Ldg;->a:Lcom/arrownock/push/IAnPushCallback;

    invoke-interface {v1, v9, v7, v0}, Lcom/arrownock/push/IAnPushCallback;->register(ZLjava/lang/String;Lcom/arrownock/exception/ArrownockException;)V

    goto :goto_ab

    :cond_cf
    move-object v2, v1

    goto :goto_6b

    :cond_d1
    :try_start_d1
    iget-object v0, p0, Ldg;->a:Ldf;

    const-string v2, "GCM_SENDER_ID"

    invoke-virtual {v0, v2}, Ldf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ldg;->a:Ldf;

    invoke-static {v2}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v2

    invoke-virtual {v2}, Lcom/arrownock/push/AnPush;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_ea
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_d1 .. :try_end_ea} :catch_c4

    move-result v0

    if-nez v0, :cond_2bb

    :try_start_ed
    iget-object v0, p0, Ldg;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->unregister()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Ldg;->a:Ldf;

    invoke-static {v4}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v4

    invoke-virtual {v4}, Lcom/arrownock/push/AnPush;->getSenderId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sender ID mismatched. Got new registration id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ldg;->a:Ldf;

    iget-object v2, p0, Ldg;->a:Ldf;

    invoke-static {v2}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2, v1}, Ldf;->a(Ldf;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_131} :catch_134
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_ed .. :try_end_131} :catch_c4

    move-object v2, v1

    goto/16 :goto_6b

    :catch_134
    move-exception v0

    :try_start_135
    iget-object v2, p0, Ldg;->a:Lcom/arrownock/push/IAnPushCallback;

    if-eqz v2, :cond_2bb

    iget-object v1, p0, Ldg;->a:Lcom/arrownock/push/IAnPushCallback;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x7d3

    invoke-direct {v4, v0, v5}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2, v3, v4}, Lcom/arrownock/push/IAnPushCallback;->register(ZLjava/lang/String;Lcom/arrownock/exception/ArrownockException;)V

    goto/16 :goto_ab

    :cond_14d
    iget-object v6, p0, Ldg;->b:Ljava/lang/String;

    goto/16 :goto_8b

    :cond_151
    iget-object v0, p0, Ldg;->a:Lcom/arrownock/push/IAnPushCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    const-string v4, "No valid Google Play Services APK found."

    const/16 v5, 0x7d8

    invoke-direct {v3, v4, v5}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2, v3}, Lcom/arrownock/push/IAnPushCallback;->register(ZLjava/lang/String;Lcom/arrownock/exception/ArrownockException;)V

    goto/16 :goto_ab

    :cond_163
    iget-object v0, p0, Ldg;->a:Ljava/lang/String;

    const-string v1, "android-arrownock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_206

    iget-object v0, p0, Ldg;->a:Ldf;

    iget-object v1, p0, Ldg;->c:Ljava/lang/String;

    iget-object v2, p0, Ldg;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ldf;->a(Ldf;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f7

    const-string v0, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f7

    iget-object v0, p0, Ldg;->a:Ldf;

    const-string v1, "ANID"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Ldg;->b:Ljava/lang/String;

    if-nez v0, :cond_1e0

    if-nez v6, :cond_1a5

    iget-object v0, p0, Ldg;->a:Ldf;

    iget-object v1, p0, Ldg;->a:Ldf;

    invoke-static {v1}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Ldg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ldf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b5

    :goto_1a4
    move-object v6, v0

    :cond_1a5
    :goto_1a5
    iget-object v0, p0, Ldg;->a:Ldf;

    iget-object v1, p0, Ldg;->c:Ljava/lang/String;

    iget-object v3, p0, Ldg;->d:Ljava/lang/String;

    iget-boolean v4, p0, Ldg;->a:Z

    iget-object v5, p0, Ldg;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RELOAD_DEVICE_TOKEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e3

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device token is deprecated, apply for a new one."

    invoke-virtual {v0, v1, v2}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldg;->a:Ldf;

    const-string v1, "deviceToken"

    invoke-virtual {v0, v1}, Ldf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ldg;->a:Ldf;

    iget-object v1, p0, Ldg;->c:Ljava/lang/String;

    iget-object v2, p0, Ldg;->d:Ljava/lang/String;

    iget-object v3, p0, Ldg;->a:Lcom/arrownock/push/IAnPushCallback;

    iget-boolean v4, p0, Ldg;->a:Z

    iget-object v5, p0, Ldg;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushCallback;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ab

    :cond_1e0
    iget-object v6, p0, Ldg;->b:Ljava/lang/String;

    goto :goto_1a5

    :cond_1e3
    iget-object v1, p0, Ldg;->a:Ldf;

    const-string v2, "ANID"

    invoke-virtual {v1, v2, v0}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ldg;->a:Lcom/arrownock/push/IAnPushCallback;

    if-eqz v1, :cond_ab

    iget-object v1, p0, Ldg;->a:Lcom/arrownock/push/IAnPushCallback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/arrownock/push/IAnPushCallback;->register(ZLjava/lang/String;Lcom/arrownock/exception/ArrownockException;)V

    goto/16 :goto_ab

    :cond_1f7
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device token is null."

    invoke-virtual {v0, v1, v2}, Lbk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ab

    :cond_206
    iget-object v0, p0, Ldg;->a:Ljava/lang/String;

    const-string v1, "android-mipush"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    iget-object v0, p0, Ldg;->a:Ldf;

    iget-object v1, p0, Ldg;->a:Ldf;

    invoke-static {v1}, Ldf;->a(Ldf;)Landroid/content/Context;

    invoke-virtual {v0}, Ldf;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ldg;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v8

    monitor-enter v8
    :try_end_226
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_135 .. :try_end_226} :catch_c4

    :try_start_226
    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_268

    iget-object v0, p0, Ldg;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldg;->a:Ldf;

    const-string v3, "com.arrownock.push.MIPUSH_APPID"

    invoke-virtual {v1, v3}, Ldf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ldg;->a:Ldf;

    const-string v4, "com.arrownock.push.MIPUSH_APPKEY"

    invoke-virtual {v3, v4}, Ldf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_247
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_24c
    .catchall {:try_start_226 .. :try_end_24c} :catchall_2ab

    move-result v0

    if-eqz v0, :cond_268

    :try_start_24f
    iget-object v0, p0, Ldg;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_25c
    .catch Ljava/lang/InterruptedException; {:try_start_24f .. :try_end_25c} :catch_2b1
    .catchall {:try_start_24f .. :try_end_25c} :catchall_2ab

    :goto_25c
    :try_start_25c
    iget-object v0, p0, Ldg;->a:Ldf;

    iget-object v1, p0, Ldg;->a:Ldf;

    invoke-static {v1}, Ldf;->a(Ldf;)Landroid/content/Context;

    invoke-virtual {v0}, Ldf;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_247

    :cond_268
    iget-object v0, p0, Ldg;->a:Ldf;

    const-string v1, "ANID"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Ldg;->b:Ljava/lang/String;

    if-nez v0, :cond_2ae

    if-nez v6, :cond_288

    iget-object v0, p0, Ldg;->a:Ldf;

    iget-object v1, p0, Ldg;->a:Ldf;

    invoke-static {v1}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Ldg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ldf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b3

    :goto_287
    move-object v6, v0

    :cond_288
    :goto_288
    iget-object v0, p0, Ldg;->a:Ldf;

    iget-object v1, p0, Ldg;->c:Ljava/lang/String;

    iget-object v3, p0, Ldg;->d:Ljava/lang/String;

    iget-boolean v4, p0, Ldg;->a:Z

    iget-object v5, p0, Ldg;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldg;->a:Ldf;

    const-string v2, "ANID"

    invoke-virtual {v1, v2, v0}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ldg;->a:Lcom/arrownock/push/IAnPushCallback;

    if-eqz v1, :cond_2a8

    iget-object v1, p0, Ldg;->a:Lcom/arrownock/push/IAnPushCallback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/arrownock/push/IAnPushCallback;->register(ZLjava/lang/String;Lcom/arrownock/exception/ArrownockException;)V

    :cond_2a8
    monitor-exit v8
    :try_end_2a9
    .catchall {:try_start_25c .. :try_end_2a9} :catchall_2ab

    goto/16 :goto_ab

    :catchall_2ab
    move-exception v0

    :try_start_2ac
    monitor-exit v8

    throw v0
    :try_end_2ae
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_2ac .. :try_end_2ae} :catch_c4

    :cond_2ae
    :try_start_2ae
    iget-object v6, p0, Ldg;->b:Ljava/lang/String;
    :try_end_2b0
    .catchall {:try_start_2ae .. :try_end_2b0} :catchall_2ab

    goto :goto_288

    :catch_2b1
    move-exception v0

    goto :goto_25c

    :cond_2b3
    move-object v0, v7

    goto :goto_287

    :cond_2b5
    move-object v0, v7

    goto/16 :goto_1a4

    :cond_2b8
    move-object v0, v7

    goto/16 :goto_8a

    :cond_2bb
    move-object v2, v1

    goto/16 :goto_6b
.end method
