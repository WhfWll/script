.class Lcn/domob/android/ads/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/u;->showAd(Lcn/domob/android/ads/n;[Landroid/view/animation/AnimationSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/u;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/u;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    iget-object v0, v0, Lcn/domob/android/ads/u;->o:Lcn/domob/android/ads/DomobAdEventListener;

    if-eqz v0, :cond_f

    .line 61
    iget-object v0, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    iget-object v0, v0, Lcn/domob/android/ads/u;->o:Lcn/domob/android/ads/DomobAdEventListener;

    iget-object v1, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V

    .line 63
    :cond_f
    return-void
.end method
