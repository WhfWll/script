.class public final Ldf;
.super Ljava/lang/Object;

# interfaces
.implements Ldy;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final a:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/arrownock/push/AnPush;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldf;->a:Ljava/lang/String;

    new-instance v0, Lcn;

    invoke-direct {v0}, Lcn;-><init>()V

    sput-object v0, Ldf;->a:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldf;->a:Landroid/content/Context;

    iput-object p1, p0, Ldf;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not get package name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic a(Ldf;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ldf;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ldf;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2b} :catch_2c
    .catchall {:try_start_f .. :try_end_2b} :catchall_46

    goto :goto_f

    :catch_2c
    move-exception v0

    :try_start_2d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_46

    :try_start_30
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_41

    :goto_33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    :try_start_38
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_33

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    :catchall_46
    move-exception v0

    :try_start_47
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    :goto_4a
    throw v0

    :catch_4b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    if-eqz v1, :cond_3a

    const/4 v1, 0x0

    :goto_1a
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_3a
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "key"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_2b
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_33

    :cond_66
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_78

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_77
    return-object v0

    :cond_78
    const-string v0, ""

    goto :goto_77
.end method

.method private static a(Landroid/content/Context;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_d
    const-string v2, "phone_model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "manufacturer"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sdk_version"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "release_version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "network_operator"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "network_type"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sim_operator"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4c} :catch_4d

    :goto_4c
    return-object v1

    :catch_4d
    move-exception v0

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v2

    sget-object v3, Ldf;->a:Ljava/lang/String;

    const-string v4, "Error on getPhoneStatus()"

    invoke-virtual {v2, v3, v4, v0}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4c
.end method

.method private a(Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v11, 0x1f7

    const/16 v10, 0x190

    const/16 v9, 0xc8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :try_start_c
    iget-object v1, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v1

    invoke-virtual {v1}, Lcom/arrownock/push/AnPush;->isSecureConnection()Z

    move-result v1

    if-eqz v1, :cond_98

    new-instance v1, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_32} :catch_e9
    .catchall {:try_start_c .. :try_end_32} :catchall_142

    :try_start_32
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    sget-object v4, Ldf;->a:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-direct {p0}, Ldf;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Ldf;->g()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Ldf;->h()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, "BKS"

    invoke-static {v4, v5, v6, v7, v8}, Lat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_56} :catch_168
    .catchall {:try_start_32 .. :try_end_56} :catchall_163

    move-object v2, v1

    :goto_57
    :try_start_57
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    if-ne v1, v9, :cond_b4

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Ldf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "device_token"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "valid"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "status"

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "token"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_92} :catch_e9
    .catchall {:try_start_57 .. :try_end_92} :catchall_142

    :goto_92
    if-eqz v2, :cond_97

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_97
    :goto_97
    return-object v3

    :cond_98
    :try_start_98
    new-instance v1, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    move-object v2, v1

    goto :goto_57

    :cond_b4
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v4}, Ldf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    if-ne v1, v10, :cond_109

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "message"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "valid"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "status"

    const/16 v5, 0x190

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "message"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_e8} :catch_e9
    .catchall {:try_start_98 .. :try_end_e8} :catchall_142

    goto :goto_92

    :catch_e9
    move-exception v1

    :goto_ea
    :try_start_ea
    const-string v4, "valid"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "status"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "exception"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_103
    .catchall {:try_start_ea .. :try_end_103} :catchall_142

    if-eqz v2, :cond_97

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_97

    :cond_109
    if-ne v1, v11, :cond_149

    :try_start_10b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "message"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "retry_after"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v5, "valid"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "status"

    const/16 v6, 0x1f7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "message"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "retry_after"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_140} :catch_e9
    .catchall {:try_start_10b .. :try_end_140} :catchall_142

    goto/16 :goto_92

    :catchall_142
    move-exception v1

    :goto_143
    if-eqz v2, :cond_148

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_148
    throw v1

    :cond_149
    :try_start_149
    const-string v5, "valid"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "status"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_161} :catch_e9
    .catchall {:try_start_149 .. :try_end_161} :catchall_142

    goto/16 :goto_92

    :catchall_163
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_143

    :catch_168
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_ea
.end method

.method static synthetic a(Ldf;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const/4 v8, 0x0

    :try_start_1
    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->a()Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Ldf;->a:Landroid/content/Context;

    const-class v2, Lcom/arrownock/push/PushService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "AN.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Ldf;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_3b
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_1 .. :try_end_3b} :catch_81

    :cond_3b
    sget-object v0, Ldf;->a:Ljava/lang/String;

    const-string v1, "Cancel AlarmManagers for start/stop connection ...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Ldf;->a:Landroid/content/Context;

    const-class v2, Lcom/arrownock/push/PushService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "AN.STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v1, v8, v0, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Ldf;->a:Landroid/content/Context;

    const-class v4, Lcom/arrownock/push/PushService;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "AN.START"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v3, v8, v2, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void

    :catch_81
    move-exception v0

    throw v0
.end method

.method static synthetic a(Ldf;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const-string v0, "GCM_REG_ID"

    invoke-virtual {p0, v0, p2}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GCM_SENDER_ID"

    iget-object v1, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v1

    invoke-virtual {v1}, Lcom/arrownock/push/AnPush;->getSenderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ldf;->a(Landroid/content/Context;)I

    move-result v0

    const-string v1, "GCM_REG_VERSION_CODE"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ldf;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    return-void
.end method

.method static synthetic a(Ldf;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    iget-object v1, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v1

    invoke-virtual {v1}, Lcom/arrownock/push/AnPush;->isSecureConnection()Z

    move-result v1

    if-eqz v1, :cond_172

    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ldf;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/push_notification/signed_set_badge.json?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_163
    .catchall {:try_start_1 .. :try_end_39} :catchall_16b

    :try_start_39
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    sget-object v3, Ldf;->a:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-direct {p0}, Ldf;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Ldf;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Ldf;->h()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "BKS"

    invoke-static {v3, v4, v5, v6, v7}, Lat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5d} :catch_1c5
    .catchall {:try_start_39 .. :try_end_5d} :catchall_1c0

    move-object v2, v1

    :goto_5e
    :try_start_5e
    const-string v1, "POST"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6b} :catch_163
    .catchall {:try_start_5e .. :try_end_6b} :catchall_16b

    :try_start_6b
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device_token"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "date"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "badge"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/v1/push_notification/signed_set_badge.jsonbadge="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&date="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&device_token="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&key="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "HmacSHA1"
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_d3} :catch_156
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_d3} :catch_163
    .catchall {:try_start_6b .. :try_end_d3} :catchall_16b

    :try_start_d3
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0}, Ldf;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signature"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_fe} :catch_1a1
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_fe} :catch_156
    .catchall {:try_start_d3 .. :try_end_fe} :catchall_16b

    :try_start_fe
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, v1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v3}, Ldf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_11e} :catch_156
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_11e} :catch_163
    .catchall {:try_start_fe .. :try_end_11e} :catchall_16b

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1ae

    :try_start_123
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Ldf;->a(Ljava/io/InputStream;)Ljava/lang/String;

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

    const/16 v4, 0x7d9

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_149
    .catch Lorg/json/JSONException; {:try_start_123 .. :try_end_149} :catch_149
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_149} :catch_156
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_149} :catch_163
    .catchall {:try_start_123 .. :try_end_149} :catchall_16b

    :catch_149
    move-exception v1

    :try_start_14a
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d9

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_156} :catch_156
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_156} :catch_163
    .catchall {:try_start_14a .. :try_end_156} :catchall_16b

    :catch_156
    move-exception v1

    :try_start_157
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d9

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_163} :catch_163
    .catchall {:try_start_157 .. :try_end_163} :catchall_16b

    :catch_163
    move-exception v1

    :goto_164
    :try_start_164
    instance-of v3, v1, Lcom/arrownock/exception/ArrownockException;

    if-eqz v3, :cond_1b4

    check-cast v1, Lcom/arrownock/exception/ArrownockException;

    throw v1
    :try_end_16b
    .catchall {:try_start_164 .. :try_end_16b} :catchall_16b

    :catchall_16b
    move-exception v1

    :goto_16c
    if-eqz v2, :cond_171

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_171
    throw v1

    :cond_172
    :try_start_172
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ldf;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/push_notification/signed_set_badge.json?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_19e} :catch_163
    .catchall {:try_start_172 .. :try_end_19e} :catchall_16b

    move-object v2, v1

    goto/16 :goto_5e

    :catch_1a1
    move-exception v1

    :try_start_1a2
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d9

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1ae
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1ae} :catch_156
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1ae} :catch_163
    .catchall {:try_start_1a2 .. :try_end_1ae} :catchall_16b

    :cond_1ae
    if-eqz v2, :cond_1b3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1b3
    return-void

    :cond_1b4
    :try_start_1b4
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d9

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1c0
    .catchall {:try_start_1b4 .. :try_end_1c0} :catchall_16b

    :catchall_1c0
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_16c

    :catch_1c5
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_164
.end method

.method static synthetic a(Ldf;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;ZIII)V

    return-void
.end method

