.class Lcn/domob/ui/view/SearchView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/view/SearchView;->initData()V
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
    .line 405
    iput-object p1, p0, Lcn/domob/ui/view/SearchView$8;->a:Lcn/domob/ui/view/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
    .registers 5
    .param p1, "errorCode"    # Lcn/domob/wall/core/DService$ErrorCode;
    .param p2, "errorContent"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$8;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$1600(Lcn/domob/ui/view/SearchView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 421
    return-void
.end method

.method public onSuccessReceiveData(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "hotStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$8;->a:Lcn/domob/ui/view/SearchView;

    # setter for: Lcn/domob/ui/view/SearchView;->hotString:Ljava/util/List;
    invoke-static {v0, p1}, Lcn/domob/ui/view/SearchView;->access$802(Lcn/domob/ui/view/SearchView;Ljava/util/List;)Ljava/util/List;

    .line 411
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$8;->a:Lcn/domob/ui/view/SearchView;

    iget-object v0, v0, Lcn/domob/ui/view/SearchView;->showHotStringHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 412
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$8;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$1600(Lcn/domob/ui/view/SearchView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 413
    return-void
.end method
