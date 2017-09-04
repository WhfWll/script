.class public final Lat;
.super Ljava/lang/Object;

# interfaces
.implements Ldz;


# instance fields
.field final synthetic a:Lf;


# direct methods
.method private constructor <init>(Lf;)V
    .registers 2

    iput-object p1, p0, Lat;->a:Lf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lf;B)V
    .registers 3

    invoke-direct {p0, p1}, Lat;-><init>(Lf;)V

    return-void
.end method

.method public static a([B)I
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :cond_3
    return v0

    :cond_4
    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    mul-int/lit16 v0, v0, 0x101

    aget-byte v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_7
.end method

.method public static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_6
    array-length v3, v2

    if-eq v0, v3, :cond_1e

    aget-char v3, v2, v0

    const/16 v4, 0x41

    if-gt v4, v3, :cond_1b

    const/16 v4, 0x5a

    if-lt v4, v3, :cond_1b

    const/4 v1, 0x1

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    aput-char v3, v2, v0

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1e
    if-eqz v1, :cond_25

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    :cond_25
    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lat;->a([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Laz;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Laz;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {p2}, Laz;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Lil;

    invoke-direct {v3}, Lil;-><init>()V

    invoke-static {v3}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    new-instance v3, Liq;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Liq;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Liq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Liq;->close()V

    new-instance v3, Liq;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Liq;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Liq;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Liq;->close()V

    new-instance v3, Liq;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Leb;

    invoke-direct {v2, p3}, Leb;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v2}, Liq;-><init>(Ljava/io/Reader;Liv;)V

    invoke-virtual {v3}, Liq;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyPair;

    invoke-virtual {v3}, Liq;->close()V

    invoke-static {p4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v4, "ca-certificate"

    invoke-virtual {v3, v4, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-static {p4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v4, "certificate"

    invoke-virtual {v3, v4, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    const-string v4, "private-key"

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/security/cert/Certificate;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    const-string v2, "TLSv1"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    invoke-virtual {v2, v1, v0, v8}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    new-instance v1, Lec;

    invoke-direct {v1, v0}, Lec;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v1
.end method

.method public static a(I)Ljm;
    .registers 2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_6

    const/4 v0, 0x5

    if-ne p0, v0, :cond_c

    :cond_6
    new-instance v0, Ljq;

    invoke-direct {v0, p0}, Ljq;-><init>(I)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljm;

    invoke-direct {v0, p0}, Ljm;-><init>(I)V

    goto :goto_b
.end method

.method public static a(Ljava/lang/Throwable;)Ljm;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.security.GeneralSecurityException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Ljq;

    invoke-direct {v0, p0}, Ljq;-><init>(Ljava/lang/Throwable;)V

    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Ljm;

    invoke-direct {v0, p0}, Ljm;-><init>(Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_10

    const-string v2, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_10
    move v0, v1

    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v1

    :goto_17
    if-ge v3, v4, :cond_50

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_47

    const/16 v5, 0x9

    if-eq v2, v5, :cond_47

    const/16 v5, 0xa

    if-eq v2, v5, :cond_47

    const/16 v5, 0xd

    if-eq v2, v5, :cond_47

    const/16 v5, 0x20

    if-lt v2, v5, :cond_34

    const v5, 0xd7ff

    if-le v2, v5, :cond_47

    :cond_34
    const v5, 0xe000

    if-lt v2, v5, :cond_3e

    const v5, 0xfffd

    if-le v2, v5, :cond_47

    :cond_3e
    const/high16 v5, 0x10000

    if-lt v2, v5, :cond_4e

    const v5, 0x10ffff

    if-gt v2, v5, :cond_4e

    :cond_47
    move v2, v0

    :goto_48
    if-eqz v2, :cond_11

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_17

    :cond_4e
    move v2, v1

    goto :goto_48

    :cond_50
    move v0, v1

    goto :goto_11
.end method

.method public static a([B[B)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_6

    move v1, v2

    :cond_5
    :goto_5
    return v1

    :cond_6
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_f
    array-length v3, p0

    if-eq v0, v3, :cond_1b

    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1b
    move v1, v2

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 8

    const/16 v6, 0x3d

    const/4 v1, 0x0

    if-nez p0, :cond_7

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v0, v3

    :goto_c
    add-int/lit8 v2, v0, -0x1

    aget-byte v2, v3, v2

    if-ne v2, v6, :cond_15

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_15
    array-length v2, v3

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    new-array v2, v0, [B

    move v0, v1

    :goto_1c
    array-length v4, v3

    if-ge v0, v4, :cond_7a

    aget-byte v4, v3, v0

    if-ne v4, v6, :cond_28

    aput-byte v1, v3, v0

    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_28
    aget-byte v4, v3, v0

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_33

    const/16 v4, 0x3f

    aput-byte v4, v3, v0

    goto :goto_25

    :cond_33
    aget-byte v4, v3, v0

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_3e

    const/16 v4, 0x3e

    aput-byte v4, v3, v0

    goto :goto_25

    :cond_3e
    aget-byte v4, v3, v0

    const/16 v5, 0x30

    if-lt v4, v5, :cond_52

    aget-byte v4, v3, v0

    const/16 v5, 0x39

    if-gt v4, v5, :cond_52

    aget-byte v4, v3, v0

    add-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    goto :goto_25

    :cond_52
    aget-byte v4, v3, v0

    const/16 v5, 0x61

    if-lt v4, v5, :cond_66

    aget-byte v4, v3, v0

    const/16 v5, 0x7a

    if-gt v4, v5, :cond_66

    aget-byte v4, v3, v0

    add-int/lit8 v4, v4, -0x47

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    goto :goto_25

    :cond_66
    aget-byte v4, v3, v0

    const/16 v5, 0x41

    if-lt v4, v5, :cond_25

    aget-byte v4, v3, v0

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_25

    aget-byte v4, v3, v0

    add-int/lit8 v4, v4, -0x41

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    goto :goto_25

    :cond_7a
    move v0, v1

    :goto_7b
    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    if-ge v1, v4, :cond_c1

    aget-byte v4, v3, v0

    shl-int/lit8 v4, v4, 0x2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v3, v5

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v3, v5

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v3, v6

    ushr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, v3, v5

    shl-int/lit8 v5, v5, 0x6

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v3, v6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    goto :goto_7b

    :cond_c1
    array-length v4, v2

    if-ge v1, v4, :cond_d6

    aget-byte v4, v3, v0

    shl-int/lit8 v4, v4, 0x2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v3, v5

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    :cond_d6
    add-int/lit8 v1, v1, 0x1

    array-length v4, v2

    if-ge v1, v4, :cond_ef

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v0, v0, 0x2

    aget-byte v0, v3, v0

    ushr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0xf

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    :cond_ef
    move-object v0, v2

    goto/16 :goto_6
.end method

.method public static a([B)[B
    .registers 4

    const/4 v2, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4
.end method

.method private static a([B)[C
    .registers 4

    array-length v0, p0

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-eq v0, v2, :cond_11

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_4} :catch_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :catch_6
    move-exception v1

    goto :goto_5
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 27

    if-eqz p1, :cond_c

    const-string v2, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, -0x1

    const/4 v13, -0x1

    :try_start_17
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "from"

    const/4 v12, 0x0

    invoke-virtual {v14, v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_24} :catch_31a

    move-result-object v12

    :try_start_25
    const-string v9, "message"

    const/4 v10, 0x0

    invoke-virtual {v14, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2b} :catch_329

    move-result-object v10

    :try_start_2c
    const-string v8, "fileType"

    const/4 v9, 0x0

    invoke-virtual {v14, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_32} :catch_338

    move-result-object v9

    :try_start_33
    const-string v5, "topic"

    const/4 v8, 0x0

    invoke-virtual {v14, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_39} :catch_348

    move-result-object v8

    :try_start_3a
    const-string v4, "session_key"

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "timestamp"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v14, v4, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_4a} :catch_355

    move-result-wide v4

    if-eqz v15, :cond_67

    :try_start_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    move-object/from16 v0, p0

    iget-object v3, v0, Lat;->a:Lf;

    invoke-static {v3}, Lf;->b(Lf;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v15}, Lf;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/arrownock/im/callback/AnIMGetSessionInfoCallbackData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/arrownock/im/callback/AnIMGetSessionInfoCallbackData;->isError()Z

    move-result v3

    if-nez v3, :cond_67

    invoke-virtual {v2}, Lcom/arrownock/im/callback/AnIMGetSessionInfoCallbackData;->getParties()Ljava/util/Set;
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_66} :catch_35f

    move-result-object v11

    :cond_67
    :try_start_67
    const-string v2, "msg_id"

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_6d} :catch_36a

    move-result-object v7

    :try_start_6e
    const-string v2, "customData"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_38e

    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_7f} :catch_375

    :goto_7f
    :try_start_7f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_92} :catch_93

    goto :goto_7f

    :catch_93
    move-exception v2

    move-object v6, v8

    move-object v8, v10

    move-object v10, v12

    move-wide/from16 v23, v4

    move-object v4, v3

    move-object v5, v7

    move-wide/from16 v2, v23

    move-object v7, v9

    move-object v9, v11

    :goto_9f
    move-object v14, v6

    move-object/from16 v16, v7

    move-object v7, v4

    move-object v6, v8

    move-object v4, v10

    move-wide/from16 v23, v2

    move-object v3, v5

    move v2, v13

    move-object v5, v9

    move-wide/from16 v8, v23

    :goto_ac
    sparse-switch v2, :sswitch_data_392

    move-object/from16 v0, p0

    iget-object v3, v0, Lat;->a:Lf;

    invoke-static {v3}, Lf;->d(Lf;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Wrong message type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_cb
    move-object v2, v3

    :goto_cc
    :try_start_cc
    const-string v3, "msg_type"

    const/4 v6, -0x1

    invoke-virtual {v14, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_d2
    .catch Lorg/json/JSONException; {:try_start_cc .. :try_end_d2} :catch_380

    move-result v3

    move-object v14, v8

    move-object/from16 v16, v9

    move-object v6, v10

    move-wide v8, v4

    move-object v5, v11

    move-object v4, v12

    move-object/from16 v23, v2

    move v2, v3

    move-object v3, v7

    move-object/from16 v7, v23

    goto :goto_ac

    :sswitch_e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v2, Lcom/arrownock/im/callback/AnIMMessageCallbackData;

    invoke-direct/range {v2 .. v9}, Lcom/arrownock/im/callback/AnIMMessageCallbackData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;J)V

    :try_start_f0
    move-object/from16 v0, p0

    iget-object v3, v0, Lat;->a:Lf;

    invoke-static {v3}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/arrownock/im/callback/IAnIMCallback;->receivedMessage(Lcom/arrownock/im/callback/AnIMMessageCallbackData;)V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_fb} :catch_fd

    goto/16 :goto_c

    :catch_fd
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    :sswitch_103
    const/4 v2, 0x0

    new-array v15, v2, [B

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_110

    invoke-static {v6}, Laz;->a(Ljava/lang/String;)[B

    move-result-object v15

    :cond_110
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v11, Lcom/arrownock/im/callback/AnIMBinaryCallbackData;

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object/from16 v17, v7

    move-wide/from16 v18, v8

    invoke-direct/range {v11 .. v19}, Lcom/arrownock/im/callback/AnIMBinaryCallbackData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[BLjava/lang/String;Ljava/util/Map;J)V

    :try_start_126
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v2

    invoke-interface {v2, v11}, Lcom/arrownock/im/callback/IAnIMCallback;->receivedBinary(Lcom/arrownock/im/callback/AnIMBinaryCallbackData;)V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_131} :catch_133

    goto/16 :goto_c

    :catch_133
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    :sswitch_139
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v2, Lcom/arrownock/im/callback/AnIMTopicMessageCallbackData;

    move-object v5, v14

    invoke-direct/range {v2 .. v9}, Lcom/arrownock/im/callback/AnIMTopicMessageCallbackData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    :try_start_149
    move-object/from16 v0, p0

    iget-object v3, v0, Lat;->a:Lf;

    invoke-static {v3}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/arrownock/im/callback/IAnIMCallback;->receivedTopicMessage(Lcom/arrownock/im/callback/AnIMTopicMessageCallbackData;)V
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_154} :catch_156

    goto/16 :goto_c

    :catch_156
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    :sswitch_15c
    const/4 v2, 0x0

    new-array v15, v2, [B

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_169

    invoke-static {v6}, Laz;->a(Ljava/lang/String;)[B

    move-result-object v15

    :cond_169
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v11, Lcom/arrownock/im/callback/AnIMTopicBinaryCallbackData;

    move-object v12, v3

    move-object v13, v4

    move-object/from16 v17, v7

    move-wide/from16 v18, v8

    invoke-direct/range {v11 .. v19}, Lcom/arrownock/im/callback/AnIMTopicBinaryCallbackData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;J)V

    :try_start_17e
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v2

    invoke-interface {v2, v11}, Lcom/arrownock/im/callback/IAnIMCallback;->receivedTopicBinary(Lcom/arrownock/im/callback/AnIMTopicBinaryCallbackData;)V
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_189} :catch_18b

    goto/16 :goto_c

    :catch_18b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    :sswitch_191
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v15, Lcom/arrownock/im/callback/AnIMNoticeCallbackData;

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-wide/from16 v20, v8

    move-object/from16 v22, v14

    invoke-direct/range {v15 .. v22}, Lcom/arrownock/im/callback/AnIMNoticeCallbackData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;)V

    :try_start_1ac
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v2

    invoke-interface {v2, v15}, Lcom/arrownock/im/callback/IAnIMCallback;->receivedNotice(Lcom/arrownock/im/callback/AnIMNoticeCallbackData;)V
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1b7} :catch_1b9

    goto/16 :goto_c

    :catch_1b9
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    :sswitch_1bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v2, Lcom/arrownock/im/callback/AnIMReceiveACKCallbackData;

    invoke-direct {v2, v3, v4}, Lcom/arrownock/im/callback/AnIMReceiveACKCallbackData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1ce
    move-object/from16 v0, p0

    iget-object v3, v0, Lat;->a:Lf;

    invoke-static {v3}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/arrownock/im/callback/IAnIMCallback;->receivedReceiveACK(Lcom/arrownock/im/callback/AnIMReceiveACKCallbackData;)V
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1d9} :catch_1db

    goto/16 :goto_c

    :catch_1db
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    :sswitch_1e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v2, Lcom/arrownock/im/callback/AnIMReadACKCallbackData;

    invoke-direct {v2, v3, v4}, Lcom/arrownock/im/callback/AnIMReadACKCallbackData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1f0
    move-object/from16 v0, p0

    iget-object v3, v0, Lat;->a:Lf;

    invoke-static {v3}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/arrownock/im/callback/IAnIMCallback;->receivedReadACK(Lcom/arrownock/im/callback/AnIMReadACKCallbackData;)V
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_1fb} :catch_1fd

    goto/16 :goto_c

    :catch_1fd
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    :sswitch_203
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lji;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v2, Lau;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lau;-><init>(Lat;)V

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_c

    :sswitch_21e
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lji;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v2, Lav;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lav;-><init>(Lat;)V

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_c

    :sswitch_239
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lbi;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v2, "sid"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lat;->a:Lf;

    invoke-static {v3}, Lf;->a(Lf;)Lbi;

    move-result-object v3

    :try_start_253
    iget-object v3, v3, Lbi;->a:Lcom/arrownock/live/AnLive;

    # getter for: Lcom/arrownock/live/AnLive;->a:Lbh;
    invoke-static {v3}, Lcom/arrownock/live/AnLive;->access$400(Lcom/arrownock/live/AnLive;)Lbh;

    move-result-object v3

    invoke-interface {v3, v2}, Lbh;->validateSession(Ljava/lang/String;)V
    :try_end_25c
    .catch Ljava/lang/Exception; {:try_start_253 .. :try_end_25c} :catch_25e

    goto/16 :goto_c

    :catch_25e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    :sswitch_264
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lbi;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v2, "o"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_276
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_27d
    .catch Ljava/lang/Exception; {:try_start_276 .. :try_end_27d} :catch_317

    :goto_27d
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lbi;

    move-result-object v2

    iget-object v2, v2, Lbi;->a:Lcom/arrownock/live/AnLive;

    invoke-static {v2, v4}, Lcom/arrownock/live/AnLive;->access$700(Lcom/arrownock/live/AnLive;Ljava/lang/String;)Lcy;

    move-result-object v2

    sget-object v3, Lorg/webrtc/SessionDescription$Type;->OFFER:Lorg/webrtc/SessionDescription$Type;

    invoke-virtual {v2, v3, v6}, Lcy;->a(Lorg/webrtc/SessionDescription$Type;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcy;->b()V

    goto/16 :goto_c

    :sswitch_295
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lbi;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v2, "o"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_2a7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2ae
    .catch Ljava/lang/Exception; {:try_start_2a7 .. :try_end_2ae} :catch_315

    :goto_2ae
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lbi;

    move-result-object v2

    iget-object v2, v2, Lbi;->a:Lcom/arrownock/live/AnLive;

    invoke-static {v2, v4}, Lcom/arrownock/live/AnLive;->access$700(Lcom/arrownock/live/AnLive;Ljava/lang/String;)Lcy;

    move-result-object v2

    sget-object v3, Lorg/webrtc/SessionDescription$Type;->ANSWER:Lorg/webrtc/SessionDescription$Type;

    invoke-virtual {v2, v3, v6}, Lcy;->a(Lorg/webrtc/SessionDescription$Type;Ljava/lang/String;)V

    goto/16 :goto_c

    :sswitch_2c3
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lbi;

    move-result-object v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lbi;

    move-result-object v2

    :try_start_2d5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lbi;->a:Lcom/arrownock/live/AnLive;

    invoke-static {v2, v4}, Lcom/arrownock/live/AnLive;->access$700(Lcom/arrownock/live/AnLive;Ljava/lang/String;)Lcy;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcy;->a(Lorg/json/JSONObject;)V
    :try_end_2e3
    .catch Lorg/json/JSONException; {:try_start_2d5 .. :try_end_2e3} :catch_2e5

    goto/16 :goto_c

    :catch_2e5
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_c

    :sswitch_2eb
    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lbi;

    move-result-object v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->a(Lf;)Lbi;

    move-result-object v2

    :try_start_2fd
    iget-object v3, v2, Lbi;->a:Lcom/arrownock/live/AnLive;

    # getter for: Lcom/arrownock/live/AnLive;->a:Lcom/arrownock/live/IAnLiveEventListener;
    invoke-static {v3}, Lcom/arrownock/live/AnLive;->access$900(Lcom/arrownock/live/AnLive;)Lcom/arrownock/live/IAnLiveEventListener;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/arrownock/live/IAnLiveEventListener;->onRemotePartyDisconnected(Ljava/lang/String;)V

    iget-object v2, v2, Lbi;->a:Lcom/arrownock/live/AnLive;

    # invokes: Lcom/arrownock/live/AnLive;->a()V
    invoke-static {v2}, Lcom/arrownock/live/AnLive;->access$1000(Lcom/arrownock/live/AnLive;)V
    :try_end_30b
    .catch Ljava/lang/Exception; {:try_start_2fd .. :try_end_30b} :catch_30d
    .catchall {:try_start_2fd .. :try_end_30b} :catchall_313

    goto/16 :goto_c

    :catch_30d
    move-exception v2

    :try_start_30e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_311
    .catchall {:try_start_30e .. :try_end_311} :catchall_313

    goto/16 :goto_c

    :catchall_313
    move-exception v2

    throw v2

    :catch_315
    move-exception v2

    goto :goto_2ae

    :catch_317
    move-exception v2

    goto/16 :goto_27d

    :catch_31a
    move-exception v10

    move-object v10, v9

    move-object v9, v11

    move-object/from16 v23, v4

    move-object v4, v6

    move-object/from16 v6, v23

    move-object/from16 v24, v7

    move-object v7, v5

    move-object/from16 v5, v24

    goto/16 :goto_9f

    :catch_329
    move-exception v9

    move-object v9, v11

    move-object v10, v12

    move-object/from16 v23, v4

    move-object v4, v6

    move-object/from16 v6, v23

    move-object/from16 v24, v5

    move-object v5, v7

    move-object/from16 v7, v24

    goto/16 :goto_9f

    :catch_338
    move-exception v8

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object/from16 v23, v5

    move-object v5, v7

    move-object/from16 v7, v23

    move-object/from16 v24, v6

    move-object v6, v4

    move-object/from16 v4, v24

    goto/16 :goto_9f

    :catch_348
    move-exception v5

    move-object v5, v7

    move-object v8, v10

    move-object v7, v9

    move-object v10, v12

    move-object v9, v11

    move-object/from16 v23, v6

    move-object v6, v4

    move-object/from16 v4, v23

    goto/16 :goto_9f

    :catch_355
    move-exception v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    goto/16 :goto_9f

    :catch_35f
    move-exception v2

    move-wide v2, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    goto/16 :goto_9f

    :catch_36a
    move-exception v2

    move-wide v2, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    goto/16 :goto_9f

    :catch_375
    move-exception v2

    move-wide v2, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    goto/16 :goto_9f

    :catch_380
    move-exception v3

    move-object v6, v8

    move-object v8, v10

    move-object v10, v12

    move-wide/from16 v23, v4

    move-object v4, v2

    move-object v5, v7

    move-wide/from16 v2, v23

    move-object v7, v9

    move-object v9, v11

    goto/16 :goto_9f

    :cond_38e
    move-object v2, v6

    goto/16 :goto_cc

    nop

    :sswitch_data_392
    .sparse-switch
        0x1 -> :sswitch_e1
        0x2 -> :sswitch_103
        0x3 -> :sswitch_139
        0x4 -> :sswitch_15c
        0x5 -> :sswitch_191
        0xb -> :sswitch_1bf
        0xc -> :sswitch_1e1
        0x15 -> :sswitch_203
        0x16 -> :sswitch_21e
        0x1f -> :sswitch_239
        0x20 -> :sswitch_264
        0x21 -> :sswitch_295
        0x22 -> :sswitch_2c3
        0x23 -> :sswitch_2eb
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    iget-object v3, p0, Lat;->a:Lf;

    invoke-static {v3}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v3

    if-eqz v3, :cond_50

    const-string v3, "clearSession"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    if-eqz p2, :cond_52

    :try_start_1d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "msgId"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "timestamp"

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_3e} :catch_51

    move-result-wide v0

    :cond_3f
    move-wide v4, v0

    :goto_40
    new-instance v0, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;

    const/4 v1, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;J)V

    :try_start_47
    iget-object v1, p0, Lat;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMCallback;->messageSent(Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_50} :catch_54

    :cond_50
    :goto_50
    return-void

    :catch_51
    move-exception v3

    :cond_52
    move-wide v4, v0

    goto :goto_40

    :catch_54
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_50
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    invoke-static {}, Lf;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lat;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    if-eqz v0, :cond_2f

    new-instance v0, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;

    const/4 v1, 0x1

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc20

    invoke-direct {v2, v3, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    const-wide/16 v4, -0x1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;J)V

    :try_start_26
    iget-object v1, p0, Lat;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMCallback;->messageSent(Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    :cond_2f
    :goto_2f
    return-void

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lat;->a:Lf;

    invoke-static {v0}, Lf;->d(Lf;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "General Problem occured. Exception Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Exception Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lat;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    if-eqz v0, :cond_3e

    new-instance v0, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;

    sget-object v1, Lcom/arrownock/im/AnIMStatus;->ONLINE:Lcom/arrownock/im/AnIMStatus;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;-><init>(Lcom/arrownock/im/AnIMStatus;Lcom/arrownock/exception/ArrownockException;)V

    sget-object v1, Lcm;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, ""

    iget-object v2, p0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->e(Lf;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lat;->a:Lf;

    iget-object v2, p0, Lat;->a:Lf;

    invoke-static {v2}, Lf;->e(Lf;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lf;->a(Lf;Ljava/lang/String;)V

    :cond_31
    :try_start_31
    new-instance v1, Law;

    invoke-direct {v1, p0, v0}, Law;-><init>(Lat;Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3e} :catch_3f

    :cond_3e
    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e
.end method

.method public final b(Ljava/lang/Throwable;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lat;->a:Lf;

    invoke-static {}, Lf;->a()Z

    iget-object v0, p0, Lat;->a:Lf;

    invoke-static {v0}, Lf;->b(Lf;)Lji;

    iget-object v0, p0, Lat;->a:Lf;

    invoke-static {v0}, Lf;->b(Lf;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lat;->a:Lf;

    invoke-static {v0, v5}, Lf;->a(Lf;Z)Z

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lat;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_4c

    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_4c

    new-instance v0, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;

    iget-object v1, p0, Lat;->a:Lf;

    invoke-virtual {v1}, Lf;->a()Lcom/arrownock/im/AnIMStatus;

    move-result-object v1

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    const-string v3, "Connection to IM server is broken."

    check-cast p1, Ljava/lang/Exception;

    const/16 v4, 0xc22

    invoke-direct {v2, v3, p1, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    invoke-direct {v0, v1, v2}, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;-><init>(Lcom/arrownock/im/AnIMStatus;Lcom/arrownock/exception/ArrownockException;)V

    :goto_3d
    :try_start_3d
    iget-object v1, p0, Lat;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMCallback;->statusUpdate(Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_46} :catch_47

    goto :goto_18

    :catch_47
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    :cond_4c
    iget-object v0, p0, Lat;->a:Lf;

    invoke-static {v0}, Lf;->c(Lf;)Z

    move-result v0

    if-eqz v0, :cond_6e

    new-instance v0, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;

    iget-object v1, p0, Lat;->a:Lf;

    invoke-virtual {v1}, Lf;->a()Lcom/arrownock/im/AnIMStatus;

    move-result-object v1

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    const-string v3, "User logged in from other device, client force closed."

    const/16 v4, 0xc21

    invoke-direct {v2, v3, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;-><init>(Lcom/arrownock/im/AnIMStatus;Lcom/arrownock/exception/ArrownockException;)V

    iget-object v1, p0, Lat;->a:Lf;

    invoke-static {v1, v5}, Lf;->b(Lf;Z)Z

    goto :goto_3d

    :cond_6e
    new-instance v0, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;

    iget-object v1, p0, Lat;->a:Lf;

    invoke-virtual {v1}, Lf;->a()Lcom/arrownock/im/AnIMStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;-><init>(Lcom/arrownock/im/AnIMStatus;Lcom/arrownock/exception/ArrownockException;)V

    goto :goto_3d
.end method

.method public final c(Ljava/lang/Throwable;)V
    .registers 7

    iget-object v0, p0, Lat;->a:Lf;

    invoke-static {v0}, Lf;->d(Lf;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to connect to IM Server. Exception Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Exception Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lat;->a:Lf;

    invoke-static {v0}, Lf;->b(Lf;)Lji;

    instance-of v0, p1, Ljm;

    if-eqz v0, :cond_42

    move-object v0, p1

    check-cast v0, Ljm;

    invoke-virtual {v0}, Ljm;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_42

    :cond_41
    :goto_41
    return-void

    :cond_42
    iget-object v0, p0, Lat;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    if-eqz v0, :cond_41

    new-instance v0, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;

    iget-object v1, p0, Lat;->a:Lf;

    invoke-virtual {v1}, Lf;->a()Lcom/arrownock/im/AnIMStatus;

    move-result-object v1

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc1e

    invoke-direct {v2, v3, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;-><init>(Lcom/arrownock/im/AnIMStatus;Lcom/arrownock/exception/ArrownockException;)V

    :try_start_60
    iget-object v1, p0, Lat;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMCallback;->statusUpdate(Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_69} :catch_6a

    goto :goto_41

    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41
.end method

.method public final d(Ljava/lang/Throwable;)V
    .registers 7

    iget-object v0, p0, Lat;->a:Lf;

    invoke-static {}, Lf;->a()Z

    iget-object v0, p0, Lat;->a:Lf;

    invoke-static {v0}, Lf;->d(Lf;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to disconnect to IM Server. Exception Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Exception Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lat;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    if-eqz v0, :cond_5a

    new-instance v0, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;

    iget-object v1, p0, Lat;->a:Lf;

    invoke-virtual {v1}, Lf;->a()Lcom/arrownock/im/AnIMStatus;

    move-result-object v1

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc1f

    invoke-direct {v2, v3, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;-><init>(Lcom/arrownock/im/AnIMStatus;Lcom/arrownock/exception/ArrownockException;)V

    :try_start_51
    iget-object v1, p0, Lat;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMCallback;->statusUpdate(Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5a} :catch_5b

    :cond_5a
    :goto_5a
    return-void

    :catch_5b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5a
.end method

.method public final e(Ljava/lang/Throwable;)V
    .registers 7

    iget-object v0, p0, Lat;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;

    iget-object v1, p0, Lat;->a:Lf;

    invoke-virtual {v1}, Lf;->a()Lcom/arrownock/im/AnIMStatus;

    move-result-object v1

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc1e

    invoke-direct {v2, v3, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;-><init>(Lcom/arrownock/im/AnIMStatus;Lcom/arrownock/exception/ArrownockException;)V

    :try_start_1e
    new-instance v1, Lax;

    invoke-direct {v1, p0, v0}, Lax;-><init>(Lat;Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_2c

    :cond_2b
    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method
