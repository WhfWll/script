.class public final Lch;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public a:Lbn;

.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lch;->a:Landroid/content/Context;

    iput-object v0, p0, Lch;->a:Ljava/lang/String;

    iput-object v0, p0, Lch;->a:Lbn;

    new-instance v0, Lbn;

    invoke-direct {v0}, Lbn;-><init>()V

    iput-object v0, p0, Lch;->a:Lbn;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lch;->a:Landroid/content/Context;

    iput-object v0, p0, Lch;->a:Ljava/lang/String;

    iput-object v0, p0, Lch;->a:Lbn;

    new-instance v0, Lbn;

    invoke-direct {v0}, Lbn;-><init>()V

    iput-object v0, p0, Lch;->a:Lbn;

    iget-object v0, p0, Lch;->a:Lbn;

    invoke-virtual {v0, p1}, Lbn;->a(Ljava/lang/String;)V

    iput-object p2, p0, Lch;->a:Landroid/content/Context;

    iput-object p1, p0, Lch;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/arrownock/social/AnSocialMethod;Ljava/util/Map;Ljava/lang/String;Lcom/arrownock/social/IAnSocialCallback;)Lorg/json/JSONObject;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/arrownock/social/AnSocialMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/arrownock/social/IAnSocialCallback;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const v7, -0x30d45

    const/4 v2, 0x0

    if-eqz p2, :cond_12

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_12
    const-string v0, "Invalid path"

    const v1, -0x30d42

    invoke-static {v0, v1, p3}, Lch;->a(Ljava/lang/String;ILcom/arrownock/social/IAnSocialCallback;)V

    move-object v0, v2

    :goto_1b
    return-object v0

    :cond_1c
    sget-object v0, Lcom/arrownock/social/AnSocialMethod;->GET:Lcom/arrownock/social/AnSocialMethod;

    if-eq p0, v0, :cond_2e

    sget-object v0, Lcom/arrownock/social/AnSocialMethod;->POST:Lcom/arrownock/social/AnSocialMethod;

    if-eq p0, v0, :cond_2e

    const-string v0, "Invalid methodType"

    const v1, -0x30d46

    invoke-static {v0, v1, p3}, Lch;->a(Ljava/lang/String;ILcom/arrownock/social/IAnSocialCallback;)V

    move-object v0, v2

    goto :goto_1b

    :cond_2e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    const-string v0, "photo"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "file"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    :cond_60
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/arrownock/social/AnSocialFile;

    if-nez v0, :cond_6f

    const-string v0, "Invalid AnSocialFile"

    invoke-static {v0, v7, p3}, Lch;->a(Ljava/lang/String;ILcom/arrownock/social/IAnSocialCallback;)V

    move-object v0, v2

    goto :goto_1b

    :cond_6f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arrownock/social/AnSocialFile;

    if-eqz v0, :cond_83

    invoke-virtual {v0}, Lcom/arrownock/social/AnSocialFile;->getData()[B

    move-result-object v5

    if-nez v5, :cond_8a

    invoke-virtual {v0}, Lcom/arrownock/social/AnSocialFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_8a

    :cond_83
    const-string v0, "Invalid AnSocialFile"

    invoke-static {v0, v7, p3}, Lch;->a(Ljava/lang/String;ILcom/arrownock/social/IAnSocialCallback;)V

    move-object v0, v2

    goto :goto_1b

    :cond_8a
    :try_start_8a
    const-string v0, "custom_fields"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_a9

    const-string v0, "Invalid custom_fields"

    const v1, -0x30d45

    invoke-static {v0, v1, p3}, Lch;->a(Ljava/lang/String;ILcom/arrownock/social/IAnSocialCallback;)V

    move-object v0, v2

    goto/16 :goto_1b

    :cond_a9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_bc
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d5
    .catch Lorg/json/JSONException; {:try_start_8a .. :try_end_d5} :catch_d6

    goto :goto_bc

    :catch_d6
    move-exception v0

    const-string v0, "Invalid params"

    invoke-static {v0, v7, p3}, Lch;->a(Ljava/lang/String;ILcom/arrownock/social/IAnSocialCallback;)V

    move-object v0, v2

    goto/16 :goto_1b

    :cond_df
    :try_start_df
    const-string v0, "custom_fields"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3b

    :cond_e6
    const-string v0, "choices"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_105

    const-string v0, "Invalid choices"

    const v1, -0x30d45

    invoke-static {v0, v1, p3}, Lch;->a(Ljava/lang/String;ILcom/arrownock/social/IAnSocialCallback;)V

    move-object v0, v2

    goto/16 :goto_1b

    :cond_105
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_118
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_132

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_118

    :cond_132
    const-string v0, "choices"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3b

    :cond_139
    const-string v0, "resolutions"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18c

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_158

    const-string v0, "Invalid resolutions"

    const v1, -0x30d45

    invoke-static {v0, v1, p3}, Lch;->a(Ljava/lang/String;ILcom/arrownock/social/IAnSocialCallback;)V

    move-object v0, v2

    goto/16 :goto_1b

    :cond_158
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_185

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_16b

    :cond_185
    const-string v0, "resolutions"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3b

    :cond_18c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_199
    .catch Lorg/json/JSONException; {:try_start_df .. :try_end_199} :catch_d6

    goto/16 :goto_3b

    :cond_19b
    move-object v0, v3

    goto/16 :goto_1b
.end method

.method public static a(Ljava/lang/String;ILcom/arrownock/social/IAnSocialCallback;)V
    .registers 7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_a
    const-string v2, "status"

    const-string v3, "fail"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "code"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "meta"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_26} :catch_36
    .catchall {:try_start_a .. :try_end_26} :catchall_4a

    if-eqz p2, :cond_35

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lci;

    invoke-direct {v2, p2, v1}, Lci;-><init>(Lcom/arrownock/social/IAnSocialCallback;Lorg/json/JSONObject;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    :cond_35
    :goto_35
    return-void

    :catch_36
    move-exception v0

    :try_start_37
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_4a

    if-eqz p2, :cond_35

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lci;

    invoke-direct {v2, p2, v1}, Lci;-><init>(Lcom/arrownock/social/IAnSocialCallback;Lorg/json/JSONObject;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_35

    :catchall_4a
    move-exception v0

    if-eqz p2, :cond_5a

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lci;

    invoke-direct {v3, p2, v1}, Lci;-><init>(Lcom/arrownock/social/IAnSocialCallback;Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->run()V

    :cond_5a
    throw v0
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lch;->a:Lbn;

    invoke-virtual {v0, p1}, Lbn;->a(I)V

    return-void
.end method
