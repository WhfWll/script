.class final Lam;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/arrownock/im/callback/IAnIMTopicCallback;

.field private synthetic a:Lf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lf;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/im/callback/IAnIMTopicCallback;)V
    .registers 5

    iput-object p1, p0, Lam;->a:Lf;

    iput-object p2, p0, Lam;->a:Ljava/lang/String;

    iput-object p3, p0, Lam;->b:Ljava/lang/String;

    iput-object p4, p0, Lam;->a:Lcom/arrownock/im/callback/IAnIMTopicCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lam;->a:Lf;

    iget-object v1, p0, Lam;->a:Ljava/lang/String;

    iget-object v2, p0, Lam;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lf;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lam;->a:Lcom/arrownock/im/callback/IAnIMTopicCallback;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lam;->a:Lcom/arrownock/im/callback/IAnIMTopicCallback;

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMTopicCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_13
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    iget-object v1, p0, Lam;->a:Lcom/arrownock/im/callback/IAnIMTopicCallback;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lam;->a:Lcom/arrownock/im/callback/IAnIMTopicCallback;

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMTopicCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V

    goto :goto_13
.end method
