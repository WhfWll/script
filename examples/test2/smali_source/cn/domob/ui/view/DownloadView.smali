.class public Lcn/domob/ui/view/DownloadView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;
.implements Lcn/domob/ui/item/DownLoadListItem$DownloadItemStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/ui/view/DownloadView$a;
    }
.end annotation


# static fields
.field public static final DM_INSTALLSUCCESS:I = 0x1

.field public static final DM_REFRESHLIST:I = 0x0

.field private static final DownloadType1:Ljava/lang/String; = "\u4e0b\u8f7d\u4e2d"

.field private static final DownloadType2:Ljava/lang/String; = "\u5df2\u4e0b\u8f7d"

.field public static final Downloaded:I = 0x2

.field public static final Downloading:I = 0x1

.field private static mLogger:Lcn/domob/ui/main/Logger;


# instance fields
.field private adapter:Lcn/domob/ui/adapter/DownloadManagerListAdapter;

.field private appInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/dm/download/bean/DownloadAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private childList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/DownLoadListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field childPos2D:[I

.field private downloadedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/DownLoadListItem;",
            ">;"
        }
    .end annotation
.end field

.field private downloadingItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/DownLoadListItem;",
            ">;"
        }
    .end annotation
.end field

.field private groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field private listenerName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

.field private mDService:Lcn/domob/wall/core/DService;

.field private mDialog:Landroid/app/Dialog;

.field private mDownLoadManager:Lcn/dm/download/DownLoadManager;

.field viewStub:Landroid/view/View;

