.class Lcn/domob/ui/main/DViewManager$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/main/DViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/main/DViewManager;


# direct methods
.method constructor <init>(Lcn/domob/ui/main/DViewManager;)V
    .registers 2

    .prologue
    .line 490
    iput-object p1, p0, Lcn/domob/ui/main/DViewManager$a;->a:Lcn/domob/ui/main/DViewManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 493
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    .line 503
    :goto_5
    return-void

    .line 495
    :pswitch_6
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$a;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->home:Lcn/domob/ui/main/Home;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$1000(Lcn/domob/ui/main/DViewManager;)Lcn/domob/ui/main/Home;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/main/DViewManager$a;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->adResp:Lcn/domob/ui/main/AdResp;
    invoke-static {v1}, Lcn/domob/ui/main/DViewManager;->access$900(Lcn/domob/ui/main/DViewManager;)Lcn/domob/ui/main/AdResp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Home;->refreshAd(Lcn/domob/ui/main/AdResp;)V

    goto :goto_5

    .line 498
    :pswitch_16
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$a;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->home:Lcn/domob/ui/main/Home;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$1000(Lcn/domob/ui/main/DViewManager;)Lcn/domob/ui/main/Home;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u94fe\u63a5\u9519\u8bef\uff0c\u70b9\u51fb\u770b\u770b"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Home;->showErrorMSG(Ljava/lang/String;)V

    goto :goto_5

    .line 493
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
        :pswitch_16
    .end packed-switch
.end method
