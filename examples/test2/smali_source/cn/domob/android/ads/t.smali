.class Lcn/domob/android/ads/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/t$a;,
        Lcn/domob/android/ads/t$b;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/i/f; = null

.field private static b:Ljava/lang/String; = null

.field private static final g:I = 0x5

.field private static final i:I = 0x2710


# instance fields
.field private c:Lcn/domob/android/ads/t$b;

.field private d:Lcn/domob/android/ads/t$a;

.field private e:Landroid/content/Context;

.field private f:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/t;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/t;->a:Lcn/domob/android/i/f;

    .line 25
    const-string v0, "https://api.domob.cn/d"

    sput-object v0, Lcn/domob/android/ads/t;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcn/domob/android/ads/t$b;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/t$b;-><init>(Lcn/domob/android/ads/t;)V

    iput-object v0, p0, Lcn/domob/android/ads/t;->c:Lcn/domob/android/ads/t$b;

    .line 28
    new-instance v0, Lcn/domob/android/ads/t$a;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/t$a;-><init>(Lcn/domob/android/ads/t;)V

    iput-object v0, p0, Lcn/domob/android/ads/t;->d:Lcn/domob/android/ads/t$a;

    .line 30
    iput v2, p0, Lcn/domob/android/ads/t;->f:I

    .line 33
    iput-boolean v2, p0, Lcn/domob/android/ads/t;->h:Z

    .line 37
    iput-object p1, p0, Lcn/domob/android/ads/t;->e:Landroid/content/Context;

    .line 40
    :try_start_19
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/X509TrustManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/domob/android/ads/t;->c:Lcn/domob/android/ads/t$b;

    aput-object v3, v0, v2

    .line 42
    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_30
    .catch Ljava/security/GeneralSecurityException; {:try_start_19 .. :try_end_30} :catch_3f

    .line 46
    :goto_30
    if-eqz v1, :cond_39

    .line 47
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 49
    :cond_39
    iget-object v0, p0, Lcn/domob/android/ads/t;->d:Lcn/domob/android/ads/t$a;

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 50
    return-void

    .line 43
    :catch_3f
    move-exception v0

    .line 44
    sget-object v2, Lcn/domob/android/ads/t;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_30
.end method

