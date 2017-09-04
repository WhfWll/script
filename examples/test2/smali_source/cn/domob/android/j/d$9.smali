.class Lcn/domob/android/j/d$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/d;->j()Landroid/widget/ImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/j/d;


# direct methods
.method constructor <init>(Lcn/domob/android/j/d;)V
    .registers 2

    .prologue
    .line 314
    iput-object p1, p0, Lcn/domob/android/j/d$9;->a:Lcn/domob/android/j/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 317
    iget-object v0, p0, Lcn/domob/android/j/d$9;->a:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->e(Lcn/domob/android/j/d;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 318
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_41

    .line 319
    iget-object v0, p0, Lcn/domob/android/j/d$9;->a:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->f(Lcn/domob/android/j/d;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 320
    iget-object v0, p0, Lcn/domob/android/j/d$9;->a:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->f(Lcn/domob/android/j/d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "domob_video_not_full_not_selected.png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 321
    iget-object v0, p0, Lcn/domob/android/j/d$9;->a:Lcn/domob/android/j/d;

    iget-object v1, p0, Lcn/domob/android/j/d$9;->a:Lcn/domob/android/j/d;

    invoke-static {v1}, Lcn/domob/android/j/d;->g(Lcn/domob/android/j/d;)Landroid/widget/ImageButton;

    move-result-object v1

    const-string v2, "domob_video_not_full_selected.png"

    invoke-static {v0, v1, v2}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 332
    :cond_31
    :goto_31
    const/4 v0, 0x0

    return v0

    .line 323
    :cond_33
    iget-object v0, p0, Lcn/domob/android/j/d$9;->a:Lcn/domob/android/j/d;

    iget-object v1, p0, Lcn/domob/android/j/d$9;->a:Lcn/domob/android/j/d;

    invoke-static {v1}, Lcn/domob/android/j/d;->g(Lcn/domob/android/j/d;)Landroid/widget/ImageButton;

    move-result-object v1

    const-string v2, "domob_video_full_selected.png"

    invoke-static {v0, v1, v2}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;Landroid/widget/ImageButton;Ljava/lang/String;)V

    goto :goto_31

    .line 326
    :cond_41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 327
    iget-object v0, p0, Lcn/domob/android/j/d$9;->a:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;)Lcn/domob/android/j/d$b;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 328
    iget-object v0, p0, Lcn/domob/android/j/d$9;->a:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;)Lcn/domob/android/j/d$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/j/d$b;->i()V

    goto :goto_31
.end method
