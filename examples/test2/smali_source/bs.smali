.class final Lbs;
.super Ley;


# instance fields
.field final synthetic a:Lcom/arrownock/social/IAnSocialCallback;


# direct methods
.method constructor <init>(Lcom/arrownock/social/IAnSocialCallback;)V
    .registers 2

    iput-object p1, p0, Lbs;->a:Lcom/arrownock/social/IAnSocialCallback;

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
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_1b} :catch_2d
    .catchall {:try_start_a .. :try_end_1b} :catchall_43

    iget-object v0, p0, Lbs;->a:Lcom/arrownock/social/IAnSocialCallback;

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lbv;

    invoke-direct {v2, p0, v1}, Lbv;-><init>(Lbs;Lorg/json/JSONObject;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    :cond_2c
    :goto_2c
    return-void

    :catch_2d
    move-exception v0

    :try_start_2e
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_43

    iget-object v0, p0, Lbs;->a:Lcom/arrownock/social/IAnSocialCallback;

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lbv;

    invoke-direct {v2, p0, v1}, Lbv;-><init>(Lbs;Lorg/json/JSONObject;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_2c

    :catchall_43
    move-exception v0

    iget-object v2, p0, Lbs;->a:Lcom/arrownock/social/IAnSocialCallback;

    if-eqz v2, :cond_55

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lbv;

    invoke-direct {v3, p0, v1}, Lbv;-><init>(Lbs;Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->run()V

    :cond_55
    throw v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lbs;->a:Lcom/arrownock/social/IAnSocialCallback;

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbt;

    invoke-direct {v1, p0, p1}, Lbt;-><init>(Lbs;Lorg/json/JSONObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    :cond_11
    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lbs;->a:Lcom/arrownock/social/IAnSocialCallback;

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbu;

    invoke-direct {v1, p0, p1}, Lbu;-><init>(Lbs;Lorg/json/JSONObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    :cond_11
    return-void
.end method
