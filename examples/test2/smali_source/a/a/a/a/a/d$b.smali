.class La/a/a/a/a/d$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/a/d;


# direct methods
.method constructor <init>(La/a/a/a/a/d;)V
    .registers 2

    .prologue
    .line 403
    iput-object p1, p0, La/a/a/a/a/d$b;->a:La/a/a/a/a/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 406
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 407
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_25

    .line 409
    check-cast v0, Landroid/net/NetworkInfo;

    .line 410
    sget-object v1, La/a/a/a/a/d$1;->a:[I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_46

    .line 432
    :cond_25
    :goto_25
    :pswitch_25
    return-void

    .line 412
    :pswitch_26
    iget-object v0, p0, La/a/a/a/a/d$b;->a:La/a/a/a/a/d;

    invoke-static {v0}, La/a/a/a/a/d;->a(La/a/a/a/a/d;)Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "detected wifi is connected"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, La/a/a/a/a/d$b;->a:La/a/a/a/a/d;

    invoke-virtual {v0, p1}, La/a/a/a/a/d;->d(Landroid/content/Context;)V

    goto :goto_25

    .line 418
    :pswitch_37
    iget-object v0, p0, La/a/a/a/a/d$b;->a:La/a/a/a/a/d;

    invoke-static {v0}, La/a/a/a/a/d;->a(La/a/a/a/a/d;)Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "detected wifi is disconnected"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 419
    invoke-static {}, La/a/a/a/a/d;->d()V

    goto :goto_25

    .line 410
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_37
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method
