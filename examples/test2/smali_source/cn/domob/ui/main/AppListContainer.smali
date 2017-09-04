.class public Lcn/domob/ui/main/AppListContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mLogger:Lcn/domob/ui/main/Logger;


# instance fields
.field private dlm:Lcn/dm/download/DownLoadManager;

.field private mAdResp:Lcn/domob/ui/main/AdResp;

.field private mAllList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBannerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDService:Lcn/domob/wall/core/DService;

.field private mGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;

.field private mListenerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    new-instance v0, Lcn/domob/ui/main/Logger;

    const-class v1, Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/main/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/main/AppListContainer;->mLogger:Lcn/domob/ui/main/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/wall/core/DService;Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;Lcn/dm/download/DownLoadManager;)V
    .registers 6
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_dService"    # Lcn/domob/wall/core/DService;
    .param p3, "_listener"    # Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;
    .param p4, "_dlm"    # Lcn/dm/download/DownLoadManager;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "APPItem"

    iput-object v0, p0, Lcn/domob/ui/main/AppListContainer;->mListenerName:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/main/AppListContainer;->mAllList:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/main/AppListContainer;->mGameList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/main/AppListContainer;->mAppList:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/main/AppListContainer;->mBannerList:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcn/domob/ui/main/AppListContainer;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcn/domob/ui/main/AppListContainer;->mDService:Lcn/domob/wall/core/DService;

    .line 35
    iput-object p3, p0, Lcn/domob/ui/main/AppListContainer;->mListener:Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;

    .line 36
    iput-object p4, p0, Lcn/domob/ui/main/AppListContainer;->dlm:Lcn/dm/download/DownLoadManager;

    .line 37
    return-void
.end method


# virtual methods
.method public clearAll()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcn/domob/ui/main/AppListContainer;->mAllList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, p0, Lcn/domob/ui/main/AppListContainer;->mGameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    iget-object v0, p0, Lcn/domob/ui/main/AppListContainer;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    iget-object v0, p0, Lcn/domob/ui/main/AppListContainer;->mBannerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    return-void
.end method

