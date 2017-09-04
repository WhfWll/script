.class Lcn/domob/android/ads/G$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/G;->showAd(Lcn/domob/android/ads/n;[Landroid/view/animation/AnimationSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/G;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/G;)V
    .registers 2

    .prologue
    .line 185
    iput-object p1, p0, Lcn/domob/android/ads/G$4;->a:Lcn/domob/android/ads/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcn/domob/android/ads/G$4;->a:Lcn/domob/android/ads/G;

    iget-object v0, v0, Lcn/domob/android/ads/G;->o:Lcn/domob/android/ads/DomobAdEventListener;

    if-eqz v0, :cond_f

    .line 189
    iget-object v0, p0, Lcn/domob/android/ads/G$4;->a:Lcn/domob/android/ads/G;

    iget-object v0, v0, Lcn/domob/android/ads/G;->o:Lcn/domob/android/ads/DomobAdEventListener;

    iget-object v1, p0, Lcn/domob/android/ads/G$4;->a:Lcn/domob/android/ads/G;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V

    .line 191
    :cond_f
    return-void
.end method
