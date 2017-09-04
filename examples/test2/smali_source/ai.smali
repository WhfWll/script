.class final Lai;
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

    iput-object p1, p0, Lai;->a:Lf;

    iput-object p2, p0, Lai;->a:Ljava/lang/String;

    iput-object p3, p0, Lai;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    const/4 v2, 0x0

    :try_start_1
    iget-object v1, p0, Lai;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Z

    move-result v1

    if-eqz v1, :cond_d0

    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lai;->a:Lf;

    iget-object v5, p0, Lai;->a:Lf;

    invoke-static {v5}, Lf;->a(Lf;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lf;->a(Lf;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/lives/terminate.json?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lai;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3f} :catch_132
    .catchall {:try_start_1 .. :try_end_3f} :catchall_13a

    :try_start_3f
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-static {}, Lf;->a()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    iget-object v3, p0, Lai;->a:Lf;

    invoke-static {}, Lf;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lai;->a:Lf;

    invoke-static {}, Lf;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lai;->a:Lf;

    invoke-static {}, Lf;->e()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "BKS"

    invoke-static {v3, v4, v5, v6, v7}, Lat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_6b} :catch_157
    .catchall {:try_start_3f .. :try_end_6b} :catchall_152

    move-object v2, v1

    :goto_6c
    :try_start_6c
    const-string v1, "POST"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_79} :catch_132
    .catchall {:try_start_6c .. :try_end_79} :catchall_13a

    :try_start_79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "id"

    iget-object v5, p0, Lai;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v5, p0, Lai;->a:Lf;

    invoke-static {v1}, Lf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_ac} :catch_125
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_ac} :catch_132
    .catchall {:try_start_79 .. :try_end_ac} :catchall_13a

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_109

    :try_start_b1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v3, p0, Lai;->a:Lf;

    invoke-static {v1}, Lf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "meta"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_ca
    .catch Lorg/json/JSONException; {:try_start_b1 .. :try_end_ca} :catch_118
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_ca} :catch_125
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_ca} :catch_132
    .catchall {:try_start_b1 .. :try_end_ca} :catchall_13a

    :goto_ca
    if-eqz v2, :cond_cf

    :try_start_cc
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cf} :catch_141

    :cond_cf
    :goto_cf
    return-void

    :cond_d0
    :try_start_d0
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lai;->a:Lf;

    iget-object v5, p0, Lai;->a:Lf;

    invoke-static {v5}, Lf;->a(Lf;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lf;->a(Lf;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/lives/terminate.json?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lai;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_106} :catch_132
    .catchall {:try_start_d0 .. :try_end_106} :catchall_13a

    move-object v2, v1

    goto/16 :goto_6c

    :cond_109
    :try_start_109
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v3, p0, Lai;->a:Lf;

    invoke-static {v1}, Lf;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_117
    .catch Lorg/json/JSONException; {:try_start_109 .. :try_end_117} :catch_118
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_117} :catch_125
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_117} :catch_132
    .catchall {:try_start_109 .. :try_end_117} :catchall_13a

    goto :goto_ca

    :catch_118
    move-exception v1

    :try_start_119
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8ff

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_125} :catch_125
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_125} :catch_132
    .catchall {:try_start_119 .. :try_end_125} :catchall_13a

    :catch_125
    move-exception v1

    :try_start_126
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8ff

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_132} :catch_132
    .catchall {:try_start_126 .. :try_end_132} :catchall_13a

    :catch_132
    move-exception v1

    :goto_133
    :try_start_133
    instance-of v3, v1, Lcom/arrownock/exception/ArrownockException;

    if-eqz v3, :cond_146

    check-cast v1, Lcom/arrownock/exception/ArrownockException;

    throw v1
    :try_end_13a
    .catchall {:try_start_133 .. :try_end_13a} :catchall_13a

    :catchall_13a
    move-exception v1

    :goto_13b
    if-eqz v2, :cond_140

    :try_start_13d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_140
    throw v1
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_141} :catch_141

    :catch_141
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_cf

    :cond_146
    :try_start_146
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8ff

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_152
    .catchall {:try_start_146 .. :try_end_152} :catchall_13a

    :catchall_152
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_13b

    :catch_157
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_133
.end method
