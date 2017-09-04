.class public Lcn/domob/ui/main/DViewAdModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/ui/main/DViewAdModel$SearchDataListener;,
        Lcn/domob/ui/main/DViewAdModel$AdDataListener;
    }
.end annotation


# instance fields
.field private mAdDataListener:Lcn/domob/ui/main/DViewAdModel$AdDataListener;

.field private mDService:Lcn/domob/wall/core/DService;

.field private searchDataListener:Lcn/domob/ui/main/DViewAdModel$SearchDataListener;


# direct methods
.method public constructor <init>(Lcn/domob/wall/core/DService;)V
    .registers 2
    .param p1, "_dService"    # Lcn/domob/wall/core/DService;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcn/domob/ui/main/DViewAdModel;->mDService:Lcn/domob/wall/core/DService;

    .line 40
    invoke-direct {p0}, Lcn/domob/ui/main/DViewAdModel;->setListener()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcn/domob/ui/main/DViewAdModel;)Lcn/domob/ui/main/DViewAdModel$AdDataListener;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/DViewAdModel;

    .prologue
    .line 15
    iget-object v0, p0, Lcn/domob/ui/main/DViewAdModel;->mAdDataListener:Lcn/domob/ui/main/DViewAdModel$AdDataListener;

    return-object v0
.end method

.method static synthetic access$100(Lcn/domob/ui/main/DViewAdModel;)Lcn/domob/ui/main/DViewAdModel$SearchDataListener;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/DViewAdModel;

    .prologue
    .line 15
    iget-object v0, p0, Lcn/domob/ui/main/DViewAdModel;->searchDataListener:Lcn/domob/ui/main/DViewAdModel$SearchDataListener;

    return-object v0
.end method

.method private setListener()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcn/domob/ui/main/DViewAdModel;->mDService:Lcn/domob/wall/core/DService;

    new-instance v1, Lcn/domob/ui/main/DViewAdModel$1;

    invoke-direct {v1, p0}, Lcn/domob/ui/main/DViewAdModel$1;-><init>(Lcn/domob/ui/main/DViewAdModel;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->setReceiveDataListener(Lcn/domob/wall/core/DService$ReceiveDataListener;)V

    .line 97
    iget-object v0, p0, Lcn/domob/ui/main/DViewAdModel;->mDService:Lcn/domob/wall/core/DService;

    new-instance v1, Lcn/domob/ui/main/DViewAdModel$2;

    invoke-direct {v1, p0}, Lcn/domob/ui/main/DViewAdModel$2;-><init>(Lcn/domob/ui/main/DViewAdModel;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->setReceiveSearchDataListener(Lcn/domob/wall/core/DService$ReceiveSearchDataListener;)V

    .line 124
    return-void
.end method


# virtual methods
.method public requestAdData()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcn/domob/ui/main/DViewAdModel;->mDService:Lcn/domob/wall/core/DService;

    invoke-virtual {v0}, Lcn/domob/wall/core/DService;->requestDataAsyn()V

    .line 57
    return-void
.end method

.method public requestSearchData(Ljava/lang/String;)V
    .registers 3
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/domob/ui/main/DViewAdModel;->mDService:Lcn/domob/wall/core/DService;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/DService;->requestSearchDataAsyn(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public setReceiveAdDataListener(Lcn/domob/ui/main/DViewAdModel$AdDataListener;)V
    .registers 2
    .param p1, "_receiveAdDataListener"    # Lcn/domob/ui/main/DViewAdModel$AdDataListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcn/domob/ui/main/DViewAdModel;->mAdDataListener:Lcn/domob/ui/main/DViewAdModel$AdDataListener;

    .line 45
    return-void
.end method

.method public setReceiveSearchDataListener(Lcn/domob/ui/main/DViewAdModel$SearchDataListener;)V
    .registers 2
    .param p1, "_receiveSearchDataListener"    # Lcn/domob/ui/main/DViewAdModel$SearchDataListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcn/domob/ui/main/DViewAdModel;->searchDataListener:Lcn/domob/ui/main/DViewAdModel$SearchDataListener;

    .line 49
    return-void
.end method
