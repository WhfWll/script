.class public Lcom/worklight/androidgap/SSLWLDroidGap$MyCordovaWebViewClientT;
.super Lcom/customized/webviewclient/MyCordovaWebViewClient;
.source "SSLWLDroidGap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/SSLWLDroidGap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyCordovaWebViewClientT"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/SSLWLDroidGap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/SSLWLDroidGap$MyCordovaWebViewClientT;

    const v1, 0x436

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/worklight/androidgap/SSLWLDroidGap;Lorg/apache/cordova/api/CordovaInterface;)V
    .registers 3
    .param p2, "cordova"    # Lorg/apache/cordova/api/CordovaInterface;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/worklight/androidgap/SSLWLDroidGap$MyCordovaWebViewClientT;->this$0:Lcom/worklight/androidgap/SSLWLDroidGap;

    .line 55
    invoke-direct {p0, p2}, Lcom/customized/webviewclient/MyCordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/worklight/androidgap/SSLWLDroidGap;Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .registers 4
    .param p2, "cordova"    # Lorg/apache/cordova/api/CordovaInterface;
    .param p3, "view"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/worklight/androidgap/SSLWLDroidGap$MyCordovaWebViewClientT;->this$0:Lcom/worklight/androidgap/SSLWLDroidGap;

    .line 61
    invoke-direct {p0, p2, p3}, Lcom/customized/webviewclient/MyCordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 63
    return-void
.end method


# virtual methods
.method public native onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public native onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method
