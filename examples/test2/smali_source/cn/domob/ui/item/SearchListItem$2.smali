.class Lcn/domob/ui/item/SearchListItem$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/item/SearchListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/item/SearchListItem;


# direct methods
.method constructor <init>(Lcn/domob/ui/item/SearchListItem;)V
    .registers 2

    .prologue
    .line 300
    iput-object p1, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 303
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mDownLoadStatus:I
    invoke-static {v0}, Lcn/domob/ui/item/SearchListItem;->access$200(Lcn/domob/ui/item/SearchListItem;)I

    move-result v0

    packed-switch v0, :pswitch_data_de

    .line 332
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;
    invoke-static {v0}, Lcn/domob/ui/item/SearchListItem;->access$300(Lcn/domob/ui/item/SearchListItem;)Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mPosition:I
    invoke-static {v1}, Lcn/domob/ui/item/SearchListItem;->access$600(Lcn/domob/ui/item/SearchListItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->setAdActualPosition(I)V

    .line 333
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v0}, Lcn/domob/ui/item/SearchListItem;->access$700(Lcn/domob/ui/item/SearchListItem;)Lcn/domob/wall/core/DService;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;
    invoke-static {v1}, Lcn/domob/ui/item/SearchListItem;->access$300(Lcn/domob/ui/item/SearchListItem;)Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doClickWallItemReport(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 336
    :goto_27
    :pswitch_27
    return-void

    .line 305
    :pswitch_28
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;
    invoke-static {v0}, Lcn/domob/ui/item/SearchListItem;->access$300(Lcn/domob/ui/item/SearchListItem;)Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->isDownloadAd()Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v0, "DOWNLOAD"

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;
    invoke-static {v1}, Lcn/domob/ui/item/SearchListItem;->access$300(Lcn/domob/ui/item/SearchListItem;)Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "UPDATE"

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;
    invoke-static {v1}, Lcn/domob/ui/item/SearchListItem;->access$300(Lcn/domob/ui/item/SearchListItem;)Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 306
    :cond_60
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->dm:Lcn/dm/download/DownLoadManager;
    invoke-static {v0}, Lcn/domob/ui/item/SearchListItem;->access$500(Lcn/domob/ui/item/SearchListItem;)Lcn/dm/download/DownLoadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;
    invoke-static {v1}, Lcn/domob/ui/item/SearchListItem;->access$400(Lcn/domob/ui/item/SearchListItem;)Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dm/download/DownLoadManager;->excuteDownload(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 308
    :cond_6f
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;
    invoke-static {v0}, Lcn/domob/ui/item/SearchListItem;->access$300(Lcn/domob/ui/item/SearchListItem;)Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mPosition:I
    invoke-static {v1}, Lcn/domob/ui/item/SearchListItem;->access$600(Lcn/domob/ui/item/SearchListItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->setAdActualPosition(I)V

    .line 309
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v0}, Lcn/domob/ui/item/SearchListItem;->access$700(Lcn/domob/ui/item/SearchListItem;)Lcn/domob/wall/core/DService;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;
    invoke-static {v1}, Lcn/domob/ui/item/SearchListItem;->access$300(Lcn/domob/ui/item/SearchListItem;)Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doClickWallItemReport(Lcn/domob/wall/core/bean/AdInfo;)V

    goto :goto_27

    .line 318
    :pswitch_8e
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->dm:Lcn/dm/download/DownLoadManager;
    invoke-static {v0}, Lcn/domob/ui/item/SearchListItem;->access$500(Lcn/domob/ui/item/SearchListItem;)Lcn/dm/download/DownLoadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;
    invoke-static {v1}, Lcn/domob/ui/item/SearchListItem;->access$400(Lcn/domob/ui/item/SearchListItem;)Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dm/download/DownLoadManager;->excuteResume(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_27

    .line 321
    :pswitch_9e
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->dm:Lcn/dm/download/DownLoadManager;
    invoke-static {v0}, Lcn/domob/ui/item/SearchListItem;->access$500(Lcn/domob/ui/item/SearchListItem;)Lcn/dm/download/DownLoadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/item/SearchListItem;->access$800(Lcn/domob/ui/item/SearchListItem;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;
    invoke-static {v2}, Lcn/domob/ui/item/SearchListItem;->access$400(Lcn/domob/ui/item/SearchListItem;)Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/dm/download/DownLoadManager;->excuteInstall(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V

    goto/16 :goto_27

    .line 324
    :pswitch_b5
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->dm:Lcn/dm/download/DownLoadManager;
    invoke-static {v0}, Lcn/domob/ui/item/SearchListItem;->access$500(Lcn/domob/ui/item/SearchListItem;)Lcn/dm/download/DownLoadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/item/SearchListItem;->access$800(Lcn/domob/ui/item/SearchListItem;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;
    invoke-static {v2}, Lcn/domob/ui/item/SearchListItem;->access$400(Lcn/domob/ui/item/SearchListItem;)Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/dm/download/DownLoadManager;->excuteOpen(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V

    goto/16 :goto_27

    .line 327
    :pswitch_cc
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->dm:Lcn/dm/download/DownLoadManager;
    invoke-static {v0}, Lcn/domob/ui/item/SearchListItem;->access$500(Lcn/domob/ui/item/SearchListItem;)Lcn/dm/download/DownLoadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem$2;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;
    invoke-static {v1}, Lcn/domob/ui/item/SearchListItem;->access$400(Lcn/domob/ui/item/SearchListItem;)Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dm/download/DownLoadManager;->excuteDownload(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto/16 :goto_27

    .line 303
    nop

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_8e
        :pswitch_9e
        :pswitch_b5
        :pswitch_cc
        :pswitch_27
    .end packed-switch
.end method
