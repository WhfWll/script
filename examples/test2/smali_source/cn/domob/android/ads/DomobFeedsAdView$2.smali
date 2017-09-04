.class Lcn/domob/android/ads/DomobFeedsAdView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/DomobFeedsAdView;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/domob/android/ads/DomobFeedsAdView;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobFeedsAdView;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 83
    iput-object p1, p0, Lcn/domob/android/ads/DomobFeedsAdView$2;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    iput-object p2, p0, Lcn/domob/android/ads/DomobFeedsAdView$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/high16 v4, 0x42100000

    .line 87
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView$2;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobFeedsAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->B()Lcn/domob/android/ads/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->w()F

    move-result v1

    float-to-int v1, v1

    .line 89
    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->u()Z

    move-result v2

    .line 90
    if-eqz v2, :cond_68

    .line 91
    iget-object v2, p0, Lcn/domob/android/ads/DomobFeedsAdView$2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 92
    iget-object v3, p0, Lcn/domob/android/ads/DomobFeedsAdView$2;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 93
    new-instance v4, Landroid/widget/ImageButton;

    iget-object v5, p0, Lcn/domob/android/ads/DomobFeedsAdView$2;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 94
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 95
    iget-object v5, p0, Lcn/domob/android/ads/DomobFeedsAdView$2;->a:Landroid/content/Context;

    const-string v6, "domob_close.png"

    invoke-static {v5, v6}, Lcn/domob/android/i/d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    const/16 v2, 0xb

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    iget-object v2, p0, Lcn/domob/android/ads/DomobFeedsAdView$2;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    invoke-virtual {v2, v4, v5}, Lcn/domob/android/ads/DomobFeedsAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v2, Lcn/domob/android/ads/DomobFeedsAdView$2$1;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/DomobFeedsAdView$2$1;-><init>(Lcn/domob/android/ads/DomobFeedsAdView$2;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v2, p0, Lcn/domob/android/ads/DomobFeedsAdView$2;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    invoke-static {v2}, Lcn/domob/android/ads/DomobFeedsAdView;->a(Lcn/domob/android/ads/DomobFeedsAdView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcn/domob/android/ads/DomobFeedsAdView$2$2;

    invoke-direct {v3, p0, v4}, Lcn/domob/android/ads/DomobFeedsAdView$2$2;-><init>(Lcn/domob/android/ads/DomobFeedsAdView$2;Landroid/widget/ImageButton;)V

    mul-int/lit16 v4, v1, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    :cond_68
    iget-object v2, p0, Lcn/domob/android/ads/DomobFeedsAdView$2;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    invoke-virtual {v2}, Lcn/domob/android/ads/DomobFeedsAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 115
    iget-object v3, p0, Lcn/domob/android/ads/DomobFeedsAdView$2;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    iget v3, v3, Lcn/domob/android/ads/DomobFeedsAdView;->j:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 116
    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->x()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcn/domob/android/ads/DomobFeedsAdView$2$3;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/DomobFeedsAdView$2$3;-><init>(Lcn/domob/android/ads/DomobFeedsAdView$2;)V

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    :cond_8a
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView$2;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobFeedsAdView;->a:Lcn/domob/android/ads/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/g;->a(J)V

    .line 127
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView$2;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobFeedsAdView;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->B()Lcn/domob/android/ads/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->y()F

    move-result v1

    .line 129
    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->z()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 130
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView$2;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    invoke-static {v0}, Lcn/domob/android/ads/DomobFeedsAdView;->a(Lcn/domob/android/ads/DomobFeedsAdView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcn/domob/android/ads/DomobFeedsAdView$2$4;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/DomobFeedsAdView$2$4;-><init>(Lcn/domob/android/ads/DomobFeedsAdView$2;)V

    const/high16 v3, 0x447a0000

    mul-float/2addr v1, v3

    float-to-long v4, v1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    :cond_bd
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView$2;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobFeedsAdView;->n()V

    .line 139
    return-void
.end method
