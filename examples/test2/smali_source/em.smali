.class public final Lem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic a:Leo;

.field private synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Leo;)V
    .registers 4

    iput-object p1, p0, Lem;->a:Landroid/content/Context;

    iput-object p2, p0, Lem;->a:Ljava/lang/String;

    iput-object p3, p0, Lem;->a:Leo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    :try_start_0
    new-instance v0, Ldf;

    iget-object v1, p0, Lem;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ldf;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lem;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ldy;->a(Ljava/lang/String;)Lcp;

    move-result-object v1

    if-eqz v1, :cond_5d

    iget-object v0, v1, Lcp;->a:Ljava/lang/Object;

    if-eqz v0, :cond_5d

    const-string v0, ""

    iget-object v2, v1, Lcp;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v2, p0, Lem;->a:Leo;

    iget-object v0, v1, Lcp;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcp;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v0, :cond_3f

    const-string v3, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    iget-object v2, v2, Leo;->a:Lcom/arrownock/push/PushService;

    invoke-static {v2, v0, v1}, Lcom/arrownock/push/PushService;->a(Lcom/arrownock/push/PushService;Ljava/lang/String;I)V

    :goto_3e
    return-void

    :cond_3f
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    sget-object v1, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    const-string v3, "Cannot find push server."

    invoke-virtual {v0, v1, v3}, Lbk;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Leo;->a:Lcom/arrownock/push/PushService;

    iget-object v1, v2, Leo;->a:Lcom/arrownock/push/PushService;

    invoke-static {v1}, Lcom/arrownock/push/PushService;->a(Lcom/arrownock/push/PushService;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/arrownock/push/PushService;->scheduleReconnect(J)V
    :try_end_55
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_55} :catch_56

    goto :goto_3e

    :catch_56
    move-exception v0

    iget-object v1, p0, Lem;->a:Leo;

    invoke-virtual {v1, v0}, Leo;->a(Ljava/lang/Throwable;)V

    goto :goto_3e

    :cond_5d
    :try_start_5d
    sget-object v0, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    const-string v1, "Push server is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_5d .. :try_end_64} :catch_56

    goto :goto_3e
.end method
