.class final Lan;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lf;

.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lf;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lan;->a:Lf;

    iput-object p2, p0, Lan;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    const/4 v2, 0x0

    :try_start_1
    iget-object v1, p0, Lan;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Z

    move-result v1

    if-eqz v1, :cond_9e

    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lan;->a:Lf;

    iget-object v5, p0, Lan;->a:Lf;

    invoke-static {v5}, Lf;->a(Lf;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lf;->a(Lf;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/im/report_device_id.json?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lan;->a:Lf;

    invoke-static {v4}, Lf;->b(Lf;)Ljava/lang/String;

    move-result-object v4

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
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43} :catch_11c
    .catchall {:try_start_1 .. :try_end_43} :catchall_125

    :try_start_43
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-static {}, Lf;->a()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    iget-object v3, p0, Lan;->a:Lf;

    invoke-static {}, Lf;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lan;->a:Lf;

    invoke-static {}, Lf;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lan;->a:Lf;

    invoke-static {}, Lf;->e()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "BKS"

    invoke-static {v3, v4, v5, v6, v7}, Lat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_6f} :catch_136
    .catchall {:try_start_43 .. :try_end_6f} :catchall_12c

    :goto_6f
    :try_start_6f
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7c} :catch_136
    .catchall {:try_start_6f .. :try_end_7c} :catchall_131

    :try_start_7c
    iget-object v2, p0, Lan;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lan;->a:Lf;

    invoke-static {v3}, Lf;->b(Lf;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbe;->a(Landroid/content/Context;Ljava/lang/String;)Lbe;

    move-result-object v2

    invoke-virtual {v2}, Lbe;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_95} :catch_138
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_95} :catch_136
    .catchall {:try_start_7c .. :try_end_95} :catchall_131

    move-result v3

    if-eqz v3, :cond_d9

    if-eqz v1, :cond_9d

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9d
    :goto_9d
    return-void

    :cond_9e
    :try_start_9e
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lan;->a:Lf;

    iget-object v5, p0, Lan;->a:Lf;

    invoke-static {v5}, Lf;->a(Lf;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lf;->a(Lf;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/im/report_device_id.json?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lan;->a:Lf;

    invoke-static {v4}, Lf;->b(Lf;)Ljava/lang/String;

    move-result-object v4

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
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_d8} :catch_11c
    .catchall {:try_start_9e .. :try_end_d8} :catchall_125

    goto :goto_6f

    :cond_d9
    :try_start_d9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device_id"

    invoke-direct {v4, v5, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "client_id"

    iget-object v5, p0, Lan;->a:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v5, p0, Lan;->a:Lf;

    invoke-static {v3}, Lf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_116} :catch_138
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_116} :catch_136
    .catchall {:try_start_d9 .. :try_end_116} :catchall_131

    :goto_116
    if-eqz v1, :cond_9d

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_9d

    :catch_11c
    move-exception v1

    move-object v1, v2

    :goto_11e
    if-eqz v1, :cond_9d

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_9d

    :catchall_125
    move-exception v1

    :goto_126
    if-eqz v2, :cond_12b

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12b
    throw v1

    :catchall_12c
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_126

    :catchall_131
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_126

    :catch_136
    move-exception v2

    goto :goto_11e

    :catch_138
    move-exception v2

    goto :goto_116
.end method