.method private a(Ljava/lang/String;ILcn/domob/android/ads/g;)Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x5

    .line 58
    iput p2, p0, Lcn/domob/android/ads/t;->f:I

    .line 61
    const/4 v4, 0x0

    .line 62
    const/4 v5, 0x0

    .line 63
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 65
    :try_start_d
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcn/domob/android/ads/t;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_1a} :catch_254
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_13f
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1a} :catch_1bf
    .catchall {:try_start_d .. :try_end_1a} :catchall_1e3

    .line 66
    const/4 v1, 0x1

    :try_start_1b
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 70
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 71
    const-string v1, "connection"

    const-string v6, "close"

    invoke-virtual {v0, v1, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 73
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 74
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3f
    .catch Ljava/net/MalformedURLException; {:try_start_1b .. :try_end_3f} :catch_25c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_3f} :catch_237
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_3f} :catch_21d
    .catchall {:try_start_1b .. :try_end_3f} :catchall_1fe

    move-result-object v6

    .line 75
    if-nez v6, :cond_61

    .line 76
    :try_start_42
    sget-object v1, Lcn/domob/android/ads/t;->a:Lcn/domob/android/i/f;

    const-string v7, " urlCon.getOutputStream() return null"

    invoke-virtual {v1, v7}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 77
    const-string v1, ""
    :try_end_4b
    .catch Ljava/net/MalformedURLException; {:try_start_42 .. :try_end_4b} :catch_263
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4b} :catch_23f
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_4b} :catch_224
    .catchall {:try_start_42 .. :try_end_4b} :catchall_205

    .line 132
    if-eqz v0, :cond_50

    .line 133
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 136
    :cond_50
    if-eqz v6, :cond_55

    .line 137
    :try_start_52
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 139
    :cond_55
    if-eqz v3, :cond_5a

    .line 140
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 142
    :cond_5a
    if-eqz v3, :cond_5f

    .line 143
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_5f} :catch_27b

    :cond_5f
    :goto_5f
    move-object v0, v1

    .line 148
    :goto_60
    return-object v0

    .line 79
    :cond_61
    :try_start_61
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/OutputStream;->write([B)V

    .line 80
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 81
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 82
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_71
    .catch Ljava/net/MalformedURLException; {:try_start_61 .. :try_end_71} :catch_263
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_71} :catch_23f
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_71} :catch_224
    .catchall {:try_start_61 .. :try_end_71} :catchall_205

    move-result-object v5

    .line 83
    :try_start_72
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7c
    .catch Ljava/net/MalformedURLException; {:try_start_72 .. :try_end_7c} :catch_26a
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7c} :catch_246
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_7c} :catch_22a
    .catchall {:try_start_72 .. :try_end_7c} :catchall_20b

    .line 85
    :goto_7c
    :try_start_7c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b3

    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_85
    .catch Ljava/net/MalformedURLException; {:try_start_7c .. :try_end_85} :catch_86
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_85} :catch_24c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_85} :catch_22f
    .catchall {:try_start_7c .. :try_end_85} :catchall_210

    goto :goto_7c

    .line 106
    :catch_86
    move-exception v1

    move-object v3, v5

    move-object v5, v0

    move-object v0, v2

    move-object v2, v4

    move-object v4, v6

    .line 107
    :goto_8c
    :try_start_8c
    sget-object v6, Lcn/domob/android/ads/t;->a:Lcn/domob/android/i/f;

    invoke-virtual {v6, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 108
    sget-object v1, Lcn/domob/android/ads/t;->a:Lcn/domob/android/i/f;

    iget-object v6, p0, Lcn/domob/android/ads/t;->e:Landroid/content/Context;

    const-string v7, "Https Get MalformedURLException"

    invoke-virtual {v1, v6, v7}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_8c .. :try_end_9a} :catchall_214

    .line 132
    if-eqz v5, :cond_9f

    .line 133
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 136
    :cond_9f
    if-eqz v4, :cond_a4

    .line 137
    :try_start_a1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 139
    :cond_a4
    if-eqz v3, :cond_a9

    .line 140
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 142
    :cond_a9
    if-eqz v2, :cond_ae

    .line 143
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_ae} :catch_251

    .line 148
    :cond_ae
    :goto_ae
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_60

    .line 88
    :cond_b3
    :try_start_b3
    sget-object v1, Lcn/domob/android/ads/t;->a:Lcn/domob/android/i/f;

    const-string v3, "inf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget v1, p0, Lcn/domob/android/ads/t;->f:I

    if-ge v1, v9, :cond_281

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_281

    .line 92
    iget v1, p0, Lcn/domob/android/ads/t;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/domob/android/ads/t;->f:I

    .line 93
    sget-object v1, Lcn/domob/android/ads/t;->a:Lcn/domob/android/i/f;

    const-string v3, "inf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ResponseCode is -1 retry to connect times="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcn/domob/android/ads/t;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget v1, p0, Lcn/domob/android/ads/t;->f:I

    invoke-direct {p0, p1, v1, p3}, Lcn/domob/android/ads/t;->a(Ljava/lang/String;ILcn/domob/android/ads/g;)Ljava/lang/String;

    move-result-object v3

    .line 96
    if-eqz v3, :cond_118

    .line 97
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_117
    .catch Ljava/net/MalformedURLException; {:try_start_b3 .. :try_end_117} :catch_86
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_117} :catch_24c
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_117} :catch_22f
    .catchall {:try_start_b3 .. :try_end_117} :catchall_210

    move-object v2, v1

    .line 99
    :cond_118
    :try_start_118
    iget v1, p0, Lcn/domob/android/ads/t;->f:I

    if-ne v1, v9, :cond_123

    iget-boolean v1, p0, Lcn/domob/android/ads/t;->h:Z

    if-nez v1, :cond_123

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/domob/android/ads/t;->h:Z
    :try_end_123
    .catch Ljava/net/MalformedURLException; {:try_start_118 .. :try_end_123} :catch_273
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_123} :catch_24c
    .catch Ljava/lang/Throwable; {:try_start_118 .. :try_end_123} :catch_233
    .catchall {:try_start_118 .. :try_end_123} :catchall_210

    :cond_123
    move-object v1, v2

    .line 132
    :goto_124
    if-eqz v0, :cond_129

    .line 133
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 136
    :cond_129
    if-eqz v6, :cond_12e

    .line 137
    :try_start_12b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 139
    :cond_12e
    if-eqz v5, :cond_133

    .line 140
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 142
    :cond_133
    if-eqz v4, :cond_138

    .line 143
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_138
    .catch Ljava/lang/Throwable; {:try_start_12b .. :try_end_138} :catch_13b

    :cond_138
    move-object v0, v1

    .line 146
    goto/16 :goto_ae

    .line 145
    :catch_13b
    move-exception v0

    move-object v0, v1

    .line 147
    goto/16 :goto_ae

    .line 109
    :catch_13f
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 111
    :goto_143
    :try_start_143
    iget v1, p0, Lcn/domob/android/ads/t;->f:I

    if-ge v1, v9, :cond_19a

    .line 112
    iget v0, p0, Lcn/domob/android/ads/t;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/domob/android/ads/t;->f:I

    .line 113
    sget-object v0, Lcn/domob/android/ads/t;->a:Lcn/domob/android/i/f;

    const-string v1, "inf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connect get an IOException retry to connecttimes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcn/domob/android/ads/t;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget v0, p0, Lcn/domob/android/ads/t;->f:I

    invoke-direct {p0, p1, v0, p3}, Lcn/domob/android/ads/t;->a(Ljava/lang/String;ILcn/domob/android/ads/g;)Ljava/lang/String;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_27e

    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 119
    :goto_176
    iget v1, p0, Lcn/domob/android/ads/t;->f:I

    if-ne v1, v9, :cond_181

    iget-boolean v1, p0, Lcn/domob/android/ads/t;->h:Z

    if-nez v1, :cond_181

    .line 123
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/domob/android/ads/t;->h:Z
    :try_end_181
    .catchall {:try_start_143 .. :try_end_181} :catchall_21b

    .line 132
    :cond_181
    :goto_181
    if-eqz v3, :cond_186

    .line 133
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 136
    :cond_186
    if-eqz v6, :cond_18b

    .line 137
    :try_start_188
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 139
    :cond_18b
    if-eqz v5, :cond_190

    .line 140
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 142
    :cond_190
    if-eqz v4, :cond_ae

    .line 143
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_195
    .catch Ljava/lang/Throwable; {:try_start_188 .. :try_end_195} :catch_197

    goto/16 :goto_ae

    .line 145
    :catch_197
    move-exception v1

    goto/16 :goto_ae

    .line 126
    :cond_19a
    :try_start_19a
    sget-object v1, Lcn/domob/android/ads/t;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 127
    sget-object v1, Lcn/domob/android/ads/t;->a:Lcn/domob/android/i/f;

    iget-object v7, p0, Lcn/domob/android/ads/t;->e:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Https Get IOException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_181

    .line 129
    :catch_1bf
    move-exception v0

    move-object v1, v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v0, v2

    .line 130
    :goto_1c5
    sget-object v2, Lcn/domob/android/ads/t;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_1ca
    .catchall {:try_start_19a .. :try_end_1ca} :catchall_21b

    .line 132
    if-eqz v3, :cond_1cf

    .line 133
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 136
    :cond_1cf
    if-eqz v6, :cond_1d4

    .line 137
    :try_start_1d1
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 139
    :cond_1d4
    if-eqz v5, :cond_1d9

    .line 140
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 142
    :cond_1d9
    if-eqz v4, :cond_ae

    .line 143
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1de
    .catch Ljava/lang/Throwable; {:try_start_1d1 .. :try_end_1de} :catch_1e0

    goto/16 :goto_ae

    .line 145
    :catch_1e0
    move-exception v1

    goto/16 :goto_ae

    .line 132
    :catchall_1e3
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_1e7
    if-eqz v3, :cond_1ec

    .line 133
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 136
    :cond_1ec
    if-eqz v6, :cond_1f1

    .line 137
    :try_start_1ee
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 139
    :cond_1f1
    if-eqz v5, :cond_1f6

    .line 140
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 142
    :cond_1f6
    if-eqz v4, :cond_1fb

    .line 143
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1fb
    .catch Ljava/lang/Throwable; {:try_start_1ee .. :try_end_1fb} :catch_1fc

    .line 146
    :cond_1fb
    :goto_1fb
    throw v0

    .line 145
    :catch_1fc
    move-exception v1

    goto :goto_1fb

    .line 132
    :catchall_1fe
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_1e7

    :catchall_205
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_1e7

    :catchall_20b
    move-exception v1

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_1e7

    :catchall_210
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_1e7

    :catchall_214
    move-exception v0

    move-object v6, v4

    move-object v4, v2

    move-object v10, v3

    move-object v3, v5

    move-object v5, v10

    goto :goto_1e7

    :catchall_21b
    move-exception v0

    goto :goto_1e7

    .line 129
    :catch_21d
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v2

    goto :goto_1c5

    :catch_224
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v2

    goto :goto_1c5

    :catch_22a
    move-exception v1

    move-object v4, v3

    move-object v3, v0

    move-object v0, v2

    goto :goto_1c5

    :catch_22f
    move-exception v1

    move-object v3, v0

    move-object v0, v2

    goto :goto_1c5

    :catch_233
    move-exception v1

    move-object v3, v0

    move-object v0, v2

    goto :goto_1c5

    .line 109
    :catch_237
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_143

    :catch_23f
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_143

    :catch_246
    move-exception v1

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_143

    :catch_24c
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_143

    .line 145
    :catch_251
    move-exception v1

    goto/16 :goto_ae

    .line 106
    :catch_254
    move-exception v0

    move-object v1, v0

    move-object v4, v3

    move-object v5, v3

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_8c

    :catch_25c
    move-exception v1

    move-object v4, v3

    move-object v5, v0

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_8c

    :catch_263
    move-exception v1

    move-object v4, v6

    move-object v5, v0

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_8c

    :catch_26a
    move-exception v1

    move-object v4, v6

    move-object v10, v3

    move-object v3, v5

    move-object v5, v0

    move-object v0, v2

    move-object v2, v10

    goto/16 :goto_8c

    :catch_273
    move-exception v1

    move-object v3, v5

    move-object v5, v0

    move-object v0, v2

    move-object v2, v4

    move-object v4, v6

    goto/16 :goto_8c

    .line 145
    :catch_27b
    move-exception v0

    goto/16 :goto_5f

    :cond_27e
    move-object v0, v2

    goto/16 :goto_176

    :cond_281
    move-object v1, v2

    goto/16 :goto_124
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcn/domob/android/ads/g;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 53
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcn/domob/android/ads/t;->a(Ljava/lang/String;ILcn/domob/android/ads/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
