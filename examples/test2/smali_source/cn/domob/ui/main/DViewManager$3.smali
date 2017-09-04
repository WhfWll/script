.class Lcn/domob/ui/main/DViewManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/main/DViewManager;->showSearchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/main/DViewManager;

.field private b:Lcn/domob/ui/view/SearchView;

.field private c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcn/domob/ui/main/DViewManager;)V
    .registers 2

    .prologue
    .line 347
    iput-object p1, p0, Lcn/domob/ui/main/DViewManager$3;->a:Lcn/domob/ui/main/DViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 354
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$3;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$300(Lcn/domob/ui/main/DViewManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 365
    :cond_e
    :goto_e
    return-void

    .line 357
    :cond_f
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/ui/main/DViewManager$3;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/main/DViewManager;->access$300(Lcn/domob/ui/main/DViewManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/DViewManager$3;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;
    invoke-static {v2}, Lcn/domob/ui/main/DViewManager;->access$300(Lcn/domob/ui/main/DViewManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/domob/ui/utility/DRes;->initGetRes(Landroid/content/Context;)Lcn/domob/ui/utility/DRes;

    move-result-object v2

    const-string v3, "Dialog_Fullscreen"

    invoke-virtual {v2, v3}, Lcn/domob/ui/utility/DRes;->getStyle(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/ui/main/DViewManager$3;->c:Landroid/app/Dialog;

    .line 358
    new-instance v0, Lcn/domob/ui/view/SearchView;

    iget-object v1, p0, Lcn/domob/ui/main/DViewManager$3;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/main/DViewManager;->access$300(Lcn/domob/ui/main/DViewManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/DViewManager$3;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v2}, Lcn/domob/ui/main/DViewManager;->access$400(Lcn/domob/ui/main/DViewManager;)Lcn/domob/wall/core/DService;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/ui/main/DViewManager$3;->c:Landroid/app/Dialog;

    iget-object v4, p0, Lcn/domob/ui/main/DViewManager$3;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->adResp:Lcn/domob/ui/main/AdResp;
    invoke-static {v4}, Lcn/domob/ui/main/DViewManager;->access$900(Lcn/domob/ui/main/DViewManager;)Lcn/domob/ui/main/AdResp;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/ui/main/AdResp;->getControlInfo()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v4

    iget-object v5, p0, Lcn/domob/ui/main/DViewManager$3;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->home:Lcn/domob/ui/main/Home;
    invoke-static {v5}, Lcn/domob/ui/main/DViewManager;->access$1000(Lcn/domob/ui/main/DViewManager;)Lcn/domob/ui/main/Home;

    move-result-object v5

    invoke-virtual {v5}, Lcn/domob/ui/main/Home;->getDownloadManager()Lcn/dm/download/DownLoadManager;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcn/domob/ui/view/SearchView;-><init>(Landroid/content/Context;Lcn/domob/wall/core/DService;Landroid/app/Dialog;Lcn/domob/wall/core/bean/ControlInfo;Lcn/dm/download/DownLoadManager;)V

    iput-object v0, p0, Lcn/domob/ui/main/DViewManager$3;->b:Lcn/domob/ui/view/SearchView;

    .line 359
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$3;->b:Lcn/domob/ui/view/SearchView;

    invoke-virtual {v0}, Lcn/domob/ui/view/SearchView;->getSearchView()Landroid/view/View;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_e

    .line 361
    iget-object v1, p0, Lcn/domob/ui/main/DViewManager$3;->c:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 362
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$3;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_e
.end method
