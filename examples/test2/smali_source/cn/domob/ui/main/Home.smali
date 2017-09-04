.class public Lcn/domob/ui/main/Home;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dm/download/listener/DownloadReportListener;
.implements Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/ui/main/Home$9;,
        Lcn/domob/ui/main/Home$a;,
        Lcn/domob/ui/main/Home$HomeViewListener;
    }
.end annotation


# static fields
.field private static mLogger:Lcn/domob/ui/main/Logger;


# instance fields
.field private OneListTag:Ljava/lang/String;

.field private final REFRESHDOWNLOADTOOL:I

.field private final REFRESHLIST:I

.field private allListTag:Ljava/lang/String;

.field private appListTag:Ljava/lang/String;

.field private dlm:Lcn/dm/download/DownLoadManager;

.field private gameListTag:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private home_progress:Landroid/widget/ProgressBar;

.field private home_progress_tv:Landroid/widget/TextView;

.field private mAdResp:Lcn/domob/ui/main/AdResp;

.field private mAdWallRadioButton:Landroid/widget/RadioButton;

.field private mAllappListView:Lcn/domob/ui/view/AdWallListView;

.field private mAppListContainer:Lcn/domob/ui/main/AppListContainer;

.field private mAppsListView:Lcn/domob/ui/view/AdWallListView;

.field private mBackButton:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

.field private mDService:Lcn/domob/wall/core/DService;

.field private mDownloaderRl:Landroid/widget/RelativeLayout;

.field private mEWallRadioButton:Landroid/widget/RadioButton;

.field private mEWallRelativeLayout:Landroid/widget/RelativeLayout;

.field private mGamesListView:Lcn/domob/ui/view/AdWallListView;

.field private mHomeView:Landroid/widget/RelativeLayout;

.field private mHomeViewlistener:Lcn/domob/ui/main/Home$HomeViewListener;

.field private mHome_progress_rl:Landroid/widget/RelativeLayout;

.field private mOneListRelativeLayout:Landroid/widget/RelativeLayout;

.field private mOneListView:Lcn/domob/ui/view/AdWallListView;

.field private mSearchImageView:Landroid/widget/ImageView;

.field private mTAB_ALL:Ljava/lang/String;

.field private mTAB_APP:Ljava/lang/String;

.field private mTAB_GAME:Ljava/lang/String;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTab_bg_background_all:Landroid/widget/ImageView;

.field private mTab_bg_background_app:Landroid/widget/ImageView;

.field private mTab_bg_background_game:Landroid/widget/ImageView;

.field private mTitleRadioGroup:Landroid/widget/RadioGroup;

