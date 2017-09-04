.class final Lo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lo;->a:Lf;

    iput-object p2, p0, Lo;->a:Ljava/lang/String;

    iput-object p3, p0, Lo;->b:Ljava/lang/String;

    iput-object p4, p0, Lo;->c:Ljava/lang/String;

    iput-object p5, p0, Lo;->d:Ljava/lang/String;

    iput-object p6, p0, Lo;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    const/4 v7, 0x1

    :try_start_1
    iget-object v0, p0, Lo;->a:Lf;

    iget-object v1, p0, Lo;->a:Ljava/lang/String;

    iget-object v2, p0, Lo;->b:Ljava/lang/String;

    iget-object v3, p0, Lo;->c:Ljava/lang/String;

    iget-object v4, p0, Lo;->d:Ljava/lang/String;

    iget-object v5, p0, Lo;->e:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lo;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    if-eqz v0, :cond_29

    new-instance v0, Lcom/arrownock/im/callback/AnIMBindAnPushServiceCallbackData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/arrownock/im/callback/AnIMBindAnPushServiceCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;)V

    iget-object v1, p0, Lo;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMCallback;->bindAnPushService(Lcom/arrownock/im/callback/AnIMBindAnPushServiceCallbackData;)V
    :try_end_29
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_1 .. :try_end_29} :catch_2a

    :cond_29
    :goto_29
    return-void

    :catch_2a
    move-exception v0

    iget-object v1, p0, Lo;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    if-eqz v1, :cond_29

    new-instance v1, Lcom/arrownock/im/callback/AnIMBindAnPushServiceCallbackData;

    invoke-direct {v1, v7, v0}, Lcom/arrownock/im/callback/AnIMBindAnPushServiceCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;)V

    iget-object v0, p0, Lo;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/arrownock/im/callback/IAnIMCallback;->bindAnPushService(Lcom/arrownock/im/callback/AnIMBindAnPushServiceCallbackData;)V

    goto :goto_29
.end method
