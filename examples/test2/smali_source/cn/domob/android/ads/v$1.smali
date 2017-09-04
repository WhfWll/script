.class Lcn/domob/android/ads/v$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/v;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/v;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 56
    iput-object p1, p0, Lcn/domob/android/ads/v$1;->a:Lcn/domob/android/ads/v;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5c

    .line 79
    :cond_5
    :goto_5
    return-void

    .line 60
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageButton;

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_5

    .line 64
    :pswitch_f
    invoke-static {}, Lcn/domob/android/ads/v;->b()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Arrival auto-off time"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcn/domob/android/ads/v$1;->a:Lcn/domob/android/ads/v;

    invoke-static {v0}, Lcn/domob/android/ads/v;->a(Lcn/domob/android/ads/v;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    iget-object v0, p0, Lcn/domob/android/ads/v$1;->a:Lcn/domob/android/ads/v;

    invoke-static {v0}, Lcn/domob/android/ads/v;->a(Lcn/domob/android/ads/v;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_5

    .line 70
    :pswitch_2e
    invoke-static {}, Lcn/domob/android/ads/v;->b()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "the time of ad to reach the minimum"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcn/domob/android/ads/v$1;->a:Lcn/domob/android/ads/v;

    invoke-static {v0}, Lcn/domob/android/ads/v;->a(Lcn/domob/android/ads/v;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 72
    iget-object v0, p0, Lcn/domob/android/ads/v$1;->a:Lcn/domob/android/ads/v;

    invoke-static {v0}, Lcn/domob/android/ads/v;->b(Lcn/domob/android/ads/v;)Lcn/domob/android/ads/v$e;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->a(Lcn/domob/android/ads/v$e;)Lcn/domob/android/ads/v$c;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 73
    iget-object v0, p0, Lcn/domob/android/ads/v$1;->a:Lcn/domob/android/ads/v;

    invoke-static {v0}, Lcn/domob/android/ads/v;->b(Lcn/domob/android/ads/v;)Lcn/domob/android/ads/v$e;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/v$e;->a(Lcn/domob/android/ads/v$e;)Lcn/domob/android/ads/v$c;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/v$c;->b()V

    goto :goto_5

    .line 58
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
        :pswitch_2e
    .end packed-switch
.end method