.method static synthetic a(Ldf;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    return-void
.end method

.method static synthetic a(Ldf;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;ZIII)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IIIZZ)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    iget-object v1, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v1

    invoke-virtual {v1}, Lcom/arrownock/push/AnPush;->isSecureConnection()Z

    move-result v1

    if-eqz v1, :cond_1e8

    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ldf;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/push_notification/signed_silent_period.json?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_1d9
    .catchall {:try_start_1 .. :try_end_39} :catchall_1e1

    :try_start_39
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    sget-object v3, Ldf;->a:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-direct {p0}, Ldf;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Ldf;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Ldf;->h()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "BKS"

    invoke-static {v3, v4, v5, v6, v7}, Lat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5d} :catch_2e0
    .catchall {:try_start_39 .. :try_end_5d} :catchall_2da

    move-object v2, v1

    :goto_5e
    :try_start_5e
    const-string v1, "POST"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6b} :catch_1d9
    .catchall {:try_start_5e .. :try_end_6b} :catchall_1e1

    :try_start_6b
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device_token"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "date"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p7, :cond_284

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "hour"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "minute"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "duration"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "set"

    const-string v6, "true"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_217

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "resend"

    const-string v6, "true"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/v1/push_notification/signed_silent_period.jsondate="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&device_token="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&duration="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&hour="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&key="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&minute="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&resend=true&set=true"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_147
    const-string v4, "HmacSHA1"
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_149} :catch_1cc
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_149} :catch_1d9
    .catchall {:try_start_6b .. :try_end_149} :catchall_1e1

    :try_start_149
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0}, Ldf;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signature"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_174} :catch_2bb
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_174} :catch_1cc
    .catchall {:try_start_149 .. :try_end_174} :catchall_1e1

    :try_start_174
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, v1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v3}, Ldf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_194
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_194} :catch_1cc
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_194} :catch_1d9
    .catchall {:try_start_174 .. :try_end_194} :catchall_1e1

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_2c8

    :try_start_199
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Ldf;->a(Ljava/io/InputStream;)Ljava/lang/String;

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

    const/16 v4, 0x7d7

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1bf
    .catch Lorg/json/JSONException; {:try_start_199 .. :try_end_1bf} :catch_1bf
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_1bf} :catch_1cc
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_1bf} :catch_1d9
    .catchall {:try_start_199 .. :try_end_1bf} :catchall_1e1

    :catch_1bf
    move-exception v1

    :try_start_1c0
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d7

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c0 .. :try_end_1cc} :catch_1cc
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1cc} :catch_1d9
    .catchall {:try_start_1c0 .. :try_end_1cc} :catchall_1e1

    :catch_1cc
    move-exception v1

    :try_start_1cd
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d7

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_1d9} :catch_1d9
    .catchall {:try_start_1cd .. :try_end_1d9} :catchall_1e1

    :catch_1d9
    move-exception v1

    :goto_1da
    :try_start_1da
    instance-of v3, v1, Lcom/arrownock/exception/ArrownockException;

    if-eqz v3, :cond_2ce

    check-cast v1, Lcom/arrownock/exception/ArrownockException;

    throw v1
    :try_end_1e1
    .catchall {:try_start_1da .. :try_end_1e1} :catchall_1e1

    :catchall_1e1
    move-exception v1

    :goto_1e2
    if-eqz v2, :cond_1e7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1e7
    throw v1

    :cond_1e8
    :try_start_1e8
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ldf;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/push_notification/signed_silent_period.json?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_214} :catch_1d9
    .catchall {:try_start_1e8 .. :try_end_214} :catchall_1e1

    move-object v2, v1

    goto/16 :goto_5e

    :cond_217
    :try_start_217
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "resend"

    const-string v6, "false"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/v1/push_notification/signed_silent_period.jsondate="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&device_token="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&duration="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&hour="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&key="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&minute="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&resend=false&set=true"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_147

    :cond_284
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "set"

    const-string v6, "false"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/v1/push_notification/signed_silent_period.jsondate="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&device_token="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&key="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&set=false"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_147

    :catch_2bb
    move-exception v1

    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d7

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_2c8
    .catch Ljava/io/IOException; {:try_start_217 .. :try_end_2c8} :catch_1cc
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_2c8} :catch_1d9
    .catchall {:try_start_217 .. :try_end_2c8} :catchall_1e1

    :cond_2c8
    if-eqz v2, :cond_2cd

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2cd
    return-void

    :cond_2ce
    :try_start_2ce
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d7

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_2da
    .catchall {:try_start_2ce .. :try_end_2da} :catchall_1e1

    :catchall_2da
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_1e2

    :catch_2e0
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_1da
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZIII)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v2, 0x0

    :try_start_2
    iget-object v1, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v1

    invoke-virtual {v1}, Lcom/arrownock/push/AnPush;->isSecureConnection()Z

    move-result v1

    if-eqz v1, :cond_1a9

    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ldf;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/push_notification/signed_mute.json?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_19a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_1a2

    :try_start_3a
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    sget-object v3, Ldf;->a:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-direct {p0}, Ldf;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Ldf;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Ldf;->h()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "BKS"

    invoke-static {v3, v4, v5, v6, v7}, Lat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5e} :catch_291
    .catchall {:try_start_3a .. :try_end_5e} :catchall_28b

    move-object v2, v1

    :goto_5f
    :try_start_5f
    const-string v1, "POST"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6c} :catch_19a
    .catchall {:try_start_5f .. :try_end_6c} :catchall_1a2

    :try_start_6c
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device_token"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "date"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p4, v8, :cond_cf

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "hour"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "minute"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "duration"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_cf
    if-eqz p3, :cond_235

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mute"

    const-string v6, "true"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne p4, v8, :cond_1d8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/v1/push_notification/signed_mute.jsondate="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&device_token="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&key="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&mute=true"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_108
    const-string v4, "HmacSHA1"
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_10a} :catch_18d
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_10a} :catch_19a
    .catchall {:try_start_6c .. :try_end_10a} :catchall_1a2

    :try_start_10a
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0}, Ldf;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signature"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_135} :catch_26c
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_135} :catch_18d
    .catchall {:try_start_10a .. :try_end_135} :catchall_1a2

    :try_start_135
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, v1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v3}, Ldf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_155} :catch_18d
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_155} :catch_19a
    .catchall {:try_start_135 .. :try_end_155} :catchall_1a2

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_279

    :try_start_15a
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Ldf;->a(Ljava/io/InputStream;)Ljava/lang/String;

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

    const/16 v4, 0x7d6

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_180
    .catch Lorg/json/JSONException; {:try_start_15a .. :try_end_180} :catch_180
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_180} :catch_18d
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_180} :catch_19a
    .catchall {:try_start_15a .. :try_end_180} :catchall_1a2

    :catch_180
    move-exception v1

    :try_start_181
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d6

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_18d} :catch_18d
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_18d} :catch_19a
    .catchall {:try_start_181 .. :try_end_18d} :catchall_1a2

    :catch_18d
    move-exception v1

    :try_start_18e
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d6

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_19a} :catch_19a
    .catchall {:try_start_18e .. :try_end_19a} :catchall_1a2

    :catch_19a
    move-exception v1

    :goto_19b
    :try_start_19b
    instance-of v3, v1, Lcom/arrownock/exception/ArrownockException;

    if-eqz v3, :cond_27f

    check-cast v1, Lcom/arrownock/exception/ArrownockException;

    throw v1
    :try_end_1a2
    .catchall {:try_start_19b .. :try_end_1a2} :catchall_1a2

    :catchall_1a2
    move-exception v1

    :goto_1a3
    if-eqz v2, :cond_1a8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1a8
    throw v1

    :cond_1a9
    :try_start_1a9
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ldf;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/push_notification/signed_mute.json?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1d5} :catch_19a
    .catchall {:try_start_1a9 .. :try_end_1d5} :catchall_1a2

    move-object v2, v1

    goto/16 :goto_5f

    :cond_1d8
    :try_start_1d8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/v1/push_notification/signed_mute.jsondate="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&device_token="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&duration="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&hour="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&key="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&minute="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&mute=true"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_108

    :cond_235
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mute"

    const-string v6, "false"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/v1/push_notification/signed_mute.jsondate="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&device_token="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&key="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&mute=false"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_108

    :catch_26c
    move-exception v1

    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d6

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_279
    .catch Ljava/io/IOException; {:try_start_1d8 .. :try_end_279} :catch_18d
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_279} :catch_19a
    .catchall {:try_start_1d8 .. :try_end_279} :catchall_1a2

    :cond_279
    if-eqz v2, :cond_27e

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_27e
    return-void

    :cond_27f
    :try_start_27f
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d6

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_28b
    .catchall {:try_start_27f .. :try_end_28b} :catchall_1a2

    :catchall_28b
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_1a3

    :catch_291
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_19b
.end method

