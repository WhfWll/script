.class public Lcn/domob/ui/item/SearchListItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dm/download/listener/DownloadHelperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/ui/item/SearchListItem$a;,
        Lcn/domob/ui/item/SearchListItem$SearchItemStatusChangeListener;
    }
.end annotation


# static fields
.field private static mLogger:Lcn/domob/ui/main/Logger;


# instance fields
.field private dm:Lcn/dm/download/DownLoadManager;

.field downloadClick:Landroid/view/View$OnClickListener;

.field private errorHandler:Landroid/os/Handler;

.field private mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

.field private mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

.field private mContext:Landroid/content/Context;

.field private mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

.field private mDService:Lcn/domob/wall/core/DService;

.field private mDownLoadStatus:I

.field private mDownloadStatusChangeListener:Lcn/domob/ui/item/SearchListItem$SearchItemStatusChangeListener;

.field private mPosition:I

.field private mProgress:I

.field private mViewHolder:Lcn/domob/ui/item/SearchListItem$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcn/domob/ui/main/Logger;

    const-class v1, Lcn/domob/ui/item/SearchListItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/main/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/item/SearchListItem;->mLogger:Lcn/domob/ui/main/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/ui/item/SearchListItem$SearchItemStatusChangeListener;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService;Lcn/dm/download/DownLoadManager;Lcn/domob/wall/core/bean/ControlInfo;)V
    .registers 10
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_listener"    # Lcn/domob/ui/item/SearchListItem$SearchItemStatusChangeListener;
    .param p3, "_mAdInfo"    # Lcn/domob/wall/core/bean/AdInfo;
    .param p4, "_mDService"    # Lcn/domob/wall/core/DService;
    .param p5, "_dm"    # Lcn/dm/download/DownLoadManager;
    .param p6, "_mControlInfo"    # Lcn/domob/wall/core/bean/ControlInfo;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Lcn/domob/ui/item/SearchListItem;->mProgress:I

    .line 48
    iput v0, p0, Lcn/domob/ui/item/SearchListItem;->mDownLoadStatus:I

    .line 300
    new-instance v0, Lcn/domob/ui/item/SearchListItem$2;

    invoke-direct {v0, p0}, Lcn/domob/ui/item/SearchListItem$2;-><init>(Lcn/domob/ui/item/SearchListItem;)V

    iput-object v0, p0, Lcn/domob/ui/item/SearchListItem;->downloadClick:Landroid/view/View$OnClickListener;

    .line 339
    new-instance v0, Lcn/domob/ui/item/SearchListItem$3;

    invoke-direct {v0, p0}, Lcn/domob/ui/item/SearchListItem$3;-><init>(Lcn/domob/ui/item/SearchListItem;)V

    iput-object v0, p0, Lcn/domob/ui/item/SearchListItem;->errorHandler:Landroid/os/Handler;

    .line 54
    iput-object p2, p0, Lcn/domob/ui/item/SearchListItem;->mDownloadStatusChangeListener:Lcn/domob/ui/item/SearchListItem$SearchItemStatusChangeListener;

    .line 55
    iput-object p5, p0, Lcn/domob/ui/item/SearchListItem;->dm:Lcn/dm/download/DownLoadManager;

    .line 56
    iput-object p1, p0, Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    .line 58
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->dm:Lcn/dm/download/DownLoadManager;

    invoke-static {p3}, Lcn/domob/ui/utility/DUtil;->buildDownLoadAppInfo(Lcn/domob/wall/core/bean/AdInfo;)Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dm/download/DownLoadManager;->checkAndGetDownloadAppInfo(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 60
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->dm:Lcn/dm/download/DownLoadManager;

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    const-class v2, Lcn/domob/ui/item/SearchListItem;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcn/dm/download/DownLoadManager;->addTask(Lcn/dm/download/bean/DownloadAppInfo;Ljava/lang/String;Lcn/dm/download/listener/DownloadHelperListener;)V

    .line 61
    iput-object p4, p0, Lcn/domob/ui/item/SearchListItem;->mDService:Lcn/domob/wall/core/DService;

    .line 62
    iput-object p6, p0, Lcn/domob/ui/item/SearchListItem;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    .line 63
    return-void
.end method

.method static synthetic access$000()Lcn/domob/ui/main/Logger;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcn/domob/ui/item/SearchListItem;->mLogger:Lcn/domob/ui/main/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcn/domob/ui/item/SearchListItem;)I
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/SearchListItem;

    .prologue
    .line 33
    iget v0, p0, Lcn/domob/ui/item/SearchListItem;->mDownLoadStatus:I

    return v0
.end method

