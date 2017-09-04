.class final Ldj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic a:Lcom/arrownock/push/IAnPushCallback;

.field private synthetic a:Ldf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic a:Z

.field private synthetic b:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:I


# direct methods
.method constructor <init>(Ldf;Ljava/lang/String;Ljava/lang/String;IIIZLcom/arrownock/push/IAnPushCallback;)V
    .registers 9

    iput-object p1, p0, Ldj;->a:Ldf;

    iput-object p2, p0, Ldj;->a:Ljava/lang/String;

    iput-object p3, p0, Ldj;->b:Ljava/lang/String;

    iput p4, p0, Ldj;->a:I

    iput p5, p0, Ldj;->b:I

    iput p6, p0, Ldj;->c:I

    iput-boolean p7, p0, Ldj;->a:Z

    iput-object p8, p0, Ldj;->a:Lcom/arrownock/push/IAnPushCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Ldj;->a:Ldf;

    iget-object v1, p0, Ldj;->a:Ljava/lang/String;

    iget-object v2, p0, Ldj;->b:Ljava/lang/String;

    iget v3, p0, Ldj;->a:I

    iget v4, p0, Ldj;->b:I

    iget v5, p0, Ldj;->c:I

    iget-boolean v6, p0, Ldj;->a:Z

    invoke-static/range {v0 .. v6}, Ldf;->a(Ldf;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    iget-object v0, p0, Ldj;->a:Lcom/arrownock/push/IAnPushCallback;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ldj;->a:Lcom/arrownock/push/IAnPushCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/arrownock/push/IAnPushCallback;->setSilentPeriod(ZLcom/arrownock/exception/ArrownockException;)V

    :cond_1c
    iget-object v0, p0, Ldj;->a:Ldf;

    invoke-static {v0}, Ldf;->a(Ldf;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/arrownock/push/PushService;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pushScheduledHour"

    iget v2, p0, Ldj;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pushScheduledMinue"

    iget v2, p0, Ldj;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pushScheduledDuration"

    iget v2, p0, Ldj;->c:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Ldj;->a:Ldf;

    invoke-virtual {v0}, Ldf;->a()V
    :try_end_4f
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_4f} :catch_50

    :cond_4f
    :goto_4f
    return-void

    :catch_50
    move-exception v0

    iget-object v1, p0, Ldj;->a:Lcom/arrownock/push/IAnPushCallback;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Ldj;->a:Lcom/arrownock/push/IAnPushCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/arrownock/push/IAnPushCallback;->setSilentPeriod(ZLcom/arrownock/exception/ArrownockException;)V

    goto :goto_4f
.end method
