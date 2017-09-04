.class Lcn/domob/ui/view/SearchView$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/view/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/SearchView;


# direct methods
.method constructor <init>(Lcn/domob/ui/view/SearchView;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcn/domob/ui/view/SearchView$1;->a:Lcn/domob/ui/view/SearchView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    .line 121
    :goto_8
    return-void

    .line 98
    :pswitch_9
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$1;->a:Lcn/domob/ui/view/SearchView;

    const/4 v1, 0x1

    # invokes: Lcn/domob/ui/view/SearchView;->changeSurface(I)V
    invoke-static {v0, v1}, Lcn/domob/ui/view/SearchView;->access$000(Lcn/domob/ui/view/SearchView;I)V

    goto :goto_8

    .line 101
    :pswitch_10
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$1;->a:Lcn/domob/ui/view/SearchView;

    const/4 v1, 0x2

    # invokes: Lcn/domob/ui/view/SearchView;->changeSurface(I)V
    invoke-static {v0, v1}, Lcn/domob/ui/view/SearchView;->access$000(Lcn/domob/ui/view/SearchView;I)V

    goto :goto_8

    .line 104
    :pswitch_17
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$1;->a:Lcn/domob/ui/view/SearchView;

    const/4 v1, 0x3

    # invokes: Lcn/domob/ui/view/SearchView;->changeSurface(I)V
    invoke-static {v0, v1}, Lcn/domob/ui/view/SearchView;->access$000(Lcn/domob/ui/view/SearchView;I)V

    goto :goto_8

    .line 107
    :pswitch_1e
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$1;->a:Lcn/domob/ui/view/SearchView;

    const/4 v1, 0x4

    # invokes: Lcn/domob/ui/view/SearchView;->changeSurface(I)V
    invoke-static {v0, v1}, Lcn/domob/ui/view/SearchView;->access$000(Lcn/domob/ui/view/SearchView;I)V

    goto :goto_8

    .line 110
    :pswitch_25
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$1;->a:Lcn/domob/ui/view/SearchView;

    const/4 v1, 0x5

    # invokes: Lcn/domob/ui/view/SearchView;->changeSurface(I)V
    invoke-static {v0, v1}, Lcn/domob/ui/view/SearchView;->access$000(Lcn/domob/ui/view/SearchView;I)V

    goto :goto_8

    .line 113
    :pswitch_2c
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$1;->a:Lcn/domob/ui/view/SearchView;

    const/4 v1, 0x6

    # invokes: Lcn/domob/ui/view/SearchView;->changeSurface(I)V
    invoke-static {v0, v1}, Lcn/domob/ui/view/SearchView;->access$000(Lcn/domob/ui/view/SearchView;I)V

    goto :goto_8

    .line 116
    :pswitch_33
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$1;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->resultListAdapter:Lcn/domob/ui/adapter/SearchResultListAdapter;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$100(Lcn/domob/ui/view/SearchView;)Lcn/domob/ui/adapter/SearchResultListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/ui/adapter/SearchResultListAdapter;->notifyDataSetChanged()V

    goto :goto_8

    .line 96
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_33
        :pswitch_9
        :pswitch_10
        :pswitch_17
        :pswitch_1e
        :pswitch_25
        :pswitch_2c
    .end packed-switch
.end method
