.class public final Lef;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic a:Landroid/content/Context;

.field private synthetic a:Leg;

.field private synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Leg;I)V
    .registers 5

    iput-object p1, p0, Lef;->a:Landroid/content/Context;

    iput-object p2, p0, Lef;->a:Ljava/lang/String;

    iput-object p3, p0, Lef;->a:Leg;

    iput p4, p0, Lef;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    :try_start_0
    new-instance v0, Ldf;

    iget-object v1, p0, Lef;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ldf;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lef;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ldy;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lef;->a:Leg;

    if-eqz v2, :cond_d0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_d0

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    const-class v1, Lcom/arrownock/push/PushNotificationFetcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got offline push notifications: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    const-class v1, Lcom/arrownock/push/PushNotificationFetcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Acquiring wakelock..."

    invoke-virtual {v0, v1, v4}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Leg;->a:Landroid/content/Context;

    iget-object v1, v3, Leg;->a:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v4, "anPush.notification"

    invoke-virtual {v0, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x0

    move v1, v0

    :goto_5e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_e0

    move-result v0

    if-ge v1, v0, :cond_bd

    :try_start_64
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_9b

    const-string v0, "message"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_6f} :catch_156
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6f} :catch_e0

    move-result-object v0

    if-eqz v0, :cond_9b

    :try_start_72
    new-instance v0, Lorg/json/JSONObject;

    const-string v6, "message"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7d
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_7d} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7d} :catch_159

    :goto_7d
    :try_start_7d
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/arrownock/push/PushService;->ACTION_MSG_ARRIVAL:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Leg;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "payload"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v3, Leg;->a:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_9b
    :goto_9b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5e

    :catch_9f
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_aa} :catch_159
    .catch Lorg/json/JSONException; {:try_start_7d .. :try_end_aa} :catch_156

    :try_start_aa
    const-string v7, "alert"

    const-string v8, "message"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "android"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ba
    .catch Lorg/json/JSONException; {:try_start_aa .. :try_end_ba} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ba} :catch_159

    goto :goto_7d

    :catch_bb
    move-exception v5

    goto :goto_7d

    :cond_bd
    :try_start_bd
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    const-class v1, Lcom/arrownock/push/PushNotificationFetcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wakelock released"

    invoke-virtual {v0, v1, v2}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cf
    :goto_cf
    return-void

    :cond_d0
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    const-class v1, Lcom/arrownock/push/PushNotificationFetcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Got offline push notifications: 0"

    invoke-virtual {v0, v1, v2}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_df} :catch_e0

    goto :goto_cf

    :catch_e0
    move-exception v0

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    const-class v2, Lcom/arrownock/push/PushNotificationFetcher;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to fetch notifications: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; retry = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lef;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbk;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    :try_start_10f
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_112
    .catch Ljava/lang/InterruptedException; {:try_start_10f .. :try_end_112} :catch_154

    :goto_112
    iget-object v0, p0, Lef;->a:Leg;

    iget v1, p0, Lef;->a:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_130

    iget-object v2, v0, Leg;->a:Landroid/content/SharedPreferences;

    const-string v3, "fetchNotificationOn"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_cf

    iget-object v2, v0, Leg;->a:Lcom/arrownock/push/PushNotificationFetcher;

    iget-object v2, v0, Leg;->a:Ljava/lang/String;

    iget-object v3, v0, Leg;->a:Landroid/content/Context;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v3, v1, v0}, Lcom/arrownock/push/PushNotificationFetcher;->a(Ljava/lang/String;Landroid/content/Context;ILeg;)V

    goto :goto_cf

    :cond_130
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    const-class v2, Lcom/arrownock/push/PushNotificationFetcher;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to fetch notifications after "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " retry"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lbk;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_cf

    :catch_154
    move-exception v0

    goto :goto_112

    :catch_156
    move-exception v0

    goto/16 :goto_9b

    :catch_159
    move-exception v0

    goto/16 :goto_9b
.end method
