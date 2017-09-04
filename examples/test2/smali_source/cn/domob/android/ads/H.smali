.class Lcn/domob/android/ads/H;
.super Landroid/widget/ViewFlipper;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 15
    :try_start_0
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 19
    :goto_3
    return-void

    .line 16
    :catch_4
    move-exception v0

    .line 17
    invoke-virtual {p0}, Lcn/domob/android/ads/H;->stopFlipping()V

    goto :goto_3
.end method
