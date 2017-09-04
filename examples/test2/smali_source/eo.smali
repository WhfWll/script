.class public final Leo;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/arrownock/push/PushService;


# direct methods
.method public constructor <init>(Lcom/arrownock/push/PushService;)V
    .registers 2

    iput-object p1, p0, Leo;->a:Lcom/arrownock/push/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 6

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    sget-object v1, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    const-string v2, "Failed to find push server. Will retry later."

    invoke-virtual {v0, v1, v2, p1}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Leo;->a:Lcom/arrownock/push/PushService;

    iget-object v1, p0, Leo;->a:Lcom/arrownock/push/PushService;

    invoke-static {v1}, Lcom/arrownock/push/PushService;->a(Lcom/arrownock/push/PushService;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/arrownock/push/PushService;->scheduleReconnect(J)V

    return-void
.end method
