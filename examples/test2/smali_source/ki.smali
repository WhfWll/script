.class public final Lki;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0x8

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.ibm.ssl.protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.ibm.ssl.contextProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.ibm.ssl.keyStore"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.ibm.ssl.keyStorePassword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.ibm.ssl.keyStoreType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.ibm.ssl.keyStoreProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.ibm.ssl.keyManager"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.ibm.ssl.trustStore"

    aput-object v2, v0, v1

    const-string v1, "com.ibm.ssl.trustStorePassword"

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const-string v2, "com.ibm.ssl.trustStoreType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.ibm.ssl.trustStoreProvider"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.ibm.ssl.trustManager"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.ibm.ssl.enabledCipherSuites"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.ibm.ssl.clientAuthentication"

    aput-object v2, v0, v1

    new-array v0, v3, [B

    fill-array-data v0, :array_58

    sput-object v0, Lki;->a:[B

    return-void

    :array_58
    .array-data 1
        -0x63t
        -0x59t
        -0x27t
        -0x80t
        0x5t
        -0x48t
        -0x77t
        -0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method private static a()Ljava/security/KeyStore;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkg;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_3
    const-string v0, "com.ibm.rcp.security.auth.SecurePlatform"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v0, "getKeyStore"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v0, "isLoggedIn"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_87

    const-string v0, "getKeyStore"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore;
    :try_end_38
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_38} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_38} :catch_3c
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_38} :catch_4b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_38} :catch_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_38} :catch_69
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_38} :catch_78

    :goto_38
    return-object v0

    :catch_39
    move-exception v0

    move-object v0, v1

    goto :goto_38

    :catch_3c
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4b
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5a
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_69
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_78
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_87
    move-object v0, v1

    goto :goto_38
.end method

