.class Lcn/domob/android/ads/DomobFeedsAdView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/DomobFeedsAdView;->showAd(Lcn/domob/android/ads/n;[Landroid/view/animation/AnimationSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcn/domob/android/ads/DomobFeedsAdView;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobFeedsAdView;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 65
    iput-object p1, p0, Lcn/domob/android/ads/DomobFeedsAdView$1;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    iput-object p2, p0, Lcn/domob/android/ads/DomobFeedsAdView$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView$1;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobFeedsAdView;->removeAllViews()V

    .line 69
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcn/domob/android/ads/DomobFeedsAdView$1;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    iget v1, v1, Lcn/domob/android/ads/DomobFeedsAdView;->i:I

    iget-object v2, p0, Lcn/domob/android/ads/DomobFeedsAdView$1;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    iget v2, v2, Lcn/domob/android/ads/DomobFeedsAdView;->j:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    iget-object v1, p0, Lcn/domob/android/ads/DomobFeedsAdView$1;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    iget-object v2, p0, Lcn/domob/android/ads/DomobFeedsAdView$1;->a:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/ads/DomobFeedsAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView$1;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobFeedsAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    if-eqz v0, :cond_2d

    .line 73
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView$1;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobFeedsAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    iget-object v1, p0, Lcn/domob/android/ads/DomobFeedsAdView$1;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V

    .line 75
    :cond_2d
    return-void
.end method