.method static synthetic a(Ldf;)Z
    .registers 2

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Ldf;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/16 v12, 0x7d3

    const-string v0, "deviceToken"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29e

    if-nez p2, :cond_106

    :try_start_18
    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_ea

    move-result-object p2

    :goto_26
    if-eqz p2, :cond_3c

    const-string v0, "000000000000000"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    :cond_3c
    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_56

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    :cond_56
    const-string p2, "000000000000000"

    sget-object v0, Ldx;->c:Ldx;

    invoke-virtual {v0}, Ldx;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ldf;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/v1/push_notification/device_token.json?key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ldf;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&client_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v0}, Ldf;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "&"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b7

    :catch_ea
    move-exception v0

    move-object p2, v4

    goto/16 :goto_26

    :cond_ee
    sget-object v0, Ldx;->b:Ldx;

    invoke-virtual {v0}, Ldx;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_62

    :cond_fa
    sget-object v0, Ldx;->a:Ldx;

    invoke-virtual {v0}, Ldx;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_62

    :cond_106
    sget-object v0, Ldx;->d:Ldx;

    invoke-virtual {v0}, Ldx;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_62

    :cond_10e
    const-string v0, "&version=2.25.3"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v0, v1

    move-object v3, v2

    :goto_119
    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27e

    add-int/lit8 v2, v0, 0x1

    const/4 v0, 0x5

    if-gt v2, v0, :cond_27e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "&requesttime="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldf;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    const-string v0, "valid"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    move v0, v5

    :goto_152
    if-eqz v0, :cond_163

    const-string v0, "token"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v2

    goto :goto_119

    :cond_161
    move v0, v1

    goto :goto_152

    :cond_163
    const-string v0, "status"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v0, 0x1f7

    if-ne v9, v0, :cond_1e5

    const-string v0, "message"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :try_start_17d
    const-string v0, "retry_after"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_188} :catch_1d8

    move-result v0

    :goto_189
    if-gtz v0, :cond_18c

    const/4 v0, 0x5

    :cond_18c
    const/16 v8, 0x708

    if-le v0, v8, :cond_192

    const/16 v0, 0x708

    :cond_192
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Getting device token failed. StatusCode:"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Message:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Will try again in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " seconds."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v9

    sget-object v10, Ldf;->a:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Lbk;->c(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    :try_start_1c7
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->a()Z
    :try_end_1d3
    .catch Ljava/lang/InterruptedException; {:try_start_1c7 .. :try_end_1d3} :catch_1de

    move-result v0

    if-nez v0, :cond_1db

    move-object v3, v4

    :goto_1d7
    return-object v3

    :catch_1d8
    move-exception v0

    move v0, v6

    goto :goto_189

    :cond_1db
    move v0, v2

    goto/16 :goto_119

    :catch_1de
    move-exception v0

    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    invoke-direct {v1, v0, v12}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/Exception;I)V

    throw v1

    :cond_1e5
    const/16 v0, 0x190

    if-ne v9, v0, :cond_202

    const-string v0, "message"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    sget-object v2, Ldf;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lbk;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    invoke-direct {v1, v0, v12}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_202
    if-ne v9, v6, :cond_22e

    const-string v0, "exception"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    sget-object v2, Ldf;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ". Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    invoke-direct {v1, v0, v12}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/Exception;I)V

    throw v1

    :cond_22e
    const-string v0, "data"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Getting device token failed. StatusCode:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Raw Data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ". Will try again in 5 seconds."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v8

    sget-object v9, Ldf;->a:Ljava/lang/String;

    invoke-virtual {v8, v9, v0}, Lbk;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x1388

    :try_start_262
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->a()Z
    :try_end_26e
    .catch Ljava/lang/InterruptedException; {:try_start_262 .. :try_end_26e} :catch_277

    move-result v0

    if-nez v0, :cond_274

    move-object v3, v4

    goto/16 :goto_1d7

    :cond_274
    move v0, v2

    goto/16 :goto_119

    :catch_277
    move-exception v0

    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    invoke-direct {v1, v0, v12}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/Exception;I)V

    throw v1

    :cond_27e
    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28d

    const-string v0, "deviceToken"

    invoke-virtual {p0, v0, v3}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d7

    :cond_28d
    const-string v0, "Retry time limit reached"

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    sget-object v2, Ldf;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lbk;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    invoke-direct {v1, v0, v12}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_29e
    move-object v3, v2

    goto/16 :goto_1d7
.end method

.method private b(Ljava/lang/String;)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v12, 0x193

    const/16 v11, 0x190

    const/16 v10, 0xc8

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :try_start_c
    iget-object v2, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v2

    invoke-virtual {v2}, Lcom/arrownock/push/AnPush;->isSecureConnection()Z

    move-result v2

    if-eqz v2, :cond_cb

    new-instance v2, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_32} :catch_11d
    .catchall {:try_start_c .. :try_end_32} :catchall_176

    :try_start_32
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    sget-object v5, Ldf;->a:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    invoke-direct {p0}, Ldf;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Ldf;->g()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Ldf;->h()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, "BKS"

    invoke-static {v5, v6, v7, v8, v9}, Lat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_56} :catch_1d7
    .catchall {:try_start_32 .. :try_end_56} :catchall_1d2

    move-object v3, v2

    :goto_57
    :try_start_57
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    if-ne v2, v10, :cond_e8

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Ldf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "hostname"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "port"

    const/16 v7, 0x75b

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "secure_port"

    const/16 v8, 0x22b3

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "expiration"

    const-wide/16 v10, 0x0

    invoke-virtual {v5, v8, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v5, "valid"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v4, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "status"

    const/16 v10, 0xc8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "hostname"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "port"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "secure_port"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "expiration"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_c5} :catch_11d
    .catchall {:try_start_57 .. :try_end_c5} :catchall_176

    :goto_c5
    if-eqz v3, :cond_ca

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ca
    :goto_ca
    return-object v4

    :cond_cb
    :try_start_cb
    new-instance v2, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    move-object v3, v2

    goto/16 :goto_57

    :cond_e8
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v5}, Ldf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    if-ne v2, v11, :cond_13d

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "message"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "valid"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "status"

    const/16 v6, 0x190

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "message"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_11c} :catch_11d
    .catchall {:try_start_cb .. :try_end_11c} :catchall_176

    goto :goto_c5

    :catch_11d
    move-exception v2

    :goto_11e
    :try_start_11e
    const-string v5, "valid"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "status"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "exception"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_137
    .catchall {:try_start_11e .. :try_end_137} :catchall_176

    if-eqz v3, :cond_ca

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_ca

    :cond_13d
    if-ne v2, v12, :cond_17d

    :try_start_13f
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "message"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "remove_token"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v6, "valid"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "status"

    const/16 v7, 0x193

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "message"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "remove_token"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_174} :catch_11d
    .catchall {:try_start_13f .. :try_end_174} :catchall_176

    goto/16 :goto_c5

    :catchall_176
    move-exception v2

    :goto_177
    if-eqz v3, :cond_17c

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17c
    throw v2

    :cond_17d
    const/16 v6, 0x1f7

    if-ne v2, v6, :cond_1b8

    :try_start_181
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "message"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "retry_after"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v6, "valid"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "status"

    const/16 v7, 0x1f7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "message"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "retry_after"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c5

    :cond_1b8
    const-string v6, "valid"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_1d0} :catch_11d
    .catchall {:try_start_181 .. :try_end_1d0} :catchall_176

    goto/16 :goto_c5

    :catchall_1d2
    move-exception v3

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    goto :goto_177

    :catch_1d7
    move-exception v3

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    goto/16 :goto_11e
.end method

.method private c()Ljava/lang/String;
    .registers 3

    const-string v0, "apiHost"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, "10.1.215.152:3000"

    :cond_12
    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 3

    const-string v0, "dsHost"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, "10.1.215.152:9999"

    :cond_12
    return-object v0
.end method

