.class final Ldk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic a:Lcom/arrownock/push/IAnPushSettingsCallback;

.field private synthetic a:Ldf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic a:Z

.field private synthetic b:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:I


# direct methods
.method constructor <init>(Ldf;Ljava/lang/String;Ljava/lang/String;IIIZLcom/arrownock/push/IAnPushSettingsCallback;)V
    .registers 9

    iput-object p1, p0, Ldk;->a:Ldf;

    iput-object p2, p0, Ldk;->a:Ljava/lang/String;

    iput-object p3, p0, Ldk;->b:Ljava/lang/String;

    iput p4, p0, Ldk;->a:I

    iput p5, p0, Ldk;->b:I

    iput p6, p0, Ldk;->c:I

    iput-boolean p7, p0, Ldk;->a:Z

    iput-object p8, p0, Ldk;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Ldk;->a:Ldf;

    iget-object v1, p0, Ldk;->a:Ljava/lang/String;

    iget-object v2, p0, Ldk;->b:Ljava/lang/String;

    iget v3, p0, Ldk;->a:I

    iget v4, p0, Ldk;->b:I

    iget v5, p0, Ldk;->c:I

    iget-boolean v6, p0, Ldk;->a:Z

    invoke-static/range {v0 .. v6}, Ldf;->a(Ldf;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    iget-object v0, p0, Ldk;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ldk;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    invoke-interface {v0}, Lcom/arrownock/push/IAnPushSettingsCallback;->onSuccess()V

    :cond_1a
    iget-object v0, p0, Ldk;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/arrownock/push/PushService;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pushScheduledHour"

    iget v2, p0, Ldk;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pushScheduledMinue"

    iget v2, p0, Ldk;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pushScheduledDuration"

    iget v2, p0, Ldk;->c:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Ldk;->a:Ldf;

    invoke-virtual {v0}, Ldf;->a()V
    :try_end_4d
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_4d} :catch_4e

    :cond_4d
    :goto_4d
    return-void

    :catch_4e
    move-exception v0

    iget-object v1, p0, Ldk;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    if-eqz v1, :cond_4d

    iget-object v1, p0, Ldk;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    invoke-interface {v1, v0}, Lcom/arrownock/push/IAnPushSettingsCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V

    goto :goto_4d
.end method
