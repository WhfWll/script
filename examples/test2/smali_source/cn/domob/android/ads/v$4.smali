.class Lcn/domob/android/ads/v$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/v;->b(Landroid/view/View;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcn/domob/android/ads/v;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/v;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 745
    iput-object p1, p0, Lcn/domob/android/ads/v$4;->b:Lcn/domob/android/ads/v;

    iput-object p2, p0, Lcn/domob/android/ads/v$4;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 748
    iget-object v0, p0, Lcn/domob/android/ads/v$4;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 749
    iget-object v0, p0, Lcn/domob/android/ads/v$4;->b:Lcn/domob/android/ads/v;

    invoke-static {v0}, Lcn/domob/android/ads/v;->b(Lcn/domob/android/ads/v;)Lcn/domob/android/ads/v$e;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->y(Lcn/domob/android/ads/v$e;)Lcn/domob/android/ads/v$d;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 750
    iget-object v0, p0, Lcn/domob/android/ads/v$4;->b:Lcn/domob/android/ads/v;

    invoke-static {v0}, Lcn/domob/android/ads/v;->b(Lcn/domob/android/ads/v;)Lcn/domob/android/ads/v$e;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->y(Lcn/domob/android/ads/v$e;)Lcn/domob/android/ads/v$d;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/v$d;->a()V

    .line 753
    :cond_24
    iget-object v0, p0, Lcn/domob/android/ads/v$4;->b:Lcn/domob/android/ads/v;

    invoke-static {v0}, Lcn/domob/android/ads/v;->b(Lcn/domob/android/ads/v;)Lcn/domob/android/ads/v$e;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->a(Lcn/domob/android/ads/v$e;)Lcn/domob/android/ads/v$c;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 754
    iget-object v0, p0, Lcn/domob/android/ads/v$4;->b:Lcn/domob/android/ads/v;

    invoke-static {v0}, Lcn/domob/android/ads/v;->b(Lcn/domob/android/ads/v;)Lcn/domob/android/ads/v$e;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->a(Lcn/domob/android/ads/v$e;)Lcn/domob/android/ads/v$c;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/v$c;->c()V

    .line 756
    :cond_3d
    return-void
.end method
