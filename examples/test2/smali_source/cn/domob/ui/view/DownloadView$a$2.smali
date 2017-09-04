.class Lcn/domob/ui/view/DownloadView$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/view/DownloadView$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/DownloadView$a;

.field private b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcn/domob/ui/view/DownloadView$a;)V
    .registers 2

    .prologue
    .line 283
    iput-object p1, p0, Lcn/domob/ui/view/DownloadView$a$2;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
    .registers 5
    .param p1, "errorCode"    # Lcn/domob/wall/core/DService$ErrorCode;
    .param p2, "errorContent"    # Ljava/lang/String;

    .prologue
    .line 306
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$2;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v0}, Lcn/domob/ui/view/DownloadView$a;->c(Lcn/domob/ui/view/DownloadView$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 307
    # getter for: Lcn/domob/ui/view/DownloadView;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/view/DownloadView;->access$100()Lcn/domob/ui/main/Logger;

    move-result-object v0

    const-string v1, "fail to receive detail data."

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->errorLog(Ljava/lang/String;)V

    .line 308
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
    .line 287
    .local p1, "adInfos":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$2;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v0}, Lcn/domob/ui/view/DownloadView$a;->c(Lcn/domob/ui/view/DownloadView$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 288
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 289
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_71

    if-eqz p1, :cond_71

    .line 290
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/domob/wall/core/bean/AdInfo;

    .line 291
    new-instance v0, Lcn/domob/ui/item/AppListItem;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$2;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v1, v1, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$200(Lcn/domob/ui/view/DownloadView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/view/DownloadView$a$2;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v2, v2, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v4, p0, Lcn/domob/ui/view/DownloadView$a$2;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v4, v4, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v4}, Lcn/domob/ui/view/DownloadView;->access$1400(Lcn/domob/ui/view/DownloadView;)Lcn/domob/wall/core/DService;

    move-result-object v4

    iget-object v5, p0, Lcn/domob/ui/view/DownloadView$a$2;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v5, v5, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mDownLoadManager:Lcn/dm/download/DownLoadManager;
    invoke-static {v5}, Lcn/domob/ui/view/DownloadView;->access$800(Lcn/domob/ui/view/DownloadView;)Lcn/dm/download/DownLoadManager;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/ui/view/DownloadView$a$2;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v6, v6, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;
    invoke-static {v6}, Lcn/domob/ui/view/DownloadView;->access$1500(Lcn/domob/ui/view/DownloadView;)Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v6

    iget-object v7, p0, Lcn/domob/ui/view/DownloadView$a$2;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v7, v7, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->listenerName:Ljava/lang/String;
    invoke-static {v7}, Lcn/domob/ui/view/DownloadView;->access$1600(Lcn/domob/ui/view/DownloadView;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcn/domob/ui/item/AppListItem;-><init>(Landroid/content/Context;Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService;Lcn/dm/download/DownLoadManager;Lcn/domob/wall/core/bean/ControlInfo;Ljava/lang/String;)V

    .line 294
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcn/domob/ui/view/DownloadView$a$2;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v2, v2, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcn/domob/ui/view/DownloadView;->access$200(Lcn/domob/ui/view/DownloadView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/domob/ui/view/DownloadView$a$2;->b:Landroid/app/Dialog;

    .line 296
    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$2;->b:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lcn/domob/ui/item/AppListItem;->bindDetailsView(Landroid/app/Dialog;)Landroid/view/View;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$2;->b:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 298
    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$2;->b:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 299
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$2;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 301
    :cond_71
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 302
    return-void
.end method
