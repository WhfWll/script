.class final Ldl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/arrownock/push/IAnPushCallback;

.field private synthetic a:Ldf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldf;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushCallback;)V
    .registers 5

    iput-object p1, p0, Ldl;->a:Ldf;

    iput-object p2, p0, Ldl;->a:Ljava/lang/String;

    iput-object p3, p0, Ldl;->b:Ljava/lang/String;

    iput-object p4, p0, Ldl;->a:Lcom/arrownock/push/IAnPushCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Ldl;->a:Ldf;

    iget-object v1, p0, Ldl;->a:Ljava/lang/String;

    iget-object v2, p0, Ldl;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ldf;->a(Ldf;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldl;->a:Lcom/arrownock/push/IAnPushCallback;

    if-eqz v0, :cond_14

    iget-object v0, p0, Ldl;->a:Lcom/arrownock/push/IAnPushCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/arrownock/push/IAnPushCallback;->clearSilentPeriod(ZLcom/arrownock/exception/ArrownockException;)V

    :cond_14
    iget-object v0, p0, Ldl;->a:Ldf;

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

    iget-object v0, p0, Ldl;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)V
    :try_end_3c
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_3c} :catch_3d

    :cond_3c
    :goto_3c
    return-void

    :catch_3d
    move-exception v0

    iget-object v1, p0, Ldl;->a:Lcom/arrownock/push/IAnPushCallback;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Ldl;->a:Lcom/arrownock/push/IAnPushCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/arrownock/push/IAnPushCallback;->clearSilentPeriod(ZLcom/arrownock/exception/ArrownockException;)V

    goto :goto_3c
.end method
