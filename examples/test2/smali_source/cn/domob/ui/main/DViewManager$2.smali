.class Lcn/domob/ui/main/DViewManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/main/DViewManager;->initHomeDialogView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/main/DViewManager;


# direct methods
.method constructor <init>(Lcn/domob/ui/main/DViewManager;)V
    .registers 2

    .prologue
    .line 307
    iput-object p1, p0, Lcn/domob/ui/main/DViewManager$2;->a:Lcn/domob/ui/main/DViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 311
    # getter for: Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/main/DViewManager;->access$200()Lcn/domob/ui/main/Logger;

    move-result-object v0

    const-string v1, "dialogView onDismiss"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 312
    # getter for: Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/main/DViewManager;->access$200()Lcn/domob/ui/main/Logger;

    move-result-object v0

    const-string v1, "\u63a8\u5e7f\u5899\u5173\u95ed"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$2;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$400(Lcn/domob/ui/main/DViewManager;)Lcn/domob/wall/core/DService;

    move-result-object v0

    sget-object v1, Lcn/domob/wall/core/DService$ReportUserActionType;->EXIT:Lcn/domob/wall/core/DService$ReportUserActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doUserActionReport(Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 315
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$2;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->mGetDataListener:Lcn/domob/ui/main/DViewManager$GetDataListener;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$800(Lcn/domob/ui/main/DViewManager;)Lcn/domob/ui/main/DViewManager$GetDataListener;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 316
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$2;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->mGetDataListener:Lcn/domob/ui/main/DViewManager$GetDataListener;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$800(Lcn/domob/ui/main/DViewManager;)Lcn/domob/ui/main/DViewManager$GetDataListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/ui/main/DViewManager$GetDataListener;->onCloseWall()V

    .line 317
    # getter for: Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/main/DViewManager;->access$200()Lcn/domob/ui/main/Logger;

    move-result-object v0

    const-string v1, "onCloseWall"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 320
    :cond_37
    return-void
.end method
