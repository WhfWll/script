.class final Lt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic a:Z

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Ljava/lang/String;

.field private synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    iput-object p1, p0, Lt;->a:Lf;

    iput-object p2, p0, Lt;->a:Ljava/lang/String;

    iput-object p3, p0, Lt;->b:Ljava/lang/String;

    iput-object p4, p0, Lt;->c:Ljava/lang/String;

    iput-object p5, p0, Lt;->d:Ljava/lang/String;

    iput-object p6, p0, Lt;->e:Ljava/lang/String;

    iput-object p7, p0, Lt;->f:Ljava/lang/String;

    iput-object p8, p0, Lt;->g:Ljava/lang/String;

    iput-boolean p9, p0, Lt;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    :try_start_3
    iget-object v0, p0, Lt;->a:Lf;

    iget-object v1, p0, Lt;->a:Ljava/lang/String;

    iget-object v2, p0, Lt;->b:Ljava/lang/String;

    iget-object v3, p0, Lt;->c:Ljava/lang/String;

    iget-object v4, p0, Lt;->d:Ljava/lang/String;

    iget-object v5, p0, Lt;->e:Ljava/lang/String;

    iget-object v6, p0, Lt;->f:Ljava/lang/String;

    iget-object v7, p0, Lt;->g:Ljava/lang/String;

    iget-boolean v8, p0, Lt;->a:Z

    invoke-virtual/range {v0 .. v8}, Lf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lt;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    if-eqz v0, :cond_34

    new-instance v0, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lt;->g:Ljava/lang/String;

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;J)V

    iget-object v1, p0, Lt;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMCallback;->messageSent(Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;)V
    :try_end_34
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_3 .. :try_end_34} :catch_35

    :cond_34
    :goto_34
    return-void

    :catch_35
    move-exception v2

    iget-object v0, p0, Lt;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    if-eqz v0, :cond_34

    new-instance v0, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;

    const/4 v1, 0x1

    move-object v3, v9

    move-wide v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;J)V

    iget-object v1, p0, Lt;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMCallback;->messageSent(Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;)V

    goto :goto_34
.end method
