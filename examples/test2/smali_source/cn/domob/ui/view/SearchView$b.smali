.class Lcn/domob/ui/view/SearchView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/view/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/SearchView;


# direct methods
.method private constructor <init>(Lcn/domob/ui/view/SearchView;)V
    .registers 2

    .prologue
    .line 222
    iput-object p1, p0, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/domob/ui/view/SearchView;Lcn/domob/ui/view/SearchView$1;)V
    .registers 3

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcn/domob/ui/view/SearchView$b;-><init>(Lcn/domob/ui/view/SearchView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->resultListAdapter:Lcn/domob/ui/adapter/SearchResultListAdapter;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$100(Lcn/domob/ui/view/SearchView;)Lcn/domob/ui/adapter/SearchResultListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/domob/ui/adapter/SearchResultListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/item/SearchListItem;

    .line 228
    invoke-virtual {v0}, Lcn/domob/ui/item/SearchListItem;->getDownloadAppInfo()Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v1

    .line 231
    invoke-virtual {v0}, Lcn/domob/ui/item/SearchListItem;->getmAdInfo()Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcn/domob/wall/core/bean/AdInfo;->setAdActualPosition(I)V

    .line 232
    iget-object v2, p0, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v2}, Lcn/domob/ui/view/SearchView;->access$1000(Lcn/domob/ui/view/SearchView;)Lcn/domob/wall/core/DService;

    move-result-object v2

    invoke-virtual {v0}, Lcn/domob/ui/item/SearchListItem;->getmAdInfo()Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/DService;->doClickWallItemReport(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 235
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcn/domob/ui/view/SearchView;->access$200(Lcn/domob/ui/view/SearchView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcn/domob/ui/view/SearchView;->pb:Landroid/app/ProgressDialog;
    invoke-static {v0, v2}, Lcn/domob/ui/view/SearchView;->access$1102(Lcn/domob/ui/view/SearchView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 236
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->pb:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$1100(Lcn/domob/ui/view/SearchView;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v2, "\u6570\u636e\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->pb:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$1100(Lcn/domob/ui/view/SearchView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 239
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$1000(Lcn/domob/ui/view/SearchView;)Lcn/domob/wall/core/DService;

    move-result-object v0

    new-instance v2, Lcn/domob/ui/view/SearchView$b$1;

    invoke-direct {v2, p0}, Lcn/domob/ui/view/SearchView$b$1;-><init>(Lcn/domob/ui/view/SearchView$b;)V

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/DService;->setReceiveDetailsDataListener(Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;)V

    .line 274
    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v1}, Lcn/domob/ui/view/SearchView;->access$1000(Lcn/domob/ui/view/SearchView;)Lcn/domob/wall/core/DService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/DService;->requestDetailsDataAsyn(Ljava/lang/String;)V

    .line 277
    return-void
.end method