.field private showEWallEntry:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    new-instance v0, Lcn/domob/ui/main/Logger;

    const-class v1, Lcn/domob/ui/main/Home;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/main/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/wall/core/DService;)V
    .registers 6
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_dService"    # Lcn/domob/wall/core/DService;

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Lcn/domob/ui/main/Home;->REFRESHLIST:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/ui/main/Home;->REFRESHDOWNLOADTOOL:I

    .line 89
    const-string v0, "AllList"

    iput-object v0, p0, Lcn/domob/ui/main/Home;->allListTag:Ljava/lang/String;

    .line 90
    const-string v0, "AppList"

    iput-object v0, p0, Lcn/domob/ui/main/Home;->appListTag:Ljava/lang/String;

    .line 91
    const-string v0, "GameList"

    iput-object v0, p0, Lcn/domob/ui/main/Home;->gameListTag:Ljava/lang/String;

    .line 92
    const-string v0, "OneList"

    iput-object v0, p0, Lcn/domob/ui/main/Home;->OneListTag:Ljava/lang/String;

    .line 94
    iput-boolean v1, p0, Lcn/domob/ui/main/Home;->showEWallEntry:Z

    .line 810
    new-instance v0, Lcn/domob/ui/main/Home$8;

    invoke-direct {v0, p0}, Lcn/domob/ui/main/Home$8;-><init>(Lcn/domob/ui/main/Home;)V

    iput-object v0, p0, Lcn/domob/ui/main/Home;->handler:Landroid/os/Handler;

    .line 134
    iput-object p1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    .line 136
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Start to init home view"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->ptLog(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "l_home"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mHomeView:Landroid/widget/RelativeLayout;

    .line 139
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Finish to init home view"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->ptLog(Ljava/lang/String;)V

    .line 140
    iput-object p2, p0, Lcn/domob/ui/main/Home;->mDService:Lcn/domob/wall/core/DService;

    .line 141
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/dm/download/DownLoadManager;->getInstance(Landroid/content/Context;)Lcn/dm/download/DownLoadManager;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/main/Home;->dlm:Lcn/dm/download/DownLoadManager;

    .line 142
    iget-object v0, p0, Lcn/domob/ui/main/Home;->dlm:Lcn/dm/download/DownLoadManager;

    invoke-virtual {v0, p0}, Lcn/dm/download/DownLoadManager;->setDownloadReportListener(Lcn/dm/download/listener/DownloadReportListener;)V

    .line 144
    iget-object v0, p0, Lcn/domob/ui/main/Home;->dlm:Lcn/dm/download/DownLoadManager;

    invoke-virtual {v0}, Lcn/dm/download/DownLoadManager;->initAllDownloadAppInfoList()Ljava/util/ArrayList;

    .line 145
    new-instance v0, Lcn/domob/ui/main/AppListContainer;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->dlm:Lcn/dm/download/DownLoadManager;

    invoke-direct {v0, p1, p2, p0, v1}, Lcn/domob/ui/main/AppListContainer;-><init>(Landroid/content/Context;Lcn/domob/wall/core/DService;Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;Lcn/dm/download/DownLoadManager;)V

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    .line 148
    new-instance v0, Lcn/domob/ui/main/AdResp;

    invoke-direct {v0}, Lcn/domob/ui/main/AdResp;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mAdResp:Lcn/domob/ui/main/AdResp;

    .line 150
    invoke-direct {p0}, Lcn/domob/ui/main/Home;->initView()V

    .line 152
    sget-object v0, Lcn/domob/ui/main/Home$a;->b:Lcn/domob/ui/main/Home$a;

    invoke-direct {p0, v0}, Lcn/domob/ui/main/Home;->setHomeViewVisible(Lcn/domob/ui/main/Home$a;)V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcn/domob/ui/main/Home;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHome_progress_rl:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcn/domob/ui/main/Home;)Landroid/widget/ProgressBar;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/ui/main/Home;->home_progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/domob/ui/main/Home;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTAB_APP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcn/domob/ui/main/Home;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcn/domob/ui/main/Home;->mTAB_APP:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/domob/ui/main/Home;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTAB_GAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcn/domob/ui/main/Home;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcn/domob/ui/main/Home;->mTAB_GAME:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcn/domob/ui/main/Home;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTAB_ALL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcn/domob/ui/main/Home;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcn/domob/ui/main/Home;->mTAB_ALL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcn/domob/ui/main/Home;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTab_bg_background_app:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/domob/ui/main/Home;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTab_bg_background_all:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/domob/ui/main/Home;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTab_bg_background_game:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/domob/ui/main/Home;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 4
    .param p0, "x0"    # Lcn/domob/ui/main/Home;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/widget/ImageView;
    .param p3, "x3"    # Landroid/widget/ImageView;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/ui/main/Home;->setTabVisibility(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$1700(Lcn/domob/ui/main/Home;)V
    .registers 1
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    invoke-direct {p0}, Lcn/domob/ui/main/Home;->notifyListChanged()V

    return-void
.end method

.method static synthetic access$1800(Lcn/domob/ui/main/Home;)V
    .registers 1
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    invoke-direct {p0}, Lcn/domob/ui/main/Home;->initDownloaderTool()V

    return-void
.end method

.method static synthetic access$200(Lcn/domob/ui/main/Home;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/ui/main/Home;->home_progress_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/domob/ui/main/Home;)Lcn/domob/ui/main/Home$HomeViewListener;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHomeViewlistener:Lcn/domob/ui/main/Home$HomeViewListener;

    return-object v0
.end method

.method static synthetic access$400(Lcn/domob/ui/main/Home;)Landroid/widget/RadioButton;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAdWallRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$500(Lcn/domob/ui/main/Home;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mEWallRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcn/domob/ui/main/Home;)Landroid/widget/RadioButton;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mEWallRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$700()Lcn/domob/ui/main/Logger;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    return-object v0
.end method

.method static synthetic access$800(Lcn/domob/ui/main/Home;)Lcn/domob/wall/core/DService;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mDService:Lcn/domob/wall/core/DService;

    return-object v0
.end method