.field private viewStubMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<[I",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field vsOperations:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    new-instance v0, Lcn/domob/ui/main/Logger;

    const-class v1, Lcn/domob/ui/view/DownloadView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/main/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/view/DownloadView;->mLogger:Lcn/domob/ui/main/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/wall/core/DService;Landroid/app/Dialog;Lcn/domob/wall/core/bean/ControlInfo;Lcn/dm/download/DownLoadManager;)V
    .registers 7
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mDService"    # Lcn/domob/wall/core/DService;
    .param p3, "mDialog"    # Landroid/app/Dialog;
    .param p4, "_controlInfo"    # Lcn/domob/wall/core/bean/ControlInfo;
    .param p5, "dlm"    # Lcn/dm/download/DownLoadManager;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "DMItem"

    iput-object v0, p0, Lcn/domob/ui/view/DownloadView;->listenerName:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/domob/ui/view/DownloadView;->childPos2D:[I

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/view/DownloadView;->viewStubMap:Ljava/util/Map;

    .line 319
    new-instance v0, Lcn/domob/ui/view/DownloadView$4;

    invoke-direct {v0, p0}, Lcn/domob/ui/view/DownloadView$4;-><init>(Lcn/domob/ui/view/DownloadView;)V

    iput-object v0, p0, Lcn/domob/ui/view/DownloadView;->handler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcn/domob/ui/view/DownloadView;->mDService:Lcn/domob/wall/core/DService;

    .line 80
    iput-object p3, p0, Lcn/domob/ui/view/DownloadView;->mDialog:Landroid/app/Dialog;

    .line 81
    iput-object p5, p0, Lcn/domob/ui/view/DownloadView;->mDownLoadManager:Lcn/dm/download/DownLoadManager;

    .line 82
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->mDownLoadManager:Lcn/dm/download/DownLoadManager;

    invoke-virtual {v0}, Lcn/dm/download/DownLoadManager;->initAllDownloadAppInfoList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/view/DownloadView;->appInfoList:Ljava/util/List;

    .line 83
    iput-object p4, p0, Lcn/domob/ui/view/DownloadView;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcn/domob/ui/view/DownloadView;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/DownloadView;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100()Lcn/domob/ui/main/Logger;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcn/domob/ui/view/DownloadView;->mLogger:Lcn/domob/ui/main/Logger;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/domob/ui/view/DownloadView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/DownloadView;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->groupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/domob/ui/view/DownloadView;)Lcn/domob/ui/adapter/DownloadManagerListAdapter;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/DownloadView;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->adapter:Lcn/domob/ui/adapter/DownloadManagerListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/domob/ui/view/DownloadView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/DownloadView;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->downloadingItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/domob/ui/view/DownloadView;)Lcn/domob/wall/core/DService;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/DownloadView;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->mDService:Lcn/domob/wall/core/DService;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/domob/ui/view/DownloadView;)Lcn/domob/wall/core/bean/ControlInfo;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/DownloadView;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/domob/ui/view/DownloadView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/DownloadView;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->listenerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcn/domob/ui/view/DownloadView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/DownloadView;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcn/domob/ui/view/DownloadView;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/DownloadView;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->viewStubMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcn/domob/ui/view/DownloadView;[I[I)Z
    .registers 4
    .param p0, "x0"    # Lcn/domob/ui/view/DownloadView;
    .param p1, "x1"    # [I
    .param p2, "x2"    # [I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcn/domob/ui/view/DownloadView;->arrayEquals([I[I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcn/domob/ui/view/DownloadView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/DownloadView;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->childList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcn/domob/ui/view/DownloadView;)Lcn/dm/download/DownLoadManager;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/DownloadView;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->mDownLoadManager:Lcn/dm/download/DownLoadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcn/domob/ui/view/DownloadView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/DownloadView;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->downloadedItemList:Ljava/util/List;

    return-object v0
.end method

.method private arrayEquals([I[I)Z
    .registers 7
    .param p1, "a"    # [I
    .param p2, "b"    # [I

    .prologue
    const/4 v1, 0x0

    .line 392
    .line 393
    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_6

    .line 405
    :cond_5
    :goto_5
    return v1

    :cond_6
    move v0, v1

    move v2, v1

    .line 396
    :goto_8
    array-length v3, p1

    if-ge v0, v3, :cond_15

    .line 397
    aget v2, p1, v0

    aget v3, p2, v0

    if-ne v2, v3, :cond_5

    .line 401
    const/4 v2, 0x1

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    move v1, v2

    goto :goto_5
.end method

.method private initGrop(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/dm/download/bean/DownloadAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcn/dm/download/bean/DownloadAppInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/view/DownloadView;->groupList:Ljava/util/ArrayList;

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/view/DownloadView;->childList:Ljava/util/ArrayList;

    .line 347
    if-eqz p1, :cond_e9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_e9

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/view/DownloadView;->downloadingItemList:Ljava/util/List;

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/view/DownloadView;->downloadedItemList:Ljava/util/List;

    .line 350
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_28
    :goto_28
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/dm/download/bean/DownloadAppInfo;

    .line 351
    const/4 v0, 0x5

    invoke-virtual {v4}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v1

    if-eq v0, v1, :cond_28

    .line 354
    invoke-virtual {v4}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_f4

    .line 362
    iget-object v8, p0, Lcn/domob/ui/view/DownloadView;->downloadingItemList:Ljava/util/List;

    new-instance v0, Lcn/domob/ui/item/DownLoadListItem;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/domob/ui/view/DownloadView;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcn/domob/ui/view/DownloadView;->mDownLoadManager:Lcn/dm/download/DownLoadManager;

    iget-object v6, p0, Lcn/domob/ui/view/DownloadView;->mDService:Lcn/domob/wall/core/DService;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcn/domob/ui/item/DownLoadListItem;-><init>(Landroid/content/Context;Lcn/domob/ui/item/DownLoadListItem$DownloadItemStatusChangeListener;Landroid/os/Handler;Lcn/dm/download/bean/DownloadAppInfo;Lcn/dm/download/DownLoadManager;Lcn/domob/wall/core/DService;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 356
    :pswitch_56
    iget-object v8, p0, Lcn/domob/ui/view/DownloadView;->downloadedItemList:Ljava/util/List;

    new-instance v0, Lcn/domob/ui/item/DownLoadListItem;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/domob/ui/view/DownloadView;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcn/domob/ui/view/DownloadView;->mDownLoadManager:Lcn/dm/download/DownLoadManager;

    iget-object v6, p0, Lcn/domob/ui/view/DownloadView;->mDService:Lcn/domob/wall/core/DService;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcn/domob/ui/item/DownLoadListItem;-><init>(Landroid/content/Context;Lcn/domob/ui/item/DownLoadListItem$DownloadItemStatusChangeListener;Landroid/os/Handler;Lcn/dm/download/bean/DownloadAppInfo;Lcn/dm/download/DownLoadManager;Lcn/domob/wall/core/DService;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 359
    :pswitch_6a
    iget-object v8, p0, Lcn/domob/ui/view/DownloadView;->downloadedItemList:Ljava/util/List;

    new-instance v0, Lcn/domob/ui/item/DownLoadListItem;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/domob/ui/view/DownloadView;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcn/domob/ui/view/DownloadView;->mDownLoadManager:Lcn/dm/download/DownLoadManager;

    iget-object v6, p0, Lcn/domob/ui/view/DownloadView;->mDService:Lcn/domob/wall/core/DService;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcn/domob/ui/item/DownLoadListItem;-><init>(Landroid/content/Context;Lcn/domob/ui/item/DownLoadListItem$DownloadItemStatusChangeListener;Landroid/os/Handler;Lcn/dm/download/bean/DownloadAppInfo;Lcn/dm/download/DownLoadManager;Lcn/domob/wall/core/DService;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 366
    :cond_7e
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->downloadingItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ab

    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->downloadedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ab

    .line 367
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->groupList:Ljava/util/ArrayList;

    const-string v1, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->groupList:Ljava/util/ArrayList;

    const-string v1, "\u5df2\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->childList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView;->downloadingItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->childList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView;->downloadedItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_aa
    :goto_aa
    return-void

    .line 371
    :cond_ab
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->downloadingItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_ca

    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->downloadedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ca

    .line 372
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->groupList:Ljava/util/ArrayList;

    const-string v1, "\u5df2\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->childList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView;->downloadedItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 374
    :cond_ca
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->downloadingItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_aa

    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->downloadedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_aa

    .line 375
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->childList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView;->downloadingItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->groupList:Ljava/util/ArrayList;

    const-string v1, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 379
    :cond_e9
    sget-object v0, Lcn/domob/ui/view/DownloadView;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "***************"

    const-string v2, "\u65e0\u4e0b\u8f7d"

    invoke-virtual {v0, v1, v2}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_aa

    .line 354
    nop

    :pswitch_data_f4
    .packed-switch 0x4
        :pswitch_56
        :pswitch_6a
    .end packed-switch
.end method


# virtual methods
.method public getDownloadView()Landroid/view/View;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 88
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->appInfoList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcn/domob/ui/view/DownloadView;->initGrop(Ljava/util/List;)V

    .line 89
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;

    const-string v2, "l_download_main"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    .line 93
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;

    const-string v1, "rl_back"

    invoke-static {v0, v1}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 97
    new-instance v1, Lcn/domob/ui/view/DownloadView$1;

    invoke-direct {v1, p0}, Lcn/domob/ui/view/DownloadView$1;-><init>(Lcn/domob/ui/view/DownloadView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;

    const-string v1, "expandableListView"

    invoke-static {v0, v1}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ExpandableListView;

    .line 108
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;

    const-string v1, "tv_empty"

    invoke-static {v0, v1}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    invoke-virtual {v7, v0}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 114
    new-instance v0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/ui/view/DownloadView;->mDService:Lcn/domob/wall/core/DService;

    iget-object v3, p0, Lcn/domob/ui/view/DownloadView;->groupList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/domob/ui/view/DownloadView;->childList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/domob/ui/view/DownloadView;->viewStubMap:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lcn/domob/ui/adapter/DownloadManagerListAdapter;-><init>(Landroid/content/Context;Lcn/domob/wall/core/DService;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    iput-object v0, p0, Lcn/domob/ui/view/DownloadView;->adapter:Lcn/domob/ui/adapter/DownloadManagerListAdapter;

    .line 115
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->adapter:Lcn/domob/ui/adapter/DownloadManagerListAdapter;

    invoke-virtual {v7, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 118
    invoke-virtual {v7}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v1

    .line 119
    const/4 v0, 0x0

    :goto_6c
    if-ge v0, v1, :cond_74

    .line 120
    invoke-virtual {v7, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 124
    :cond_74
    invoke-virtual {v7, v8}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 127
    new-instance v0, Lcn/domob/ui/view/DownloadView$2;

    invoke-direct {v0, p0}, Lcn/domob/ui/view/DownloadView$2;-><init>(Lcn/domob/ui/view/DownloadView;)V

    invoke-virtual {v7, v0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 138
    new-instance v0, Lcn/domob/ui/view/DownloadView$3;

    invoke-direct {v0, p0}, Lcn/domob/ui/view/DownloadView$3;-><init>(Lcn/domob/ui/view/DownloadView;)V

    invoke-virtual {v7, v0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 203
    return-object v6
.end method

.method public onAppItemDownloadStatusChanged(Lcn/domob/ui/main/Constants$DownloadStatus;)V
    .registers 4
    .param p1, "status"    # Lcn/domob/ui/main/Constants$DownloadStatus;

    .prologue
    .line 420
    sget-object v0, Lcn/domob/ui/view/DownloadView;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "onAppItemDownloadStatusChanged, do nothing"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public onDMItemDownloadStatusChanged(Lcn/domob/ui/main/Constants$DownloadStatus;)V
    .registers 4
    .param p1, "status"    # Lcn/domob/ui/main/Constants$DownloadStatus;

    .prologue
    .line 411
    sget-object v0, Lcn/domob/ui/view/DownloadView;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "onDMItemDownloadStatusChanged"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 414
    return-void
.end method
