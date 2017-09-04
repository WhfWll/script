.class public final Led;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic a:Landroid/content/Context;

.field private synthetic a:Lee;

.field private synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lee;I)V
    .registers 5

    iput-object p1, p0, Led;->a:Landroid/content/Context;

    iput-object p2, p0, Led;->a:Ljava/lang/String;

    iput-object p3, p0, Led;->a:Lee;

    iput p4, p0, Led;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    :try_start_0
    new-instance v0, Ldf;

    iget-object v1, p0, Led;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ldf;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Led;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ldy;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Led;->a:Lee;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3f

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v2

    const-class v3, Lcom/arrownock/push/PushCommandFetcher;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got push commands: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lee;->a:Lcom/arrownock/push/PushCommandFetcher;

    iget-object v1, v1, Lee;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/arrownock/push/PushCommandFetcher;->a(Lorg/json/JSONArray;Landroid/content/Context;)V

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    const-class v1, Lcom/arrownock/push/PushCommandFetcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Got offline push commands: 0"

    invoke-virtual {v0, v1, v2}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_3e

    :catch_4f
    move-exception v0

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    const-class v2, Lcom/arrownock/push/PushCommandFetcher;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to fetch commands: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; retry = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Led;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbk;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    :try_start_7e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_81
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_81} :catch_c3

    :goto_81
    iget-object v0, p0, Led;->a:Lee;

    iget v1, p0, Led;->a:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_9f

    iget-object v2, v0, Lee;->a:Landroid/content/SharedPreferences;

    const-string v3, "fetchCommandOn"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3e

    iget-object v2, v0, Lee;->a:Lcom/arrownock/push/PushCommandFetcher;

    iget-object v2, v0, Lee;->a:Ljava/lang/String;

    iget-object v3, v0, Lee;->a:Landroid/content/Context;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v3, v1, v0}, Lcom/arrownock/push/PushCommandFetcher;->a(Ljava/lang/String;Landroid/content/Context;ILee;)V

    goto :goto_3e

    :cond_9f
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    const-class v2, Lcom/arrownock/push/PushCommandFetcher;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to fetch commands after "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " retry"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lbk;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e

    :catch_c3
    move-exception v0

    goto :goto_81
.end method
