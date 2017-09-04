.class Lcn/domob/ui/view/SearchView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/DService$ReceiveSearchDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/view/SearchView;->executeSearch()V
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
    .line 298
    iput-object p1, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
    .registers 5
    .param p1, "errorCode"    # Lcn/domob/wall/core/DService$ErrorCode;
    .param p2, "errorContent"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$1600(Lcn/domob/ui/view/SearchView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 305
    return-void
.end method

.method public onSuccessReceiveData(Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "serchAdInfos":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    .local p2, "recommendAdInfos":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    const/4 v0, 0x0

    .line 313
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 315
    iget-object v1, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->listItems:Ljava/util/List;
    invoke-static {v1}, Lcn/domob/ui/view/SearchView;->access$1700(Lcn/domob/ui/view/SearchView;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 316
    iget-object v1, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->listItems:Ljava/util/List;
    invoke-static {v1}, Lcn/domob/ui/view/SearchView;->access$1700(Lcn/domob/ui/view/SearchView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 319
    :cond_15
    if-eqz p1, :cond_97

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_97

    move v7, v0

    .line 320
    :goto_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_56

    .line 321
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/domob/wall/core/bean/AdInfo;

    .line 322
    new-instance v0, Lcn/domob/ui/item/SearchListItem;

    iget-object v1, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/view/SearchView;->access$200(Lcn/domob/ui/view/SearchView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    iget-object v4, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v4}, Lcn/domob/ui/view/SearchView;->access$1000(Lcn/domob/ui/view/SearchView;)Lcn/domob/wall/core/DService;

    move-result-object v4

    iget-object v5, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->dlm:Lcn/dm/download/DownLoadManager;
    invoke-static {v5}, Lcn/domob/ui/view/SearchView;->access$1200(Lcn/domob/ui/view/SearchView;)Lcn/dm/download/DownLoadManager;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;
    invoke-static {v6}, Lcn/domob/ui/view/SearchView;->access$1300(Lcn/domob/ui/view/SearchView;)Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcn/domob/ui/item/SearchListItem;-><init>(Landroid/content/Context;Lcn/domob/ui/item/SearchListItem$SearchItemStatusChangeListener;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService;Lcn/dm/download/DownLoadManager;Lcn/domob/wall/core/bean/ControlInfo;)V

    .line 323
    iget-object v1, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->listItems:Ljava/util/List;
    invoke-static {v1}, Lcn/domob/ui/view/SearchView;->access$1700(Lcn/domob/ui/view/SearchView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1e

    .line 325
    :cond_56
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->resultListAdapter:Lcn/domob/ui/adapter/SearchResultListAdapter;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$100(Lcn/domob/ui/view/SearchView;)Lcn/domob/ui/adapter/SearchResultListAdapter;

    move-result-object v0

    if-nez v0, :cond_89

    .line 326
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    new-instance v1, Lcn/domob/ui/adapter/SearchResultListAdapter;

    iget-object v2, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcn/domob/ui/view/SearchView;->access$200(Lcn/domob/ui/view/SearchView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v3}, Lcn/domob/ui/view/SearchView;->access$1000(Lcn/domob/ui/view/SearchView;)Lcn/domob/wall/core/DService;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->listItems:Ljava/util/List;
    invoke-static {v4}, Lcn/domob/ui/view/SearchView;->access$1700(Lcn/domob/ui/view/SearchView;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/domob/ui/adapter/SearchResultListAdapter;-><init>(Landroid/content/Context;Lcn/domob/wall/core/DService;Ljava/util/List;)V

    # setter for: Lcn/domob/ui/view/SearchView;->resultListAdapter:Lcn/domob/ui/adapter/SearchResultListAdapter;
    invoke-static {v0, v1}, Lcn/domob/ui/view/SearchView;->access$102(Lcn/domob/ui/view/SearchView;Lcn/domob/ui/adapter/SearchResultListAdapter;)Lcn/domob/ui/adapter/SearchResultListAdapter;

    .line 327
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mLvResult:Landroid/widget/ListView;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$1800(Lcn/domob/ui/view/SearchView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->resultListAdapter:Lcn/domob/ui/adapter/SearchResultListAdapter;
    invoke-static {v1}, Lcn/domob/ui/view/SearchView;->access$100(Lcn/domob/ui/view/SearchView;)Lcn/domob/ui/adapter/SearchResultListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 330
    :cond_89
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$1600(Lcn/domob/ui/view/SearchView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 350
    :goto_93
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 351
    return-void

    .line 334
    :cond_97
    if-eqz p2, :cond_117

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_117

    move v7, v0

    .line 335
    :goto_a0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_d8

    .line 336
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/domob/wall/core/bean/AdInfo;

    .line 337
    new-instance v0, Lcn/domob/ui/item/SearchListItem;

    iget-object v1, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/view/SearchView;->access$200(Lcn/domob/ui/view/SearchView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    iget-object v4, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v4}, Lcn/domob/ui/view/SearchView;->access$1000(Lcn/domob/ui/view/SearchView;)Lcn/domob/wall/core/DService;

    move-result-object v4

    iget-object v5, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->dlm:Lcn/dm/download/DownLoadManager;
    invoke-static {v5}, Lcn/domob/ui/view/SearchView;->access$1200(Lcn/domob/ui/view/SearchView;)Lcn/dm/download/DownLoadManager;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;
    invoke-static {v6}, Lcn/domob/ui/view/SearchView;->access$1300(Lcn/domob/ui/view/SearchView;)Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcn/domob/ui/item/SearchListItem;-><init>(Landroid/content/Context;Lcn/domob/ui/item/SearchListItem$SearchItemStatusChangeListener;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService;Lcn/dm/download/DownLoadManager;Lcn/domob/wall/core/bean/ControlInfo;)V

    .line 338
    iget-object v1, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->listItems:Ljava/util/List;
    invoke-static {v1}, Lcn/domob/ui/view/SearchView;->access$1700(Lcn/domob/ui/view/SearchView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_a0

    .line 340
    :cond_d8
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->resultListAdapter:Lcn/domob/ui/adapter/SearchResultListAdapter;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$100(Lcn/domob/ui/view/SearchView;)Lcn/domob/ui/adapter/SearchResultListAdapter;

    move-result-object v0

    if-nez v0, :cond_10b

    .line 341
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    new-instance v1, Lcn/domob/ui/adapter/SearchResultListAdapter;

    iget-object v2, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcn/domob/ui/view/SearchView;->access$200(Lcn/domob/ui/view/SearchView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v3}, Lcn/domob/ui/view/SearchView;->access$1000(Lcn/domob/ui/view/SearchView;)Lcn/domob/wall/core/DService;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->listItems:Ljava/util/List;
    invoke-static {v4}, Lcn/domob/ui/view/SearchView;->access$1700(Lcn/domob/ui/view/SearchView;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/domob/ui/adapter/SearchResultListAdapter;-><init>(Landroid/content/Context;Lcn/domob/wall/core/DService;Ljava/util/List;)V

    # setter for: Lcn/domob/ui/view/SearchView;->resultListAdapter:Lcn/domob/ui/adapter/SearchResultListAdapter;
    invoke-static {v0, v1}, Lcn/domob/ui/view/SearchView;->access$102(Lcn/domob/ui/view/SearchView;Lcn/domob/ui/adapter/SearchResultListAdapter;)Lcn/domob/ui/adapter/SearchResultListAdapter;

    .line 342
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mLvResult:Landroid/widget/ListView;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$1800(Lcn/domob/ui/view/SearchView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->resultListAdapter:Lcn/domob/ui/adapter/SearchResultListAdapter;
    invoke-static {v1}, Lcn/domob/ui/view/SearchView;->access$100(Lcn/domob/ui/view/SearchView;)Lcn/domob/ui/adapter/SearchResultListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 344
    :cond_10b
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$1600(Lcn/domob/ui/view/SearchView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_93

    .line 347
    :cond_117
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$7;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$1600(Lcn/domob/ui/view/SearchView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_93
.end method
