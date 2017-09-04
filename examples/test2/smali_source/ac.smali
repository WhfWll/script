.class final Lac;
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

    iput-object p1, p0, Lac;->a:Lf;

    iput-object p2, p0, Lac;->a:Ljava/lang/String;

    iput-object p3, p0, Lac;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lac;->a:Lf;

    iget-object v1, p0, Lac;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf;->a(Ljava/lang/String;)Lcp;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v1, v0, Lcp;->a:Ljava/lang/Object;

    if-eqz v1, :cond_4f

    const-string v1, ""

    iget-object v2, v0, Lcp;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    iget-object v1, v0, Lcp;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcp;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ANIM/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lac;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lac;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lac;->a:Ljava/lang/String;

    iget-object v0, p0, Lac;->a:Lf;

    iget-object v5, p0, Lac;->a:Lf;

    invoke-static {v5}, Lf;->a(Lf;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lf;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    iget-object v0, p0, Lac;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    if-eqz v0, :cond_4e

    new-instance v0, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;

    iget-object v1, p0, Lac;->a:Lf;

    invoke-virtual {v1}, Lf;->a()Lcom/arrownock/im/AnIMStatus;

    move-result-object v1

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    const-string v3, "Failed to get server info"

    const/16 v4, 0xc1d

    invoke-direct {v2, v3, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;-><init>(Lcom/arrownock/im/AnIMStatus;Lcom/arrownock/exception/ArrownockException;)V

    iget-object v1, p0, Lac;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMCallback;->statusUpdate(Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;)V
    :try_end_74
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_74} :catch_75

    goto :goto_4e

    :catch_75
    move-exception v0

    new-instance v1, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;

    iget-object v2, p0, Lac;->a:Lf;

    invoke-virtual {v2}, Lf;->a()Lcom/arrownock/im/AnIMStatus;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;-><init>(Lcom/arrownock/im/AnIMStatus;Lcom/arrownock/exception/ArrownockException;)V

    iget-object v0, p0, Lac;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lac;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/arrownock/im/callback/IAnIMCallback;->statusUpdate(Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;)V

    goto :goto_4e
.end method
