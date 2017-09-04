.class Lcn/domob/android/ads/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

.field final synthetic b:Lcn/domob/android/ads/g;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/g;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .registers 3

    .prologue
    .line 858
    iput-object p1, p0, Lcn/domob/android/ads/g$2;->b:Lcn/domob/android/ads/g;

    iput-object p2, p0, Lcn/domob/android/ads/g$2;->a:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 861
    iget-object v0, p0, Lcn/domob/android/ads/g$2;->b:Lcn/domob/android/ads/g;

    iget-object v0, v0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 862
    iget-object v0, p0, Lcn/domob/android/ads/g$2;->b:Lcn/domob/android/ads/g;

    iget-object v0, v0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/g$2;->b:Lcn/domob/android/ads/g;

    iget-object v1, v1, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdListener;->onFailedToReceiveFreshAd(Lcn/domob/android/ads/DomobAdView;)V

    .line 865
    :cond_19
    iget-object v0, p0, Lcn/domob/android/ads/g$2;->b:Lcn/domob/android/ads/g;

    iget-object v0, v0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->g()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 866
    iget-object v0, p0, Lcn/domob/android/ads/g$2;->b:Lcn/domob/android/ads/g;

    iget-object v0, v0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->g()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/g$2;->b:Lcn/domob/android/ads/g;

    iget-object v1, v1, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v2, p0, Lcn/domob/android/ads/g$2;->a:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 868
    :cond_34
    return-void
.end method
