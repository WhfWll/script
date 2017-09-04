.class Lcn/domob/android/ads/v$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/v;->l()Landroid/widget/ImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageButton;

.field final synthetic b:Lcn/domob/android/ads/v;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/v;Landroid/widget/ImageButton;)V
    .registers 3

    .prologue
    .line 628
    iput-object p1, p0, Lcn/domob/android/ads/v$2;->b:Lcn/domob/android/ads/v;

    iput-object p2, p0, Lcn/domob/android/ads/v$2;->a:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 631
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    .line 632
    iget-object v0, p0, Lcn/domob/android/ads/v$2;->b:Lcn/domob/android/ads/v;

    iget-object v1, p0, Lcn/domob/android/ads/v$2;->a:Landroid/widget/ImageButton;

    const-string v2, "btn_close_interstitial_pressed.png"

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/v;->a(Lcn/domob/android/ads/v;Landroid/view/View;Ljava/lang/String;)V

    .line 636
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0

    .line 633
    :cond_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 634
    iget-object v0, p0, Lcn/domob/android/ads/v$2;->b:Lcn/domob/android/ads/v;

    iget-object v1, p0, Lcn/domob/android/ads/v$2;->a:Landroid/widget/ImageButton;

    const-string v2, "btn_close_interstitial.png"

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/v;->a(Lcn/domob/android/ads/v;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_f
.end method
