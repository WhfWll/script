.class Lcom/bontai/mobiads/ads/splash/SplashAdView$4$1;
.super Ljava/lang/Object;
.source "SplashAdView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bontai/mobiads/ads/splash/SplashAdView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bontai/mobiads/ads/splash/SplashAdView$4;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/splash/SplashAdView$4$1;

    const v1, 0x108

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/bontai/mobiads/ads/splash/SplashAdView$4;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView$4$1;->this$1:Lcom/bontai/mobiads/ads/splash/SplashAdView$4;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onAnimationEnd(Landroid/view/animation/Animation;)V
.end method

.method public native onAnimationRepeat(Landroid/view/animation/Animation;)V
.end method

.method public native onAnimationStart(Landroid/view/animation/Animation;)V
.end method