.method static synthetic access$900(Lcn/domob/ui/main/Home;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/Home;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private doDownloadReport(Lcn/dm/download/bean/DownloadAppInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V
    .registers 7
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;
    .param p2, "type"    # Lcn/domob/wall/core/DService$ReportDownLoadType;

    .prologue
    .line 730
    :try_start_0
    invoke-static {p1}, Lcn/domob/ui/utility/DUtil;->buildAdInfo(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v0

    .line 731
    if-eqz v0, :cond_36

    .line 732
    sget-object v1, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doDownloadReport for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcn/domob/wall/core/DService$ReportDownLoadType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 733
    iget-object v1, p0, Lcn/domob/ui/main/Home;->mDService:Lcn/domob/wall/core/DService;

    invoke-virtual {v1, v0, p2}, Lcn/domob/wall/core/DService;->doDownLoadReport(Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V

    .line 743
    :goto_35
    return-void

    .line 736
    :cond_36
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to send report:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcn/domob/wall/core/DService$ReportDownLoadType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->errorLog(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_35

    .line 739
    :catch_53
    move-exception v0

    .line 741
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "exception occurs when sending report"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->errorLog(Ljava/lang/String;)V

    goto :goto_35
.end method

.method private initBackButton()V
    .registers 4

    .prologue
    .line 630
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHomeView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "bar_button"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mBackButton:Landroid/widget/RelativeLayout;

    .line 632
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mBackButton:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/domob/ui/main/Home$5;

    invoke-direct {v1, p0}, Lcn/domob/ui/main/Home$5;-><init>(Lcn/domob/ui/main/Home;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    return-void
.end method

.method private initDownloaderTool()V
    .registers 4

    .prologue
    .line 662
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHomeView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "rl_download_entrance"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mDownloaderRl:Landroid/widget/RelativeLayout;

    .line 664
    invoke-virtual {p0}, Lcn/domob/ui/main/Home;->refreshDownloadingCount()V

    .line 666
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mDownloaderRl:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/domob/ui/main/Home$7;

    invoke-direct {v1, p0}, Lcn/domob/ui/main/Home$7;-><init>(Lcn/domob/ui/main/Home;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    return-void
.end method

.method private initLoadingProgress()V
    .registers 4

    .prologue
    .line 419
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHomeView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "home_progress_rl"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mHome_progress_rl:Landroid/widget/RelativeLayout;

    .line 421
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHomeView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "home_progress"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->home_progress:Landroid/widget/ProgressBar;

    .line 423
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHomeView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "home_progress_tv"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->home_progress_tv:Landroid/widget/TextView;

    .line 425
    return-void
.end method

.method private initOneListView()V
    .registers 4

    .prologue
    .line 615
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHomeView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "onlylistRelativeS"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mOneListRelativeLayout:Landroid/widget/RelativeLayout;

    .line 620
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHomeView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "list_only"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/view/AdWallListView;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mOneListView:Lcn/domob/ui/view/AdWallListView;

    .line 622
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mOneListView:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mDService:Lcn/domob/wall/core/DService;

    invoke-virtual {v0, v1}, Lcn/domob/ui/view/AdWallListView;->setDService(Lcn/domob/wall/core/DService;)V

    .line 623
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mOneListView:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->OneListTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/ui/view/AdWallListView;->setViewTag(Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method private initRadioButton()V
    .registers 4

    .prologue
    .line 372
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHomeView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "rl_webview"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mEWallRelativeLayout:Landroid/widget/RelativeLayout;

    .line 376
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHomeView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "rg_home_bar"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mTitleRadioGroup:Landroid/widget/RadioGroup;

    .line 379
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTitleRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "rb_recommend_Button"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mAdWallRadioButton:Landroid/widget/RadioButton;

    .line 382
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTitleRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "rb_electronic_page_Button"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mEWallRadioButton:Landroid/widget/RadioButton;

    .line 386
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTitleRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcn/domob/ui/main/Home$3;

    invoke-direct {v1, p0}, Lcn/domob/ui/main/Home$3;-><init>(Lcn/domob/ui/main/Home;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 415
    return-void
.end method

.method private initSearchButton()V
    .registers 4

    .prologue
    .line 647
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHomeView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "iv_search_bt"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mSearchImageView:Landroid/widget/ImageView;

    .line 649
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mSearchImageView:Landroid/widget/ImageView;

    new-instance v1, Lcn/domob/ui/main/Home$6;

    invoke-direct {v1, p0}, Lcn/domob/ui/main/Home$6;-><init>(Lcn/domob/ui/main/Home;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    return-void
.end method

.method private initTabListView()V
    .registers 4

    .prologue
    .line 591
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "initListView"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHomeView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "list_app"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/view/AdWallListView;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mAppsListView:Lcn/domob/ui/view/AdWallListView;

    .line 596
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHomeView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "list_game"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/view/AdWallListView;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mGamesListView:Lcn/domob/ui/view/AdWallListView;

    .line 598
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHomeView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "list_all"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/view/AdWallListView;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mAllappListView:Lcn/domob/ui/view/AdWallListView;

    .line 601
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAppsListView:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mDService:Lcn/domob/wall/core/DService;

    invoke-virtual {v0, v1}, Lcn/domob/ui/view/AdWallListView;->setDService(Lcn/domob/wall/core/DService;)V

    .line 602
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mGamesListView:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mDService:Lcn/domob/wall/core/DService;

    invoke-virtual {v0, v1}, Lcn/domob/ui/view/AdWallListView;->setDService(Lcn/domob/wall/core/DService;)V

    .line 603
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAllappListView:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mDService:Lcn/domob/wall/core/DService;

    invoke-virtual {v0, v1}, Lcn/domob/ui/view/AdWallListView;->setDService(Lcn/domob/wall/core/DService;)V

    .line 606
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAppsListView:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->appListTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/ui/view/AdWallListView;->setViewTag(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mGamesListView:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->gameListTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/ui/view/AdWallListView;->setViewTag(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAllappListView:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->allListTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/ui/view/AdWallListView;->setViewTag(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method private initTabView()V
    .registers 16

    .prologue
    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 428
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "initTabView"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHomeView:Landroid/widget/RelativeLayout;

    const v1, 0x1020012

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mTabHost:Landroid/widget/TabHost;

    .line 430
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 433
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "tab_app"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DString;->getStringInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 435
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v3, "tab_game"

    invoke-static {v2, v3}, Lcn/domob/ui/utility/DString;->getStringInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 437
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v4, "tab_all"

    invoke-static {v2, v4}, Lcn/domob/ui/utility/DString;->getStringInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 440
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v4, "tab_app_english"

    invoke-static {v2, v4}, Lcn/domob/ui/utility/DString;->getStringInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 442
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v4, "tab_game_english"

    invoke-static {v2, v4}, Lcn/domob/ui/utility/DString;->getStringInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 444
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v4, "tab_all_english"

    invoke-static {v2, v4}, Lcn/domob/ui/utility/DString;->getStringInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 447
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v4, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v5, "l_home_tab_element"

    invoke-static {v4, v5}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 450
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v4, "tab_bg_select"

    invoke-static {v0, v4}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mTab_bg_background_all:Landroid/widget/ImageView;

    .line 453
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v4, "tab_image"

    invoke-static {v0, v4}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v4, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v5, "u_home_tab_all"

    invoke-static {v4, v5}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v4, "tab_name"

    invoke-static {v0, v4}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 458
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v4, "tab_name_english"

    invoke-static {v0, v4}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 461
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "tab_name"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 466
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v4, "l_home_tab_element"

    invoke-static {v2, v4}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 468
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "tab_bg_select"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mTab_bg_background_app:Landroid/widget/ImageView;

    .line 470
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "tab_image"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v4, "u_home_tab_app"

    invoke-static {v2, v4}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 473
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "tab_name"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 475
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v4, "tab_name_english"

    invoke-static {v0, v4}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 478
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v8, "tab_name"

    invoke-static {v0, v8}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 483
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v8, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v9, "l_home_tab_element"

    invoke-static {v8, v9}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 485
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v8, "tab_bg_select"

    invoke-static {v0, v8}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mTab_bg_background_game:Landroid/widget/ImageView;

    .line 487
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v8, "tab_image"

    invoke-static {v0, v8}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v8, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v9, "u_home_tab_game"

    invoke-static {v8, v9}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 490
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v8, "tab_name"

    invoke-static {v0, v8}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 492
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v9, "tab_name_english"

    invoke-static {v0, v9}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 495
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v10, "tab_name"

    invoke-static {v0, v10}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 500
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTabHost:Landroid/widget/TabHost;

    iget-object v10, p0, Lcn/domob/ui/main/Home;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v10, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    iget-object v10, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v11, "list_all"

    invoke-static {v10, v11}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 502
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcn/domob/ui/main/Home;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    iget-object v6, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v10, "list_game"

    invoke-static {v6, v10}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 505
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcn/domob/ui/main/Home;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v6, "list_app"

    invoke-static {v3, v6}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 508
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTab_bg_background_all:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mTab_bg_background_app:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/domob/ui/main/Home;->mTab_bg_background_game:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v3}, Lcn/domob/ui/main/Home;->setTabVisibility(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 510
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v3, "tab_default"

    invoke-static {v1, v3}, Lcn/domob/ui/utility/DColor;->getColorInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 512
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v3, "tab_select"

    invoke-static {v1, v3}, Lcn/domob/ui/utility/DColor;->getColorInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 517
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 518
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 519
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 520
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 521
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 522
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 524
    iget-object v10, p0, Lcn/domob/ui/main/Home;->mTabHost:Landroid/widget/TabHost;

    new-instance v0, Lcn/domob/ui/main/Home$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcn/domob/ui/main/Home$4;-><init>(Lcn/domob/ui/main/Home;Landroid/widget/TextView;ILandroid/widget/TextView;Landroid/widget/TextView;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v10, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 579
    return-void
.end method

.method private initTitle()V
    .registers 1

    .prologue
    .line 357
    invoke-direct {p0}, Lcn/domob/ui/main/Home;->initBackButton()V

    .line 359
    invoke-direct {p0}, Lcn/domob/ui/main/Home;->initRadioButton()V

    .line 361
    invoke-direct {p0}, Lcn/domob/ui/main/Home;->initSearchButton()V

    .line 363
    invoke-direct {p0}, Lcn/domob/ui/main/Home;->initDownloaderTool()V

    .line 365
    return-void
.end method

.method private initView()V
    .registers 1

    .prologue
    .line 345
    invoke-direct {p0}, Lcn/domob/ui/main/Home;->initTitle()V

    .line 346
    invoke-direct {p0}, Lcn/domob/ui/main/Home;->initLoadingProgress()V

    .line 347
    invoke-direct {p0}, Lcn/domob/ui/main/Home;->initTabView()V

    .line 348
    invoke-direct {p0}, Lcn/domob/ui/main/Home;->initTabListView()V

    .line 349
    invoke-direct {p0}, Lcn/domob/ui/main/Home;->initOneListView()V

    .line 350
    return-void
.end method

.method private notifyListChanged()V
    .registers 3

    .prologue
    .line 318
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    if-eqz v0, :cond_2e

    .line 319
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/ControlInfo;->isClassify()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 320
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "notify change for tab"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAllappListView:Lcn/domob/ui/view/AdWallListView;

    invoke-virtual {v0}, Lcn/domob/ui/view/AdWallListView;->getListAdapter()Lcn/domob/ui/adapter/AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/ui/adapter/AppListAdapter;->notifyDataSetChanged()V

    .line 322
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mGamesListView:Lcn/domob/ui/view/AdWallListView;

    invoke-virtual {v0}, Lcn/domob/ui/view/AdWallListView;->getListAdapter()Lcn/domob/ui/adapter/AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/ui/adapter/AppListAdapter;->notifyDataSetChanged()V

    .line 323
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAppsListView:Lcn/domob/ui/view/AdWallListView;

    invoke-virtual {v0}, Lcn/domob/ui/view/AdWallListView;->getListAdapter()Lcn/domob/ui/adapter/AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/ui/adapter/AppListAdapter;->notifyDataSetChanged()V

    .line 330
    :cond_2e
    :goto_2e
    return-void

    .line 326
    :cond_2f
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "notify change for list"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mOneListView:Lcn/domob/ui/view/AdWallListView;

    invoke-virtual {v0}, Lcn/domob/ui/view/AdWallListView;->getListAdapter()Lcn/domob/ui/adapter/AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/ui/adapter/AppListAdapter;->notifyDataSetChanged()V

    goto :goto_2e
.end method

.method private refreshEWallView()V
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mEWallRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 337
    return-void
.end method

.method private refreshList(Lcn/domob/ui/main/AdResp;)V
    .registers 7
    .param p1, "resp"    # Lcn/domob/ui/main/AdResp;

    .prologue
    .line 280
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Start to refresh list"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->ptLog(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v0, p1}, Lcn/domob/ui/main/AppListContainer;->doRefresh(Lcn/domob/ui/main/AdResp;)V

    .line 284
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/ControlInfo;->isClassify()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 285
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Show ad in tab view. list size:%d, banner size:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v4}, Lcn/domob/ui/main/AppListContainer;->getAllList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v4}, Lcn/domob/ui/main/AppListContainer;->getBannerList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/ControlInfo;->isHasBanner()Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v0}, Lcn/domob/ui/main/AppListContainer;->getBannerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_bc

    .line 289
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAllappListView:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v1}, Lcn/domob/ui/main/AppListContainer;->getAllList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v2}, Lcn/domob/wall/core/bean/ControlInfo;->getShowAdNum()I

    move-result v2

    iget-object v3, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v3}, Lcn/domob/ui/main/AppListContainer;->getBannerList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v4}, Lcn/domob/wall/core/bean/ControlInfo;->getBannerIntervalTime()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/ui/view/AdWallListView;->refreshItemListWithBanner(Ljava/util/List;ILjava/util/List;I)V

    .line 290
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mGamesListView:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v1}, Lcn/domob/ui/main/AppListContainer;->getGameList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v2}, Lcn/domob/wall/core/bean/ControlInfo;->getShowAdNum()I

    move-result v2

    iget-object v3, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v3}, Lcn/domob/ui/main/AppListContainer;->getBannerList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v4}, Lcn/domob/wall/core/bean/ControlInfo;->getBannerIntervalTime()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/ui/view/AdWallListView;->refreshItemListWithBanner(Ljava/util/List;ILjava/util/List;I)V

    .line 291
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAppsListView:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v1}, Lcn/domob/ui/main/AppListContainer;->getAppList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v2}, Lcn/domob/wall/core/bean/ControlInfo;->getShowAdNum()I

    move-result v2

    iget-object v3, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v3}, Lcn/domob/ui/main/AppListContainer;->getBannerList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v4}, Lcn/domob/wall/core/bean/ControlInfo;->getBannerIntervalTime()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/ui/view/AdWallListView;->refreshItemListWithBanner(Ljava/util/List;ILjava/util/List;I)V

    .line 300
    :goto_af
    sget-object v0, Lcn/domob/ui/main/Home$a;->c:Lcn/domob/ui/main/Home$a;

    invoke-direct {p0, v0}, Lcn/domob/ui/main/Home;->setHomeViewVisible(Lcn/domob/ui/main/Home$a;)V

    .line 313
    :goto_b4
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Refresh list done"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->ptLog(Ljava/lang/String;)V

    .line 314
    return-void

    .line 294
    :cond_bc
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAllappListView:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v1}, Lcn/domob/ui/main/AppListContainer;->getAllList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v2}, Lcn/domob/wall/core/bean/ControlInfo;->getShowAdNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/ui/view/AdWallListView;->refreshItemListWithNoBanner(Ljava/util/List;I)V

    .line 295
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mGamesListView:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v1}, Lcn/domob/ui/main/AppListContainer;->getGameList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v2}, Lcn/domob/wall/core/bean/ControlInfo;->getShowAdNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/ui/view/AdWallListView;->refreshItemListWithNoBanner(Ljava/util/List;I)V

    .line 296
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAppsListView:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v1}, Lcn/domob/ui/main/AppListContainer;->getAppList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v2}, Lcn/domob/wall/core/bean/ControlInfo;->getShowAdNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/ui/view/AdWallListView;->refreshItemListWithNoBanner(Ljava/util/List;I)V

    goto :goto_af

    .line 304
    :cond_f0
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Show ad in single list view"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/ControlInfo;->isHasBanner()Z

    move-result v0

    if-eqz v0, :cond_12e

    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v0}, Lcn/domob/ui/main/AppListContainer;->getBannerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12e

    .line 306
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mOneListView:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v1}, Lcn/domob/ui/main/AppListContainer;->getAllList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v2}, Lcn/domob/wall/core/bean/ControlInfo;->getShowAdNum()I

    move-result v2

    iget-object v3, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v3}, Lcn/domob/ui/main/AppListContainer;->getBannerList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v4}, Lcn/domob/wall/core/bean/ControlInfo;->getBannerIntervalTime()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/ui/view/AdWallListView;->refreshItemListWithBanner(Ljava/util/List;ILjava/util/List;I)V

    .line 311
    :goto_128
    sget-object v0, Lcn/domob/ui/main/Home$a;->d:Lcn/domob/ui/main/Home$a;

    invoke-direct {p0, v0}, Lcn/domob/ui/main/Home;->setHomeViewVisible(Lcn/domob/ui/main/Home$a;)V

    goto :goto_b4

    .line 309
    :cond_12e
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mOneListView:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mAppListContainer:Lcn/domob/ui/main/AppListContainer;

    invoke-virtual {v1}, Lcn/domob/ui/main/AppListContainer;->getAllList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v2}, Lcn/domob/wall/core/bean/ControlInfo;->getShowAdNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/ui/view/AdWallListView;->refreshItemListWithNoBanner(Ljava/util/List;I)V

    goto :goto_128
