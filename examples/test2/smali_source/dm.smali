.class final Ldm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/arrownock/push/IAnPushSettingsCallback;

.field private synthetic a:Ldf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldf;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushSettingsCallback;)V
    .registers 5

    iput-object p1, p0, Ldm;->a:Ldf;

    iput-object p2, p0, Ldm;->a:Ljava/lang/String;

    iput-object p3, p0, Ldm;->b:Ljava/lang/String;

    iput-object p4, p0, Ldm;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Ldm;->a:Ldf;

    iget-object v1, p0, Ldm;->a:Ljava/lang/String;

    iget-object v2, p0, Ldm;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ldf;->a(Ldf;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldm;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ldm;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    invoke-interface {v0}, Lcom/arrownock/push/IAnPushSettingsCallback;->onSuccess()V

    :cond_12
    iget-object v0, p0, Ldm;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/arrownock/push/PushService;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pushScheduledHour"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pushScheduledMinue"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pushScheduledDuration"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Ldm;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)V
    :try_end_3a
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_3a} :catch_3b

    :cond_3a
    :goto_3a
    return-void

    :catch_3b
    move-exception v0

    iget-object v1, p0, Ldm;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Ldm;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    invoke-interface {v1, v0}, Lcom/arrownock/push/IAnPushSettingsCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V

    goto :goto_3a
.end method
