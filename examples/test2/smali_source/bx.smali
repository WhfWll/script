.class final Lbx;
.super Ley;


# instance fields
.field final synthetic a:Lbw;


# direct methods
.method constructor <init>(Lbw;)V
    .registers 2

    iput-object p1, p0, Lbx;->a:Lbw;

    invoke-direct {p0}, Ley;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_a
    const-string v2, "status"

    const-string v3, "fail"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "meta"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_1b} :catch_2f
    .catchall {:try_start_a .. :try_end_1b} :catchall_47

    iget-object v0, p0, Lbx;->a:Lbw;

    iget-object v0, v0, Lbw;->a:Lcom/arrownock/social/IAnSocialCallback;

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lca;

    invoke-direct {v2, p0, v1}, Lca;-><init>(Lbx;Lorg/json/JSONObject;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    :cond_2e
    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    :try_start_30
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_47

    iget-object v0, p0, Lbx;->a:Lbw;

    iget-object v0, v0, Lbw;->a:Lcom/arrownock/social/IAnSocialCallback;

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lca;

    invoke-direct {v2, p0, v1}, Lca;-><init>(Lbx;Lorg/json/JSONObject;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_2e

    :catchall_47
    move-exception v0

    iget-object v2, p0, Lbx;->a:Lbw;

    iget-object v2, v2, Lbw;->a:Lcom/arrownock/social/IAnSocialCallback;

    if-eqz v2, :cond_5b

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lca;

    invoke-direct {v3, p0, v1}, Lca;-><init>(Lbx;Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->run()V

    :cond_5b
    throw v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lbx;->a:Lbw;

    iget-object v0, v0, Lbw;->a:Lcom/arrownock/social/IAnSocialCallback;

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lby;

    invoke-direct {v1, p0, p1}, Lby;-><init>(Lbx;Lorg/json/JSONObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    :cond_13
    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lbx;->a:Lbw;

    iget-object v0, v0, Lbw;->a:Lcom/arrownock/social/IAnSocialCallback;

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbz;

    invoke-direct {v1, p0, p1}, Lbz;-><init>(Lbx;Lorg/json/JSONObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    :cond_13
    return-void
.end method
