.class final Lap;
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

    iput-object p1, p0, Lap;->a:Lf;

    iput-object p2, p0, Lap;->a:Ljava/lang/String;

    iput-object p3, p0, Lap;->b:Ljava/lang/String;

    iput-object p4, p0, Lap;->c:Ljava/lang/String;

    iput-object p5, p0, Lap;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    const/16 v7, 0xc20

    const-wide/16 v8, -0x1

    const/4 v6, 0x1

    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p0, Lap;->a:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "recipients"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2f

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_1f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2f

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_2f
    iget-object v1, p0, Lap;->a:Lf;

    invoke-static {v1}, Lf;->c(Lf;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lap;->a:Lf;

    invoke-virtual {v1, v0}, Lf;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_cf

    iget-object v3, p0, Lap;->a:Lf;

    iget-object v4, p0, Lap;->a:Lf;

    invoke-static {v4}, Lf;->a(Lf;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    iget-object v3, p0, Lap;->a:Lf;

    const-string v3, ","

    invoke-static {v0, v3}, Lf;->a(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5b} :catch_9b

    move-result-object v0

    :try_start_5c
    iget-object v3, p0, Lap;->a:Lf;

    iget-object v4, p0, Lap;->b:Ljava/lang/String;

    invoke-static {v3, v4, v1, v0}, Lf;->a(Lf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lap;->a:Lf;

    iget-object v4, p0, Lap;->a:Lf;

    invoke-static {v4}, Lf;->a(Lf;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v0}, Lf;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "recipients"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "session_key"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lap;->a:Lf;

    iget-object v1, p0, Lap;->c:Ljava/lang/String;

    iget-object v3, p0, Lap;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_5c .. :try_end_85} :catch_86
    .catch Lorg/json/JSONException; {:try_start_5c .. :try_end_85} :catch_9b

    :goto_85
    return-void

    :catch_86
    move-exception v2

    :try_start_87
    new-instance v0, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;

    const/4 v1, 0x1

    iget-object v3, p0, Lap;->c:Ljava/lang/String;

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;J)V

    iget-object v1, p0, Lap;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMCallback;->messageSent(Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;)V
    :try_end_9a
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_9a} :catch_9b

    goto :goto_85

    :catch_9b
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    const-string v3, "Failed to send message."

    invoke-direct {v2, v3, v1, v7}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    iget-object v3, p0, Lap;->c:Ljava/lang/String;

    move v1, v6

    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;J)V

    iget-object v1, p0, Lap;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMCallback;->messageSent(Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;)V

    goto :goto_85

    :cond_b7
    :try_start_b7
    const-string v0, "recipients"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "session_key"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lap;->a:Lf;

    iget-object v1, p0, Lap;->c:Ljava/lang/String;

    iget-object v3, p0, Lap;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    :cond_cf
    new-instance v0, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;

    const/4 v1, 0x1

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    const-string v3, "Failed to send message, error when calculating session info."

    const/16 v4, 0xc20

    invoke-direct {v2, v3, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    iget-object v3, p0, Lap;->c:Ljava/lang/String;

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;J)V

    iget-object v1, p0, Lap;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMCallback;->messageSent(Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;)V
    :try_end_eb
    .catch Lorg/json/JSONException; {:try_start_b7 .. :try_end_eb} :catch_9b

    goto :goto_85
.end method
