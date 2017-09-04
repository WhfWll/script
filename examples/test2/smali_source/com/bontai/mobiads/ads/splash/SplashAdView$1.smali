.class Lcom/bontai/mobiads/ads/splash/SplashAdView$1;
.super Lcom/bontai/mobiads/ads/gif/GifDataDownloader;
.source "SplashAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bontai/mobiads/ads/splash/SplashAdView;->initUI(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bontai/mobiads/ads/splash/SplashAdView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/splash/SplashAdView$1;

    const v1, 0x105

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/bontai/mobiads/ads/splash/SplashAdView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView$1;->this$0:Lcom/bontai/mobiads/ads/splash/SplashAdView;

    .line 222
    invoke-direct {p0}, Lcom/bontai/mobiads/ads/gif/GifDataDownloader;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/bontai/mobiads/ads/splash/SplashAdView$1;->onPostExecute([B)V

    return-void
.end method

.method protected native onPostExecute([B)V
.end method
