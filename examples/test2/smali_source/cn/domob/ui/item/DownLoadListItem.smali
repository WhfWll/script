.class public Lcn/domob/ui/item/DownLoadListItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dm/download/listener/DownloadHelperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/ui/item/DownLoadListItem$a;,
        Lcn/domob/ui/item/DownLoadListItem$DownloadItemStatusChangeListener;
    }
.end annotation


# static fields
.field private static mLogger:Lcn/domob/ui/main/Logger;


# instance fields
.field private dm:Lcn/dm/download/DownLoadManager;

.field downloadClick:Landroid/view/View$OnClickListener;

.field private mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

.field private mChangeHandler:Landroid/os/Handler;

.field private mChildPosition:I

.field private mContext:Landroid/content/Context;

.field private mDService:Lcn/domob/wall/core/DService;

.field private mDownLoadStatus:I

.field private mGroupPosition:I

.field private mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

.field private mListener:Lcn/domob/ui/item/DownLoadListItem$DownloadItemStatusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcn/domob/ui/main/Logger;

    const-class v1, Lcn/domob/ui/item/DownLoadListItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/main/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/item/DownLoadListItem;->mLogger:Lcn/domob/ui/main/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/ui/item/DownLoadListItem$DownloadItemStatusChangeListener;Landroid/os/Handler;Lcn/dm/download/bean/DownloadAppInfo;Lcn/dm/download/DownLoadManager;Lcn/domob/wall/core/DService;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/domob/ui/item/DownLoadListItem$DownloadItemStatusChangeListener;
    .param p3, "changeHandler"    # Landroid/os/Handler;
    .param p4, "appInfo"    # Lcn/dm/download/bean/DownloadAppInfo;
    .param p5, "dlm"    # Lcn/dm/download/DownLoadManager;
    .param p6, "mDService"    # Lcn/domob/wall/core/DService;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mDownLoadStatus:I

    .line 121
    new-instance v0, Lcn/domob/ui/item/DownLoadListItem$2;

    invoke-direct {v0, p0}, Lcn/domob/ui/item/DownLoadListItem$2;-><init>(Lcn/domob/ui/item/DownLoadListItem;)V

    iput-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->downloadClick:Landroid/view/View$OnClickListener;

    .line 49
    iput-object p5, p0, Lcn/domob/ui/item/DownLoadListItem;->dm:Lcn/dm/download/DownLoadManager;

    .line 50
    iput-object p1, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    .line 51
    iput-object p6, p0, Lcn/domob/ui/item/DownLoadListItem;->mDService:Lcn/domob/wall/core/DService;

    .line 52
    invoke-virtual {p5, p4}, Lcn/dm/download/DownLoadManager;->checkAndGetDownloadAppInfo(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 53
    iput-object p3, p0, Lcn/domob/ui/item/DownLoadListItem;->mChangeHandler:Landroid/os/Handler;

    .line 54
    iput-object p2, p0, Lcn/domob/ui/item/DownLoadListItem;->mListener:Lcn/domob/ui/item/DownLoadListItem$DownloadItemStatusChangeListener;

    .line 56
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->dm:Lcn/dm/download/DownLoadManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1, p0}, Lcn/dm/download/DownLoadManager;->addTask(Lcn/dm/download/bean/DownloadAppInfo;Ljava/lang/String;Lcn/dm/download/listener/DownloadHelperListener;)V

    .line 57
    sget-object v0, Lcn/domob/ui/item/DownLoadListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init download list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method static synthetic access$000()Lcn/domob/ui/main/Logger;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcn/domob/ui/item/DownLoadListItem;->mLogger:Lcn/domob/ui/main/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcn/domob/ui/item/DownLoadListItem;)I
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/DownLoadListItem;

    .prologue
    .line 27
    iget v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mDownLoadStatus:I

    return v0
.end method

.method static synthetic access$200(Lcn/domob/ui/item/DownLoadListItem;)Lcn/dm/download/bean/DownloadAppInfo;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/DownLoadListItem;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcn/domob/ui/item/DownLoadListItem;)Lcn/dm/download/DownLoadManager;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/DownLoadListItem;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->dm:Lcn/dm/download/DownLoadManager;

    return-object v0
.end method

.method static synthetic access$400(Lcn/domob/ui/item/DownLoadListItem;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/DownLoadListItem;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcn/domob/ui/item/DownLoadListItem;)Lcn/domob/ui/item/DownLoadListItem$a;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/item/DownLoadListItem;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    return-object v0
.end method

