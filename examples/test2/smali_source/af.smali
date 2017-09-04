.class final Laf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/arrownock/im/callback/IAnIMGetTopicListCallback;

.field private synthetic a:Lf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lf;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/im/callback/IAnIMGetTopicListCallback;)V
    .registers 5

    iput-object p1, p0, Laf;->a:Lf;

    iput-object p2, p0, Laf;->a:Ljava/lang/String;

    iput-object p3, p0, Laf;->b:Ljava/lang/String;

    iput-object p4, p0, Laf;->a:Lcom/arrownock/im/callback/IAnIMGetTopicListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Laf;->a:Lf;

    iget-object v1, p0, Laf;->a:Ljava/lang/String;

    iget-object v2, p0, Laf;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lf;->a(Lf;Ljava/lang/String;Ljava/lang/String;)Lcom/arrownock/im/callback/AnIMGetTopicListCallbackData;

    move-result-object v0

    iget-object v1, p0, Laf;->a:Lcom/arrownock/im/callback/IAnIMGetTopicListCallback;

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Lcom/arrownock/im/callback/AnIMGetTopicListCallbackData;->isError()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Laf;->a:Lcom/arrownock/im/callback/IAnIMGetTopicListCallback;

    invoke-virtual {v0}, Lcom/arrownock/im/callback/AnIMGetTopicListCallbackData;->getException()Lcom/arrownock/exception/ArrownockException;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMGetTopicListCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v1, p0, Laf;->a:Lcom/arrownock/im/callback/IAnIMGetTopicListCallback;

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMGetTopicListCallback;->onSuccess(Lcom/arrownock/im/callback/AnIMGetTopicListCallbackData;)V

    goto :goto_1d
.end method
