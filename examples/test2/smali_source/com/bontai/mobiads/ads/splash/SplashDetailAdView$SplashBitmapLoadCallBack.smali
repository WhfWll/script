.class Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$SplashBitmapLoadCallBack;
.super Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;
.source "SplashDetailAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;
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
.field final synthetic this$0:Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$SplashBitmapLoadCallBack;

    const v1, 0x115

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;)V
    .registers 2

    .prologue
    .line 215
    .local p0, "this":Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$SplashBitmapLoadCallBack;, "Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$SplashBitmapLoadCallBack<TT;>;"
    iput-object p1, p0, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$SplashBitmapLoadCallBack;->this$0:Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;

    invoke-direct {p0}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$SplashBitmapLoadCallBack;)V
    .registers 3

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/bontai/mobiads/ads/splash/SplashDetailAdView$SplashBitmapLoadCallBack;-><init>(Lcom/bontai/mobiads/ads/splash/SplashDetailAdView;)V

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

.method public native onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation
.end method
