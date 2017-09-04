.class Lcn/domob/android/ads/v$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/v;->a(Landroid/widget/ImageButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/v;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/v;)V
    .registers 2

    .prologue
    .line 659
    iput-object p1, p0, Lcn/domob/android/ads/v$3;->a:Lcn/domob/android/ads/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 662
    iget-object v0, p0, Lcn/domob/android/ads/v$3;->a:Lcn/domob/android/ads/v;

    invoke-static {v0}, Lcn/domob/android/ads/v;->a(Lcn/domob/android/ads/v;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 663
    iget-object v0, p0, Lcn/domob/android/ads/v$3;->a:Lcn/domob/android/ads/v;

    invoke-static {v0}, Lcn/domob/android/ads/v;->a(Lcn/domob/android/ads/v;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 665
    :cond_15
    return-void
.end method
