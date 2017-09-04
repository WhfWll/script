.class public Lcom/worklight/common/SSLConfig;
.super Ljava/lang/Object;
.source "SSLConfig.java"


# static fields
.field public static final WL_CLIENT_PROPS_NAME:Ljava/lang/String; = "wlclient.properties"

.field public static final WL_HTTPS_PORT:Ljava/lang/String; = "wlServerHttpsPort"

.field public static final WL_SSL_IGNORE_CERTIFICATE:Ljava/lang/String; = "ignoreSSLCertificate"


# instance fields
.field private context:Landroid/content/Context;

.field private httpsPort:I

.field private isIgnoreSSLCertificate:Z

.field private isPrivateCA:Z

.field private keystore:Ljava/lang/String;

.field private keystorePassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/common/SSLConfig;

    const v1, 0x4ac

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Lcom/worklight/common/SSLConfig;->isPrivateCA:Z

    .line 19
    iput-boolean v0, p0, Lcom/worklight/common/SSLConfig;->isIgnoreSSLCertificate:Z

    .line 23
    const/16 v0, 0x1bb

    iput v0, p0, Lcom/worklight/common/SSLConfig;->httpsPort:I

    .line 28
    const-string v0, "server_trust2"

    iput-object v0, p0, Lcom/worklight/common/SSLConfig;->keystore:Ljava/lang/String;

    .line 32
    const-string v0, "passw0rd"

    iput-object v0, p0, Lcom/worklight/common/SSLConfig;->keystorePassword:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/worklight/common/SSLConfig;->context:Landroid/content/Context;

    .line 62
    return-void
.end method


# virtual methods
.method public native getContext()Landroid/content/Context;
.end method

.method public native getHttpsPort()I
.end method

.method public native getKeystore()Ljava/lang/String;
.end method

.method public native getKeystorePassword()Ljava/lang/String;
.end method

.method public native isIgnoreSSLCertificate()Z
.end method

.method public native isPrivateCA()Z
.end method

.method public native setContext(Landroid/content/Context;)V
.end method

.method public native setHttpsPort(I)V
.end method

.method public native setIgnoreSSLCertificate(Z)V
.end method

.method public native setKeystore(Ljava/lang/String;)V
.end method

.method public native setKeystorePassword(Ljava/lang/String;)V
.end method

.method public native setPrivateCA(Z)V
.end method
