.class public Lcn/domob/ui/item/AppListItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dm/download/listener/DownloadHelperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/ui/item/AppListItem$9;,
        Lcn/domob/ui/item/AppListItem$c;,
        Lcn/domob/ui/item/AppListItem$a;,
        Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;,
        Lcn/domob/ui/item/AppListItem$b;
    }
.end annotation


# static fields
.field private static final SHOW_DOWNLOAD_BAR:I = 0x0

.field private static final SHOW_INSTALL_BAR:I = 0x2

.field private static final SHOW_OPEN_BAR:I = 0x3

.field private static final SHOW_PROGRESS_BAR:I = 0x1

.field private static mLogger:Lcn/domob/ui/main/Logger;


# instance fields
.field private final DOWNLOAD_IMG_URL:Ljava/lang/String;

.field private final HANDLER_DOWNLOADFAILED:I

.field private final HANDLER_REFRESHDETAILS:I

.field private final INSTALL_IMG_URL:Ljava/lang/String;

.field private final LANDING_IMG_URL:Ljava/lang/String;

.field private final LAUNCH_IMG_URL:Ljava/lang/String;

.field private final TEXT_DOWNLOAD_CONTINUE:Ljava/lang/String;

.field private final TEXT_DOWNLOAD_ONGOING:Ljava/lang/String;

.field private final TEXT_DOWNLOAD_START:Ljava/lang/String;

.field private final TEXT_DOWNLOAD_WAITING:Ljava/lang/String;

.field private final TEXT_INSTALL:Ljava/lang/String;

.field private final TEXT_LANDING_OPEN:Ljava/lang/String;

.field private final TEXT_LAUNCH:Ljava/lang/String;

.field private final TEXT_UPDATE:Ljava/lang/String;

.field private dm:Lcn/dm/download/DownLoadManager;

.field private downloadListener:Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;

.field handler:Landroid/os/Handler;

.field private iv_download:Landroid/widget/ImageView;

.field private iv_install:Landroid/widget/ImageView;

.field private iv_open:Landroid/widget/ImageView;

.field private mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

.field private mBannerViewHolder:Lcn/domob/ui/item/AppListItem$a;

.field private mContext:Landroid/content/Context;

.field private mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

.field private mDService:Lcn/domob/wall/core/DService;

.field private mDetailsDialog:Landroid/app/Dialog;

.field private mDetailsView:Landroid/widget/RelativeLayout;

.field private mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

.field private mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

.field private mListenerName:Ljava/lang/String;

.field private mPosition:I

.field private pb_progress:Landroid/widget/ProgressBar;

.field private rl_download_operations:Landroid/widget/RelativeLayout;

.field private rl_progress_bar:Landroid/widget/RelativeLayout;

