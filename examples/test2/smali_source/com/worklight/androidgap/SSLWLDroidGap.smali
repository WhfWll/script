.class public Lcom/worklight/androidgap/SSLWLDroidGap;
.super Lcom/worklight/androidgap/WLDroidGap;
.source "SSLWLDroidGap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/SSLWLDroidGap$MyCordovaWebViewClientT;,
        Lcom/worklight/androidgap/SSLWLDroidGap$MyIceCreamCordovaWebViewClientT;,
        Lcom/worklight/androidgap/SSLWLDroidGap$WebViewListener;
    }
.end annotation


# static fields
.field public static final HONEYCOMB:I = 0xb


# instance fields
.field private absolutePathToExternalAppFiles:Ljava/lang/String;

.field mWebViewListener:Lcom/worklight/androidgap/SSLWLDroidGap$WebViewListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/SSLWLDroidGap;

    const v1, 0xb

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/worklight/androidgap/WLDroidGap;-><init>()V

    return-void
.end method


# virtual methods
.method protected native bindBrowser(Lorg/apache/cordova/CordovaWebView;Z)V
.end method

.method public native getAbsolutePathToExternalAppFiles()Ljava/lang/String;
.end method

.method public native getAbsolutePathToExternalWWWAppFiles()Ljava/lang/String;
.end method

.method public native init()V
.end method

.method public native setWebViewListener(Lcom/worklight/androidgap/SSLWLDroidGap$WebViewListener;)V
.end method
