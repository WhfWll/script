.class public Lcn/domob/ui/main/AdResp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAdExtend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdExtend;",
            ">;"
        }
    .end annotation
.end field

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBannerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

.field private mGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/main/AdResp;->mGameList:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/main/AdResp;->mAppList:Ljava/util/List;

    .line 32
    new-instance v0, Lcn/domob/wall/core/bean/ControlInfo;

    invoke-direct {v0}, Lcn/domob/wall/core/bean/ControlInfo;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/main/AdResp;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/main/AdResp;->mBannerList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/main/AdResp;->mItemList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/main/AdResp;->mAdExtend:Ljava/util/List;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcn/domob/wall/core/bean/ControlInfo;Ljava/util/List;)V
    .registers 6
    .param p3, "_controlInfo"    # Lcn/domob/wall/core/bean/ControlInfo;
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
    .line 22
    .local p1, "_bannerList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    .local p2, "_itemList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    .local p4, "_adExtend":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdExtend;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/main/AdResp;->mGameList:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/main/AdResp;->mAppList:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcn/domob/ui/main/AdResp;->mBannerList:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lcn/domob/ui/main/AdResp;->mItemList:Ljava/util/List;

    .line 25
    iput-object p3, p0, Lcn/domob/ui/main/AdResp;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    .line 26
    iput-object p4, p0, Lcn/domob/ui/main/AdResp;->mAdExtend:Ljava/util/List;

    .line 27
    iget-object v0, p0, Lcn/domob/ui/main/AdResp;->mItemList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcn/domob/ui/main/AdResp;->parseAdResp(Ljava/util/List;)V

    .line 28
    return-void
.end method

.method private parseAdResp(Ljava/util/List;)V
    .registers 6
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
    .line 41
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    .line 42
    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdType()Lcn/domob/wall/core/bean/AdInfo$AdType;

    move-result-object v2

    sget-object v3, Lcn/domob/wall/core/bean/AdInfo$AdType;->GAME:Lcn/domob/wall/core/bean/AdInfo$AdType;

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/bean/AdInfo$AdType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 43
    iget-object v2, p0, Lcn/domob/ui/main/AdResp;->mGameList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 45
    :cond_22
    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdType()Lcn/domob/wall/core/bean/AdInfo$AdType;

    move-result-object v2

    sget-object v3, Lcn/domob/wall/core/bean/AdInfo$AdType;->APPLICATION:Lcn/domob/wall/core/bean/AdInfo$AdType;

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/bean/AdInfo$AdType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 46
    iget-object v2, p0, Lcn/domob/ui/main/AdResp;->mAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 52
    :cond_34
    return-void
.end method


# virtual methods
.method public getAdExtend()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdExtend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcn/domob/ui/main/AdResp;->mAdExtend:Ljava/util/List;

    return-object v0
.end method

.method public getAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcn/domob/ui/main/AdResp;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public getBannerList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/ui/main/AdResp;->mBannerList:Ljava/util/List;

    return-object v0
.end method

.method public getControlInfo()Lcn/domob/wall/core/bean/ControlInfo;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcn/domob/ui/main/AdResp;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    return-object v0
.end method

.method public getGameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcn/domob/ui/main/AdResp;->mGameList:Ljava/util/List;

    return-object v0
.end method

.method public getItemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcn/domob/ui/main/AdResp;->mItemList:Ljava/util/List;

    return-object v0
.end method

.method public setAdExtend(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdExtend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "adExtend":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdExtend;>;"
    iput-object p1, p0, Lcn/domob/ui/main/AdResp;->mAdExtend:Ljava/util/List;

    .line 84
    return-void
.end method

.method public setAppList(Ljava/util/List;)V
    .registers 2
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
    .line 99
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    iput-object p1, p0, Lcn/domob/ui/main/AdResp;->mAppList:Ljava/util/List;

    .line 100
    return-void
.end method

.method public setBannerList(Ljava/util/List;)V
    .registers 2
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
    .line 59
    .local p1, "bannerList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    iput-object p1, p0, Lcn/domob/ui/main/AdResp;->mBannerList:Ljava/util/List;

    .line 60
    return-void
.end method

.method public setControlInfo(Lcn/domob/wall/core/bean/ControlInfo;)V
    .registers 2
    .param p1, "controlInfo"    # Lcn/domob/wall/core/bean/ControlInfo;

    .prologue
    .line 75
    iput-object p1, p0, Lcn/domob/ui/main/AdResp;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    .line 76
    return-void
.end method

.method public setGameList(Ljava/util/List;)V
    .registers 2
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
    .line 91
    .local p1, "gameList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    iput-object p1, p0, Lcn/domob/ui/main/AdResp;->mGameList:Ljava/util/List;

    .line 92
    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .registers 2
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
    .line 67
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    iput-object p1, p0, Lcn/domob/ui/main/AdResp;->mItemList:Ljava/util/List;

    .line 68
    return-void
.end method