.field private tv_progress:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50
    new-instance v0, Lcn/domob/ui/main/Logger;

    const-class v1, Lcn/domob/ui/item/AppListItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/main/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService;Lcn/dm/download/DownLoadManager;Lcn/domob/wall/core/bean/ControlInfo;Ljava/lang/String;)V
    .registers 10
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_listener"    # Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;
    .param p3, "_adInfo"    # Lcn/domob/wall/core/bean/AdInfo;
    .param p4, "_dService"    # Lcn/domob/wall/core/DService;
    .param p5, "_dm"    # Lcn/dm/download/DownLoadManager;
    .param p6, "_controlInfo"    # Lcn/domob/wall/core/bean/ControlInfo;
    .param p7, "listenerName"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "u_list_download"

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->DOWNLOAD_IMG_URL:Ljava/lang/String;

    .line 66
    const-string v0, "u_list_browser"

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->LANDING_IMG_URL:Ljava/lang/String;

    .line 67
    const-string v0, "u_list_install"

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->INSTALL_IMG_URL:Ljava/lang/String;

    .line 68
    const-string v0, "u_list_open"

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->LAUNCH_IMG_URL:Ljava/lang/String;

    .line 70
    const-string v0, "\u514d\u8d39\u4e0b\u8f7d"

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->TEXT_DOWNLOAD_START:Ljava/lang/String;

    .line 71
    const-string v0, "\u7b49\u5f85\u4e2d"

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->TEXT_DOWNLOAD_WAITING:Ljava/lang/String;

    .line 72
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->TEXT_DOWNLOAD_ONGOING:Ljava/lang/String;

    .line 73
    const-string v0, "\u7ee7\u7eed"

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->TEXT_DOWNLOAD_CONTINUE:Ljava/lang/String;

    .line 74
    const-string v0, "\u67e5\u770b\u8be6\u60c5"

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->TEXT_LANDING_OPEN:Ljava/lang/String;

    .line 75
    const-string v0, "\u5b89\u88c5"

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->TEXT_INSTALL:Ljava/lang/String;

    .line 76
    const-string v0, "\u6253\u5f00"

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->TEXT_LAUNCH:Ljava/lang/String;

    .line 77
    const-string v0, "\u5347\u7ea7"

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->TEXT_UPDATE:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/ui/item/AppListItem;->HANDLER_DOWNLOADFAILED:I

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/ui/item/AppListItem;->HANDLER_REFRESHDETAILS:I

    .line 162
    new-instance v0, Lcn/domob/ui/item/AppListItem$1;

    invoke-direct {v0, p0}, Lcn/domob/ui/item/AppListItem$1;-><init>(Lcn/domob/ui/item/AppListItem;)V

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->handler:Landroid/os/Handler;

    .line 116
    iput-object p3, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    .line 117
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    .line 118
    iput-object p4, p0, Lcn/domob/ui/item/AppListItem;->mDService:Lcn/domob/wall/core/DService;

    .line 119
    iput-object p5, p0, Lcn/domob/ui/item/AppListItem;->dm:Lcn/dm/download/DownLoadManager;

    .line 120
    iput-object p2, p0, Lcn/domob/ui/item/AppListItem;->downloadListener:Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;

    .line 122
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->dm:Lcn/dm/download/DownLoadManager;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-static {v1}, Lcn/domob/ui/utility/DUtil;->buildDownLoadAppInfo(Lcn/domob/wall/core/bean/AdInfo;)Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dm/download/DownLoadManager;->checkAndGetDownloadAppInfo(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 123
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v0

    if-eqz v0, :cond_67

    .line 124
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->dm:Lcn/dm/download/DownLoadManager;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0, v1, p7, p0}, Lcn/dm/download/DownLoadManager;->addTask(Lcn/dm/download/bean/DownloadAppInfo;Ljava/lang/String;Lcn/dm/download/listener/DownloadHelperListener;)V

    .line 127
    :cond_67
    iput-object p6, p0, Lcn/domob/ui/item/AppListItem;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    .line 128
    iput-object p7, p0, Lcn/domob/ui/item/AppListItem;->mListenerName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcn/domob/ui/item/AppListItem;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/AppListItem;

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/domob/ui/item/AppListItem;)V
    .registers 1
    .param p0, "x0"    # Lcn/domob/ui/item/AppListItem;

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->buildDetailsActionArea()V

    return-void
.end method

.method static synthetic access$1000(Lcn/domob/ui/item/AppListItem;)V
    .registers 1
    .param p0, "x0"    # Lcn/domob/ui/item/AppListItem;

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->clickActionForDetailsLaunch()V

    return-void
.end method

.method static synthetic access$1100(Lcn/domob/ui/item/AppListItem;)V
    .registers 1
    .param p0, "x0"    # Lcn/domob/ui/item/AppListItem;

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->clickActionForListLanding()V

    return-void
.end method

.method static synthetic access$1200(Lcn/domob/ui/item/AppListItem;)V
    .registers 1
    .param p0, "x0"    # Lcn/domob/ui/item/AppListItem;

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->clickActionForListLaunch()V

    return-void
.end method

.method static synthetic access$300()Lcn/domob/ui/main/Logger;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lcn/domob/ui/item/AppListItem;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/AppListItem;

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$600(Lcn/domob/ui/item/AppListItem;)Lcn/domob/wall/core/bean/AdInfo;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/AppListItem;

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcn/domob/ui/item/AppListItem;)Lcn/domob/wall/core/DService;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/AppListItem;

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDService:Lcn/domob/wall/core/DService;

    return-object v0
.end method

.method static synthetic access$800(Lcn/domob/ui/item/AppListItem;Lcn/domob/ui/item/AppListItem$b;)V
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/AppListItem;
    .param p1, "x1"    # Lcn/domob/ui/item/AppListItem$b;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcn/domob/ui/item/AppListItem;->clickActionForDownloadAndUpdate(Lcn/domob/ui/item/AppListItem$b;)V

    return-void
