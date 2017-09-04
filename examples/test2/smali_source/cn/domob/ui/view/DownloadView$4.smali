.class Lcn/domob/ui/view/DownloadView$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/view/DownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/DownloadView;


# direct methods
.method constructor <init>(Lcn/domob/ui/view/DownloadView;)V
    .registers 2

    .prologue
    .line 319
    iput-object p1, p0, Lcn/domob/ui/view/DownloadView$4;->a:Lcn/domob/ui/view/DownloadView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_58

    .line 341
    :goto_5
    return-void

    .line 324
    :pswitch_6
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$4;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->adapter:Lcn/domob/ui/adapter/DownloadManagerListAdapter;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$1100(Lcn/domob/ui/view/DownloadView;)Lcn/domob/ui/adapter/DownloadManagerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 327
    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 328
    const-string v1, "groupPosition"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 329
    const-string v2, "childPosition"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 330
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$4;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->childList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$700(Lcn/domob/ui/view/DownloadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$4;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->childList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$700(Lcn/domob/ui/view/DownloadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4d

    .line 331
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$4;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->childList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$700(Lcn/domob/ui/view/DownloadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 333
    :cond_4d
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$4;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->adapter:Lcn/domob/ui/adapter/DownloadManagerListAdapter;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$1100(Lcn/domob/ui/view/DownloadView;)Lcn/domob/ui/adapter/DownloadManagerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 322
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method
