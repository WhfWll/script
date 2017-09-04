.class final Laj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic a:J

.field private synthetic a:Lcom/arrownock/im/callback/IAnIMHistoryCallback;

.field private synthetic a:Lf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcom/arrownock/im/callback/IAnIMHistoryCallback;)V
    .registers 9

    iput-object p1, p0, Laj;->a:Lf;

    iput-object p2, p0, Laj;->a:Ljava/lang/String;

    iput-object p3, p0, Laj;->b:Ljava/lang/String;

    iput-object p4, p0, Laj;->c:Ljava/lang/String;

    iput p5, p0, Laj;->a:I

    iput-wide p6, p0, Laj;->a:J

    iput-object p8, p0, Laj;->a:Lcom/arrownock/im/callback/IAnIMHistoryCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 21

    const/4 v3, 0x0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Laj;->a:Lf;

    move-object/from16 v0, p0

    iget-object v5, v0, Laj;->a:Lf;

    invoke-static {v5}, Lf;->a(Lf;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lf;->a(Lf;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/v1/im/topics/history.json?key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Laj;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&topic_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Laj;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Laj;->c:Ljava/lang/String;

    if-eqz v4, :cond_65

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&me="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Laj;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_65
    move-object/from16 v0, p0

    iget v4, v0, Laj;->a:I

    if-lez v4, :cond_81

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&limit="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Laj;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_81
    move-object/from16 v0, p0

    iget-wide v4, v0, Laj;->a:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_a1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&timestamp="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Laj;->a:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a1
    const-string v4, "&b=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Laj;->a:Lf;

    invoke-static {v4}, Lf;->a(Lf;)Z

    move-result v4

    if-eqz v4, :cond_1ce

    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_ce} :catch_294
    .catchall {:try_start_1 .. :try_end_ce} :catchall_28b

    :try_start_ce
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    invoke-static {}, Lf;->a()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Laj;->a:Lf;

    invoke-static {}, Lf;->c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Laj;->a:Lf;

    invoke-static {}, Lf;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Laj;->a:Lf;

    invoke-static {}, Lf;->e()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, "BKS"

    invoke-static {v4, v5, v6, v7, v8}, Lat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_100} :catch_297
    .catchall {:try_start_ce .. :try_end_100} :catchall_28f

    move-object v13, v2

    :goto_101
    :try_start_101
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_107} :catch_1a1
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_107} :catch_1ae
    .catchall {:try_start_101 .. :try_end_107} :catchall_233

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_255

    :try_start_10c
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Laj;->a:Lf;

    invoke-static {v2}, Lf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "response"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "meta"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    if-eqz v2, :cond_24b

    const-string v3, "messages"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v14, v2

    :goto_13c
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v14, v2, :cond_235

    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_205

    const-string v2, "content_type"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "msg_id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "topic_id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "from"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "message"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "timestamp"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v2, "customData"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v12, 0x0

    if-eqz v8, :cond_1ef

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v17

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    :goto_17e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ef

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_193
    .catch Lorg/json/JSONException; {:try_start_10c .. :try_end_193} :catch_194
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_193} :catch_1a1
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_193} :catch_1ae
    .catchall {:try_start_10c .. :try_end_193} :catchall_233

    goto :goto_17e

    :catch_194
    move-exception v2

    :try_start_195
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x844

    invoke-direct {v3, v2, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1a1
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_1a1} :catch_1a1
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_1a1} :catch_1ae
    .catchall {:try_start_195 .. :try_end_1a1} :catchall_233

    :catch_1a1
    move-exception v2

    :try_start_1a2
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x844

    invoke-direct {v3, v2, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1ae} :catch_1ae
    .catchall {:try_start_1a2 .. :try_end_1ae} :catchall_233

    :catch_1ae
    move-exception v2

    move-object v3, v13

    :goto_1b0
    :try_start_1b0
    instance-of v4, v2, Lcom/arrownock/exception/ArrownockException;

    if-eqz v4, :cond_27f

    check-cast v2, Lcom/arrownock/exception/ArrownockException;

    throw v2
    :try_end_1b7
    .catchall {:try_start_1b0 .. :try_end_1b7} :catchall_1b7

    :catchall_1b7
    move-exception v2

    move-object v13, v3

    :goto_1b9
    if-eqz v13, :cond_1be

    :try_start_1bb
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1be
    throw v2
    :try_end_1bf
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_1bb .. :try_end_1bf} :catch_1bf

    :catch_1bf
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Laj;->a:Lcom/arrownock/im/callback/IAnIMHistoryCallback;

    if-eqz v3, :cond_1cd

    move-object/from16 v0, p0

    iget-object v3, v0, Laj;->a:Lcom/arrownock/im/callback/IAnIMHistoryCallback;

    invoke-interface {v3, v2}, Lcom/arrownock/im/callback/IAnIMHistoryCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V

    :cond_1cd
    :goto_1cd
    return-void

    :cond_1ce
    :try_start_1ce
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1ec} :catch_294
    .catchall {:try_start_1ce .. :try_end_1ec} :catchall_28b

    move-object v13, v2

    goto/16 :goto_101

    :cond_1ef
    :try_start_1ef
    const-string v2, "text"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20a

    new-instance v2, Lcom/arrownock/im/AnIMMessage;

    sget-object v3, Lcom/arrownock/im/AnIMMessageType;->AnIMTextMessage:Lcom/arrownock/im/AnIMMessageType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/arrownock/im/AnIMMessage;-><init>(Lcom/arrownock/im/AnIMMessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_205
    :goto_205
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto/16 :goto_13c

    :cond_20a
    const-string v2, "binary"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_205

    const-string v2, "fileType"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    if-eqz v6, :cond_225

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_225

    invoke-static {v6}, Laz;->a(Ljava/lang/String;)[B

    move-result-object v7

    :cond_225
    new-instance v2, Lcom/arrownock/im/AnIMMessage;

    sget-object v3, Lcom/arrownock/im/AnIMMessageType;->AnIMBinaryMessage:Lcom/arrownock/im/AnIMMessageType;

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/arrownock/im/AnIMMessage;-><init>(Lcom/arrownock/im/AnIMMessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_205

    :catchall_233
    move-exception v2

    goto :goto_1b9

    :cond_235
    move-object/from16 v0, p0

    iget-object v2, v0, Laj;->a:Lcom/arrownock/im/callback/IAnIMHistoryCallback;

    if-eqz v2, :cond_245

    move-object/from16 v0, p0

    iget-object v2, v0, Laj;->a:Lcom/arrownock/im/callback/IAnIMHistoryCallback;

    const/4 v3, -0x1

    move-object/from16 v0, v16

    invoke-interface {v2, v0, v3}, Lcom/arrownock/im/callback/IAnIMHistoryCallback;->onSuccess(Ljava/util/List;I)V
    :try_end_245
    .catch Lorg/json/JSONException; {:try_start_1ef .. :try_end_245} :catch_194
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_245} :catch_1a1
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_245} :catch_1ae
    .catchall {:try_start_1ef .. :try_end_245} :catchall_233

    :cond_245
    if-eqz v13, :cond_1cd

    :try_start_247
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_24a
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_247 .. :try_end_24a} :catch_1bf

    goto :goto_1cd

    :cond_24b
    :try_start_24b
    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    const-string v3, "Unable to get full topic history. "

    const/16 v4, 0x83e

    invoke-direct {v2, v3, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_255
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Laj;->a:Lf;

    invoke-static {v2}, Lf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "meta"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    const-string v4, "message"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x844

    invoke-direct {v3, v2, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_27f
    .catch Lorg/json/JSONException; {:try_start_24b .. :try_end_27f} :catch_194
    .catch Ljava/io/IOException; {:try_start_24b .. :try_end_27f} :catch_1a1
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_27f} :catch_1ae
    .catchall {:try_start_24b .. :try_end_27f} :catchall_233

    :cond_27f
    :try_start_27f
    new-instance v4, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x844

    invoke-direct {v4, v2, v5}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_28b
    .catchall {:try_start_27f .. :try_end_28b} :catchall_1b7

    :catchall_28b
    move-exception v2

    move-object v13, v3

    goto/16 :goto_1b9

    :catchall_28f
    move-exception v3

    move-object v13, v2

    move-object v2, v3

    goto/16 :goto_1b9

    :catch_294
    move-exception v2

    goto/16 :goto_1b0

    :catch_297
    move-exception v3

    move-object/from16 v19, v3

    move-object v3, v2

    move-object/from16 v2, v19

    goto/16 :goto_1b0
.end method
