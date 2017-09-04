.class public Lcom/worklight/common/security/WLDeviceAuthManager;
.super Ljava/lang/Object;
.source "WLDeviceAuthManager.java"


# static fields
.field private static final ALG:Ljava/lang/String; = "alg"

.field private static final APPLICATION:Ljava/lang/String; = "application"

.field private static final EXP:Ljava/lang/String; = "exp"

.field private static final JPK:Ljava/lang/String; = "jpk"

.field private static final KEYSTORE_FILENAME:Ljava/lang/String; = ".keystore"

.field private static final MOD:Ljava/lang/String; = "mod"

.field private static final RSA:Ljava/lang/String; = "RSA"

.field private static final X5C:Ljava/lang/String; = "x5c"

.field private static instance:Lcom/worklight/common/security/WLDeviceAuthManager;

.field private static keyStorePassword:[C


# instance fields
.field private context:Landroid/content/Context;

.field private deviceUuid:Ljava/lang/String;

.field private keyPairHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation
.end field

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/common/security/WLDeviceAuthManager;

    const v1, 0x4bb

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const/4 v0, 0x0

    sput-object v0, Lcom/worklight/common/security/WLDeviceAuthManager;->keyStorePassword:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/common/security/WLDeviceAuthManager;->keyPairHash:Ljava/util/HashMap;

    .line 91
    return-void
.end method

.method private native getAlias(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native declared-synchronized getInstance()Lcom/worklight/common/security/WLDeviceAuthManager;
.end method

.method private native signCsrData(Ljava/lang/String;Ljava/security/PrivateKey;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method private native signData(Ljava/lang/String;Ljava/security/PrivateKey;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method


# virtual methods
.method public native generateKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method public native getDeviceUUID(Landroid/content/Context;)Ljava/lang/String;
.end method

.method protected native getPrivateKeyEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation
.end method

.method public native init(Landroid/app/Activity;Landroid/webkit/WebView;)V
.end method

.method public native isCertificateExists(Ljava/lang/String;)Z
.end method

.method public native removeEntityKeyStoreValues(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public native saveCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public native saveCertificate(Ljava/lang/String;Ljava/security/cert/Certificate;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public native signCsr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public native signDeviceAuth(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
