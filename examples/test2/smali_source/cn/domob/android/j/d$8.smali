.class Lcn/domob/android/j/d$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/d;->i()Landroid/widget/ImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageButton;

.field final synthetic b:Lcn/domob/android/j/d;


# direct methods
.method constructor <init>(Lcn/domob/android/j/d;Landroid/widget/ImageButton;)V
    .registers 3

    .prologue
    .line 264
    iput-object p1, p0, Lcn/domob/android/j/d$8;->b:Lcn/domob/android/j/d;

    iput-object p2, p0, Lcn/domob/android/j/d$8;->a:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 267
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_23

    .line 268
    iget-object v0, p0, Lcn/domob/android/j/d$8;->b:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->c(Lcn/domob/android/j/d;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 269
    iget-object v0, p0, Lcn/domob/android/j/d$8;->b:Lcn/domob/android/j/d;

    iget-object v1, p0, Lcn/domob/android/j/d$8;->a:Landroid/widget/ImageButton;

    const-string v2, "domob_video_muted_selected.png"

    invoke-static {v0, v1, v2}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 281
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_19
    iget-object v0, p0, Lcn/domob/android/j/d$8;->b:Lcn/domob/android/j/d;

    iget-object v1, p0, Lcn/domob/android/j/d$8;->a:Landroid/widget/ImageButton;

    const-string v2, "domob_video_not_mute_selected.png"

    invoke-static {v0, v1, v2}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;Landroid/widget/ImageButton;Ljava/lang/String;)V

    goto :goto_17

    .line 273
    :cond_23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 274
    iget-object v0, p0, Lcn/domob/android/j/d$8;->b:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->d(Lcn/domob/android/j/d;)V

    .line 275
    iget-object v0, p0, Lcn/domob/android/j/d$8;->b:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->c(Lcn/domob/android/j/d;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 276
    iget-object v0, p0, Lcn/domob/android/j/d$8;->b:Lcn/domob/android/j/d;

    iget-object v1, p0, Lcn/domob/android/j/d$8;->a:Landroid/widget/ImageButton;

    const-string v2, "domob_video_muted_not_selected.png"

    invoke-static {v0, v1, v2}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;Landroid/widget/ImageButton;Ljava/lang/String;)V

    goto :goto_17

    .line 278
    :cond_41
    iget-object v0, p0, Lcn/domob/android/j/d$8;->b:Lcn/domob/android/j/d;

    iget-object v1, p0, Lcn/domob/android/j/d$8;->a:Landroid/widget/ImageButton;

    const-string v2, "domob_video_not_mute_not_selected.png"

    invoke-static {v0, v1, v2}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;Landroid/widget/ImageButton;Ljava/lang/String;)V

    goto :goto_17
.end method