.method private static a()Ljavax/net/ssl/SSLContext;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkg;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {v1}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "TLS"

    :cond_9
    invoke-static {v1}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_dd

    :try_start_f
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    move-object v6, v0

    :goto_14
    const/4 v0, 0x0

    invoke-static {v0}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16a

    invoke-static {}, Lki;->a()Ljava/security/KeyStore;

    move-result-object v2

    :goto_1f
    if-nez v2, :cond_15b

    if-nez v0, :cond_167

    const-string v0, "javax.net.ssl.keyStore"

    invoke-static {v0}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_2a
    const-string v0, "javax.net.ssl.keyStorePassword"

    invoke-static {v0}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_164

    const-string v2, "{xor}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e4

    invoke-static {v0}, Lki;->a(Ljava/lang/String;)[C

    move-result-object v0

    move-object v4, v0

    :goto_3f
    const-string v0, "javax.net.ssl.keyStoreType"

    invoke-static {v0}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_161

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_4c
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v0}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "ssl.KeyManagerFactory.algorithm"

    invoke-static {v0}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_5a} :catch_f7
    .catch Ljava/security/NoSuchProviderException; {:try_start_f .. :try_end_5a} :catch_105
    .catch Ljava/security/KeyManagementException; {:try_start_f .. :try_end_5a} :catch_113

    move-result-object v0

    if-eqz v0, :cond_15e

    :goto_5d
    if-eqz v5, :cond_15b

    if-eqz v3, :cond_15b

    if-eqz v4, :cond_15b

    if-eqz v0, :cond_15b

    :try_start_65
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    if-eqz v7, :cond_eb

    invoke-static {v0, v7}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    :goto_77
    invoke-virtual {v0, v2, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_7d
    .catch Ljava/security/KeyStoreException; {:try_start_65 .. :try_end_7d} :catch_f0
    .catch Ljava/security/cert/CertificateException; {:try_start_65 .. :try_end_7d} :catch_fe
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_7d} :catch_10c
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_7d} :catch_11a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_65 .. :try_end_7d} :catch_121
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_65 .. :try_end_7d} :catch_f7
    .catch Ljava/security/NoSuchProviderException; {:try_start_65 .. :try_end_7d} :catch_105
    .catch Ljava/security/KeyManagementException; {:try_start_65 .. :try_end_7d} :catch_113

    move-result-object v0

    move-object v5, v0

    :goto_7f
    :try_start_7f
    const-string v0, "javax.net.ssl.trustStore"

    invoke-static {v0}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "javax.net.ssl.trustStorePassword"

    invoke-static {v0}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_158

    const-string v2, "{xor}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_128

    invoke-static {v0}, Lki;->a(Ljava/lang/String;)[C

    move-result-object v0

    move-object v4, v0

    :goto_9a
    const/4 v0, 0x0

    invoke-static {v0}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_155

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_a6
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v0}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "ssl.TrustManagerFactory.algorithm"

    invoke-static {v0}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7f .. :try_end_b4} :catch_f7
    .catch Ljava/security/NoSuchProviderException; {:try_start_7f .. :try_end_b4} :catch_105
    .catch Ljava/security/KeyManagementException; {:try_start_7f .. :try_end_b4} :catch_113

    move-result-object v0

    if-eqz v0, :cond_152

    :goto_b7
    if-eqz v7, :cond_150

    if-eqz v3, :cond_150

    if-eqz v4, :cond_150

    if-eqz v0, :cond_150

    :try_start_bf
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    if-eqz v8, :cond_12f

    invoke-static {v0, v8}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    :goto_d1
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_d7
    .catch Ljava/security/KeyStoreException; {:try_start_bf .. :try_end_d7} :catch_134
    .catch Ljava/security/cert/CertificateException; {:try_start_bf .. :try_end_d7} :catch_13b
    .catch Ljava/io/FileNotFoundException; {:try_start_bf .. :try_end_d7} :catch_142
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_d7} :catch_149
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_bf .. :try_end_d7} :catch_f7
    .catch Ljava/security/NoSuchProviderException; {:try_start_bf .. :try_end_d7} :catch_105
    .catch Ljava/security/KeyManagementException; {:try_start_bf .. :try_end_d7} :catch_113

    move-result-object v0

    :goto_d8
    const/4 v1, 0x0

    :try_start_d9
    invoke-virtual {v6, v5, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object v6

    :cond_dd
    invoke-static {v0, v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_14

    :cond_e4
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
    :try_end_e7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d9 .. :try_end_e7} :catch_f7
    .catch Ljava/security/NoSuchProviderException; {:try_start_d9 .. :try_end_e7} :catch_105
    .catch Ljava/security/KeyManagementException; {:try_start_d9 .. :try_end_e7} :catch_113

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_3f

    :cond_eb
    :try_start_eb
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
    :try_end_ee
    .catch Ljava/security/KeyStoreException; {:try_start_eb .. :try_end_ee} :catch_f0
    .catch Ljava/security/cert/CertificateException; {:try_start_eb .. :try_end_ee} :catch_fe
    .catch Ljava/io/FileNotFoundException; {:try_start_eb .. :try_end_ee} :catch_10c
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_11a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_eb .. :try_end_ee} :catch_121
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_eb .. :try_end_ee} :catch_f7
    .catch Ljava/security/NoSuchProviderException; {:try_start_eb .. :try_end_ee} :catch_105
    .catch Ljava/security/KeyManagementException; {:try_start_eb .. :try_end_ee} :catch_113

    move-result-object v0

    goto :goto_77

    :catch_f0
    move-exception v0

    :try_start_f1
    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_f7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f1 .. :try_end_f7} :catch_f7
    .catch Ljava/security/NoSuchProviderException; {:try_start_f1 .. :try_end_f7} :catch_105
    .catch Ljava/security/KeyManagementException; {:try_start_f1 .. :try_end_f7} :catch_113

    :catch_f7
    move-exception v0

    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_fe
    move-exception v0

    :try_start_ff
    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_105
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ff .. :try_end_105} :catch_f7
    .catch Ljava/security/NoSuchProviderException; {:try_start_ff .. :try_end_105} :catch_105
    .catch Ljava/security/KeyManagementException; {:try_start_ff .. :try_end_105} :catch_113

    :catch_105
    move-exception v0

    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_10c
    move-exception v0

    :try_start_10d
    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_113
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10d .. :try_end_113} :catch_f7
    .catch Ljava/security/NoSuchProviderException; {:try_start_10d .. :try_end_113} :catch_105
    .catch Ljava/security/KeyManagementException; {:try_start_10d .. :try_end_113} :catch_113

    :catch_113
    move-exception v0

    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_11a
    move-exception v0

    :try_start_11b
    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_121
    move-exception v0

    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_128
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
    :try_end_12b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11b .. :try_end_12b} :catch_f7
    .catch Ljava/security/NoSuchProviderException; {:try_start_11b .. :try_end_12b} :catch_105
    .catch Ljava/security/KeyManagementException; {:try_start_11b .. :try_end_12b} :catch_113

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_9a

    :cond_12f
    :try_start_12f
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    :try_end_132
    .catch Ljava/security/KeyStoreException; {:try_start_12f .. :try_end_132} :catch_134
    .catch Ljava/security/cert/CertificateException; {:try_start_12f .. :try_end_132} :catch_13b
    .catch Ljava/io/FileNotFoundException; {:try_start_12f .. :try_end_132} :catch_142
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_132} :catch_149
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12f .. :try_end_132} :catch_f7
    .catch Ljava/security/NoSuchProviderException; {:try_start_12f .. :try_end_132} :catch_105
    .catch Ljava/security/KeyManagementException; {:try_start_12f .. :try_end_132} :catch_113

    move-result-object v0

    goto :goto_d1

    :catch_134
    move-exception v0

    :try_start_135
    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_13b
    move-exception v0

    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_142
    move-exception v0

    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_149
    move-exception v0

    new-instance v1, Lkh;

    invoke-direct {v1, v0}, Lkh;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_150
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_135 .. :try_end_150} :catch_f7
    .catch Ljava/security/NoSuchProviderException; {:try_start_135 .. :try_end_150} :catch_105
    .catch Ljava/security/KeyManagementException; {:try_start_135 .. :try_end_150} :catch_113

    :cond_150
    move-object v0, v1

    goto :goto_d8

    :cond_152
    move-object v0, v2

    goto/16 :goto_b7

    :cond_155
    move-object v3, v0

    goto/16 :goto_a6

    :cond_158
    move-object v4, v1

    goto/16 :goto_9a

    :cond_15b
    move-object v5, v1

    goto/16 :goto_7f

    :cond_15e
    move-object v0, v2

    goto/16 :goto_5d

    :cond_161
    move-object v3, v0

    goto/16 :goto_4c

    :cond_164
    move-object v4, v1

    goto/16 :goto_3f

    :cond_167
    move-object v5, v0

    goto/16 :goto_2a

    :cond_16a
    move-object v2, v1

    goto/16 :goto_1f
