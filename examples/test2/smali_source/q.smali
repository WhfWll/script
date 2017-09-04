.class final Lq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lf;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lq;->a:Lf;

    iput-object p2, p0, Lq;->a:Ljava/lang/String;

    iput-object p3, p0, Lq;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lq;->a:Lf;

    iget-object v1, p0, Lq;->a:Ljava/lang/String;

    iget-object v2, p0, Lq;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lq;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v0, Lcom/arrownock/im/callback/AnIMUnbindAnPushServiceCallbackData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/arrownock/im/callback/AnIMUnbindAnPushServiceCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;)V

    iget-object v1, p0, Lq;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMCallback;->unbindAnPushService(Lcom/arrownock/im/callback/AnIMUnbindAnPushServiceCallbackData;)V
    :try_end_25
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    iget-object v1, p0, Lq;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    if-eqz v1, :cond_25

    new-instance v1, Lcom/arrownock/im/callback/AnIMUnbindAnPushServiceCallbackData;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/arrownock/im/callback/AnIMUnbindAnPushServiceCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;)V

    iget-object v0, p0, Lq;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/arrownock/im/callback/IAnIMCallback;->unbindAnPushService(Lcom/arrownock/im/callback/AnIMUnbindAnPushServiceCallbackData;)V

    goto :goto_25
.end method
