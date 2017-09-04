.class final Lak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic a:Lcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;

.field private synthetic a:Lf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic a:Ljava/util/List;

.field private synthetic a:Z


# direct methods
.method constructor <init>(Lf;ILjava/lang/String;ZLjava/util/List;Lcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;)V
    .registers 7

    iput-object p1, p0, Lak;->a:Lf;

    iput p2, p0, Lak;->a:I

    iput-object p3, p0, Lak;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lak;->a:Z

    iput-object p5, p0, Lak;->a:Ljava/util/List;

    iput-object p6, p0, Lak;->a:Lcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    const/4 v3, 0x0

    const/4 v9, 0x1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lak;->a:Lf;

    iget-object v4, p0, Lak;->a:Lf;

    invoke-static {v4}, Lf;->a(Lf;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lf;->a(Lf;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "/v1/im/signed_push_settings.json?key="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lak;->a:Lf;

    invoke-static {v4}, Lf;->b(Lf;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lak;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Z

    move-result v2

    if-eqz v2, :cond_14f

    new-instance v2, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_58} :catch_2c4
    .catchall {:try_start_2 .. :try_end_58} :catchall_2bc

    :try_start_58
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-static {}, Lf;->a()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    iget-object v4, p0, Lak;->a:Lf;

    invoke-static {}, Lf;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lak;->a:Lf;

    invoke-static {}, Lf;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lak;->a:Lf;

    invoke-static {}, Lf;->e()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, "BKS"

    invoke-static {v4, v5, v6, v7, v8}, Lat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_84} :catch_2c8
    .catchall {:try_start_58 .. :try_end_84} :catchall_2bf

    move-object v2, v1

    :goto_85
    :try_start_85
    const-string v1, "POST"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "type"

    iget v7, p0, Lak;->a:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "client"

    iget-object v7, p0, Lak;->a:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "date"

    invoke-direct {v1, v6, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "service"

    const-string v7, "anpush"

    invoke-direct {v1, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lak;->a:I

    packed-switch v1, :pswitch_data_2ce

    :goto_e0
    const-string v1, "HmacSHA1"
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_e2} :catch_1e6
    .catchall {:try_start_85 .. :try_end_e2} :catchall_26a

    :try_start_e2
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "lLgweiDSIdEosPeFW3jfeOQOwe83wfwef42ytHSOI9wwiwelQVWE"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v4, v6, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "signature"

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_10b} :catch_25d
    .catchall {:try_start_e2 .. :try_end_10b} :catchall_26a

    :try_start_10b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v4, v1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v4, p0, Lak;->a:Lf;

    invoke-static {v5}, Lf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_12d} :catch_1e6
    .catchall {:try_start_10b .. :try_end_12d} :catchall_26a

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_271

    :try_start_132
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v3, p0, Lak;->a:Lf;

    invoke-static {v1}, Lf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    iget-object v1, p0, Lak;->a:Lcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;

    if-eqz v1, :cond_149

    iget-object v1, p0, Lak;->a:Lcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;

    invoke-interface {v1}, Lcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;->onSuccess()V
    :try_end_149
    .catch Lorg/json/JSONException; {:try_start_132 .. :try_end_149} :catch_299
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_149} :catch_1e6
    .catchall {:try_start_132 .. :try_end_149} :catchall_26a

    :cond_149
    if-eqz v2, :cond_14e

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14e
    :goto_14e
    return-void

    :cond_14f
    :try_start_14f
    new-instance v2, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_16d} :catch_2c4
    .catchall {:try_start_14f .. :try_end_16d} :catchall_2bc

    move-object v2, v1

    goto/16 :goto_85

    :pswitch_170
    :try_start_170
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "value"

    iget-boolean v6, p0, Lak;->a:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "/v1/im/signed_push_settings.jsonclient="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lak;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&date="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lak;->a:Lf;

    invoke-static {v3}, Lf;->b(Lf;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&service=anpush&type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lak;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lak;->a:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_e0

    :pswitch_1c5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lak;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1d0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1fd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_1e5} :catch_1e6
    .catchall {:try_start_170 .. :try_end_1e5} :catchall_26a

    goto :goto_1d0

    :catch_1e6
    move-exception v1

    :goto_1e7
    :try_start_1e7
    instance-of v3, v1, Lcom/arrownock/exception/ArrownockException;

    if-eqz v3, :cond_2a6

    iget-object v3, p0, Lak;->a:Lcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;

    if-eqz v3, :cond_1f6

    iget-object v3, p0, Lak;->a:Lcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;

    check-cast v1, Lcom/arrownock/exception/ArrownockException;

    invoke-interface {v3, v1}, Lcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V
    :try_end_1f6
    .catchall {:try_start_1e7 .. :try_end_1f6} :catchall_26a

    :cond_1f6
    :goto_1f6
    if-eqz v2, :cond_14e

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_14e

    :cond_1fd
    :try_start_1fd
    const-string v1, ""

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v9, :cond_210

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v1, v6}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_210
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "value"

    invoke-direct {v3, v6, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "/v1/im/signed_push_settings.jsonclient="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lak;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "&date="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lak;->a:Lf;

    invoke-static {v4}, Lf;->b(Lf;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&service=anpush&type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lak;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_e0

    :catch_25d
    move-exception v1

    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x83b

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_26a
    .catch Ljava/lang/Exception; {:try_start_1fd .. :try_end_26a} :catch_1e6
    .catchall {:try_start_1fd .. :try_end_26a} :catchall_26a

    :catchall_26a
    move-exception v1

    :goto_26b
    if-eqz v2, :cond_270

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_270
    throw v1

    :cond_271
    :try_start_271
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v3, p0, Lak;->a:Lf;

    invoke-static {v1}, Lf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "meta"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    const-string v4, "message"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x844

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_299
    .catch Lorg/json/JSONException; {:try_start_271 .. :try_end_299} :catch_299
    .catch Ljava/lang/Exception; {:try_start_271 .. :try_end_299} :catch_1e6
    .catchall {:try_start_271 .. :try_end_299} :catchall_26a

    :catch_299
    move-exception v1

    :try_start_29a
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x844

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_2a6
    .catch Ljava/lang/Exception; {:try_start_29a .. :try_end_2a6} :catch_1e6
    .catchall {:try_start_29a .. :try_end_2a6} :catchall_26a

    :cond_2a6
    :try_start_2a6
    iget-object v3, p0, Lak;->a:Lcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;

    if-eqz v3, :cond_1f6

    iget-object v3, p0, Lak;->a:Lcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;

    new-instance v4, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x844

    invoke-direct {v4, v1, v5}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Lcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V
    :try_end_2ba
    .catchall {:try_start_2a6 .. :try_end_2ba} :catchall_26a

    goto/16 :goto_1f6

    :catchall_2bc
    move-exception v1

    move-object v2, v3

    goto :goto_26b

    :catchall_2bf
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_26b

    :catch_2c4
    move-exception v1

    move-object v2, v3

    goto/16 :goto_1e7

    :catch_2c8
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto/16 :goto_1e7

    :pswitch_data_2ce
    .packed-switch 0x1
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_1c5
        :pswitch_1c5
        :pswitch_170
    .end packed-switch
.end method
