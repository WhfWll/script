.class public Lcom/customized/webviewclient/MyCordovaWebViewClient;
.super Lorg/apache/cordova/CordovaWebViewClient;
.source "MyCordovaWebViewClient.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/customized/webviewclient/MyCordovaWebViewClient;

    const v1, 0x12f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/api/CordovaInterface;)V
    .registers 2
    .param p1, "cordova"    # Lorg/apache/cordova/api/CordovaInterface;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .registers 3
    .param p1, "cordova"    # Lorg/apache/cordova/api/CordovaInterface;
    .param p2, "view"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/CordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 19
    return-void
.end method


# virtual methods
.method public native onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end method
