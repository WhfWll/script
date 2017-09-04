.class Lcom/bontai/mobiads/ads/splash/SplashAdView$11;
.super Ljava/lang/Object;
.source "SplashAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bontai/mobiads/ads/splash/SplashAdView;->closeAdDetail()V
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

    const-class v0, Lcom/bontai/mobiads/ads/splash/SplashAdView$11;

    const v1, 0x104

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/bontai/mobiads/ads/splash/SplashAdView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bontai/mobiads/ads/splash/SplashAdView$11;->this$0:Lcom/bontai/mobiads/ads/splash/SplashAdView;

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