.method private e()Ljava/lang/String;
    .registers 3

    const-string v0, "apiSecret"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, "lLgweiDSIdEosPeFW3jfeOQOwe83wfwef42ytHSOI9wwiwelQVWE"

    :cond_12
    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 3

    const-string v0, "serverCert"

    const-string v1, "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUVWRENDQXp5Z0F3SUJBZ0lCQVRBTkJna3Foa2lHOXcwQkFRVUZBREJpTVFzd0NRWURWUVFHRXdKRFRqRVEKTUE0R0ExVUVDQXdIUW1WcGFtbHVaekVRTUE0R0ExVUVCd3dIUW1WcGFtbHVaekVTTUJBR0ExVUVDd3dKUVhKeQpiM2R1YjJOck1Sc3dHUVlEVlFRRERCSkJjbkp2ZDI1dlkyc2dRMjh1TEV4MFpDNHdIaGNOTVRZd05qQTFNVFUxCk5qTXdXaGNOTXpZd05UTXhNVFUxTmpNd1dqQmlNUXN3Q1FZRFZRUUdFd0pEVGpFUU1BNEdBMVVFQ0F3SFFtVnAKYW1sdVp6RVFNQTRHQTFVRUJ3d0hRbVZwYW1sdVp6RVNNQkFHQTFVRUN3d0pRWEp5YjNkdWIyTnJNUnN3R1FZRApWUVFEREJKQmNuSnZkMjV2WTJzZ1EyOHVMRXgwWkM0d2dnRWlNQTBHQ1NxR1NJYjNEUUVCQVFVQUE0SUJEd0F3CmdnRUtBb0lCQVFEVUhxemtra3VaeElQbFI4ZDdnZU4wQzlJQkpLZkJWY0ZNM1FsVzhCbC9sZW9BZHMreDBpbXUKb3VCY2p6czN4aWFUR1Z1dklKODRvbUxNbHMyeUlGNWt5NE5RM0R1citIU280eE1pMVNBRXpFcXJhZ2hXeGRFSQovZlVtUnFrWHFLUUhtQmVUVUdqaXZDVExEOUp4a0trR2lFVWFSNmhGdjJseWZuM3U4emFYeGRFOTRWMkg2VkhPCmg5Y1N3d2xIZHhjcXZ5Z2dTUVE1cERkS2UrNEcyckZZSWlqeVJ1elNrWkhjNndDZ1NwVVRpMUE3ckZGZkVPdUsKU1ZDZ3ZnSmtkbFZzUzlOWVp4WGx1RmJNd3Jtd3pqdUM0WEliamlQZExmd21ya25PQ2Y3VE9lYkNDbmo3WHVoZApiNnIxdWdqUC80Wmk2bTM2anEyeVFKZEVRcWVmMXpXZEFnTUJBQUdqZ2dFVE1JSUJEekFKQmdOVkhSTUVBakFBCk1Bc0dBMVVkRHdRRUF3SUY0REFSQmdsZ2hrZ0JodmhDQVFFRUJBTUNCa0F3SFFZRFZSME9CQllFRkVmTnAyZGIKS2JEbG5NTk5uWlZlckJHU09pVUNNSUdVQmdOVkhTTUVnWXd3Z1ltQUZOQ0JPcEw4TlcvYkhYc2tUc1FVdit0YworR3dYb1dha1pEQmlNUXN3Q1FZRFZRUUdFd0pEVGpFUU1BNEdBMVVFQ0F3SFFtVnBhbWx1WnpFUU1BNEdBMVVFCkJ3d0hRbVZwYW1sdVp6RVNNQkFHQTFVRUN3d0pRWEp5YjNkdWIyTnJNUnN3R1FZRFZRUUREQkpCY25KdmQyNXYKWTJzZ1EyOHVMRXgwWkM2Q0NRRFQzVTJldUp4dENqQXNCZ05WSFJFRUpUQWpnZ29xTGpFeU16QTJMbU51Z2c4cQpMbUZ5Y205M2JtOWpheTVqYjIySEJBb0M2MU13RFFZSktvWklodmNOQVFFRkJRQURnZ0VCQUVPaWFRekFleDZXCnUzVkIzTkw5Q2JpR2VqZVlxNStVVXpiMzFMaGlMSDdyeXU1M0F4dmtSS1VQRjNJdTRZcmhObk44MWxYL0w3dFoKLzJvQXZMV0V3Y0NVdVNnNENHYURnYlZycjVPd0ozK1pNNnhKb1NJQTZ3RzExQkNWa1l0NTJ0cnZuZ0VJU2FhMwppd3dZWmJPbldhL0ZVZHA3N093K1VCbExiZXRZSndqSXk2UlZrMGxJOHEyb24zMEd6VWZOSGF6blVpVU1sdWV4CkdjRGU5Q2srYTJqL1BGVjlkRWIyYkRvSW52NkdhSXd1V29KR094ZnJRUVRaUFdVTDZrM0JVMHdDVThKWTdQaXQKSGlIZ1dNLzVWRzhUdGU4Mm1XcjV4Rmk3NEkyUFZ3SDdUd3RUbEFOaGN0a0Z6VUROd0Iyem1nVWZxZklGWCtHMApETUQwT3h2bldicz0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="

    invoke-virtual {p0, v0, v1}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .registers 3

    const-string v0, "clientCert"

    const-string v1, "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURYekNDQWtlZ0F3SUJBZ0lCQVRBTkJna3Foa2lHOXcwQkFRVUZBREJpTVFzd0NRWURWUVFHRXdKRFRqRVEKTUE0R0ExVUVDQXdIUW1WcGFtbHVaekVRTUE0R0ExVUVCd3dIUW1WcGFtbHVaekVTTUJBR0ExVUVDd3dKUVhKeQpiM2R1YjJOck1Sc3dHUVlEVlFRRERCSkJjbkp2ZDI1dlkyc2dRMjh1TEV4MFpDNHdIaGNOTVRZd05qQTFNVFUxCk5qTXdXaGNOTXpZd05UTXhNVFUxTmpNd1dqQmlNUXN3Q1FZRFZRUUdFd0pEVGpFUU1BNEdBMVVFQ0F3SFFtVnAKYW1sdVp6RVFNQTRHQTFVRUJ3d0hRbVZwYW1sdVp6RVNNQkFHQTFVRUN3d0pRWEp5YjNkdWIyTnJNUnN3R1FZRApWUVFEREJKQmNuSnZkMjV2WTJzZ1EyOHVMRXgwWkM0d2dnRWlNQTBHQ1NxR1NJYjNEUUVCQVFVQUE0SUJEd0F3CmdnRUtBb0lCQVFERTREa1dWT1BmVlY2TjVkRktxaUtsaUNodUNreEQ4SDdLUTNyUm1ZdnY0K3NKdzFDUXBpU3cKOUpDQlJ6dDk5anM3VWdZK3htUnl1S0dNMWIrN3UwUERtT0xhNithTktZVEpRREZVaUE1Qlp2SWNHZFdKWjZJNwpjMk0zc1lzSU5uV1Q3Q0EySnV3TDR2V094eXB5UlhvQm8rWUFtYm12ZVlTcnpyK1VzT2JybENwSjdaOEhhRkowCm15VmFLL3FqQllqVzVWTFFiUHhNSGxrWURmbHYxdytwQUJNRDhLREtwSGc4Y1RmOGVoR1FPSHZ4NUtxMFNDU3UKZTlnNzkyV3hNOGdKWTZPRHJ3OW53d1QxUHVZZmJUNm5XU0kwY0VYZUZhK2pNVXVzaWJwSWhYdVRiNzR5ZmVyUwpjeE55WlE3TzNydEJFbThPVk15NzBFcmpjemlVU1NIM0FnTUJBQUdqSURBZU1Ba0dBMVVkRXdRQ01BQXdFUVlKCllJWklBWWI0UWdFQkJBUURBZ2VBTUEwR0NTcUdTSWIzRFFFQkJRVUFBNElCQVFBemYwQnphUWhGcklHUnUzTjgKZU4ycEhQMzZEK1o4OXQzcTVDWG5TbW9ERTBObUY0Yjc2T1dKU2YyOERoZHoycjBPS3pUOThjR3RlY25ZMHE4VApvTW5pZHdiK21DUFloQ09qTkpnbitwUjNIWGh0YjdwaSt4RkVieituOWNHT3kxWW02bTZidUdHSitaUHZ6Z2JOClA5N1BPdi92aVl0SUkxZmFVdzZaMDBSdmxqUlBqNFZJQjN2ZTNWa3NrOUpRSXJxRTVhUFhGNEwxTFpyV21jRkwKWlJURVMyUnpQZ2ZQZktJOTlyWVlJYnE0MVRQRDlFemhmdkJORyt0WmdnSG9uY0ROdnhYcE1USmZlOEZzUVNmeQphaFFXQ0lrcnE0YXZIWGlETmtqNlFocXJQT0tZRTR6K1VBY0VLSHpUQnZ2Z2ZKUTZ0TVJjUjcvMmNZTHMxZTNKCmlXdkYKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="

    invoke-virtual {p0, v0, v1}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .registers 3

    const-string v0, "clientKey"

    const-string v1, "LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFcEFJQkFBS0NBUUVBeE9BNUZsVGozMVZlamVYUlNxb2lwWWdvYmdwTVEvQit5a042MFptTDcrUHJDY05RCmtLWWtzUFNRZ1VjN2ZmWTdPMUlHUHNaa2NyaWhqTlcvdTd0RHc1amkydXZtalNtRXlVQXhWSWdPUVdieUhCblYKaVdlaU8zTmpON0dMQ0RaMWsrd2dOaWJzQytMMWpzY3Fja1Y2QWFQbUFKbTVyM21FcTg2L2xMRG02NVFxU2UyZgpCMmhTZEpzbFdpdjZvd1dJMXVWUzBHejhUQjVaR0EzNWI5Y1BxUUFUQS9DZ3lxUjRQSEUzL0hvUmtEaDc4ZVNxCnRFZ2tybnZZTy9kbHNUUElDV09qZzY4UFo4TUU5VDdtSDIwK3Axa2lOSEJGM2hXdm96RkxySW02U0lWN2syKysKTW4zcTBuTVRjbVVPenQ2N1FSSnZEbFRNdTlCSzQzTTRsRWtoOXdJREFRQUJBb0lCQVFDMTNWdGU0YlJPanBIMgpDcUkza3NyR2x1eWlHaWt4YVd2MmREZDBmNTdoVDIzRGF3VjFXY1R6SWppSzg3NWxNWnl0dzZ1NU9aTjQxazJGCng3NkNNUTc4RkxNYkFHZk5adGtlLzRtU1NNekNaZEtwV3NRRFZoUnJUc0FNcHBtRVVLcDBwdDlxcHJIT21TMjEKWXc0MjJTOUhiSnYvV2dKSnNydDM2bGpYaGtNS3dnY0I3Vk8yRnh5cWNyOUl5VW5uYkVCOWhEN3F2cm54VHNaTwpicWtMSW9ncnkyNjZOb3R0YmVhR3dMUW5XTG1NSFRjcFdIV0dibURaLzBjNUVkS1N3UmpHbllRN2c3TncrU2o3Cjd2NUpiYkc0UWNEK1BwUlh6bW9Hc29QUkVoMzlzNi8wQjVCUWQzNjdmM05oQ0hVa0QzNWFiMDJEVGdTdW13cW4KOXRTUUJPSmhBb0dCQVBqdmRNS1BibUZPV2hxdENVdlEwL1FSOStaS09XVGREZmdZZVdVZGVJUEg0bzVlelZoQwovOGVLVXp3d1FHdGduUk1reXNEbVRqR1ZnRTFjZUwxN1BxUU51VmxaeWZqbkVyK1MzVmFJVDE1M1VvRnJzTWtNCmJmbm45c1hVWlJQc0JqL3U2R3A4Q3dramRWMTBSMXEySDZjdjFWRnBobjFXTUVOM1JmL0E3VWtyQW9HQkFNcDIKakhWR3NWRVFpZFdJZXI2M3RxVzZHVjJrejBrNHFnT3RJcVZkS1p0dVNPMUZWRDVoblRLQzVUQ0ZGRkN5WlF5bwpUQWtaMnQwb2NSd01WSnY2cklNUGNnVXVwZXE1cTdaNE43MHdtUytDRUNtYTVROTlxY3l0OXlSWjYyR3NMSDlhCk5XaXZ2QW8yL2FYalYxYTF1Z0xCZHBkZHJzUElWc1JwYWM2b2w4eGxBb0dCQU0yN2dRRG03MittQkp1MVZGQi8KVnh5STJSdFBUcDNJZjZvQitCb1VRQ3lSUHZFdzhuNjJhSlB1QXhwa09tbEQ0SzBZcENUR2NldFN4a1dwWGZRagpia0xCUU9UU2F6UzFMRzU5bjBYTHcrU3JzdGxaT2pMK2ZjbWk1dlRhczJyQ2p1dTV0QVdGWE0yQnE1YS82ZFRUClhkZWJsYTRDQzI5OGtzaS9RMis2YjZFZkFvR0FXZ1FQT3UwdFZROTNXTnNQUjlCQ2dyaVZJbzl1SWUzeG1TVFgKTEpLWk55UDNoSmE0ZCt2S2luU3NGY0IxWWRPUEhldU5zdFl0K3ZwS0grQlRsZTREMlZsNnBsY3hLWVZYbFE4cQpLUkY4YWlUM3JxZlJnK3VwSFBtVDBqT3dkWUtwWGczcmhSbnREdFdZUExNeFY3b0FjODAwUHVSR0dZSHZJZkNFClBIKzB6Z2tDZ1lBSE5LS1RGTUxaZU9RTXBiNXYyYzNVdUNEaG1kQjczcGI4RTV1SnJidktIV09pc3kyVHcrRkEKL0E4WmJzMEp5UGFqZnhyODQ4ZFlFNU00OHlnSDVUc3gycFBsdXNOQjVnT054WlNLWkxRaGpKY3k5RUlQZEx6QwpGUWllblM4NXUwdTRDZ21DMG9JTnMrQnFFZE91eUhwUkdiRzV3Z285U3kya1pKaXJuZzZHOGc9PQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo="

    invoke-virtual {p0, v0, v1}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcp;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcp",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    sget-object v1, Lcom/arrownock/push/PushService;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pushHost"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "pushPort"

    const/16 v3, 0x75b

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "pushHostExpiration"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_b1

    const/4 v0, 0x1

    :goto_29
    if-eqz v0, :cond_4b

    const/4 v2, 0x0

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    sget-object v3, Lcom/arrownock/push/PushService;->LOG_TAG:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pushHost"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "pushPort"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "pushHostExpiration"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4b
    if-nez v2, :cond_2d8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ldf;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/v1/push_notification/host.json?token="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v0}, Ldf;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "&"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7e

    :cond_b1
    const/4 v0, 0x0

    goto/16 :goto_29

    :cond_b4
    const-string v0, "&version=2.25.3"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    :goto_be
    if-nez v2, :cond_296

    add-int/lit8 v3, v0, 0x1

    const/4 v0, 0x5

    if-gt v3, v0, :cond_296

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&requesttime="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldf;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    const-string v0, "valid"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_125

    const/4 v0, 0x1

    :goto_f2
    if-eqz v0, :cond_135

    const-string v0, "hostname"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->isSecureConnection()Z

    move-result v0

    if-eqz v0, :cond_127

    const-string v0, "secure_port"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :goto_117
    const-string v0, "expiration"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move v0, v3

    goto :goto_be

    :cond_125
    const/4 v0, 0x0

    goto :goto_f2

    :cond_127
    const-string v0, "port"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_117

    :cond_135
    const-string v0, "status"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v0, 0x1f7

    if-ne v9, v0, :cond_1ba

    const-string v0, "message"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v6, -0x1

    :try_start_150
    const-string v0, "retry_after"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_15b} :catch_1ab

    move-result v0

    :goto_15c
    if-gtz v0, :cond_15f

    const/4 v0, 0x5

    :cond_15f
    const/16 v6, 0x708

    if-le v0, v6, :cond_165

    const/16 v0, 0x708

    :cond_165
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Getting push server failed. StatusCode:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", Message:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ". Will try again in "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " seconds."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v8

    sget-object v9, Ldf;->a:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Lbk;->c(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    :try_start_19a
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->a()Z
    :try_end_1a6
    .catch Ljava/lang/InterruptedException; {:try_start_19a .. :try_end_1a6} :catch_1b1

    move-result v0

    if-nez v0, :cond_1ae

    const/4 v0, 0x0

    :goto_1aa
    return-object v0

    :catch_1ab
    move-exception v0

    move v0, v6

    goto :goto_15c

    :cond_1ae
    move v0, v3

    goto/16 :goto_be

    :catch_1b1
    move-exception v0

    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    const/16 v2, 0xbb9

    invoke-direct {v1, v0, v2}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/Exception;I)V

    throw v1

    :cond_1ba
    const/16 v0, 0x193

    if-ne v9, v0, :cond_205

    const-string v0, "message"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "remove_token"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Get host request has ben forbidden. Message:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v2, :cond_202

    const-string v0, ". Device token needs to be removed and regenerated."

    :goto_1e3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    sget-object v3, Ldf;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lbk;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_200

    const-string v0, "deviceToken"

    invoke-virtual {p0, v0}, Ldf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/arrownock/push/PushService;->actionStop(Landroid/content/Context;)V

    :cond_200
    const/4 v0, 0x0

    goto :goto_1aa

    :cond_202
    const-string v0, ""

    goto :goto_1e3

    :cond_205
    const/16 v0, 0x190

    if-ne v9, v0, :cond_224

    const-string v0, "message"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    sget-object v2, Ldf;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lbk;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    const/16 v2, 0xbb9

    invoke-direct {v1, v0, v2}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_224
    const/4 v0, -0x1

    if-ne v9, v0, :cond_244

    const-string v0, "exception"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    sget-object v2, Ldf;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    const/16 v2, 0xbb9

    invoke-direct {v1, v0, v2}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/Exception;I)V

    throw v1

    :cond_244
    const-string v0, "data"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Getting push server failed. StatusCode:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", Raw Data:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ". Will try again in 5 seconds."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v6

    sget-object v8, Ldf;->a:Ljava/lang/String;

    invoke-virtual {v6, v8, v0}, Lbk;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x1388

    :try_start_278
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->a()Z
    :try_end_284
    .catch Ljava/lang/InterruptedException; {:try_start_278 .. :try_end_284} :catch_28d

    move-result v0

    if-nez v0, :cond_28a

    const/4 v0, 0x0

    goto/16 :goto_1aa

    :cond_28a
    move v0, v3

    goto/16 :goto_be

    :catch_28d
    move-exception v0

    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    const/16 v2, 0xbb9

    invoke-direct {v1, v0, v2}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/Exception;I)V

    throw v1

    :cond_296
    if-eqz v2, :cond_2c5

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    sget-object v3, Lcom/arrownock/push/PushService;->LOG_TAG:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pushHost"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "pushPort"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "pushHostExpiration"

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v1

    move-object v1, v2

    :goto_2b9
    new-instance v2, Lcp;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcp;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto/16 :goto_1aa

    :cond_2c5
    const-string v0, "Max retry time reached"

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    sget-object v2, Ldf;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lbk;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    const/16 v2, 0xbb9

    invoke-direct {v1, v0, v2}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_2d8
    move v0, v1

    move-object v1, v2

    goto :goto_2b9
