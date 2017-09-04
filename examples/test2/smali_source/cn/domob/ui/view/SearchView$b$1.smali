.class Lcn/domob/ui/view/SearchView$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/view/SearchView$b;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/SearchView$b;

.field private b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcn/domob/ui/view/SearchView$b;)V
    .registers 2

    .prologue
    .line 239
    iput-object p1, p0, Lcn/domob/ui/view/SearchView$b$1;->a:Lcn/domob/ui/view/SearchView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
    .registers 7
    .param p1, "errorCode"    # Lcn/domob/wall/core/DService$ErrorCode;
    .param p2, "errorContent"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$b$1;->a:Lcn/domob/ui/view/SearchView$b;

    iget-object v0, v0, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->pb:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$1100(Lcn/domob/ui/view/SearchView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 267
    # getter for: Lcn/domob/ui/view/SearchView;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/view/SearchView;->access$1500()Lcn/domob/ui/main/Logger;

    move-result-object v0

    const-string v1, "onFailReceiveData-->"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorContent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 269
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$b$1;->a:Lcn/domob/ui/view/SearchView$b;

    iget-object v0, v0, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$200(Lcn/domob/ui/view/SearchView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u4e0d\u662f\u592a\u7ed9\u529b\u54e6..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 272
    return-void
.end method

.method public onSuccessReceiveData(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "adInfos":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$b$1;->a:Lcn/domob/ui/view/SearchView$b;

    iget-object v0, v0, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->pb:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$1100(Lcn/domob/ui/view/SearchView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 246
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 248
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_73

    if-eqz p1, :cond_73

    .line 249
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/domob/wall/core/bean/AdInfo;

    .line 250
    new-instance v0, Lcn/domob/ui/item/AppListItem;

    iget-object v1, p0, Lcn/domob/ui/view/SearchView$b$1;->a:Lcn/domob/ui/view/SearchView$b;

    iget-object v1, v1, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/view/SearchView;->access$200(Lcn/domob/ui/view/SearchView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/view/SearchView$b$1;->a:Lcn/domob/ui/view/SearchView$b;

    iget-object v2, v2, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    iget-object v4, p0, Lcn/domob/ui/view/SearchView$b$1;->a:Lcn/domob/ui/view/SearchView$b;

    iget-object v4, v4, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v4}, Lcn/domob/ui/view/SearchView;->access$1000(Lcn/domob/ui/view/SearchView;)Lcn/domob/wall/core/DService;

    move-result-object v4

    iget-object v5, p0, Lcn/domob/ui/view/SearchView$b$1;->a:Lcn/domob/ui/view/SearchView$b;

    iget-object v5, v5, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->dlm:Lcn/dm/download/DownLoadManager;
    invoke-static {v5}, Lcn/domob/ui/view/SearchView;->access$1200(Lcn/domob/ui/view/SearchView;)Lcn/dm/download/DownLoadManager;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/ui/view/SearchView$b$1;->a:Lcn/domob/ui/view/SearchView$b;

    iget-object v6, v6, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;
    invoke-static {v6}, Lcn/domob/ui/view/SearchView;->access$1300(Lcn/domob/ui/view/SearchView;)Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v6

    iget-object v7, p0, Lcn/domob/ui/view/SearchView$b$1;->a:Lcn/domob/ui/view/SearchView$b;

    iget-object v7, v7, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->listenerName:Ljava/lang/String;
    invoke-static {v7}, Lcn/domob/ui/view/SearchView;->access$1400(Lcn/domob/ui/view/SearchView;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcn/domob/ui/item/AppListItem;-><init>(Landroid/content/Context;Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService;Lcn/dm/download/DownLoadManager;Lcn/domob/wall/core/bean/ControlInfo;Ljava/lang/String;)V

    .line 253
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcn/domob/ui/view/SearchView$b$1;->a:Lcn/domob/ui/view/SearchView$b;

    iget-object v2, v2, Lcn/domob/ui/view/SearchView$b;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcn/domob/ui/view/SearchView;->access$200(Lcn/domob/ui/view/SearchView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/domob/ui/view/SearchView$b$1;->b:Landroid/app/Dialog;

    .line 255
    iget-object v1, p0, Lcn/domob/ui/view/SearchView$b$1;->b:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lcn/domob/ui/item/AppListItem;->bindDetailsView(Landroid/app/Dialog;)Landroid/view/View;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcn/domob/ui/view/SearchView$b$1;->b:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 257
    iget-object v1, p0, Lcn/domob/ui/view/SearchView$b$1;->b:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 258
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$b$1;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 261
    :cond_73
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 262
    return-void
.end method
