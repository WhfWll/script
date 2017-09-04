.class Lcn/domob/wall/core/d/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/d/c;->b()Landroid/widget/ImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/d/c;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/d/c;)V
    .registers 2

    .prologue
    .line 156
    iput-object p1, p0, Lcn/domob/wall/core/d/c$3;->a:Lcn/domob/wall/core/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 160
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    .line 161
    iget-object v0, p0, Lcn/domob/wall/core/d/c$3;->a:Lcn/domob/wall/core/d/c;

    iget-object v1, p0, Lcn/domob/wall/core/d/c$3;->a:Lcn/domob/wall/core/d/c;

    iget-object v1, v1, Lcn/domob/wall/core/d/c;->b:Landroid/widget/ImageButton;

    const-string v2, "e_back_c.png"

    invoke-static {v0, v1, v2}, Lcn/domob/wall/core/d/c;->a(Lcn/domob/wall/core/d/c;Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 165
    :cond_11
    :goto_11
    const/4 v0, 0x0

    return v0

    .line 162
    :cond_13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 163
    iget-object v0, p0, Lcn/domob/wall/core/d/c$3;->a:Lcn/domob/wall/core/d/c;

    iget-object v1, p0, Lcn/domob/wall/core/d/c$3;->a:Lcn/domob/wall/core/d/c;

    iget-object v1, v1, Lcn/domob/wall/core/d/c;->b:Landroid/widget/ImageButton;

    const-string v2, "e_back.png"

    invoke-static {v0, v1, v2}, Lcn/domob/wall/core/d/c;->a(Lcn/domob/wall/core/d/c;Landroid/widget/ImageButton;Ljava/lang/String;)V

    goto :goto_11
.end method
