.class public final Lek;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/arrownock/push/PushService;


# direct methods
.method public constructor <init>(Lcom/arrownock/push/PushService;)V
    .registers 2

    iput-object p1, p0, Lek;->a:Lcom/arrownock/push/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lek;->a:Lcom/arrownock/push/PushService;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/arrownock/push/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "anPush"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-object v0, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    const-string v1, "start to send keepAlive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/arrownock/push/PushService;->a()Lji;

    move-result-object v0

    const-string v1, "keepalive"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "keepalive/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lji;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "keepalive"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lji;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sget-object v0, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    const-string v1, "finish send keepAlive. releasing wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
