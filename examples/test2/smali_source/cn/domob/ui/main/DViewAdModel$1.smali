.class Lcn/domob/ui/main/DViewAdModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/DService$ReceiveDataListener;


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
    .line 73
    iput-object p1, p0, Lcn/domob/ui/main/DViewAdModel$1;->a:Lcn/domob/ui/main/DViewAdModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # Lcn/domob/wall/core/DService$ErrorCode;
    .param p2, "errorContent"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcn/domob/ui/main/DViewAdModel$1;->a:Lcn/domob/ui/main/DViewAdModel;

    # getter for: Lcn/domob/ui/main/DViewAdModel;->mAdDataListener:Lcn/domob/ui/main/DViewAdModel$AdDataListener;
    invoke-static {v0}, Lcn/domob/ui/main/DViewAdModel;->access$000(Lcn/domob/ui/main/DViewAdModel;)Lcn/domob/ui/main/DViewAdModel$AdDataListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 90
    iget-object v0, p0, Lcn/domob/ui/main/DViewAdModel$1;->a:Lcn/domob/ui/main/DViewAdModel;

    # getter for: Lcn/domob/ui/main/DViewAdModel;->mAdDataListener:Lcn/domob/ui/main/DViewAdModel$AdDataListener;
    invoke-static {v0}, Lcn/domob/ui/main/DViewAdModel;->access$000(Lcn/domob/ui/main/DViewAdModel;)Lcn/domob/ui/main/DViewAdModel$AdDataListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/domob/ui/main/DViewAdModel$AdDataListener;->onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    .line 92
    :cond_11
    return-void
.end method

.method public onSuccessReceiveData(Ljava/util/List;Ljava/util/List;Lcn/domob/wall/core/bean/ControlInfo;Ljava/util/List;)V
    .registers 7
    .param p3, "controlInfo"    # Lcn/domob/wall/core/bean/ControlInfo;
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
            ">;",
            "Lcn/domob/wall/core/bean/ControlInfo;",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdExtend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "bannerList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    .local p2, "itemList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    .local p4, "adExtend":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdExtend;>;"
    iget-object v0, p0, Lcn/domob/ui/main/DViewAdModel$1;->a:Lcn/domob/ui/main/DViewAdModel;

    # getter for: Lcn/domob/ui/main/DViewAdModel;->mAdDataListener:Lcn/domob/ui/main/DViewAdModel$AdDataListener;
    invoke-static {v0}, Lcn/domob/ui/main/DViewAdModel;->access$000(Lcn/domob/ui/main/DViewAdModel;)Lcn/domob/ui/main/DViewAdModel$AdDataListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 81
    new-instance v0, Lcn/domob/ui/main/AdResp;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/domob/ui/main/AdResp;-><init>(Ljava/util/List;Ljava/util/List;Lcn/domob/wall/core/bean/ControlInfo;Ljava/util/List;)V

    .line 82
    iget-object v1, p0, Lcn/domob/ui/main/DViewAdModel$1;->a:Lcn/domob/ui/main/DViewAdModel;

    # getter for: Lcn/domob/ui/main/DViewAdModel;->mAdDataListener:Lcn/domob/ui/main/DViewAdModel$AdDataListener;
    invoke-static {v1}, Lcn/domob/ui/main/DViewAdModel;->access$000(Lcn/domob/ui/main/DViewAdModel;)Lcn/domob/ui/main/DViewAdModel$AdDataListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/domob/ui/main/DViewAdModel$AdDataListener;->onSuccessReceiveData(Lcn/domob/ui/main/AdResp;)V

    .line 84
    :cond_16
    return-void
.end method