.method private bindItemView()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 213
    sget-object v0, Lcn/domob/ui/item/DownLoadListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindDownloadViewsForDownload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v2}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v2}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_1f0

    .line 278
    :goto_38
    return-void

    .line 216
    :pswitch_39
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mDownLoadStatus:I

    .line 217
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "u_list_download"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 219
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->i:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38

    .line 222
    :pswitch_55
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mDownLoadStatus:I

    .line 223
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "u_list_download"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 225
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->i:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->d:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-direct {p0, v1}, Lcn/domob/ui/item/DownLoadListItem;->getProgressBar(Lcn/dm/download/bean/DownloadAppInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_38

    .line 229
    :pswitch_7e
    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mDownLoadStatus:I

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getCurrentDownloadSize()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/domob/ui/item/DownLoadListItem;->setProgressByte(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    sget-object v1, Lcn/domob/ui/item/DownLoadListItem;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v1, v1, Lcn/domob/ui/item/DownLoadListItem$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "u_downloading_icon"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 235
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-direct {p0, v2}, Lcn/domob/ui/item/DownLoadListItem;->getProgressBar(Lcn/dm/download/bean/DownloadAppInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->d:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-direct {p0, v1}, Lcn/domob/ui/item/DownLoadListItem;->getProgressBar(Lcn/dm/download/bean/DownloadAppInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_38

    .line 239
    :pswitch_fb
    iput v3, p0, Lcn/domob/ui/item/DownLoadListItem;->mDownLoadStatus:I

    .line 240
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->i:Landroid/widget/TextView;

    const-string v1, "\u7ee7\u7eed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->d:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-direct {p0, v1}, Lcn/domob/ui/item/DownLoadListItem;->getProgressBar(Lcn/dm/download/bean/DownloadAppInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 242
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "u_download_continue_icon"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_38

    .line 246
    :pswitch_124
    const/4 v0, 0x4

    iput v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mDownLoadStatus:I

    .line 247
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "u_list_install"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 249
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 250
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v2}, Lcn/dm/download/bean/DownloadAppInfo;->getAppSize()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/domob/ui/item/DownLoadListItem;->setProgressByte(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->i:Landroid/widget/TextView;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->i:Landroid/widget/TextView;

    const-string v1, "#E6421C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_38

    .line 255
    :pswitch_17b
    const/4 v0, 0x5

    iput v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mDownLoadStatus:I

    .line 256
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "u_list_open"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 258
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->i:Landroid/widget/TextView;

    const-string v1, "\u6253\u5f00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->i:Landroid/widget/TextView;

    const-string v1, "#E6421C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_38

    .line 262
    :pswitch_1a5
    const/4 v0, 0x6

    iput v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mDownLoadStatus:I

    .line 263
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "u_list_download"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 265
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->i:Landroid/widget/TextView;

    const-string v1, "\u5347\u7ea7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_38

    .line 268
    :pswitch_1c2
    const/4 v0, 0x7

    iput v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mDownLoadStatus:I

    goto/16 :goto_38

    .line 271
    :pswitch_1c7
    iput v3, p0, Lcn/domob/ui/item/DownLoadListItem;->mDownLoadStatus:I

    .line 272
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->i:Landroid/widget/TextView;

    const-string v1, "\u7ee7\u7eed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->d:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-direct {p0, v1}, Lcn/domob/ui/item/DownLoadListItem;->getProgressBar(Lcn/dm/download/bean/DownloadAppInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 274
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "u_download_continue_icon"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_38

    .line 214
    :pswitch_data_1f0
    .packed-switch 0x0
        :pswitch_39
        :pswitch_55
        :pswitch_7e
        :pswitch_fb
        :pswitch_124
        :pswitch_17b
        :pswitch_1a5
        :pswitch_1c2
        :pswitch_1c7
    .end packed-switch
.end method

.method private bindViewsForAPK()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 97
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    if-eqz v0, :cond_63

    .line 99
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppSize()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/domob/ui/item/DownLoadListItem;->setProgressByte(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_74

    .line 109
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v2}, Lcn/dm/download/bean/DownloadAppInfo;->getCurrentDownloadSize()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/domob/ui/item/DownLoadListItem;->setProgressByte(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_60
    invoke-direct {p0}, Lcn/domob/ui/item/DownLoadListItem;->bindItemView()V

    .line 116
    :cond_63
    return-void

    .line 105
    :pswitch_64
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_60

    .line 102
    nop

    :pswitch_data_74
    .packed-switch 0x4
        :pswitch_64
        :pswitch_64
    .end packed-switch
.end method

.method private getProgressBar(Lcn/dm/download/bean/DownloadAppInfo;)I
    .registers 6
    .param p1, "appInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    if-eqz p1, :cond_12

    .line 304
    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getCurrentDownloadSize()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppSize()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 307
    :cond_12
    return v0
.end method

.method private notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V
    .registers 3
    .param p1, "status"    # Lcn/domob/ui/main/Constants$DownloadStatus;

    .prologue
    .line 317
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mListener:Lcn/domob/ui/item/DownLoadListItem$DownloadItemStatusChangeListener;

    if-eqz v0, :cond_9

    .line 318
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mListener:Lcn/domob/ui/item/DownLoadListItem$DownloadItemStatusChangeListener;

    invoke-interface {v0, p1}, Lcn/domob/ui/item/DownLoadListItem$DownloadItemStatusChangeListener;->onDMItemDownloadStatusChanged(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 321
    :cond_9
    return-void
.end method

.method private setProgressByte(J)Ljava/lang/String;
    .registers 10
    .param p1, "size"    # J

    .prologue
    const/high16 v3, 0x44800000

    .line 288
    const-string v1, ""

    .line 289
    long-to-float v0, p1

    .line 290
    cmpl-float v2, v0, v3

    if-lez v2, :cond_c

    .line 291
    div-float/2addr v0, v3

    .line 292
    const-string v1, "KB"

    .line 294
    :cond_c
    cmpl-float v2, v0, v3

    if-lez v2, :cond_13

    .line 295
    div-float/2addr v0, v3

    .line 296
    const-string v1, "M"

    .line 298
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setupViewHolder(Landroid/view/View;)Lcn/domob/ui/item/DownLoadListItem$a;
    .registers 5
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_9

    .line 165
    check-cast v0, Lcn/domob/ui/item/DownLoadListItem$a;

    .line 191
    :goto_8
    return-object v0

    .line 167
    :cond_9
    new-instance v1, Lcn/domob/ui/item/DownLoadListItem$a;

    invoke-direct {v1}, Lcn/domob/ui/item/DownLoadListItem$a;-><init>()V

    .line 168
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "download_list_item_rl_download"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcn/domob/ui/item/DownLoadListItem$a;->a:Landroid/widget/RelativeLayout;

    .line 170
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "iv_logo"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/domob/ui/item/DownLoadListItem$a;->b:Landroid/widget/ImageView;

    .line 172
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "tv_app_name"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/item/DownLoadListItem$a;->c:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "tv_download_time"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/item/DownLoadListItem$a;->g:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "pb_progress"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcn/domob/ui/item/DownLoadListItem$a;->d:Landroid/widget/ProgressBar;

    .line 178
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "tv_app_size"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/item/DownLoadListItem$a;->f:Landroid/widget/TextView;

    .line 180
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "tv_current_progress"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/item/DownLoadListItem$a;->e:Landroid/widget/TextView;

    .line 182
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "tv_app_size"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/item/DownLoadListItem$a;->f:Landroid/widget/TextView;

    .line 184
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "iv_download_state"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/domob/ui/item/DownLoadListItem$a;->h:Landroid/widget/ImageView;

    .line 186
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "tv_state"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/item/DownLoadListItem$a;->i:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "tv_delete"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/item/DownLoadListItem$a;->j:Landroid/widget/TextView;

    .line 190
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 191
    goto/16 :goto_8
.end method


# virtual methods
.method public bindViews(Landroid/view/View;II)V
    .registers 8
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "groupPosition"    # I
    .param p3, "childPosition"    # I

    .prologue
    .line 67
    iput p2, p0, Lcn/domob/ui/item/DownLoadListItem;->mGroupPosition:I

    .line 68
    iput p3, p0, Lcn/domob/ui/item/DownLoadListItem;->mChildPosition:I

    .line 69
    invoke-direct {p0, p1}, Lcn/domob/ui/item/DownLoadListItem;->setupViewHolder(Landroid/view/View;)Lcn/domob/ui/item/DownLoadListItem$a;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    .line 70
    invoke-direct {p0}, Lcn/domob/ui/item/DownLoadListItem;->bindViewsForAPK()V

    .line 71
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mContext:Landroid/content/Context;

    const-string v2, "u_list_logo"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mDService:Lcn/domob/wall/core/DService;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v2, v2, Lcn/domob/ui/item/DownLoadListItem$a;->b:Landroid/widget/ImageView;

    new-instance v3, Lcn/domob/ui/item/DownLoadListItem$1;

    invoke-direct {v3, p0}, Lcn/domob/ui/item/DownLoadListItem$1;-><init>(Lcn/domob/ui/item/DownLoadListItem;)V

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/wall/core/DService;->requestImage(Ljava/lang/String;Landroid/widget/ImageView;Lcn/domob/wall/core/DService$OnImageDownload;)V

    .line 90
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mHolder:Lcn/domob/ui/item/DownLoadListItem$a;

    iget-object v0, v0, Lcn/domob/ui/item/DownLoadListItem$a;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/item/DownLoadListItem;->downloadClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method public getDownloadAppInfo()Lcn/dm/download/bean/DownloadAppInfo;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    return-object v0
.end method

.method public onDownloadCancel(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 355
    sget-object v0, Lcn/domob/ui/item/DownLoadListItem;->mLogger:Lcn/domob/ui/main/Logger;

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

    .line 356
    iput-object p1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 357
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADCANCEL:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/DownLoadListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 358
    return-void
.end method

.method public onDownloadFailed(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 385
    sget-object v0, Lcn/domob/ui/item/DownLoadListItem;->mLogger:Lcn/domob/ui/main/Logger;

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

    .line 386
    iput-object p1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 387
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADFAILED:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/DownLoadListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 388
    return-void
.end method

.method public onDownloadPause(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 348
    sget-object v0, Lcn/domob/ui/item/DownLoadListItem;->mLogger:Lcn/domob/ui/main/Logger;

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

    .line 349
    iput-object p1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 350
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADPAUSE:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/DownLoadListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 351
    return-void
.end method

.method public onDownloadResume(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 362
    sget-object v0, Lcn/domob/ui/item/DownLoadListItem;->mLogger:Lcn/domob/ui/main/Logger;

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

    .line 363
    iput-object p1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 364
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADRESUME:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/DownLoadListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 365
    return-void
.end method

.method public onDownloadStart(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 327
    sget-object v0, Lcn/domob/ui/item/DownLoadListItem;->mLogger:Lcn/domob/ui/main/Logger;

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

    .line 328
    iput-object p1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 329
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADSTART:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/DownLoadListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 330
    return-void
.end method

.method public onDownloadSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 341
    sget-object v0, Lcn/domob/ui/item/DownLoadListItem;->mLogger:Lcn/domob/ui/main/Logger;

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

    .line 342
    iput-object p1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 343
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/DownLoadListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 344
    return-void
.end method

.method public onDownloadWaiting(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 334
    sget-object v0, Lcn/domob/ui/item/DownLoadListItem;->mLogger:Lcn/domob/ui/main/Logger;

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

    .line 335
    iput-object p1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 336
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->DOWNLOADWAITING:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/DownLoadListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 337
    return-void
.end method

.method public onInstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 369
    sget-object v0, Lcn/domob/ui/item/DownLoadListItem;->mLogger:Lcn/domob/ui/main/Logger;

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

    .line 370
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 371
    const-string v1, "groupPosition"

    iget v2, p0, Lcn/domob/ui/item/DownLoadListItem;->mGroupPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    const-string v1, "childPosition"

    iget v2, p0, Lcn/domob/ui/item/DownLoadListItem;->mChildPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 373
    const-string v1, "downloadappinfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 374
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 375
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 376
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 377
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mChangeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_56

    .line 378
    iget-object v0, p0, Lcn/domob/ui/item/DownLoadListItem;->mChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 381
    :cond_56
    return-void
.end method

.method public onProgressChange(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 392
    sget-object v0, Lcn/domob/ui/item/DownLoadListItem;->mLogger:Lcn/domob/ui/main/Logger;

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

    .line 393
    iput-object p1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 394
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->PROGRESSCHANGE:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/DownLoadListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 395
    return-void
.end method

.method public onUninstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 399
    sget-object v0, Lcn/domob/ui/item/DownLoadListItem;->mLogger:Lcn/domob/ui/main/Logger;

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

    .line 400
    iput-object p1, p0, Lcn/domob/ui/item/DownLoadListItem;->mAppInfo:Lcn/dm/download/bean/DownloadAppInfo;

    .line 401
    sget-object v0, Lcn/domob/ui/main/Constants$DownloadStatus;->UNINSTALLSUCCESS:Lcn/domob/ui/main/Constants$DownloadStatus;

    invoke-direct {p0, v0}, Lcn/domob/ui/item/DownLoadListItem;->notifyStatusChange(Lcn/domob/ui/main/Constants$DownloadStatus;)V

    .line 402
    return-void
.end method
