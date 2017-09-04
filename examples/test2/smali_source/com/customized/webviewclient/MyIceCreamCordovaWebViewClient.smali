.class public Lcom/customized/webviewclient/MyIceCreamCordovaWebViewClient;
.super Lorg/apache/cordova/IceCreamCordovaWebViewClient;
.source "MyIceCreamCordovaWebViewClient.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/customized/webviewclient/MyIceCreamCordovaWebViewClient;

    const v1, 0x130

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/api/CordovaInterface;)V
    .registers 2
    .param p1, "cordova"    # Lorg/apache/cordova/api/CordovaInterface;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/apache/cordova/IceCreamCordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .registers 3
    .param p1, "cordova"    # Lorg/apache/cordova/api/CordovaInterface;
    .param p2, "view"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/IceCreamCordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 38
    return-void
.end method


# virtual methods
.method public native onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end method
