.class Lcn/domob/ui/main/Home$8;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/main/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/main/Home;


# direct methods
.method constructor <init>(Lcn/domob/ui/main/Home;)V
    .registers 2

    .prologue
    .line 810
    iput-object p1, p0, Lcn/domob/ui/main/Home$8;->a:Lcn/domob/ui/main/Home;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 813
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 824
    :goto_5
    return-void

    .line 815
    :pswitch_6
    iget-object v0, p0, Lcn/domob/ui/main/Home$8;->a:Lcn/domob/ui/main/Home;

    # invokes: Lcn/domob/ui/main/Home;->notifyListChanged()V
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$1700(Lcn/domob/ui/main/Home;)V

    goto :goto_5

    .line 818
    :pswitch_c
    iget-object v0, p0, Lcn/domob/ui/main/Home$8;->a:Lcn/domob/ui/main/Home;

    # invokes: Lcn/domob/ui/main/Home;->initDownloaderTool()V
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$1800(Lcn/domob/ui/main/Home;)V

    goto :goto_5

    .line 813
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