.end method

.method private refreshTitle(Lcn/domob/ui/main/AdResp;)V
    .registers 7
    .param p1, "resp"    # Lcn/domob/ui/main/AdResp;

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 245
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Start to refresh title"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->ptLog(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Lcn/domob/ui/main/AdResp;->getControlInfo()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 248
    invoke-virtual {p1}, Lcn/domob/ui/main/AdResp;->getControlInfo()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/ControlInfo;->isShowSearchEntrance()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 249
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    :goto_1f
    invoke-virtual {p1}, Lcn/domob/ui/main/AdResp;->getControlInfo()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v0

    if-eqz v0, :cond_9d

    invoke-virtual {p1}, Lcn/domob/ui/main/AdResp;->getAdExtend()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9d

    invoke-virtual {p1}, Lcn/domob/ui/main/AdResp;->getAdExtend()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9d

    invoke-virtual {p1}, Lcn/domob/ui/main/AdResp;->getControlInfo()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/ControlInfo;->isShowEWallEntrance()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 256
    invoke-virtual {p1}, Lcn/domob/ui/main/AdResp;->getAdExtend()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdExtend;

    .line 257
    sget-object v1, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdExtend>>>:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdExtend;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcn/domob/ui/main/Home;->mEWallRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lcn/domob/ui/main/Home;->mEWallRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdExtend;->getmLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAdWallRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "u_bar_type_left_mode"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/domob/ui/main/Home;->setShowEWallEntry(Z)V

    .line 263
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTitleRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mAdWallRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 275
    :cond_8f
    :goto_8f
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Refresh title done"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->ptLog(Ljava/lang/String;)V

    .line 276
    return-void

    .line 251
    :cond_97
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1f

    .line 267
    :cond_9d
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "EWall is disabled"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mEWallRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAdWallRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 271
    invoke-virtual {p0, v4}, Lcn/domob/ui/main/Home;->setShowEWallEntry(Z)V

    goto :goto_8f
