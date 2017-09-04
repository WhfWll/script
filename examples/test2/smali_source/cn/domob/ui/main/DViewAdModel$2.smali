.class Lcn/domob/ui/main/DViewAdModel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/DService$ReceiveSearchDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/main/DViewAdModel;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/main/DViewAdModel;


# direct methods
.method constructor <init>(Lcn/domob/ui/main/DViewAdModel;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcn/domob/ui/main/DViewAdModel$2;->a:Lcn/domob/ui/main/DViewAdModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # Lcn/domob/wall/core/DService$ErrorCode;
    .param p2, "errorContent"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcn/domob/ui/main/DViewAdModel$2;->a:Lcn/domob/ui/main/DViewAdModel;

    # getter for: Lcn/domob/ui/main/DViewAdModel;->searchDataListener:Lcn/domob/ui/main/DViewAdModel$SearchDataListener;
    invoke-static {v0}, Lcn/domob/ui/main/DViewAdModel;->access$100(Lcn/domob/ui/main/DViewAdModel;)Lcn/domob/ui/main/DViewAdModel$SearchDataListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 113
    iget-object v0, p0, Lcn/domob/ui/main/DViewAdModel$2;->a:Lcn/domob/ui/main/DViewAdModel;

    # getter for: Lcn/domob/ui/main/DViewAdModel;->searchDataListener:Lcn/domob/ui/main/DViewAdModel$SearchDataListener;
    invoke-static {v0}, Lcn/domob/ui/main/DViewAdModel;->access$100(Lcn/domob/ui/main/DViewAdModel;)Lcn/domob/ui/main/DViewAdModel$SearchDataListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/domob/ui/main/DViewAdModel$SearchDataListener;->onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    .line 116
    :cond_11
    return-void
.end method

.method public onSuccessReceiveData(Ljava/util/List;Ljava/util/List;)V
    .registers 5
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
    .line 102
    .local p1, "searchAdInfos":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    .local p2, "recommendAdInfos":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    iget-object v0, p0, Lcn/domob/ui/main/DViewAdModel$2;->a:Lcn/domob/ui/main/DViewAdModel;

    # getter for: Lcn/domob/ui/main/DViewAdModel;->searchDataListener:Lcn/domob/ui/main/DViewAdModel$SearchDataListener;
    invoke-static {v0}, Lcn/domob/ui/main/DViewAdModel;->access$100(Lcn/domob/ui/main/DViewAdModel;)Lcn/domob/ui/main/DViewAdModel$SearchDataListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 103
    new-instance v0, Lcn/domob/ui/main/SearchResp;

    invoke-direct {v0, p2, p2}, Lcn/domob/ui/main/SearchResp;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 104
    iget-object v1, p0, Lcn/domob/ui/main/DViewAdModel$2;->a:Lcn/domob/ui/main/DViewAdModel;

    # getter for: Lcn/domob/ui/main/DViewAdModel;->searchDataListener:Lcn/domob/ui/main/DViewAdModel$SearchDataListener;
    invoke-static {v1}, Lcn/domob/ui/main/DViewAdModel;->access$100(Lcn/domob/ui/main/DViewAdModel;)Lcn/domob/ui/main/DViewAdModel$SearchDataListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/domob/ui/main/DViewAdModel$SearchDataListener;->onSuccessReceiveData(Lcn/domob/ui/main/SearchResp;)V

    .line 107
    :cond_16
    return-void
.end method