.end method

.method static synthetic access$900(Lcn/domob/ui/item/AppListItem;)V
    .registers 1
    .param p0, "x0"    # Lcn/domob/ui/item/AppListItem;

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->clickActionForDetailsLanding()V

    return-void
.end method

.method private bindDetailsViewsForDownloadAndUpdate()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 586
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v1

    .line 587
    packed-switch v1, :pswitch_data_92

    .line 629
    :pswitch_a
    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->changeDownloadBarState(I)V

    .line 634
    :cond_d
    :goto_d
    return-void

    .line 589
    :pswitch_e
    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->changeDownloadBarState(I)V

    goto :goto_d

    .line 592
    :pswitch_12
    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->changeDownloadBarState(I)V

    goto :goto_d

    .line 598
    :pswitch_16
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_35

    .line 599
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getCurrentDownloadSize()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppSize()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 602
    :cond_35
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/domob/ui/item/AppListItem;->changeDownloadBarState(I)V

    .line 603
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->pb_progress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->tv_progress:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    .line 604
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->pb_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 605
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->tv_progress:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 609
    :pswitch_5f
    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->changeDownloadBarState(I)V

    goto :goto_d

    .line 613
    :pswitch_63
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->changeDownloadBarState(I)V

    goto :goto_d

    .line 616
    :pswitch_68
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v1

    sget-object v2, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->DOWNLOAD:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 617
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->changeDownloadBarState(I)V

    goto :goto_d

    .line 620
    :cond_7b
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v1

    sget-object v2, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->UPDATE:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 621
    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->changeDownloadBarState(I)V

    goto :goto_d

    .line 626
    :pswitch_8d
    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->changeDownloadBarState(I)V

    goto/16 :goto_d

    .line 587
    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_16
        :pswitch_63
        :pswitch_68
        :pswitch_8d
        :pswitch_a
        :pswitch_5f
    .end packed-switch
.end method

.method private bindDetailsViewsForLaunch()V
    .registers 2

    .prologue
    .line 503
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->changeDownloadBarState(I)V

    .line 504
    return-void
.end method