.method static synthetic access$300(Lcn/domob/ui/item/SearchListItem;)Lcn/domob/wall/core/bean/AdInfo;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/SearchListItem;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcn/domob/ui/item/SearchListItem;)Lcn/dm/download/bean/DownloadAppInfo;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/SearchListItem;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcn/domob/ui/item/SearchListItem;)Lcn/dm/download/DownLoadManager;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/SearchListItem;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->dm:Lcn/dm/download/DownLoadManager;

    return-object v0
.end method

.method static synthetic access$600(Lcn/domob/ui/item/SearchListItem;)I
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/SearchListItem;

    .prologue
    .line 33
    iget v0, p0, Lcn/domob/ui/item/SearchListItem;->mPosition:I

    return v0
.end method

.method static synthetic access$700(Lcn/domob/ui/item/SearchListItem;)Lcn/domob/wall/core/DService;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/SearchListItem;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mDService:Lcn/domob/wall/core/DService;

    return-object v0
.end method

.method static synthetic access$800(Lcn/domob/ui/item/SearchListItem;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/SearchListItem;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindViewsForAPK(Lcn/domob/ui/item/SearchListItem$a;I)V
    .registers 9
    .param p1, "holder"    # Lcn/domob/ui/item/SearchListItem$a;
    .param p2, "position"    # I

    .prologue
    const/high16 v4, 0x44800000

    const/4 v5, 0x4

    .line 81
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    if-eqz v0, :cond_64

    .line 83
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->downloadClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;

    const-string v2, "u_list_logo"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdLogoURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mDService:Lcn/domob/wall/core/DService;

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdLogoURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/domob/ui/item/SearchListItem$a;->a:Landroid/widget/ImageView;

    new-instance v3, Lcn/domob/ui/item/SearchListItem$1;

    invoke-direct {v3, p0}, Lcn/domob/ui/item/SearchListItem$1;-><init>(Lcn/domob/ui/item/SearchListItem;)V

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/wall/core/DService;->requestImage(Ljava/lang/String;Landroid/widget/ImageView;Lcn/domob/wall/core/DService$OnImageDownload;)V

    .line 109
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/ControlInfo;->isButtonShow()Z

    move-result v0

    if-nez v0, :cond_65

    .line 110
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mViewHolder:Lcn/domob/ui/item/SearchListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/SearchListItem$a;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mViewHolder:Lcn/domob/ui/item/SearchListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/SearchListItem$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_64
    :goto_64
    return-void

    .line 113
    :cond_65
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v0

    .line 114
    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->DOWNLOAD:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 116
    invoke-direct {p0, p1, v0}, Lcn/domob/ui/item/SearchListItem;->bindViewsForDownload(Lcn/domob/ui/item/SearchListItem$a;Lcn/domob/wall/core/bean/AdInfo$ClickActionType;)V

    .line 117
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    div-float/2addr v1, v4

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p1, Lcn/domob/ui/item/SearchListItem$a;->c:Landroid/widget/TextView;

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

    goto :goto_64

    .line 121
    :cond_a4
    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->UPDATE:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 123
    invoke-direct {p0, p1, v0}, Lcn/domob/ui/item/SearchListItem;->bindViewsForDownload(Lcn/domob/ui/item/SearchListItem$a;Lcn/domob/wall/core/bean/AdInfo$ClickActionType;)V

    .line 124
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    div-float/2addr v1, v4

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p1, Lcn/domob/ui/item/SearchListItem$a;->c:Landroid/widget/TextView;

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

    goto :goto_64

    .line 128
    :cond_dd
    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->INTERNAL_BROWSER:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 130
    const-string v2, "u_list_browser"

    const-string v3, "\u67e5\u770b\u8be6\u60c5"

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/domob/ui/item/SearchListItem;->pullData(Lcn/domob/ui/item/SearchListItem$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_64

    .line 132
    :cond_f2
    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->EXTERNAL_BROWSER:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 134
    const-string v2, "u_list_browser"

    const-string v3, "\u67e5\u770b\u8be6\u60c5"

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/domob/ui/item/SearchListItem;->pullData(Lcn/domob/ui/item/SearchListItem$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_64

    .line 136
    :cond_107
    const-string v1, "LAUNCH"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 137
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_64
.end method

.method private bindViewsForDownload(Lcn/domob/ui/item/SearchListItem$a;Lcn/domob/wall/core/bean/AdInfo$ClickActionType;)V
    .registers 9
    .param p1, "holder"    # Lcn/domob/ui/item/SearchListItem$a;
    .param p2, "type"    # Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    .prologue
    const/4 v2, 0x3

    const/16 v1, 0x8

    const/4 v5, 0x0

    .line 175
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    if-eqz v0, :cond_11

    .line 176
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_12a

    .line 243
    :cond_11
    :goto_11
    :pswitch_11
    return-void

    .line 178
    :pswitch_12
    iput v5, p0, Lcn/domob/ui/item/SearchListItem;->mDownLoadStatus:I

    .line 179
    const-string v0, "\u514d\u8d39\u4e0b\u8f7d"

    .line 180
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->UPDATE:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {p2, v0}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/ControlInfo;->isShowUpdate()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 181
    const-string v3, "\u5347\u7ea7"

    .line 185
    :goto_28
    const-string v2, "u_list_download"

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/domob/ui/item/SearchListItem;->pullData(Lcn/domob/ui/item/SearchListItem$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_11

    .line 183
    :cond_32
    const-string v3, "\u514d\u8d39\u4e0b\u8f7d"

    goto :goto_28

    .line 189
    :pswitch_35
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/ui/item/SearchListItem;->mDownLoadStatus:I

    .line 190
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 192
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->g:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;

    const-string v2, "list_download"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DColor;->getColorInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11

    .line 198
    :pswitch_5c
    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/ui/item/SearchListItem;->mDownLoadStatus:I

    .line 199
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getCurrentDownloadSize()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppSize()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/domob/ui/item/SearchListItem;->mProgress:I

    .line 203
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/domob/ui/item/SearchListItem;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;

    const-string v2, "list_download"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DColor;->getColorInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_11

    .line 209
    :pswitch_ac
    iput v2, p0, Lcn/domob/ui/item/SearchListItem;->mDownLoadStatus:I

    .line 210
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 212
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->g:Landroid/widget/TextView;

    const-string v1, "\u7ee7\u7eed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;

    const-string v2, "list_download"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DColor;->getColorInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_11

    .line 218
    :pswitch_d3
    const/4 v0, 0x4

    iput v0, p0, Lcn/domob/ui/item/SearchListItem;->mDownLoadStatus:I

    .line 219
    const-string v2, "u_list_install"

    const-string v3, "\u5b89\u88c5"

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/domob/ui/item/SearchListItem;->pullData(Lcn/domob/ui/item/SearchListItem$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 223
    :pswitch_e3
    const/4 v0, 0x5

    iput v0, p0, Lcn/domob/ui/item/SearchListItem;->mDownLoadStatus:I

    .line 224
    const-string v2, "u_list_open"

    const-string v3, "\u6253\u5f00"

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/domob/ui/item/SearchListItem;->pullData(Lcn/domob/ui/item/SearchListItem$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 228
    :pswitch_f3
    const/4 v0, 0x6

    iput v0, p0, Lcn/domob/ui/item/SearchListItem;->mDownLoadStatus:I

    .line 229
    const-string v2, "u_list_download"

    const-string v3, "\u5347\u7ea7"

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/domob/ui/item/SearchListItem;->pullData(Lcn/domob/ui/item/SearchListItem$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 233
    :pswitch_103
    iput v2, p0, Lcn/domob/ui/item/SearchListItem;->mDownLoadStatus:I

    .line 234
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->g:Landroid/widget/TextView;

    const-string v1, "\u7ee7\u7eed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;

    const-string v2, "list_download"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DColor;->getColorInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_11

    .line 176
    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_12
        :pswitch_35
        :pswitch_5c
        :pswitch_ac
        :pswitch_d3
        :pswitch_e3
        :pswitch_f3
        :pswitch_11
        :pswitch_103
    .end packed-switch
.end method

.method private notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V
    .registers 3
    .param p1, "status"    # Lcn/domob/ui/main/Constants$DownloadStatus;

    .prologue
    .line 348
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mDownloadStatusChangeListener:Lcn/domob/ui/item/SearchListItem$SearchItemStatusChangeListener;

    if-eqz v0, :cond_9

    .line 349
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mDownloadStatusChangeListener:Lcn/domob/ui/item/SearchListItem$SearchItemStatusChangeListener;

    invoke-interface {v0, p1}, Lcn/domob/ui/item/SearchListItem$SearchItemStatusChangeListener;->onSearchItemDownloadStatusChanged(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 352
    :cond_9
    return-void
.end method

.method private pullData(Lcn/domob/ui/item/SearchListItem$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "holder"    # Lcn/domob/ui/item/SearchListItem$a;
    .param p2, "drawableUrl"    # Ljava/lang/String;
    .param p3, "textStr"    # Ljava/lang/String;
    .param p4, "colorUrl"    # Ljava/lang/String;
    .param p5, "v"    # I

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 165
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->g:Landroid/widget/TextView;

    const-string v1, "#E6421C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v0, p1, Lcn/domob/ui/item/SearchListItem$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    return-void
.end method

.method private setupViewHolder(Landroid/view/View;)Lcn/domob/ui/item/SearchListItem$a;
    .registers 5
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_9

    .line 253
    check-cast v0, Lcn/domob/ui/item/SearchListItem$a;

    .line 275
    :goto_8
    return-object v0

    .line 256
    :cond_9
    new-instance v0, Lcn/domob/ui/item/SearchListItem$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/domob/ui/item/SearchListItem$a;-><init>(Lcn/domob/ui/item/SearchListItem;Lcn/domob/ui/item/SearchListItem$1;)V

    iput-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mViewHolder:Lcn/domob/ui/item/SearchListItem$a;

    .line 257
    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mViewHolder:Lcn/domob/ui/item/SearchListItem$a;

    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;

    const-string v2, "iv_app_logo"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/domob/ui/item/SearchListItem$a;->a:Landroid/widget/ImageView;

    .line 259
    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mViewHolder:Lcn/domob/ui/item/SearchListItem$a;

    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;

    const-string v2, "tv_app_name"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/item/SearchListItem$a;->b:Landroid/widget/TextView;

    .line 261
    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mViewHolder:Lcn/domob/ui/item/SearchListItem$a;

    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;

    const-string v2, "tv_app_size"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/item/SearchListItem$a;->c:Landroid/widget/TextView;

    .line 263
    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mViewHolder:Lcn/domob/ui/item/SearchListItem$a;

    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;

    const-string v2, "tv_app_version"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/item/SearchListItem$a;->h:Landroid/widget/TextView;

    .line 266
    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mViewHolder:Lcn/domob/ui/item/SearchListItem$a;

    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;

    const-string v2, "list_download_ll"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcn/domob/ui/item/SearchListItem$a;->d:Landroid/widget/LinearLayout;

    .line 268
    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mViewHolder:Lcn/domob/ui/item/SearchListItem$a;

    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;

    const-string v2, "list_actiontype_bg"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcn/domob/ui/item/SearchListItem$a;->e:Landroid/widget/RelativeLayout;

    .line 270
    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mViewHolder:Lcn/domob/ui/item/SearchListItem$a;

    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;

    const-string v2, "list_actiontype"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/domob/ui/item/SearchListItem$a;->f:Landroid/widget/ImageView;

    .line 272
    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem;->mViewHolder:Lcn/domob/ui/item/SearchListItem$a;

    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;

    const-string v2, "list_action_des"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/item/SearchListItem$a;->g:Landroid/widget/TextView;

    .line 274
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mViewHolder:Lcn/domob/ui/item/SearchListItem$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mViewHolder:Lcn/domob/ui/item/SearchListItem$a;

    goto/16 :goto_8
.end method


# virtual methods
.method public bindViews(Landroid/view/View;I)V
    .registers 4
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 75
    iput p2, p0, Lcn/domob/ui/item/SearchListItem;->mPosition:I

    .line 76
    invoke-direct {p0, p1}, Lcn/domob/ui/item/SearchListItem;->setupViewHolder(Landroid/view/View;)Lcn/domob/ui/item/SearchListItem$a;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mViewHolder:Lcn/domob/ui/item/SearchListItem$a;

    .line 77
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mViewHolder:Lcn/domob/ui/item/SearchListItem$a;

    invoke-direct {p0, v0, p2}, Lcn/domob/ui/item/SearchListItem;->bindViewsForAPK(Lcn/domob/ui/item/SearchListItem$a;I)V

    .line 78
    return-void
.end method

.method public getDownloadAppInfo()Lcn/dm/download/bean/DownloadAppInfo;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    return-object v0
.end method

.method public getmAdInfo()Lcn/domob/wall/core/bean/AdInfo;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;

    return-object v0
.end method

.method public onDownloadCancel(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 374
    iput-object p1, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 375
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADCANCEL:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/SearchListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 376
    return-void
.end method

.method public onDownloadFailed(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 392
    iput-object p1, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 393
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem;->errorHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 394
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADFAILED:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/SearchListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 395
    return-void
.end method

.method public onDownloadPause(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 368
    iput-object p1, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 369
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADPAUSE:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/SearchListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 370
    return-void
.end method

.method public onDownloadResume(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 380
    iput-object p1, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 381
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADRESUME:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/SearchListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 382
    return-void
.end method

.method public onDownloadStart(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 355
    iput-object p1, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 356
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADSTART:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/SearchListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 358
    return-void
.end method

.method public onDownloadSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 362
    iput-object p1, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 363
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/SearchListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 364
    return-void
.end method

.method public onDownloadWaiting(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 404
    iput-object p1, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 405
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADWAITING:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/SearchListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 406
    return-void
.end method

.method public onInstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 386
    iput-object p1, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 387
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->INSTALLSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/SearchListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 388
    return-void
.end method

.method public onProgressChange(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 399
    iput-object p1, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 400
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->PROGRESSCHANGE:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/SearchListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 401
    return-void
.end method

.method public onUninstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 410
    iput-object p1, p0, Lcn/domob/ui/item/SearchListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 411
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->UNINSTALLSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/SearchListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 412
    return-void
.end method
