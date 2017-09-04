.class Lcn/domob/android/ads/y$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/y;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/y;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/y;)V
    .registers 2

    .prologue
    .line 390
    iput-object p1, p0, Lcn/domob/android/ads/y$5;->a:Lcn/domob/android/ads/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 404
    iget-object v0, p0, Lcn/domob/android/ads/y$5;->a:Lcn/domob/android/ads/y;

    invoke-static {v0}, Lcn/domob/android/ads/y;->b(Lcn/domob/android/ads/y;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/y$5;->a:Lcn/domob/android/ads/y;

    invoke-static {v1}, Lcn/domob/android/ads/y;->a(Lcn/domob/android/ads/y;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 405
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 400
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 395
    return-void
.end method
