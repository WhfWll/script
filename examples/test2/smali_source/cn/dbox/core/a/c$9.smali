.class Lcn/dbox/core/a/c$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/a/c;->i()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/a/c;


# direct methods
.method constructor <init>(Lcn/dbox/core/a/c;)V
    .registers 2

    .prologue
    .line 649
    iput-object p1, p0, Lcn/dbox/core/a/c$9;->a:Lcn/dbox/core/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 652
    iget-object v0, p0, Lcn/dbox/core/a/c$9;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->i(Lcn/dbox/core/a/c;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 653
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2b

    .line 654
    iget-object v0, p0, Lcn/dbox/core/a/c$9;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->l(Lcn/dbox/core/a/c;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$9;->a:Lcn/dbox/core/a/c;

    iget-object v2, p0, Lcn/dbox/core/a/c$9;->a:Lcn/dbox/core/a/c;

    invoke-static {v2}, Lcn/dbox/core/a/c;->a(Lcn/dbox/core/a/c;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "a_preview_on.png"

    invoke-static {v1, v2, v3}, Lcn/dbox/core/a/c;->a(Lcn/dbox/core/a/c;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 663
    :cond_29
    :goto_29
    const/4 v0, 0x0

    return v0

    .line 657
    :cond_2b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 658
    iget-object v0, p0, Lcn/dbox/core/a/c$9;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->l(Lcn/dbox/core/a/c;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$9;->a:Lcn/dbox/core/a/c;

    iget-object v2, p0, Lcn/dbox/core/a/c$9;->a:Lcn/dbox/core/a/c;

    invoke-static {v2}, Lcn/dbox/core/a/c;->a(Lcn/dbox/core/a/c;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "a_preview.png"

    invoke-static {v1, v2, v3}, Lcn/dbox/core/a/c;->a(Lcn/dbox/core/a/c;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_29
.end method