.end method

.method public final a()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const-string v0, "MIPUSH_REG_ID"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v0, ""

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    const-string v1, "MIPUSH_APP"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v0, ""

    goto :goto_10

    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.arrownock.push.MIPUSH_APPID"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.arrownock.push.MIPUSH_APPKEY"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v0, ""

    goto :goto_10
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const-string v0, "GCM_REG_ID"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, ""

    :goto_10
    return-object v0

    :cond_11
    const-string v0, "GCM_REG_VERSION_CODE"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v0, -0x80000000

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    :try_start_21
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_30

    move-result v0

    :cond_25
    :goto_25
    invoke-static {p1}, Ldf;->a(Landroid/content/Context;)I

    move-result v2

    if-eq v0, v2, :cond_2e

    const-string v0, ""

    goto :goto_10

    :cond_2e
    move-object v0, v1

    goto :goto_10

    :catch_30
    move-exception v2

    goto :goto_25
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_6e

    move-result-object v0

    :goto_d
    :try_start_d
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_2f

    const-string v2, "000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    :cond_2f
    const-string v0, ""

    move-object v2, v0

    :goto_32
    if-eqz v1, :cond_40

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "unknown"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    :cond_40
    const-string v0, ""

    move-object v1, v0

    :goto_43
    if-eqz v3, :cond_51

    const-string v0, ""

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    :cond_51
    const-string v0, ""

    :goto_53
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    const-string v0, ""

    :goto_6d
    return-object v0

    :catch_6e
    move-exception v0

    move-object v0, v1

    goto :goto_d

    :cond_71
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "D"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_32

    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "S"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_43

    :cond_93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "A"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    :cond_a3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_c1} :catch_112

    move-result-object v1

    :try_start_c2
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_d6
    array-length v4, v2

    if-ge v0, v4, :cond_ef

    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d6

    :cond_ef
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_f2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c2 .. :try_end_f2} :catch_104
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_f2} :catch_112

    move-result-object v0

    :goto_f3
    :try_start_f3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "2"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6d

    :catch_104
    move-exception v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_110} :catch_112

    move-result-object v0

    goto :goto_f3

    :catch_112
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto/16 :goto_6d
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    sget-object v1, Lcom/arrownock/push/PushService;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    iget-object v1, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v1

    invoke-virtual {v1}, Lcom/arrownock/push/AnPush;->isSecureConnection()Z

    move-result v1

    if-eqz v1, :cond_1b5

    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ldf;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/push_notification/signed_register.json?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3c0
    .catchall {:try_start_1 .. :try_end_39} :catchall_3c8

    :try_start_39
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    sget-object v3, Ldf;->a:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-direct {p0}, Ldf;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Ldf;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Ldf;->h()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "BKS"

    invoke-static {v3, v4, v5, v6, v7}, Lat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5d} :catch_434
    .catchall {:try_start_39 .. :try_end_5d} :catchall_42f

    move-object v2, v1

    :goto_5e
    :try_start_5e
    const-string v1, "POST"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6b} :catch_3c0
    .catchall {:try_start_5e .. :try_end_6b} :catchall_3c8

    :try_start_6b
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device_token"

    invoke-direct {v1, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "date"

    invoke-direct {v1, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "type"

    invoke-direct {v1, v5, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "channel"

    invoke-direct {v1, v5, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "id"

    if-nez p6, :cond_1e4

    const-string v1, ""

    :goto_b2
    invoke-direct {v5, v6, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcm;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_300

    iget-object v1, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lbe;->a(Landroid/content/Context;Ljava/lang/String;)Lbe;

    move-result-object v1

    invoke-virtual {v1}, Lbe;->a()Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23c

    if-eqz p4, :cond_1f0

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "overwrite"

    const-string v6, "true"

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "/v1/push_notification/signed_register.jsonchannel="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "&date="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&device_token="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p6, :cond_1ea

    const-string v1, ""

    :goto_109
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&overwrite=true&type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_125
    const-string v3, "HmacSHA1"
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_127} :catch_3b3
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_127} :catch_3c0
    .catchall {:try_start_6b .. :try_end_127} :catchall_3c8

    :try_start_127
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0}, Ldf;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signature"

    invoke-direct {v3, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_152} :catch_3a6
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_152} :catch_3b3
    .catchall {:try_start_127 .. :try_end_152} :catchall_3c8

    :try_start_152
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, v1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v4}, Ldf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_172} :catch_3b3
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_172} :catch_3c0
    .catchall {:try_start_152 .. :try_end_172} :catchall_3c8

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_3f0

    :try_start_177
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Ldf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "response"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3e6

    const-string v3, "subscription"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3e6

    const-string v3, "subscription"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3cf

    const-string v3, "anid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3cf

    const-string v3, "anid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1ae
    .catch Lorg/json/JSONException; {:try_start_177 .. :try_end_1ae} :catch_3d9
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_1ae} :catch_3b3
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_1ae} :catch_3c0
    .catchall {:try_start_177 .. :try_end_1ae} :catchall_3c8

    move-result-object v1

    if-eqz v2, :cond_1b4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1b4
    :goto_1b4
    return-object v1

    :cond_1b5
    :try_start_1b5
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ldf;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/push_notification/signed_register.json?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1e1} :catch_3c0
    .catchall {:try_start_1b5 .. :try_end_1e1} :catchall_3c8

    move-object v2, v1

    goto/16 :goto_5e

    :cond_1e4
    :try_start_1e4
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b2

    :cond_1ea
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_109

    :cond_1f0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "/v1/push_notification/signed_register.jsonchannel="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "&date="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&device_token="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p6, :cond_237

    const-string v1, ""

    :goto_219
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_125

    :cond_237
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_219

    :cond_23c
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "real_device_id"

    invoke-direct {v1, v6, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_2aa

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "overwrite"

    const-string v7, "true"

    invoke-direct {v1, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "/v1/push_notification/signed_register.jsonchannel="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "&date="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&device_token="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p6, :cond_2a5

    const-string v1, ""

    :goto_27d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&overwrite=true&real_device_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_125

    :cond_2a5
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_27d

    :cond_2aa
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "/v1/push_notification/signed_register.jsonchannel="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "&date="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&device_token="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p6, :cond_2fb

    const-string v1, ""

    :goto_2d3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&real_device_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_125

    :cond_2fb
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_2d3

    :cond_300
    if-eqz p4, :cond_35a

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "overwrite"

    const-string v6, "true"

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "/v1/push_notification/signed_register.jsonchannel="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "&date="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&device_token="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p6, :cond_355

    const-string v1, ""

    :goto_337
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&overwrite=true&type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_125

    :cond_355
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_337

    :cond_35a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "/v1/push_notification/signed_register.jsonchannel="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "&date="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&device_token="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p6, :cond_3a1

    const-string v1, ""

    :goto_383
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_125

    :cond_3a1
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_383

    :catch_3a6
    move-exception v1

    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d3

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_3b3
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_3b3} :catch_3b3
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_3b3} :catch_3c0
    .catchall {:try_start_1e4 .. :try_end_3b3} :catchall_3c8

    :catch_3b3
    move-exception v1

    :try_start_3b4
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d3

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_3c0
    .catch Ljava/lang/Exception; {:try_start_3b4 .. :try_end_3c0} :catch_3c0
    .catchall {:try_start_3b4 .. :try_end_3c0} :catchall_3c8

    :catch_3c0
    move-exception v1

    :goto_3c1
    :try_start_3c1
    instance-of v3, v1, Lcom/arrownock/exception/ArrownockException;

    if-eqz v3, :cond_423

    check-cast v1, Lcom/arrownock/exception/ArrownockException;

    throw v1
    :try_end_3c8
    .catchall {:try_start_3c1 .. :try_end_3c8} :catchall_3c8

    :catchall_3c8
    move-exception v1

    :goto_3c9
    if-eqz v2, :cond_3ce

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3ce
    throw v1

    :cond_3cf
    :try_start_3cf
    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    const-string v3, "Failed to acquire registration."

    const/16 v4, 0x7d3

    invoke-direct {v1, v3, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_3d9
    .catch Lorg/json/JSONException; {:try_start_3cf .. :try_end_3d9} :catch_3d9
    .catch Ljava/io/IOException; {:try_start_3cf .. :try_end_3d9} :catch_3b3
    .catch Ljava/lang/Exception; {:try_start_3cf .. :try_end_3d9} :catch_3c0
    .catchall {:try_start_3cf .. :try_end_3d9} :catchall_3c8

    :catch_3d9
    move-exception v1

    :try_start_3da
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d3

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_3e6
    .catch Ljava/io/IOException; {:try_start_3da .. :try_end_3e6} :catch_3b3
    .catch Ljava/lang/Exception; {:try_start_3da .. :try_end_3e6} :catch_3c0
    .catchall {:try_start_3da .. :try_end_3e6} :catchall_3c8

    :cond_3e6
    :try_start_3e6
    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    const-string v3, "Failed to acquire ANID."

    const/16 v4, 0x7d3

    invoke-direct {v1, v3, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_3f0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3}, Ldf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f7

    if-ne v1, v4, :cond_40a

    const-string v1, "RELOAD_DEVICE_TOKEN"
    :try_end_403
    .catch Lorg/json/JSONException; {:try_start_3e6 .. :try_end_403} :catch_3d9
    .catch Ljava/io/IOException; {:try_start_3e6 .. :try_end_403} :catch_3b3
    .catch Ljava/lang/Exception; {:try_start_3e6 .. :try_end_403} :catch_3c0
    .catchall {:try_start_3e6 .. :try_end_403} :catchall_3c8

    if-eqz v2, :cond_1b4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1b4

    :cond_40a
    :try_start_40a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "meta"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    const-string v4, "message"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d3

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_423
    .catch Lorg/json/JSONException; {:try_start_40a .. :try_end_423} :catch_3d9
    .catch Ljava/io/IOException; {:try_start_40a .. :try_end_423} :catch_3b3
    .catch Ljava/lang/Exception; {:try_start_40a .. :try_end_423} :catch_3c0
    .catchall {:try_start_40a .. :try_end_423} :catchall_3c8

    :cond_423
    :try_start_423
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d3

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_42f
    .catchall {:try_start_423 .. :try_end_42f} :catchall_3c8

    :catchall_42f
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_3c9

    :catch_434
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_3c1
.end method

.method public final a(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "token"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "date"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/v1/push_notification/offline/get.jsondate="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&token="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "HmacSHA1"
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_47} :catch_111
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_11e
    .catchall {:try_start_1 .. :try_end_47} :catchall_126

    :try_start_47
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0}, Ldf;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signature"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_72} :catch_104
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_72} :catch_111
    .catchall {:try_start_47 .. :try_end_72} :catchall_126

    :try_start_72
    iget-object v1, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v1

    invoke-virtual {v1}, Lcom/arrownock/push/AnPush;->isSecureConnection()Z

    move-result v1

    if-eqz v1, :cond_12d

    new-instance v1, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ldf;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/v1/push_notification/offline/get.json?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ldf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_aa} :catch_111
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_aa} :catch_11e
    .catchall {:try_start_72 .. :try_end_aa} :catchall_126

    :try_start_aa
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    sget-object v3, Ldf;->a:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-direct {p0}, Ldf;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Ldf;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Ldf;->h()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "BKS"

    invoke-static {v3, v4, v5, v6, v7}, Lat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ce} :catch_1a6
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ce} :catch_1a0
    .catchall {:try_start_aa .. :try_end_ce} :catchall_19b

    move-object v2, v1

    :goto_cf
    const v1, 0x1d4c0

    :try_start_d2
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_db} :catch_111
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_db} :catch_11e
    .catchall {:try_start_d2 .. :try_end_db} :catchall_126

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_15c

    :try_start_e0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Ldf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "response"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "notifications"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_fd
    .catch Lorg/json/JSONException; {:try_start_e0 .. :try_end_fd} :catch_182
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_fd} :catch_111
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_fd} :catch_11e
    .catchall {:try_start_e0 .. :try_end_fd} :catchall_126

    move-result-object v1

    if-eqz v2, :cond_103

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_103
    return-object v1

    :catch_104
    move-exception v1

    :try_start_105
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7da

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_111} :catch_111
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_111} :catch_11e
    .catchall {:try_start_105 .. :try_end_111} :catchall_126

    :catch_111
    move-exception v1

    :goto_112
    :try_start_112
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7da

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_11e} :catch_11e
    .catchall {:try_start_112 .. :try_end_11e} :catchall_126

    :catch_11e
    move-exception v1

    :goto_11f
    :try_start_11f
    instance-of v3, v1, Lcom/arrownock/exception/ArrownockException;

    if-eqz v3, :cond_18f

    check-cast v1, Lcom/arrownock/exception/ArrownockException;

    throw v1
    :try_end_126
    .catchall {:try_start_11f .. :try_end_126} :catchall_126

    :catchall_126
    move-exception v1

    :goto_127
    if-eqz v2, :cond_12c

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12c
    throw v1

    :cond_12d
    :try_start_12d
    new-instance v1, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ldf;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/v1/push_notification/offline/get.json?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ldf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_159} :catch_111
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_159} :catch_11e
    .catchall {:try_start_12d .. :try_end_159} :catchall_126

    move-object v2, v1

    goto/16 :goto_cf

    :cond_15c
    :try_start_15c
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Ldf;->a(Ljava/io/InputStream;)Ljava/lang/String;

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

    const/16 v4, 0x7da

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_182
    .catch Lorg/json/JSONException; {:try_start_15c .. :try_end_182} :catch_182
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_182} :catch_111
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_182} :catch_11e
    .catchall {:try_start_15c .. :try_end_182} :catchall_126

    :catch_182
    move-exception v1

    :try_start_183
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7da

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_18f
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_18f} :catch_111
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_18f} :catch_11e
    .catchall {:try_start_183 .. :try_end_18f} :catchall_126

    :cond_18f
    :try_start_18f
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7da

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_19b
    .catchall {:try_start_18f .. :try_end_19b} :catchall_126

    :catchall_19b
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_127

    :catch_1a0
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_11f

    :catch_1a6
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_112
.end method

