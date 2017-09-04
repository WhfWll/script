.class Lcn/domob/wall/core/a/b$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/a/b;->h()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/a/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/a/b;)V
    .registers 2

    .prologue
    .line 562
    iput-object p1, p0, Lcn/domob/wall/core/a/b$10;->a:Lcn/domob/wall/core/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 565
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1f

    .line 566
    iget-object v0, p0, Lcn/domob/wall/core/a/b$10;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->k(Lcn/domob/wall/core/a/b;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a/b$10;->a:Lcn/domob/wall/core/a/b;

    iget-object v2, p0, Lcn/domob/wall/core/a/b$10;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v2}, Lcn/domob/wall/core/a/b;->e(Lcn/domob/wall/core/a/b;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "a_exit_on.png"

    invoke-static {v1, v2, v3}, Lcn/domob/wall/core/a/b;->a(Lcn/domob/wall/core/a/b;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 572
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0

    .line 568
    :cond_1f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 569
    iget-object v0, p0, Lcn/domob/wall/core/a/b$10;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->k(Lcn/domob/wall/core/a/b;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a/b$10;->a:Lcn/domob/wall/core/a/b;

    iget-object v2, p0, Lcn/domob/wall/core/a/b$10;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v2}, Lcn/domob/wall/core/a/b;->e(Lcn/domob/wall/core/a/b;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "a_exit.png"

    invoke-static {v1, v2, v3}, Lcn/domob/wall/core/a/b;->a(Lcn/domob/wall/core/a/b;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d
.end method