.method public doRefresh(Lcn/domob/ui/main/AdResp;)V
    .registers 11
    .param p1, "_adResp"    # Lcn/domob/ui/main/AdResp;

    .prologue
    .line 40
    sget-object v0, Lcn/domob/ui/main/AppListContainer;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Start convert adresp to applistitem"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->ptLog(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcn/domob/ui/main/AppListContainer;->mAdResp:Lcn/domob/ui/main/AdResp;

    .line 43
    invoke-virtual {p0}, Lcn/domob/ui/main/AppListContainer;->clearAll()V

    .line 45
    iget-object v0, p0, Lcn/domob/ui/main/AppListContainer;->mAdResp:Lcn/domob/ui/main/AdResp;

    if-eqz v0, :cond_95

    .line 47
    iget-object v0, p0, Lcn/domob/ui/main/AppListContainer;->mAdResp:Lcn/domob/ui/main/AdResp;

    invoke-virtual {v0}, Lcn/domob/ui/main/AdResp;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1a
    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/domob/wall/core/bean/AdInfo;

    .line 48
    new-instance v0, Lcn/domob/ui/item/AppListItem;

    iget-object v1, p0, Lcn/domob/ui/main/AppListContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/ui/main/AppListContainer;->mListener:Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;

    iget-object v4, p0, Lcn/domob/ui/main/AppListContainer;->mDService:Lcn/domob/wall/core/DService;

    iget-object v5, p0, Lcn/domob/ui/main/AppListContainer;->dlm:Lcn/dm/download/DownLoadManager;

    iget-object v6, p0, Lcn/domob/ui/main/AppListContainer;->mAdResp:Lcn/domob/ui/main/AdResp;

    invoke-virtual {v6}, Lcn/domob/ui/main/AdResp;->getControlInfo()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v6

    iget-object v7, p0, Lcn/domob/ui/main/AppListContainer;->mListenerName:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcn/domob/ui/item/AppListItem;-><init>(Landroid/content/Context;Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService;Lcn/dm/download/DownLoadManager;Lcn/domob/wall/core/bean/ControlInfo;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcn/domob/ui/main/AppListContainer;->mAllList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v3}, Lcn/domob/wall/core/bean/AdInfo;->getAdType()Lcn/domob/wall/core/bean/AdInfo$AdType;

    move-result-object v1

    sget-object v2, Lcn/domob/wall/core/bean/AdInfo$AdType;->GAME:Lcn/domob/wall/core/bean/AdInfo$AdType;

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/bean/AdInfo$AdType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 51
    iget-object v1, p0, Lcn/domob/ui/main/AppListContainer;->mGameList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 53
    :cond_52
    invoke-virtual {v3}, Lcn/domob/wall/core/bean/AdInfo;->getAdType()Lcn/domob/wall/core/bean/AdInfo$AdType;

    move-result-object v1

    sget-object v2, Lcn/domob/wall/core/bean/AdInfo$AdType;->APPLICATION:Lcn/domob/wall/core/bean/AdInfo$AdType;

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/bean/AdInfo$AdType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 54
    iget-object v1, p0, Lcn/domob/ui/main/AppListContainer;->mAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 58
    :cond_64
    iget-object v0, p0, Lcn/domob/ui/main/AppListContainer;->mAdResp:Lcn/domob/ui/main/AdResp;

    invoke-virtual {v0}, Lcn/domob/ui/main/AdResp;->getBannerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/domob/wall/core/bean/AdInfo;

    .line 59
    new-instance v0, Lcn/domob/ui/item/AppListItem;

    iget-object v1, p0, Lcn/domob/ui/main/AppListContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/ui/main/AppListContainer;->mListener:Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;

    iget-object v4, p0, Lcn/domob/ui/main/AppListContainer;->mDService:Lcn/domob/wall/core/DService;

    iget-object v5, p0, Lcn/domob/ui/main/AppListContainer;->dlm:Lcn/dm/download/DownLoadManager;

    iget-object v6, p0, Lcn/domob/ui/main/AppListContainer;->mAdResp:Lcn/domob/ui/main/AdResp;

    invoke-virtual {v6}, Lcn/domob/ui/main/AdResp;->getControlInfo()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v6

    iget-object v7, p0, Lcn/domob/ui/main/AppListContainer;->mListenerName:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcn/domob/ui/item/AppListItem;-><init>(Landroid/content/Context;Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService;Lcn/dm/download/DownLoadManager;Lcn/domob/wall/core/bean/ControlInfo;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcn/domob/ui/main/AppListContainer;->mBannerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 65
    :cond_95
    sget-object v0, Lcn/domob/ui/main/AppListContainer;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Finish convert adresp to applistitem"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->ptLog(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public getAllList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcn/domob/ui/main/AppListContainer;->mAllList:Ljava/util/List;

    return-object v0
.end method

.method public getAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcn/domob/ui/main/AppListContainer;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public getBannerList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcn/domob/ui/main/AppListContainer;->mBannerList:Ljava/util/List;

    return-object v0
.end method

.method public getGameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcn/domob/ui/main/AppListContainer;->mGameList:Ljava/util/List;

    return-object v0
.end method

.method public setAllList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "allList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/ui/item/AppListItem;>;"
    iput-object p1, p0, Lcn/domob/ui/main/AppListContainer;->mAllList:Ljava/util/List;

    .line 83
    return-void
.end method

.method public setAppList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/ui/item/AppListItem;>;"
    iput-object p1, p0, Lcn/domob/ui/main/AppListContainer;->mAppList:Ljava/util/List;

    .line 95
    return-void
.end method

.method public setBannerList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "bannerList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/ui/item/AppListItem;>;"
    iput-object p1, p0, Lcn/domob/ui/main/AppListContainer;->mBannerList:Ljava/util/List;

    .line 103
    return-void
.end method

.method public setGameList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "gameList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/ui/item/AppListItem;>;"
    iput-object p1, p0, Lcn/domob/ui/main/AppListContainer;->mGameList:Ljava/util/List;

    .line 89
    return-void
.end method