.end method

.method private setHomeViewVisible(Lcn/domob/ui/main/Home$a;)V
    .registers 6
    .param p1, "visibleView"    # Lcn/domob/ui/main/Home$a;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 701
    sget-object v0, Lcn/domob/ui/main/Home$9;->a:[I

    invoke-virtual {p1}, Lcn/domob/ui/main/Home$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 720
    :goto_e
    return-void

    .line 703
    :pswitch_f
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mOneListRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHome_progress_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setVisibility(I)V

    goto :goto_e

    .line 708
    :pswitch_1f
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mOneListRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHome_progress_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setVisibility(I)V

    goto :goto_e

    .line 713
    :pswitch_2f
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mOneListRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHome_progress_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setVisibility(I)V

    goto :goto_e

    .line 701
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1f
        :pswitch_2f
    .end packed-switch
.end method

.method private setTabVisibility(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 6
    .param p1, "tab_show"    # Landroid/widget/ImageView;
    .param p2, "tab_hide1"    # Landroid/widget/ImageView;
    .param p3, "tab_hide2"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, 0x4

    .line 583
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    return-void
.end method


# virtual methods
.method public getDownloadManager()Lcn/dm/download/DownLoadManager;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcn/domob/ui/main/Home;->dlm:Lcn/dm/download/DownLoadManager;

    return-object v0
.end method

.method public getHomeView()Landroid/view/View;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mHomeView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public isShowEWallEntry()Z
    .registers 2

    .prologue
    .line 803
    iget-boolean v0, p0, Lcn/domob/ui/main/Home;->showEWallEntry:Z

    return v0
.end method

.method public onAppItemDownloadStatusChanged(Lcn/domob/ui/main/Constants$DownloadStatus;)V
    .registers 4
    .param p1, "status"    # Lcn/domob/ui/main/Constants$DownloadStatus;

    .prologue
    .line 786
    iget-object v0, p0, Lcn/domob/ui/main/Home;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 788
    sget-object v0, Lcn/domob/ui/main/Home$9;->b:[I

    invoke-virtual {p1}, Lcn/domob/ui/main/Constants$DownloadStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 800
    :goto_11
    return-void

    .line 794
    :pswitch_12
    iget-object v0, p0, Lcn/domob/ui/main/Home;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_11

    .line 788
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public onAutoRunReport(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 749
    sget-object v0, Lcn/domob/wall/core/DService$ReportDownLoadType;->AUTO_RUN:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-direct {p0, p1, v0}, Lcn/domob/ui/main/Home;->doDownloadReport(Lcn/dm/download/bean/DownloadAppInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V

    .line 751
    return-void
.end method

.method public onDownloadFailedReport(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 755
    sget-object v0, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_FAILED:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-direct {p0, p1, v0}, Lcn/domob/ui/main/Home;->doDownloadReport(Lcn/dm/download/bean/DownloadAppInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V

    .line 757
    return-void
.end method

.method public onDownloadStartReport(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 761
    sget-object v0, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_START:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-direct {p0, p1, v0}, Lcn/domob/ui/main/Home;->doDownloadReport(Lcn/dm/download/bean/DownloadAppInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V

    .line 763
    return-void
.end method

.method public onDownloadSuccessReport(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 767
    sget-object v0, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_FINISH:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-direct {p0, p1, v0}, Lcn/domob/ui/main/Home;->doDownloadReport(Lcn/dm/download/bean/DownloadAppInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V

    .line 769
    return-void
.end method

.method public onDownloadWaitingReport(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 773
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "onDownloadWaitingReport"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method public onInstallSuccessReport(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 779
    sget-object v0, Lcn/domob/wall/core/DService$ReportDownLoadType;->INSTALL_SUCCESS:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-direct {p0, p1, v0}, Lcn/domob/ui/main/Home;->doDownloadReport(Lcn/dm/download/bean/DownloadAppInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V

    .line 780
    return-void
.end method

.method public refreshAd(Lcn/domob/ui/main/AdResp;)V
    .registers 5
    .param p1, "resp"    # Lcn/domob/ui/main/AdResp;

    .prologue
    .line 175
    sget-object v0, Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh resp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 176
    if-eqz p1, :cond_3d

    .line 177
    iput-object p1, p0, Lcn/domob/ui/main/Home;->mAdResp:Lcn/domob/ui/main/AdResp;

    .line 178
    invoke-virtual {p1}, Lcn/domob/ui/main/AdResp;->getControlInfo()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/main/Home;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    .line 181
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_30

    .line 182
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 185
    :cond_30
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAdResp:Lcn/domob/ui/main/AdResp;

    invoke-direct {p0, v0}, Lcn/domob/ui/main/Home;->refreshTitle(Lcn/domob/ui/main/AdResp;)V

    .line 186
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mAdResp:Lcn/domob/ui/main/AdResp;

    invoke-direct {p0, v0}, Lcn/domob/ui/main/Home;->refreshList(Lcn/domob/ui/main/AdResp;)V

    .line 188
    invoke-direct {p0}, Lcn/domob/ui/main/Home;->refreshEWallView()V

    .line 191
    :cond_3d
    return-void
.end method

.method public refreshDownloadingCount()V
    .registers 4

    .prologue
    .line 681
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mDownloaderRl:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_21

    .line 682
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mDownloaderRl:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    const-string v2, "tv_download_count"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 684
    iget-object v1, p0, Lcn/domob/ui/main/Home;->dlm:Lcn/dm/download/DownLoadManager;

    invoke-virtual {v1}, Lcn/dm/download/DownLoadManager;->getDownloadingCount()I

    move-result v1

    .line 685
    if-gtz v1, :cond_22

    .line 686
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 693
    :cond_21
    :goto_21
    return-void

    .line 688
    :cond_22
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21
.end method

.method public setHomeViewListener(Lcn/domob/ui/main/Home$HomeViewListener;)V
    .registers 2
    .param p1, "listener"    # Lcn/domob/ui/main/Home$HomeViewListener;

    .prologue
    .line 157
    iput-object p1, p0, Lcn/domob/ui/main/Home;->mHomeViewlistener:Lcn/domob/ui/main/Home$HomeViewListener;

    .line 158
    return-void
.end method

.method public setShowEWallEntry(Z)V
    .registers 2
    .param p1, "showEWallEntry"    # Z

    .prologue
    .line 807
    iput-boolean p1, p0, Lcn/domob/ui/main/Home;->showEWallEntry:Z

    .line 808
    return-void
.end method

.method public showErrorMSG(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/ui/main/Home$2;

    invoke-direct {v1, p0, p1}, Lcn/domob/ui/main/Home$2;-><init>(Lcn/domob/ui/main/Home;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method public showProgressBar()V
    .registers 3

    .prologue
    .line 199
    iget-object v0, p0, Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/ui/main/Home$1;

    invoke-direct {v1, p0}, Lcn/domob/ui/main/Home$1;-><init>(Lcn/domob/ui/main/Home;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method
