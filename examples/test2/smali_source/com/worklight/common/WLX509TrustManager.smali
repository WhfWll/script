.class public Lcom/worklight/common/WLX509TrustManager;
.super Ljava/lang/Object;
.source "WLX509TrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private standardTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/common/WLX509TrustManager;

    const v1, 0x4b8

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 9
    .param p1, "keystore"    # Ljava/security/KeyStore;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/worklight/common/WLX509TrustManager;->standardTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 22
    :try_start_6
    const-string v4, "SSL"

    const-string v5, "initial keystore"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 25
    .local v1, "factory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v1, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 26
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 27
    .local v3, "trustmanagers":[Ljavax/net/ssl/TrustManager;
    array-length v4, v3

    if-nez v4, :cond_41

    .line 28
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    const-string v5, "no trust manager found"

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_27} :catch_27
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_27} :catch_49

    .line 31
    .end local v1    # "factory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v3    # "trustmanagers":[Ljavax/net/ssl/TrustManager;
    :catch_27
    move-exception v0

    .line 32
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "SSL"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "init keystore error. NoSuchAlgorithmException\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_40
    return-void

    .line 30
    .restart local v1    # "factory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v3    # "trustmanagers":[Ljavax/net/ssl/TrustManager;
    :cond_41
    const/4 v4, 0x0

    :try_start_42
    aget-object v4, v3, v4

    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    iput-object v4, p0, Lcom/worklight/common/WLX509TrustManager;->standardTrustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_42 .. :try_end_48} :catch_27
    .catch Ljava/security/KeyStoreException; {:try_start_42 .. :try_end_48} :catch_49

    goto :goto_40

    .line 33
    .end local v1    # "factory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v3    # "trustmanagers":[Ljavax/net/ssl/TrustManager;
    :catch_49
    move-exception v2

    .line 34
    .local v2, "ke":Ljava/security/KeyStoreException;
    const-string v4, "SSL"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "init keystore error. KeyStoreException\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method


# virtual methods
.method public native checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
.end method

.method public native checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
.end method

.method public native getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
.end method
