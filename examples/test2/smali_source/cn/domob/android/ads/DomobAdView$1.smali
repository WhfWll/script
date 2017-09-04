.class Lcn/domob/android/ads/DomobAdView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/DomobAdView;->showAd(Lcn/domob/android/ads/n;[Landroid/view/animation/AnimationSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/view/animation/AnimationSet;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcn/domob/android/ads/n;

.field final synthetic d:Lcn/domob/android/ads/DomobAdView;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobAdView;[Landroid/view/animation/AnimationSet;Landroid/view/View;Lcn/domob/android/ads/n;)V
    .registers 5

    .prologue
    .line 386
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iput-object p2, p0, Lcn/domob/android/ads/DomobAdView$1;->a:[Landroid/view/animation/AnimationSet;

    iput-object p3, p0, Lcn/domob/android/ads/DomobAdView$1;->b:Landroid/view/View;

    iput-object p4, p0, Lcn/domob/android/ads/DomobAdView$1;->c:Lcn/domob/android/ads/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 389
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v0}, Lcn/domob/android/ads/H;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_d8

    .line 390
    invoke-static {}, Lcn/domob/android/ads/DomobAdView;->k()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "AdView\'s layoutParams is not null."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v0}, Lcn/domob/android/ads/H;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v1, v1, Lcn/domob/android/ads/DomobAdView;->i:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 392
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v0}, Lcn/domob/android/ads/H;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v1, v1, Lcn/domob/android/ads/DomobAdView;->j:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 398
    :goto_31
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->a:[Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_f7

    .line 399
    invoke-static {}, Lcn/domob/android/ads/DomobAdView;->k()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Show ad with animation."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->a:[Landroid/view/animation/AnimationSet;

    aget-object v0, v0, v5

    .line 402
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->a:[Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 403
    iget-object v2, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v2, v2, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/H;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 404
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/H;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 412
    :goto_55
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/H;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->b:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v3, v3, Lcn/domob/android/ads/DomobAdView;->i:I

    iget-object v4, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v4, v4, Lcn/domob/android/ads/DomobAdView;->j:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/H;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-boolean v0, v0, Lcn/domob/android/ads/DomobAdView;->k:Z

    if-eqz v0, :cond_110

    .line 418
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iput-boolean v5, v0, Lcn/domob/android/ads/DomobAdView;->k:Z

    .line 424
    :goto_7c
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v0}, Lcn/domob/android/ads/H;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a7

    .line 425
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/H;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/domob/android/ads/a;

    if-eqz v0, :cond_119

    .line 426
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/H;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/a;

    .line 427
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v1, v1, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/H;->removeView(Landroid/view/View;)V

    .line 428
    invoke-virtual {v0}, Lcn/domob/android/ads/a;->destroy()V

    .line 437
    :cond_a7
    :goto_a7
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->c:Lcn/domob/android/ads/n;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdView;->b(Lcn/domob/android/ads/n;)V

    .line 439
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/g;->a(J)V

    .line 442
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->n:Lcn/domob/android/ads/DomobAdListener;

    if-eqz v0, :cond_c8

    .line 443
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->n:Lcn/domob/android/ads/DomobAdListener;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdListener;->onReceivedFreshAd(Lcn/domob/android/ads/DomobAdView;)V

    .line 446
    :cond_c8
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    if-eqz v0, :cond_d7

    .line 447
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V

    .line 449
    :cond_d7
    return-void

    .line 394
    :cond_d8
    invoke-static {}, Lcn/domob/android/ads/DomobAdView;->k()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "AdView\'s layoutParams is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v2, v2, Lcn/domob/android/ads/DomobAdView;->i:I

    iget-object v3, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v3, v3, Lcn/domob/android/ads/DomobAdView;->j:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/H;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_31

    .line 406
    :cond_f7
    invoke-static {}, Lcn/domob/android/ads/DomobAdView;->k()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Show ad without animation."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v0, v4}, Lcn/domob/android/ads/H;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 408
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v0, v4}, Lcn/domob/android/ads/H;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_55

    .line 420
    :cond_110
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v0}, Lcn/domob/android/ads/H;->showNext()V

    goto/16 :goto_7c

    .line 432
    :cond_119
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/H;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/H;->removeViewAt(I)V

    goto :goto_a7
.end method