.method public final a()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Ldf;->a:Landroid/content/Context;

    sget-object v3, Lcom/arrownock/push/PushService;->LOG_TAG:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pushScheduledHour"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "pushScheduledMinue"

    const/4 v5, -0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "pushScheduledDuration"

    const-wide/16 v6, -0x1

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const/4 v2, -0x1

    if-eq v3, v2, :cond_15e

    const/4 v2, -0x1

    if-eq v4, v2, :cond_15e

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-eqz v2, :cond_15e

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v5, 0xb

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/32 v2, 0x5265c00

    add-long v10, v8, v2

    add-long v12, v4, v6

    cmp-long v2, v4, v8

    if-gtz v2, :cond_6a

    cmp-long v2, v12, v8

    if-gtz v2, :cond_72

    :cond_6a
    cmp-long v2, v4, v10

    if-gtz v2, :cond_165

    cmp-long v2, v12, v10

    if-lez v2, :cond_165

    :cond_72
    :try_start_72
    move-object/from16 v0, p0

    iget-object v2, v0, Ldf;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v2

    invoke-virtual {v2}, Lcom/arrownock/push/AnPush;->a()Z

    move-result v2

    if-eqz v2, :cond_b7

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Ldf;->a:Landroid/content/Context;

    const-class v14, Lcom/arrownock/push/PushService;

    invoke-virtual {v2, v3, v14}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "AN.STOP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Ldf;->a:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v3, v14, v2, v15}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ldf;->a:Landroid/content/Context;

    const-string v14, "alarm"

    invoke-virtual {v2, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    const/4 v14, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v2, v14, v0, v1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_b7
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_72 .. :try_end_b7} :catch_15f

    :cond_b7
    cmp-long v2, v4, v8

    if-gez v2, :cond_161

    sub-long v2, v12, v8

    :goto_bd
    sub-long v4, v2, v6

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    move-wide v10, v2

    :goto_c4
    sget-object v2, Ldf;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Stop connection in "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " seconds ...."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Ldf;->a:Landroid/content/Context;

    const-class v6, Lcom/arrownock/push/PushService;

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "AN.STOP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Ldf;->a:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v6, v2, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Ldf;->a:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    sget-object v3, Ldf;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Start connection in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, 0x3e8

    div-long v6, v10, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds ...."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Ldf;->a:Landroid/content/Context;

    const-class v5, Lcom/arrownock/push/PushService;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "AN.START"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Ldf;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v10

    const-wide/32 v6, 0x5265c00

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_15e
    return-void

    :catch_15f
    move-exception v2

    throw v2

    :cond_161
    sub-long v2, v12, v10

    goto/16 :goto_bd

    :cond_165
    cmp-long v2, v4, v8

    if-gez v2, :cond_174

    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, v4

    sub-long/2addr v2, v8

    :goto_16e
    add-long v4, v2, v6

    move-wide v10, v4

    move-wide v4, v2

    goto/16 :goto_c4

    :cond_174
    sub-long v2, v4, v8

    goto :goto_16e
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/arrownock/push/IAnPushRegisterAnIdCallback;)V
    .registers 14

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    sget-object v1, Ldf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "try_time="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hasAlreadyRegistered"

    const-string v1, "no"

    invoke-virtual {p0, v0, v1}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    sget-object v2, Ldf;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hasAlreadyRegistered="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    const-string v0, "ANID"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v1

    sget-object v2, Ldf;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "anid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hasAlreadyRegistered"

    const-string v1, "yes"

    invoke-virtual {p0, v0, v1}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6}, Lcom/arrownock/push/IAnPushRegisterAnIdCallback;->onSuccess()V

    :goto_7c
    return-void

    :cond_7d
    if-eqz p5, :cond_b3

    const-string v0, ""

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    move-object v5, p5

    :goto_88
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    sget-object v1, Ldf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "anid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ldp;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p6

    move v4, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ldp;-><init>(Ldf;Ljava/lang/String;Lcom/arrownock/push/IAnPushRegisterAnIdCallback;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_7c

    :cond_b3
    invoke-virtual {p0, p1, p2}, Ldf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_88

    :cond_b8
    invoke-interface {p6}, Lcom/arrownock/push/IAnPushRegisterAnIdCallback;->onSuccess()V

    goto :goto_7c
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    sget-object v1, Lcom/arrownock/push/PushService;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Ldf;->a:Landroid/content/Context;

    sget-object v1, Lcom/arrownock/push/PushService;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IIILcom/arrownock/push/IAnPushCallback;)V
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ldv;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Ldv;-><init>(Ldf;Ljava/lang/String;Ljava/lang/String;IIILcom/arrownock/push/IAnPushCallback;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IIILcom/arrownock/push/IAnPushSettingsCallback;)V
    .registers 15

    new-instance v0, Ldw;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Ldw;-><init>(Ldf;Ljava/lang/String;Ljava/lang/String;IIILcom/arrownock/push/IAnPushSettingsCallback;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IIIZLcom/arrownock/push/IAnPushCallback;)V
    .registers 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ldj;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ldj;-><init>(Ldf;Ljava/lang/String;Ljava/lang/String;IIIZLcom/arrownock/push/IAnPushCallback;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IIIZLcom/arrownock/push/IAnPushSettingsCallback;)V
    .registers 17

    new-instance v0, Ldk;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ldk;-><init>(Ldf;Ljava/lang/String;Ljava/lang/String;IIIZLcom/arrownock/push/IAnPushSettingsCallback;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILcom/arrownock/push/IAnPushCallback;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ldn;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ldn;-><init>(Ldf;Ljava/lang/String;Ljava/lang/String;ILcom/arrownock/push/IAnPushCallback;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILcom/arrownock/push/IAnPushSettingsCallback;)V
    .registers 11

    new-instance v0, Ldo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ldo;-><init>(Ldf;Ljava/lang/String;Ljava/lang/String;ILcom/arrownock/push/IAnPushSettingsCallback;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushCallback;)V
    .registers 6

    new-instance v0, Ldt;

    invoke-direct {v0, p0, p1, p2, p3}, Ldt;-><init>(Ldf;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushCallback;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushCallback;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 15

    new-instance v0, Ldg;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    move-object v4, p6

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ldg;-><init>(Ldf;Ljava/lang/String;Lcom/arrownock/push/IAnPushCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushRegistrationCallback;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 15

    new-instance v0, Ldq;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    move-object v4, p6

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ldq;-><init>(Ldf;Ljava/lang/String;Lcom/arrownock/push/IAnPushRegistrationCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushSettingsCallback;)V
    .registers 6

    new-instance v0, Ldu;

    invoke-direct {v0, p0, p1, p2, p3}, Ldu;-><init>(Ldf;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushSettingsCallback;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushCallback;ZLjava/lang/String;)V
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ldr;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ldr;-><init>(Ldf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/arrownock/push/IAnPushCallback;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushRegistrationCallback;ZLjava/lang/String;)V
    .registers 15

    new-instance v0, Lds;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lds;-><init>(Ldf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/arrownock/push/IAnPushRegistrationCallback;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    iget-object v1, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v1

    invoke-virtual {v1}, Lcom/arrownock/push/AnPush;->isSecureConnection()Z

    move-result v1

    if-eqz v1, :cond_174

    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ldf;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/push_notification/signed_unregister.json?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_165
    .catchall {:try_start_1 .. :try_end_39} :catchall_16d

    :try_start_39
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    sget-object v3, Ldf;->a:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-direct {p0}, Ldf;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Ldf;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Ldf;->h()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "BKS"

    invoke-static {v3, v4, v5, v6, v7}, Lat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5d} :catch_1f7
    .catchall {:try_start_39 .. :try_end_5d} :catchall_1f1

    move-object v2, v1

    :goto_5e
    :try_start_5e
    const-string v1, "POST"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6b} :catch_165
    .catchall {:try_start_5e .. :try_end_6b} :catchall_16d

    :try_start_6b
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_8e

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device_token"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8e
    if-eqz p6, :cond_9a

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "anid"

    invoke-direct {v4, v5, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9a
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "date"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "type"

    invoke-direct {v1, v4, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_1a3

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "remove"

    const-string v5, "true"

    invoke-direct {v1, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "/v1/push_notification/signed_unregister.json"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ldf;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_d3
    const-string v4, "HmacSHA1"
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_d5} :catch_158
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_d5} :catch_165
    .catchall {:try_start_6b .. :try_end_d5} :catchall_16d

    :try_start_d5
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0}, Ldf;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signature"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_100} :catch_1c6
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_100} :catch_158
    .catchall {:try_start_d5 .. :try_end_100} :catchall_16d

    :try_start_100
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, v1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v3}, Ldf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_120} :catch_158
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_120} :catch_165
    .catchall {:try_start_100 .. :try_end_120} :catchall_16d

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1d3

    :try_start_125
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Ldf;->a(Ljava/io/InputStream;)Ljava/lang/String;

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

    const/16 v4, 0x7d4

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_14b
    .catch Lorg/json/JSONException; {:try_start_125 .. :try_end_14b} :catch_14b
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_14b} :catch_158
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_14b} :catch_165
    .catchall {:try_start_125 .. :try_end_14b} :catchall_16d

    :catch_14b
    move-exception v1

    :try_start_14c
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d4

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_158} :catch_158
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_158} :catch_165
    .catchall {:try_start_14c .. :try_end_158} :catchall_16d

    :catch_158
    move-exception v1

    :try_start_159
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d4

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_165} :catch_165
    .catchall {:try_start_159 .. :try_end_165} :catchall_16d

    :catch_165
    move-exception v1

    :goto_166
    :try_start_166
    instance-of v3, v1, Lcom/arrownock/exception/ArrownockException;

    if-eqz v3, :cond_1e5

    check-cast v1, Lcom/arrownock/exception/ArrownockException;

    throw v1
    :try_end_16d
    .catchall {:try_start_166 .. :try_end_16d} :catchall_16d

    :catchall_16d
    move-exception v1

    :goto_16e
    if-eqz v2, :cond_173

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_173
    throw v1

    :cond_174
    :try_start_174
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ldf;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/push_notification/signed_unregister.json?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_1a0} :catch_165
    .catchall {:try_start_174 .. :try_end_1a0} :catchall_16d

    move-object v2, v1

    goto/16 :goto_5e

    :cond_1a3
    :try_start_1a3
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "channel"

    invoke-direct {v1, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "/v1/push_notification/signed_unregister.json"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ldf;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_d3

    :catch_1c6
    move-exception v1

    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d4

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1d3
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1d3} :catch_158
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1d3} :catch_165
    .catchall {:try_start_1a3 .. :try_end_1d3} :catchall_16d

    :cond_1d3
    :try_start_1d3
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Ldf;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1df
    .catch Lorg/json/JSONException; {:try_start_1d3 .. :try_end_1df} :catch_14b
    .catch Ljava/io/IOException; {:try_start_1d3 .. :try_end_1df} :catch_158
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_1df} :catch_165
    .catchall {:try_start_1d3 .. :try_end_1df} :catchall_16d

    if-eqz v2, :cond_1e4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1e4
    return-void

    :cond_1e5
    :try_start_1e5
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d4

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1f1
    .catchall {:try_start_1e5 .. :try_end_1f1} :catchall_16d

    :catchall_1f1
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_16e

    :catch_1f7
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_166
.end method

