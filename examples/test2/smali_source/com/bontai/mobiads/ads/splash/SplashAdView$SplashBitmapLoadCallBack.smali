.class Lcom/bontai/mobiads/ads/splash/SplashAdView$SplashBitmapLoadCallBack;
.super Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;
.source "SplashAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bontai/mobiads/ads/splash/SplashAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplashBitmapLoadCallBack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bontai/mobiads/ads/splash/SplashAdView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/splash/SplashAdView$SplashBitmapLoadCallBack;

    const v1, 0x10f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/bontai/mobiads/ads/splash/SplashAdView;)V
    .registers 2

    .prologue
    .line 441
    .local p0, "this":Lcom/bontai/mobiads/ads/splash/SplashAdView$SplashBitmapLoadCallBack;, "Lcom/bontai/mobiads/ads/splash/SplashAdView$SplashBitmapLoadCallBack<TT;>;"
    iput-object p1, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView$SplashBitmapLoadCallBack;->this$0:Lcom/bontai/mobiads/ads/splash/SplashAdView;

    invoke-direct {p0}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bontai/mobiads/ads/splash/SplashAdView;Lcom/bontai/mobiads/ads/splash/SplashAdView$SplashBitmapLoadCallBack;)V
    .registers 3

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/bontai/mobiads/ads/splash/SplashAdView$SplashBitmapLoadCallBack;-><init>(Lcom/bontai/mobiads/ads/splash/SplashAdView;)V

    return-void
.end method


# virtual methods
.method public native onLoadCompleted(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;",
            ")V"
        }
    .end annotation
.end method
