.class final Li;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Li;->a:Lf;

    iput-object p2, p0, Li;->a:Ljava/lang/String;

    iput-object p3, p0, Li;->b:Ljava/lang/String;

    iput-object p4, p0, Li;->c:Ljava/lang/String;

    iput-object p5, p0, Li;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const/4 v5, 0x0

    :try_start_1
    iget-object v0, p0, Li;->a:Lf;

    iget-object v1, p0, Li;->a:Ljava/lang/String;

    iget-object v2, p0, Li;->b:Ljava/lang/String;

    iget-object v3, p0, Li;->c:Ljava/lang/String;

    iget-object v4, p0, Li;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Li;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    if-eqz v1, :cond_27

    new-instance v1, Lcom/arrownock/im/callback/AnIMUpdateTopicCallbackData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/arrownock/im/callback/AnIMUpdateTopicCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;)V

    iget-object v0, p0, Li;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/arrownock/im/callback/IAnIMCallback;->updateTopic(Lcom/arrownock/im/callback/AnIMUpdateTopicCallbackData;)V
    :try_end_27
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_1 .. :try_end_27} :catch_28

    :cond_27
    :goto_27
    return-void

    :catch_28
    move-exception v0

    iget-object v1, p0, Li;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    if-eqz v1, :cond_27

    new-instance v1, Lcom/arrownock/im/callback/AnIMUpdateTopicCallbackData;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, v5}, Lcom/arrownock/im/callback/AnIMUpdateTopicCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;)V

    iget-object v0, p0, Li;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/arrownock/im/callback/IAnIMCallback;->updateTopic(Lcom/arrownock/im/callback/AnIMUpdateTopicCallbackData;)V

    goto :goto_27
.end method
