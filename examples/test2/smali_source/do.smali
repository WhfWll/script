.class final Ldo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic a:Lcom/arrownock/push/IAnPushSettingsCallback;

.field private synthetic a:Ldf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldf;Ljava/lang/String;Ljava/lang/String;ILcom/arrownock/push/IAnPushSettingsCallback;)V
    .registers 6

    iput-object p1, p0, Ldo;->a:Ldf;

    iput-object p2, p0, Ldo;->a:Ljava/lang/String;

    iput-object p3, p0, Ldo;->b:Ljava/lang/String;

    iput p4, p0, Ldo;->a:I

    iput-object p5, p0, Ldo;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Ldo;->a:Ldf;

    iget-object v1, p0, Ldo;->a:Ljava/lang/String;

    iget-object v2, p0, Ldo;->b:Ljava/lang/String;

    iget v3, p0, Ldo;->a:I

    invoke-static {v0, v1, v2, v3}, Ldf;->a(Ldf;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Ldo;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    if-eqz v0, :cond_14

    iget-object v0, p0, Ldo;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    invoke-interface {v0}, Lcom/arrownock/push/IAnPushSettingsCallback;->onSuccess()V
    :try_end_14
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    iget-object v1, p0, Ldo;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    if-eqz v1, :cond_14

    iget-object v1, p0, Ldo;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    invoke-interface {v1, v0}, Lcom/arrownock/push/IAnPushSettingsCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V

    goto :goto_14
.end method
