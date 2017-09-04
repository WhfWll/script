.class Lcn/domob/ui/item/AppListItem$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/item/AppListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/item/AppListItem;


# direct methods
.method constructor <init>(Lcn/domob/ui/item/AppListItem;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem$1;->a:Lcn/domob/ui/item/AppListItem;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 166
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 177
    :cond_5
    :goto_5
    return-void

    .line 168
    :pswitch_6
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem$1;->a:Lcn/domob/ui/item/AppListItem;

    # getter for: Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/domob/ui/item/AppListItem;->access$000(Lcn/domob/ui/item/AppListItem;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 169
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem$1;->a:Lcn/domob/ui/item/AppListItem;

    # getter for: Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/domob/ui/item/AppListItem;->access$000(Lcn/domob/ui/item/AppListItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem$1;->a:Lcn/domob/ui/item/AppListItem;

    # getter for: Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/item/AppListItem;->access$000(Lcn/domob/ui/item/AppListItem;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "download_failed"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DString;->getStringInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 173
    :pswitch_29
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem$1;->a:Lcn/domob/ui/item/AppListItem;

    # invokes: Lcn/domob/ui/item/AppListItem;->buildDetailsActionArea()V
    invoke-static {v0}, Lcn/domob/ui/item/AppListItem;->access$100(Lcn/domob/ui/item/AppListItem;)V

    goto :goto_5

    .line 166
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_6
        :pswitch_29
    .end packed-switch
.end method
