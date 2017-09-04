.class public Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$xWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SplashDetailAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "xWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$xWebChromeClient;

    const v1, 0x116

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;)V
    .registers 2

    .prologue
    .line 251
    iput-object p1, p0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$xWebChromeClient;->this$0:Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public native onProgressChanged(Landroid/webkit/WebView;I)V
.end method

.method public native onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method
