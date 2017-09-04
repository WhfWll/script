.class final Lag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic a:Ljava/util/List;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lf;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lag;->a:Lf;

    iput-object p2, p0, Lag;->a:Ljava/lang/String;

    iput-object p3, p0, Lag;->a:Ljava/util/List;

    iput-object p4, p0, Lag;->b:Ljava/lang/String;

    iput-object p5, p0, Lag;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    const/4 v3, 0x0

    :try_start_1
    iget-object v1, p0, Lag;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Z

    move-result v1

    if-eqz v1, :cond_114

    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "https://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lag;->a:Lf;

    iget-object v5, p0, Lag;->a:Lf;

    invoke-static {v5}, Lf;->a(Lf;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lf;->a(Lf;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/v1/lives/create.json?key="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lag;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3f} :catch_20a
    .catchall {:try_start_1 .. :try_end_3f} :catchall_201

    :try_start_3f
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-static {}, Lf;->a()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    iget-object v4, p0, Lag;->a:Lf;

    invoke-static {}, Lf;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lag;->a:Lf;

    invoke-static {}, Lf;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lag;->a:Lf;

    invoke-static {}, Lf;->e()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, "BKS"

    invoke-static {v4, v5, v6, v7, v8}, Lat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_6b} :catch_20e
    .catchall {:try_start_3f .. :try_end_6b} :catchall_204

    move-object v2, v1

    :goto_6c
    :try_start_6c
    const-string v1, "POST"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v1, p0, Lag;->a:Lf;

    new-instance v1, Ljava/util/TreeSet;

    iget-object v4, p0, Lag;->a:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    const-string v4, ","

    invoke-static {v1, v4}, Lf;->a(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_87} :catch_17d
    .catchall {:try_start_6c .. :try_end_87} :catchall_185

    move-result-object v1

    :try_start_88
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "owner"

    iget-object v7, p0, Lag;->b:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "parties"

    invoke-direct {v5, v6, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "type"

    iget-object v6, p0, Lag;->c:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v6, p0, Lag;->a:Lf;

    invoke-static {v4}, Lf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_d1} :catch_170
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_d1} :catch_17d
    .catchall {:try_start_88 .. :try_end_d1} :catchall_185

    move-result v1

    const/16 v4, 0xc8

    if-eq v1, v4, :cond_19e

    :try_start_d6
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v4, p0, Lag;->a:Lf;

    invoke-static {v1}, Lf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "meta"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_214

    const-string v4, "message"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_f9
    if-eqz v1, :cond_14d

    iget-object v4, p0, Lag;->a:Lf;

    invoke-static {v4}, Lf;->a(Lf;)Lbi;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/arrownock/exception/ArrownockException;

    const/16 v9, 0x8fd

    invoke-direct {v8, v1, v9}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5, v6, v7, v8}, Lbi;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/arrownock/exception/ArrownockException;)V
    :try_end_10e
    .catch Lorg/json/JSONException; {:try_start_d6 .. :try_end_10e} :catch_163
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_10e} :catch_170
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_10e} :catch_17d
    .catchall {:try_start_d6 .. :try_end_10e} :catchall_185

    :cond_10e
    :goto_10e
    if-eqz v2, :cond_113

    :try_start_110
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_113} :catch_18c

    :cond_113
    :goto_113
    return-void

    :cond_114
    :try_start_114
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lag;->a:Lf;

    iget-object v5, p0, Lag;->a:Lf;

    invoke-static {v5}, Lf;->a(Lf;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lf;->a(Lf;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/v1/lives/create.json?key="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lag;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_14a} :catch_20a
    .catchall {:try_start_114 .. :try_end_14a} :catchall_201

    move-object v2, v1

    goto/16 :goto_6c

    :cond_14d
    :try_start_14d
    iget-object v1, p0, Lag;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lbi;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/arrownock/exception/ArrownockException;

    const-string v8, "Internal server error"

    const/16 v9, 0x8fd

    invoke-direct {v7, v8, v9}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4, v5, v6, v7}, Lbi;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/arrownock/exception/ArrownockException;)V
    :try_end_162
    .catch Lorg/json/JSONException; {:try_start_14d .. :try_end_162} :catch_163
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_162} :catch_170
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_162} :catch_17d
    .catchall {:try_start_14d .. :try_end_162} :catchall_185

    goto :goto_10e

    :catch_163
    move-exception v1

    :try_start_164
    new-instance v4, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x8fd

    invoke-direct {v4, v1, v5}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_170
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_170} :catch_170
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_170} :catch_17d
    .catchall {:try_start_164 .. :try_end_170} :catchall_185

    :catch_170
    move-exception v1

    :try_start_171
    new-instance v4, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x8fd

    invoke-direct {v4, v1, v5}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_17d} :catch_17d
    .catchall {:try_start_171 .. :try_end_17d} :catchall_185

    :catch_17d
    move-exception v1

    :goto_17e
    :try_start_17e
    instance-of v4, v1, Lcom/arrownock/exception/ArrownockException;

    if-eqz v4, :cond_1f5

    check-cast v1, Lcom/arrownock/exception/ArrownockException;

    throw v1
    :try_end_185
    .catchall {:try_start_17e .. :try_end_185} :catchall_185

    :catchall_185
    move-exception v1

    :goto_186
    if-eqz v2, :cond_18b

    :try_start_188
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_18b
    throw v1
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_18c} :catch_18c

    :catch_18c
    move-exception v1

    instance-of v2, v1, Lcom/arrownock/exception/ArrownockException;

    if-eqz v2, :cond_113

    iget-object v2, p0, Lag;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lbi;

    move-result-object v2

    check-cast v1, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v2, v3, v3, v3, v1}, Lbi;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/arrownock/exception/ArrownockException;)V

    goto/16 :goto_113

    :cond_19e
    :try_start_19e
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v4, p0, Lag;->a:Lf;

    invoke-static {v1}, Lf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "response"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_10e

    const-string v4, "live_session"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_10e

    const-string v4, "id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "parties"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1d4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_1e4

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e1
    .catch Lorg/json/JSONException; {:try_start_19e .. :try_end_1e1} :catch_163
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1e1} :catch_170
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1e1} :catch_17d
    .catchall {:try_start_19e .. :try_end_1e1} :catchall_185

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d4

    :cond_1e4
    :try_start_1e4
    iget-object v1, p0, Lag;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lbi;

    move-result-object v1

    iget-object v5, p0, Lag;->c:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v6, v5, v7}, Lbi;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/arrownock/exception/ArrownockException;)V
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_1f0} :catch_1f2
    .catch Lorg/json/JSONException; {:try_start_1e4 .. :try_end_1f0} :catch_163
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1f0} :catch_170
    .catchall {:try_start_1e4 .. :try_end_1f0} :catchall_185

    goto/16 :goto_10e

    :catch_1f2
    move-exception v1

    goto/16 :goto_10e

    :cond_1f5
    :try_start_1f5
    new-instance v4, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x8fd

    invoke-direct {v4, v1, v5}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_201
    .catchall {:try_start_1f5 .. :try_end_201} :catchall_185

    :catchall_201
    move-exception v1

    move-object v2, v3

    goto :goto_186

    :catchall_204
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto/16 :goto_186

    :catch_20a
    move-exception v1

    move-object v2, v3

    goto/16 :goto_17e

    :catch_20e
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto/16 :goto_17e

    :cond_214
    move-object v1, v3

    goto/16 :goto_f9
.end method
