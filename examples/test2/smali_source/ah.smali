.class final Lah;
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

    iput-object p1, p0, Lah;->a:Lf;

    iput-object p2, p0, Lah;->a:Ljava/lang/String;

    iput-object p3, p0, Lah;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    const/4 v8, 0x0

    const/4 v2, 0x0

    :try_start_2
    iget-object v1, p0, Lah;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Z

    move-result v1

    if-eqz v1, :cond_ae

    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lah;->a:Lf;

    iget-object v5, p0, Lah;->a:Lf;

    invoke-static {v5}, Lf;->a(Lf;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lf;->a(Lf;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/lives/validate.json?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lah;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lah;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4c} :catch_1e7
    .catchall {:try_start_2 .. :try_end_4c} :catchall_1de

    :try_start_4c
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-static {}, Lf;->a()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    iget-object v3, p0, Lah;->a:Lf;

    invoke-static {}, Lf;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lah;->a:Lf;

    invoke-static {}, Lf;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lah;->a:Lf;

    invoke-static {}, Lf;->e()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "BKS"

    invoke-static {v3, v4, v5, v6, v7}, Lat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_78} :catch_1ea
    .catchall {:try_start_4c .. :try_end_78} :catchall_1e2

    move-object v7, v1

    :goto_79
    :try_start_79
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_104
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_111
    .catchall {:try_start_79 .. :try_end_7c} :catchall_1cd

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_127

    :try_start_81
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v2, p0, Lah;->a:Lf;

    invoke-static {v1}, Lf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "meta"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_9a
    .catch Lorg/json/JSONException; {:try_start_81 .. :try_end_9a} :catch_f7
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_9a} :catch_104
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_9a} :catch_111
    .catchall {:try_start_81 .. :try_end_9a} :catchall_1cd

    :try_start_9a
    iget-object v1, p0, Lah;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lbi;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lbi;->a(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a8} :catch_f2
    .catch Lorg/json/JSONException; {:try_start_9a .. :try_end_a8} :catch_f7
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a8} :catch_104
    .catchall {:try_start_9a .. :try_end_a8} :catchall_1cd

    :cond_a8
    :goto_a8
    if-eqz v7, :cond_ad

    :try_start_aa
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_122

    :cond_ad
    :goto_ad
    return-void

    :cond_ae
    :try_start_ae
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lah;->a:Lf;

    iget-object v5, p0, Lah;->a:Lf;

    invoke-static {v5}, Lf;->a(Lf;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lf;->a(Lf;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/lives/validate.json?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lah;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lah;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_f0} :catch_1e7
    .catchall {:try_start_ae .. :try_end_f0} :catchall_1de

    move-object v7, v1

    goto :goto_79

    :catch_f2
    move-exception v1

    :try_start_f3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f6
    .catch Lorg/json/JSONException; {:try_start_f3 .. :try_end_f6} :catch_f7
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_104
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f6} :catch_111
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_1cd

    goto :goto_a8

    :catch_f7
    move-exception v1

    :try_start_f8
    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8fe

    invoke-direct {v2, v1, v3}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_104} :catch_104
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_104} :catch_111
    .catchall {:try_start_f8 .. :try_end_104} :catchall_1cd

    :catch_104
    move-exception v1

    :try_start_105
    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8fe

    invoke-direct {v2, v1, v3}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_111} :catch_111
    .catchall {:try_start_105 .. :try_end_111} :catchall_1cd

    :catch_111
    move-exception v1

    move-object v2, v7

    :goto_113
    :try_start_113
    instance-of v3, v1, Lcom/arrownock/exception/ArrownockException;

    if-eqz v3, :cond_1d2

    check-cast v1, Lcom/arrownock/exception/ArrownockException;

    throw v1
    :try_end_11a
    .catchall {:try_start_113 .. :try_end_11a} :catchall_11a

    :catchall_11a
    move-exception v1

    move-object v7, v2

    :goto_11c
    if-eqz v7, :cond_121

    :try_start_11e
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_121
    throw v1
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_122} :catch_122

    :catch_122
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ad

    :cond_127
    :try_start_127
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v2, p0, Lah;->a:Lf;

    invoke-static {v1}, Lf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "response"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a8

    const-string v2, "live_session"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a8

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "expired"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v6, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v6, "created_at"

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "+0000"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    const-string v4, "parties"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v8

    :goto_19b
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v1, v10, :cond_1b9

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1b6

    iget-object v11, p0, Lah;->a:Lf;

    invoke-virtual {v11}, Lf;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1b6

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b6
    .catch Lorg/json/JSONException; {:try_start_127 .. :try_end_1b6} :catch_f7
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_1b6} :catch_104
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_1b6} :catch_111
    .catchall {:try_start_127 .. :try_end_1b6} :catchall_1cd

    :cond_1b6
    add-int/lit8 v1, v1, 0x1

    goto :goto_19b

    :cond_1b9
    :try_start_1b9
    iget-object v1, p0, Lah;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lbi;

    move-result-object v1

    if-nez v2, :cond_1d0

    const/4 v2, 0x1

    :goto_1c2
    invoke-virtual/range {v1 .. v6}, Lbi;->a(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;)V
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_1c5} :catch_1c7
    .catch Lorg/json/JSONException; {:try_start_1b9 .. :try_end_1c5} :catch_f7
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1c5} :catch_104
    .catchall {:try_start_1b9 .. :try_end_1c5} :catchall_1cd

    goto/16 :goto_a8

    :catch_1c7
    move-exception v1

    :try_start_1c8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1cb
    .catch Lorg/json/JSONException; {:try_start_1c8 .. :try_end_1cb} :catch_f7
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1cb} :catch_104
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1cb} :catch_111
    .catchall {:try_start_1c8 .. :try_end_1cb} :catchall_1cd

    goto/16 :goto_a8

    :catchall_1cd
    move-exception v1

    goto/16 :goto_11c

    :cond_1d0
    move v2, v8

    goto :goto_1c2

    :cond_1d2
    :try_start_1d2
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8fe

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1de
    .catchall {:try_start_1d2 .. :try_end_1de} :catchall_11a

    :catchall_1de
    move-exception v1

    move-object v7, v2

    goto/16 :goto_11c

    :catchall_1e2
    move-exception v2

    move-object v7, v1

    move-object v1, v2

    goto/16 :goto_11c

    :catch_1e7
    move-exception v1

    goto/16 :goto_113

    :catch_1ea
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_113
.end method