.method private bindListViewsForDownloadAndUpdate()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 521
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->displayApkSize()V

    .line 522
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v0

    .line 523
    const-string v1, "\u514d\u8d39\u4e0b\u8f7d"

    .line 524
    packed-switch v0, :pswitch_data_f2

    .line 571
    :pswitch_f
    const-string v0, ""

    invoke-direct {p0, v6, v0}, Lcn/domob/ui/item/AppListItem;->setListActionArea(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_14
    :goto_14
    return-void

    .line 526
    :pswitch_15
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v0

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->DOWNLOAD:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 527
    const-string v0, "u_list_download"

    const-string v1, "\u514d\u8d39\u4e0b\u8f7d"

    invoke-direct {p0, v0, v1}, Lcn/domob/ui/item/AppListItem;->setListActionArea(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 530
    :cond_2b
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v0

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->UPDATE:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 531
    const-string v0, "u_list_download"

    const-string v1, "\u5347\u7ea7"

    invoke-direct {p0, v0, v1}, Lcn/domob/ui/item/AppListItem;->setListActionArea(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 535
    :pswitch_41
    const-string v0, "\u7b49\u5f85\u4e2d"

    invoke-direct {p0, v6, v0}, Lcn/domob/ui/item/AppListItem;->setListActionArea(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 538
    :pswitch_47
    sget-object v0, Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show progress for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v2}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 539
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    .line 541
    const/4 v0, 0x0

    .line 542
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_87

    .line 543
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getCurrentDownloadSize()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppSize()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 546
    :cond_87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-direct {p0, v6, v0}, Lcn/domob/ui/item/AppListItem;->setListActionArea(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 550
    :pswitch_a3
    const-string v0, "\u7ee7\u7eed"

    invoke-direct {p0, v6, v0}, Lcn/domob/ui/item/AppListItem;->setListActionArea(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 553
    :pswitch_aa
    const-string v0, "\u7ee7\u7eed"

    invoke-direct {p0, v6, v0}, Lcn/domob/ui/item/AppListItem;->setListActionArea(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 556
    :pswitch_b1
    const-string v0, "u_list_install"

    const-string v1, "\u5b89\u88c5"

    invoke-direct {p0, v0, v1}, Lcn/domob/ui/item/AppListItem;->setListActionArea(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 559
    :pswitch_ba
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v0

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->DOWNLOAD:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 560
    const-string v0, "u_list_open"

    const-string v1, "\u6253\u5f00"

    invoke-direct {p0, v0, v1}, Lcn/domob/ui/item/AppListItem;->setListActionArea(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 563
    :cond_d1
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v0

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->UPDATE:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 564
    const-string v0, "u_list_download"

    const-string v1, "\u5347\u7ea7"

    invoke-direct {p0, v0, v1}, Lcn/domob/ui/item/AppListItem;->setListActionArea(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 568
    :pswitch_e8
    const-string v0, "u_list_download"

    const-string v1, "\u5347\u7ea7"

    invoke-direct {p0, v0, v1}, Lcn/domob/ui/item/AppListItem;->setListActionArea(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 524
    nop

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_15
        :pswitch_41
        :pswitch_47
        :pswitch_aa
        :pswitch_b1
        :pswitch_ba
        :pswitch_e8
        :pswitch_f
        :pswitch_a3
    .end packed-switch
.end method

.method private bindListViewsForLanding()V
    .registers 3

    .prologue
    .line 512
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->hideApkSize()V

    .line 513
    const-string v0, "u_list_browser"

    const-string v1, "\u67e5\u770b\u8be6\u60c5"

    invoke-direct {p0, v0, v1}, Lcn/domob/ui/item/AppListItem;->setListActionArea(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method private bindListViewsForLaunch()V
    .registers 3

    .prologue
    .line 495
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->hideApkSize()V

    .line 496
    const-string v0, "u_list_open"

    const-string v1, "\u6253\u5f00"

    invoke-direct {p0, v0, v1}, Lcn/domob/ui/item/AppListItem;->setListActionArea(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method private buildDetailsActionArea()V
    .registers 3

    .prologue
    .line 474
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v0

    .line 475
    sget-object v1, Lcn/domob/ui/item/AppListItem$9;->a:[I

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1a

    .line 487
    :goto_11
    :pswitch_11
    return-void

    .line 478
    :pswitch_12
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->bindDetailsViewsForDownloadAndUpdate()V

    goto :goto_11

    .line 481
    :pswitch_16
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->bindDetailsViewsForLaunch()V

    goto :goto_11

    .line 475
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_16
    .end packed-switch
.end method

.method private buildDetailsCommonView()V
    .registers 9

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    const/high16 v5, 0x44800000

    .line 309
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "l_details"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    .line 313
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "dl01"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->rl_download_operations:Landroid/widget/RelativeLayout;

    .line 317
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->setDetailsActionClickListener()V

    .line 320
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "details_close"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/domob/ui/item/AppListItem$4;

    invoke-direct {v1, p0}, Lcn/domob/ui/item/AppListItem$4;-><init>(Lcn/domob/ui/item/AppListItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "scroll"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 337
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/ui/utility/DUtil;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/ui/utility/DUtil;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_221

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/ui/utility/DUtil;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 341
    :goto_6b
    int-to-float v1, v1

    iget-object v2, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/ui/utility/DUtil;->getRealDensity(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 343
    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_8b

    .line 344
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 345
    const/high16 v2, 0x439b0000

    iget-object v3, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/ui/utility/DUtil;->getRealDensity(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 346
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    :cond_8b
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "details_gallery_screenshot"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 352
    new-instance v1, Lcn/domob/ui/adapter/DetailsGalleryAdapter;

    iget-object v2, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v2}, Lcn/domob/wall/core/bean/AdInfo;->getScreenshot()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/ui/item/AppListItem;->mDService:Lcn/domob/wall/core/DService;

    invoke-direct {v1, v2, v3, v4}, Lcn/domob/ui/adapter/DetailsGalleryAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Lcn/domob/wall/core/DService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 355
    new-instance v1, Lcn/domob/ui/item/AppListItem$5;

    invoke-direct {v1, p0}, Lcn/domob/ui/item/AppListItem$5;-><init>(Lcn/domob/ui/item/AppListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 365
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "details_logo"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 368
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdLogoURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 369
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mDService:Lcn/domob/wall/core/DService;

    iget-object v2, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v2}, Lcn/domob/wall/core/bean/AdInfo;->getAdLogoURL()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/domob/ui/item/AppListItem$6;

    invoke-direct {v3, p0}, Lcn/domob/ui/item/AppListItem$6;-><init>(Lcn/domob/ui/item/AppListItem;)V

    invoke-virtual {v1, v2, v0, v3}, Lcn/domob/wall/core/DService;->requestImage(Ljava/lang/String;Landroid/widget/ImageView;Lcn/domob/wall/core/DService$OnImageDownload;)V

    .line 387
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "details_name"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 389
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "details_versionName"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7248\u672c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v2}, Lcn/domob/wall/core/bean/AdInfo;->getAdVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "details_apkSize"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 397
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdSize()I

    move-result v1

    .line 398
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 399
    int-to-float v1, v1

    div-float/2addr v1, v5

    div-float/2addr v1, v5

    float-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5927\u5c0f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "details_details"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 404
    new-instance v1, Landroid/text/SpannableString;

    const-string v2, "\u7b80\u4ecb\uff1a"

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 407
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v5, "details_text_color"

    invoke-static {v4, v5}, Lcn/domob/ui/utility/DColor;->getColorInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 416
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v3, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/ui/utility/DUtil;->getScreenDensity(Landroid/content/Context;)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0xe

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 418
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdDetailDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "iv_download"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->iv_download:Landroid/widget/ImageView;

    .line 427
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "iv_install"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->iv_install:Landroid/widget/ImageView;

    .line 430
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "iv_open"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->iv_open:Landroid/widget/ImageView;

    .line 434
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "rl_progress_bar"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->rl_progress_bar:Landroid/widget/RelativeLayout;

    .line 437
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "pb_progress"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->pb_progress:Landroid/widget/ProgressBar;

    .line 440
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "tv_progress"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->tv_progress:Landroid/widget/TextView;

    .line 442
    return-void

    .line 337
    :cond_221
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/ui/utility/DUtil;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v1

    goto/16 :goto_6b
.end method

.method private buildListActionArea()V
    .registers 3

    .prologue
    .line 450
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->setListActionClickListener()V

    .line 452
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v0

    .line 453
    sget-object v1, Lcn/domob/ui/item/AppListItem$9;->a:[I

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_22

    .line 467
    :goto_14
    return-void

    .line 456
    :pswitch_15
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->bindListViewsForDownloadAndUpdate()V

    goto :goto_14

    .line 460
    :pswitch_19
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->bindListViewsForLanding()V

    goto :goto_14

    .line 463
    :pswitch_1d
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->bindListViewsForLaunch()V

    goto :goto_14

    .line 453
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_19
        :pswitch_19
        :pswitch_1d
    .end packed-switch
.end method

.method private buildListCommonArea()V
    .registers 5

    .prologue
    .line 274
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "u_list_logo"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdLogoURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDService:Lcn/domob/wall/core/DService;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdLogoURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v2, v2, Lcn/domob/ui/item/AppListItem$c;->a:Landroid/widget/ImageView;

    new-instance v3, Lcn/domob/ui/item/AppListItem$3;

    invoke-direct {v3, p0}, Lcn/domob/ui/item/AppListItem$3;-><init>(Lcn/domob/ui/item/AppListItem;)V

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/wall/core/DService;->requestImage(Ljava/lang/String;Landroid/widget/ImageView;Lcn/domob/wall/core/DService$OnImageDownload;)V

    .line 294
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->isNew()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 295
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    :goto_40
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdBriefText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    return-void

    .line 297
    :cond_5b
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_40
.end method

.method private buildViewHolder(Landroid/view/View;)Lcn/domob/ui/item/AppListItem$c;
    .registers 5
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 699
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 700
    if-eqz v0, :cond_9

    .line 701
    check-cast v0, Lcn/domob/ui/item/AppListItem$c;

    .line 728
    :goto_8
    return-object v0

    .line 704
    :cond_9
    new-instance v0, Lcn/domob/ui/item/AppListItem$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/domob/ui/item/AppListItem$c;-><init>(Lcn/domob/ui/item/AppListItem;Lcn/domob/ui/item/AppListItem$1;)V

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    .line 705
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "lsit_logo"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/domob/ui/item/AppListItem$c;->a:Landroid/widget/ImageView;

    .line 707
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "lsit_logo_new"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/domob/ui/item/AppListItem$c;->b:Landroid/widget/ImageView;

    .line 709
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "list_name"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/item/AppListItem$c;->c:Landroid/widget/TextView;

    .line 711
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "list_describe"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/item/AppListItem$c;->d:Landroid/widget/TextView;

    .line 713
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "list_download_ll"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcn/domob/ui/item/AppListItem$c;->e:Landroid/widget/LinearLayout;

    .line 715
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "list_actiontype_bg"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcn/domob/ui/item/AppListItem$c;->f:Landroid/widget/RelativeLayout;

    .line 717
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "list_actiontype"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/domob/ui/item/AppListItem$c;->g:Landroid/widget/ImageView;

    .line 719
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "list_action_des"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/item/AppListItem$c;->h:Landroid/widget/TextView;

    .line 721
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v2, "list_apksize"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/item/AppListItem$c;->i:Landroid/widget/TextView;

    .line 725
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->h:Landroid/widget/TextView;

    const-string v1, "#E6421C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 727
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 728
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    goto/16 :goto_8
.end method

.method private changeDownloadBarState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 904
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a

    .line 905
    packed-switch p1, :pswitch_data_56

    .line 936
    :cond_a
    :goto_a
    return-void

    .line 907
    :pswitch_b
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->rl_download_operations:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 908
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->rl_progress_bar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_a

    .line 912
    :pswitch_16
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->rl_progress_bar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 913
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->rl_download_operations:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_a

    .line 917
    :pswitch_21
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->rl_progress_bar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->rl_download_operations:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 919
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->iv_download:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->iv_install:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 921
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->iv_open:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 925
    :pswitch_3b
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->rl_progress_bar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->rl_download_operations:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 927
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->iv_download:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->iv_install:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->iv_open:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 905
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_b
        :pswitch_16
        :pswitch_21
        :pswitch_3b
    .end packed-switch
.end method

.method private clickActionForDetailsLanding()V
    .registers 3

    .prologue
    .line 814
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDService:Lcn/domob/wall/core/DService;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->onClickDetailsPageButton(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 815
    return-void
.end method

.method private clickActionForDetailsLaunch()V
    .registers 3

    .prologue
    .line 821
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDService:Lcn/domob/wall/core/DService;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->onClickDetailsPageButton(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 822
    return-void
.end method

.method private clickActionForDownloadAndUpdate(Lcn/domob/ui/item/AppListItem$b;)V
    .registers 6
    .param p1, "source"    # Lcn/domob/ui/item/AppListItem$b;

    .prologue
    .line 837
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v0

    .line 838
    packed-switch v0, :pswitch_data_9c

    .line 883
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 840
    :pswitch_a
    sget-object v1, Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start to download:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v3}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 842
    sget-object v0, Lcn/domob/ui/item/AppListItem$b;->a:Lcn/domob/ui/item/AppListItem$b;

    invoke-virtual {p1, v0}, Lcn/domob/ui/item/AppListItem$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 843
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDService:Lcn/domob/wall/core/DService;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doClickWallItemButtonReport(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 846
    :cond_41
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->dm:Lcn/dm/download/DownLoadManager;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    iget-object v2, p0, Lcn/domob/ui/item/AppListItem;->mListenerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcn/dm/download/DownLoadManager;->addTask(Lcn/dm/download/bean/DownloadAppInfo;Ljava/lang/String;Lcn/dm/download/listener/DownloadHelperListener;)V

    .line 847
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->dm:Lcn/dm/download/DownLoadManager;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0, v1}, Lcn/dm/download/DownLoadManager;->excuteDownload(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_9

    .line 858
    :pswitch_52
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->dm:Lcn/dm/download/DownLoadManager;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0, v1}, Lcn/dm/download/DownLoadManager;->excuteResume(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_9

    .line 861
    :pswitch_5a
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->dm:Lcn/dm/download/DownLoadManager;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0, v1, v2}, Lcn/dm/download/DownLoadManager;->excuteInstall(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_9

    .line 864
    :pswitch_64
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v0

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->DOWNLOAD:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 865
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->dm:Lcn/dm/download/DownLoadManager;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0, v1, v2}, Lcn/dm/download/DownLoadManager;->excuteOpen(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_9

    .line 868
    :cond_7c
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v0

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->UPDATE:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 869
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->dm:Lcn/dm/download/DownLoadManager;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0, v1}, Lcn/dm/download/DownLoadManager;->excuteDownload(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto/16 :goto_9

    .line 874
    :pswitch_93
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->dm:Lcn/dm/download/DownLoadManager;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0, v1}, Lcn/dm/download/DownLoadManager;->excuteDownload(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto/16 :goto_9

    .line 838
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_52
        :pswitch_5a
        :pswitch_64
        :pswitch_93
        :pswitch_9
        :pswitch_52
    .end packed-switch
.end method

.method private clickActionForListLanding()V
    .registers 3

    .prologue
    .line 828
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDService:Lcn/domob/wall/core/DService;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->onClickWallItemButton(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 829
    return-void
.end method

.method private clickActionForListLaunch()V
    .registers 3

    .prologue
    .line 807
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDService:Lcn/domob/wall/core/DService;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->onClickWallItemButton(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 808
    return-void
.end method

.method private displayApkSize()V
    .registers 5

    .prologue
    const/high16 v2, 0x44800000

    .line 640
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 641
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 643
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    if-eqz v1, :cond_3d

    .line 644
    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v1, v1, Lcn/domob/ui/item/AppListItem$c;->i:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "M"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 648
    :cond_3d
    return-void
.end method

.method private hideApkSize()V
    .registers 3

    .prologue
    .line 654
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    if-eqz v0, :cond_d

    .line 655
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 657
    :cond_d
    return-void
.end method

.method private notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V
    .registers 4
    .param p1, "status"    # Lcn/domob/ui/main/Constants$DownloadStatus;

    .prologue
    .line 892
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->downloadListener:Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;

    if-eqz v0, :cond_9

    .line 893
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->downloadListener:Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;

    invoke-interface {v0, p1}, Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;->onAppItemDownloadStatusChanged(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 896
    :cond_9
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 897
    return-void
.end method

.method private setDetailsActionClickListener()V
    .registers 3

    .prologue
    .line 736
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->rl_download_operations:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    .line 737
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->rl_download_operations:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/domob/ui/item/AppListItem$7;

    invoke-direct {v1, p0}, Lcn/domob/ui/item/AppListItem$7;-><init>(Lcn/domob/ui/item/AppListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 765
    :cond_e
    return-void
.end method

.method private setListActionArea(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "drawableUrl"    # Ljava/lang/String;
    .param p2, "textStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 666
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    if-eqz v0, :cond_2b

    .line 667
    if-eqz p1, :cond_46

    .line 668
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 678
    :goto_24
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    :cond_2b
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/ControlInfo;->isButtonShow()Z

    move-result v0

    if-nez v0, :cond_45

    .line 683
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 689
    :cond_45
    return-void

    .line 674
    :cond_46
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_24
.end method

.method private setListActionClickListener()V
    .registers 3

    .prologue
    .line 772
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    if-eqz v0, :cond_10

    .line 773
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$c;->e:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/domob/ui/item/AppListItem$8;

    invoke-direct {v1, p0}, Lcn/domob/ui/item/AppListItem$8;-><init>(Lcn/domob/ui/item/AppListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    :cond_10
    return-void
.end method


# virtual methods
.method public bindBannerViews(Landroid/view/View;I)Landroid/view/View;
    .registers 8
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "_position"    # I

    .prologue
    const/4 v4, 0x0

    .line 187
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdBannerImageURL()Ljava/lang/String;

    move-result-object v1

    .line 188
    if-nez p1, :cond_68

    .line 190
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v3, "l_home_gallery"

    invoke-static {v2, v3}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 195
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    new-instance v0, Lcn/domob/ui/item/AppListItem$a;

    invoke-direct {v0, p0, v4}, Lcn/domob/ui/item/AppListItem$a;-><init>(Lcn/domob/ui/item/AppListItem;Lcn/domob/ui/item/AppListItem$1;)V

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->mBannerViewHolder:Lcn/domob/ui/item/AppListItem$a;

    .line 200
    iget-object v2, p0, Lcn/domob/ui/item/AppListItem;->mBannerViewHolder:Lcn/domob/ui/item/AppListItem$a;

    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mContext:Landroid/content/Context;

    const-string v3, "gallery_image"

    invoke-static {v0, v3}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcn/domob/ui/item/AppListItem$a;->a:Landroid/widget/ImageView;

    .line 204
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mBannerViewHolder:Lcn/domob/ui/item/AppListItem$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 210
    :goto_43
    if-eqz v1, :cond_5e

    const-string v0, ""

    if-eq v1, v0, :cond_5e

    .line 211
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mBannerViewHolder:Lcn/domob/ui/item/AppListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDService:Lcn/domob/wall/core/DService;

    iget-object v2, p0, Lcn/domob/ui/item/AppListItem;->mBannerViewHolder:Lcn/domob/ui/item/AppListItem$a;

    iget-object v2, v2, Lcn/domob/ui/item/AppListItem$a;->a:Landroid/widget/ImageView;

    new-instance v3, Lcn/domob/ui/item/AppListItem$2;

    invoke-direct {v3, p0}, Lcn/domob/ui/item/AppListItem$2;-><init>(Lcn/domob/ui/item/AppListItem;)V

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/wall/core/DService;->requestImage(Ljava/lang/String;Landroid/widget/ImageView;Lcn/domob/wall/core/DService$OnImageDownload;)V

    .line 230
    :cond_5e
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mBannerViewHolder:Lcn/domob/ui/item/AppListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/AppListItem$a;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 231
    return-object p1

    .line 207
    :cond_68
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/item/AppListItem$a;

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->mBannerViewHolder:Lcn/domob/ui/item/AppListItem$a;

    goto :goto_43
.end method

.method public bindDetailsView(Landroid/app/Dialog;)Landroid/view/View;
    .registers 3
    .param p1, "_dialogView"    # Landroid/app/Dialog;

    .prologue
    .line 259
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem;->mDetailsDialog:Landroid/app/Dialog;

    .line 261
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->buildDetailsCommonView()V

    .line 262
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->buildDetailsActionArea()V

    .line 263
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mDetailsView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public bindListViews(Landroid/view/View;I)V
    .registers 6
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "_position"    # I

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcn/domob/ui/item/AppListItem;->buildViewHolder(Landroid/view/View;)Lcn/domob/ui/item/AppListItem$c;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/item/AppListItem;->mListViewHolder:Lcn/domob/ui/item/AppListItem$c;

    .line 242
    iput p2, p0, Lcn/domob/ui/item/AppListItem;->mPosition:I

    .line 243
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    iget v1, p0, Lcn/domob/ui/item/AppListItem;->mPosition:I

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->setAdActualPosition(I)V

    .line 244
    sget-object v0, Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start binding list view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/ui/item/AppListItem;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->ptLog(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->buildListCommonArea()V

    .line 248
    invoke-direct {p0}, Lcn/domob/ui/item/AppListItem;->buildListActionArea()V

    .line 249
    sget-object v0, Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish binding list view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/ui/item/AppListItem;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->ptLog(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public getAdInfo()Lcn/domob/wall/core/bean/AdInfo;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    return-object v0
.end method

.method public onDownloadCancel(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 941
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 942
    sget-object v0, Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadCancel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 943
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADCANCEL:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 944
    return-void
.end method

.method public onDownloadFailed(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 949
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 950
    sget-object v0, Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadFailed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 951
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADFAILED:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 952
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 953
    return-void
.end method

.method public onDownloadPause(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 958
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 959
    sget-object v0, Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadPause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 960
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADPAUSE:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 961
    return-void
.end method

.method public onDownloadResume(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 966
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 967
    sget-object v0, Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadResume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 968
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADRESUME:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 969
    return-void
.end method

.method public onDownloadStart(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 974
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 975
    sget-object v0, Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 976
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADSTART:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 977
    return-void
.end method

.method public onDownloadSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 982
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 983
    sget-object v0, Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 984
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 985
    return-void
.end method

.method public onDownloadWaiting(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 990
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 991
    sget-object v0, Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadWaiting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 992
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADWAITING:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 993
    return-void
.end method

.method public onInstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 998
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 999
    sget-object v0, Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInstallSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 1000
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->INSTALLSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 1001
    return-void
.end method

.method public onProgressChange(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 1006
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 1007
    sget-object v0, Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 1008
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->PROGRESSCHANGE:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 1009
    return-void
.end method

.method public onUninstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 1014
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem;->mDownloadAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 1015
    sget-object v0, Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUninstallSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 1016
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->UNINSTALLSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/AppListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 1017
    return-void
.end method