.end method

.method public static a()Ljavax/net/ssl/SSLSocketFactory;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkg;
        }
    .end annotation

    invoke-static {}, Lki;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)[C
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_6

    move-object v0, v2

    :goto_5
    return-object v0

    :cond_6
    const/4 v0, 0x5

    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkj;->a(Ljava/lang/String;)[B
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_25

    move-result-object v4

    move v0, v1

    :goto_10
    array-length v3, v4

    if-ge v0, v3, :cond_28

    aget-byte v3, v4, v0

    sget-object v5, Lki;->a:[B

    sget-object v6, Lki;->a:[B

    array-length v6, v6

    rem-int v6, v0, v6

    aget-byte v5, v5, v6

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :catch_25
    move-exception v0

    move-object v0, v2

    goto :goto_5

    :cond_28
    if-nez v4, :cond_2c

    move-object v0, v2

    goto :goto_5

    :cond_2c
    array-length v0, v4

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [C

    move v2, v1

    :goto_32
    array-length v0, v4

    if-ge v2, v0, :cond_4b

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v4, v2

    and-int/lit16 v6, v2, 0xff

    add-int/lit8 v2, v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v1

    move v1, v0

    goto :goto_32

    :cond_4b
    move-object v0, v3

    goto :goto_5
.end method

.method public static a()[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/16 v4, 0x2c

    invoke-static {v0}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    :goto_9
    return-object v0

    :cond_a
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_14
    if-ltz v1, :cond_24

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_14

    :cond_24
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_9
.end method
