.class Lcn/domob/ui/item/DownLoadListItem$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/item/DownLoadListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/item/DownLoadListItem;


# direct methods
.method constructor <init>(Lcn/domob/ui/item/DownLoadListItem;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->mDownLoadStatus:I
    invoke-static {v0}, Lcn/domob/ui/item/DownLoadListItem;->access$100(Lcn/domob/ui/item/DownLoadListItem;)I

    move-result v0

    packed-switch v0, :pswitch_data_96

    .line 153
    :goto_9
    :pswitch_9
    return-void

    .line 127
    :pswitch_a
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->dm:Lcn/dm/download/DownLoadManager;
    invoke-static {v0}, Lcn/domob/ui/item/DownLoadListItem;->access$300(Lcn/domob/ui/item/DownLoadListItem;)Lcn/dm/download/DownLoadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;
    invoke-static {v1}, Lcn/domob/ui/item/DownLoadListItem;->access$200(Lcn/domob/ui/item/DownLoadListItem;)Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dm/download/DownLoadManager;->excuteDownload(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_9

    .line 133
    :pswitch_1a
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->dm:Lcn/dm/download/DownLoadManager;
    invoke-static {v0}, Lcn/domob/ui/item/DownLoadListItem;->access$300(Lcn/domob/ui/item/DownLoadListItem;)Lcn/dm/download/DownLoadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;
    invoke-static {v1}, Lcn/domob/ui/item/DownLoadListItem;->access$200(Lcn/domob/ui/item/DownLoadListItem;)Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dm/download/DownLoadManager;->excutePause(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 134
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;
    invoke-static {v0}, Lcn/domob/ui/item/DownLoadListItem;->access$500(Lcn/domob/ui/item/DownLoadListItem;)Lcn/domob/ui/item/DownLoadListItem$a;

    move-result-object v0

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/item/DownLoadListItem;->access$400(Lcn/domob/ui/item/DownLoadListItem;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "u_download_continue_icon"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_9

    .line 138
    :pswitch_41
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->dm:Lcn/dm/download/DownLoadManager;
    invoke-static {v0}, Lcn/domob/ui/item/DownLoadListItem;->access$300(Lcn/domob/ui/item/DownLoadListItem;)Lcn/dm/download/DownLoadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;
    invoke-static {v1}, Lcn/domob/ui/item/DownLoadListItem;->access$200(Lcn/domob/ui/item/DownLoadListItem;)Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dm/download/DownLoadManager;->excuteResume(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 139
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;
    invoke-static {v0}, Lcn/domob/ui/item/DownLoadListItem;->access$500(Lcn/domob/ui/item/DownLoadListItem;)Lcn/domob/ui/item/DownLoadListItem$a;

    move-result-object v0

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/item/DownLoadListItem;->access$400(Lcn/domob/ui/item/DownLoadListItem;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "u_downloading_icon"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_9

    .line 143
    :pswitch_68
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->dm:Lcn/dm/download/DownLoadManager;
    invoke-static {v0}, Lcn/domob/ui/item/DownLoadListItem;->access$300(Lcn/domob/ui/item/DownLoadListItem;)Lcn/dm/download/DownLoadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/item/DownLoadListItem;->access$400(Lcn/domob/ui/item/DownLoadListItem;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;
    invoke-static {v2}, Lcn/domob/ui/item/DownLoadListItem;->access$200(Lcn/domob/ui/item/DownLoadListItem;)Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/dm/download/DownLoadManager;->excuteInstall(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_9

    .line 146
    :pswitch_7e
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->dm:Lcn/dm/download/DownLoadManager;
    invoke-static {v0}, Lcn/domob/ui/item/DownLoadListItem;->access$300(Lcn/domob/ui/item/DownLoadListItem;)Lcn/dm/download/DownLoadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/item/DownLoadListItem;->access$400(Lcn/domob/ui/item/DownLoadListItem;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/item/DownLoadListItem$2;->a:Lcn/domob/ui/item/DownLoadListItem;

    # getter for: Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;
    invoke-static {v2}, Lcn/domob/ui/item/DownLoadListItem;->access$200(Lcn/domob/ui/item/DownLoadListItem;)Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/dm/download/DownLoadManager;->excuteOpen(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V

    goto/16 :goto_9

    .line 125
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_1a
        :pswitch_41
        :pswitch_68
        :pswitch_7e
        :pswitch_9
    .end packed-switch
.end method
