.class Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$1;
.super Ljava/lang/Object;
.source "SplashDetailAdView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;->showH5Ad(Landroid/view/View;[Landroid/view/animation/AnimationSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;

.field private final synthetic val$mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$1;

    const v1, 0x112

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;Landroid/webkit/WebView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$1;->this$0:Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;

    iput-object p2, p0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$1;->val$mWebView:Landroid/webkit/WebView;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end method