.method public final b(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "token"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "date"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "com.arrownock.push.AN_APPKEY"

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "key"

    invoke-direct {v5, v6, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/v1/push_notification/commands/get.jsondate="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "&key="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&token="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "HmacSHA1"
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_63} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_63} :catch_13a
    .catchall {:try_start_1 .. :try_end_63} :catchall_142

    :try_start_63
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0}, Ldf;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signature"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_8e} :catch_120
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_8e} :catch_12d
    .catchall {:try_start_63 .. :try_end_8e} :catchall_142

    :try_start_8e
    iget-object v1, p0, Ldf;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/arrownock/push/AnPush;->getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;

    move-result-object v1

    invoke-virtual {v1}, Lcom/arrownock/push/AnPush;->isSecureConnection()Z

    move-result v1

    if-eqz v1, :cond_149

    new-instance v1, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ldf;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/v1/push_notification/commands/get.json?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ldf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_c6} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_c6} :catch_13a
    .catchall {:try_start_8e .. :try_end_c6} :catchall_142

    :try_start_c6
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    sget-object v3, Ldf;->a:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-direct {p0}, Ldf;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Ldf;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Ldf;->h()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "BKS"

    invoke-static {v3, v4, v5, v6, v7}, Lat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_ea} :catch_1c2
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_ea} :catch_1bc
    .catchall {:try_start_c6 .. :try_end_ea} :catchall_1b7

    move-object v2, v1

    :goto_eb
    const v1, 0x1d4c0

    :try_start_ee
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f7} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f7} :catch_13a
    .catchall {:try_start_ee .. :try_end_f7} :catchall_142

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_178

    :try_start_fc
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Ldf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "response"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "commands"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_119
    .catch Lorg/json/JSONException; {:try_start_fc .. :try_end_119} :catch_19e
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_119} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_119} :catch_13a
    .catchall {:try_start_fc .. :try_end_119} :catchall_142

    move-result-object v1

    if-eqz v2, :cond_11f

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11f
    return-object v1

    :catch_120
    move-exception v1

    :try_start_121
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7da

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_12d} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_12d} :catch_13a
    .catchall {:try_start_121 .. :try_end_12d} :catchall_142

    :catch_12d
    move-exception v1

    :goto_12e
    :try_start_12e
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7da

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_13a} :catch_13a
    .catchall {:try_start_12e .. :try_end_13a} :catchall_142

    :catch_13a
    move-exception v1

    :goto_13b
    :try_start_13b
    instance-of v3, v1, Lcom/arrownock/exception/ArrownockException;

    if-eqz v3, :cond_1ab

    check-cast v1, Lcom/arrownock/exception/ArrownockException;

    throw v1
    :try_end_142
    .catchall {:try_start_13b .. :try_end_142} :catchall_142

    :catchall_142
    move-exception v1

    :goto_143
    if-eqz v2, :cond_148

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_148
    throw v1

    :cond_149
    :try_start_149
    new-instance v1, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ldf;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/v1/push_notification/commands/get.json?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ldf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_175
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_175} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_175} :catch_13a
    .catchall {:try_start_149 .. :try_end_175} :catchall_142

    move-object v2, v1

    goto/16 :goto_eb

    :cond_178
    :try_start_178
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Ldf;->a(Ljava/io/InputStream;)Ljava/lang/String;

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

    const/16 v4, 0x7da

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_19e
    .catch Lorg/json/JSONException; {:try_start_178 .. :try_end_19e} :catch_19e
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_19e} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_19e} :catch_13a
    .catchall {:try_start_178 .. :try_end_19e} :catchall_142

    :catch_19e
    move-exception v1

    :try_start_19f
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7da

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1ab} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1ab} :catch_13a
    .catchall {:try_start_19f .. :try_end_1ab} :catchall_142

    :cond_1ab
    :try_start_1ab
    new-instance v3, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7da

    invoke-direct {v3, v1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1b7
    .catchall {:try_start_1ab .. :try_end_1b7} :catchall_142

    :catchall_1b7
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_143

    :catch_1bc
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_13b

    :catch_1c2
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_12e
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushCallback;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ldh;

    invoke-direct {v0, p0, p1, p2, p3}, Ldh;-><init>(Ldf;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushCallback;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushSettingsCallback;)V
    .registers 6

    new-instance v0, Ldi;

    invoke-direct {v0, p0, p1, p2, p3}, Ldi;-><init>(Ldf;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushSettingsCallback;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushCallback;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ldl;

    invoke-direct {v0, p0, p1, p2, p3}, Ldl;-><init>(Ldf;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushCallback;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushSettingsCallback;)V
    .registers 6

    new-instance v0, Ldm;

    invoke-direct {v0, p0, p1, p2, p3}, Ldm;-><init>(Ldf;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/push/IAnPushSettingsCallback;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
