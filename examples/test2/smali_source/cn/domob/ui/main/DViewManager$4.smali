.class Lcn/domob/ui/main/DViewManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/main/DViewManager;->showDownloadDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/main/DViewManager;

.field private b:Landroid/app/Dialog;

.field private c:Lcn/domob/ui/view/DownloadView;


# direct methods
.method constructor <init>(Lcn/domob/ui/main/DViewManager;)V
    .registers 2

    .prologue
    .line 373
    iput-object p1, p0, Lcn/domob/ui/main/DViewManager$4;->a:Lcn/domob/ui/main/DViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 380
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$4;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$300(Lcn/domob/ui/main/DViewManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 400
    :goto_e
    return-void

    .line 383
    :cond_f
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/ui/main/DViewManager$4;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/main/DViewManager;->access$300(Lcn/domob/ui/main/DViewManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/DViewManager$4;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;
    invoke-static {v2}, Lcn/domob/ui/main/DViewManager;->access$300(Lcn/domob/ui/main/DViewManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/domob/ui/utility/DRes;->initGetRes(Landroid/content/Context;)Lcn/domob/ui/utility/DRes;

    move-result-object v2

    const-string v3, "Dialog_Fullscreen"

    invoke-virtual {v2, v3}, Lcn/domob/ui/utility/DRes;->getStyle(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/ui/main/DViewManager$4;->b:Landroid/app/Dialog;

    .line 384
    new-instance v0, Lcn/domob/ui/view/DownloadView;

    iget-object v1, p0, Lcn/domob/ui/main/DViewManager$4;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/main/DViewManager;->access$300(Lcn/domob/ui/main/DViewManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/DViewManager$4;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v2}, Lcn/domob/ui/main/DViewManager;->access$400(Lcn/domob/ui/main/DViewManager;)Lcn/domob/wall/core/DService;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/ui/main/DViewManager$4;->b:Landroid/app/Dialog;

    iget-object v4, p0, Lcn/domob/ui/main/DViewManager$4;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->adResp:Lcn/domob/ui/main/AdResp;
    invoke-static {v4}, Lcn/domob/ui/main/DViewManager;->access$900(Lcn/domob/ui/main/DViewManager;)Lcn/domob/ui/main/AdResp;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/ui/main/AdResp;->getControlInfo()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v4

    iget-object v5, p0, Lcn/domob/ui/main/DViewManager$4;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->home:Lcn/domob/ui/main/Home;
    invoke-static {v5}, Lcn/domob/ui/main/DViewManager;->access$1000(Lcn/domob/ui/main/DViewManager;)Lcn/domob/ui/main/Home;

    move-result-object v5

    invoke-virtual {v5}, Lcn/domob/ui/main/Home;->getDownloadManager()Lcn/dm/download/DownLoadManager;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcn/domob/ui/view/DownloadView;-><init>(Landroid/content/Context;Lcn/domob/wall/core/DService;Landroid/app/Dialog;Lcn/domob/wall/core/bean/ControlInfo;Lcn/dm/download/DownLoadManager;)V

    iput-object v0, p0, Lcn/domob/ui/main/DViewManager$4;->c:Lcn/domob/ui/view/DownloadView;

    .line 385
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$4;->c:Lcn/domob/ui/view/DownloadView;

    invoke-virtual {v0}, Lcn/domob/ui/view/DownloadView;->getDownloadView()Landroid/view/View;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_67

    .line 387
    iget-object v1, p0, Lcn/domob/ui/main/DViewManager$4;->b:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 388
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$4;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 391
    :cond_67
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$4;->b:Landroid/app/Dialog;

    new-instance v1, Lcn/domob/ui/main/DViewManager$4$1;

    invoke-direct {v1, p0}, Lcn/domob/ui/main/DViewManager$4$1;-><init>(Lcn/domob/ui/main/DViewManager$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_e
.end method
