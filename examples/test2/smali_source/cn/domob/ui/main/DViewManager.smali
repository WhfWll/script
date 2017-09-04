.class public Lcn/domob/ui/main/DViewManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/ui/main/DViewAdModel$AdDataListener;
.implements Lcn/domob/ui/main/Home$HomeViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/ui/main/DViewManager$a;,
        Lcn/domob/ui/main/DViewManager$GetDataListener;
    }
.end annotation


# static fields
.field private static final CENTER:I = 0x1

.field private static final CENTER_VERTICAL:I = 0x0

.field private static final FETCH_AD_FAILED:I = 0x1

.field private static final FETCH_AD_SUCCESS:I = 0x0

.field private static final HANDLEURL:Ljava/lang/String; = "mHandleUrl"

.field private static final LAST_REQUEST_NET_TIME:Ljava/lang/String; = "lastRequestNetTime"

.field private static final MTIMEOUT:Ljava/lang/String; = "mTimeout"

.field private static mLogger:Lcn/domob/ui/main/Logger;


# instance fields
.field private adResp:Lcn/domob/ui/main/AdResp;

.field private context:Landroid/content/Context;

.field private dViewAdModel:Lcn/domob/ui/main/DViewAdModel;

.field private handleView:Landroid/view/View;

.field private handler:Lcn/domob/ui/main/DViewManager$a;

.field private home:Lcn/domob/ui/main/Home;

.field private homeView:Landroid/view/View;

.field private isDataReady:Z

.field private mDService:Lcn/domob/wall/core/DService;

.field private mGetDataListener:Lcn/domob/ui/main/DViewManager$GetDataListener;

.field private mHandleView:Landroid/view/ViewGroup;

.field private mHandleViewGroup:Landroid/view/ViewGroup;

.field private mHomeDialog:Landroid/app/Dialog;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcn/domob/ui/main/Logger;

    const-class v1, Lcn/domob/ui/main/DViewManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/main/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/wall/core/DService;)V
    .registers 6
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_dService"    # Lcn/domob/wall/core/DService;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v2, p0, Lcn/domob/ui/main/DViewManager;->isDataReady:Z

    .line 44
    iput-object v0, p0, Lcn/domob/ui/main/DViewManager;->mHandleViewGroup:Landroid/view/ViewGroup;

    .line 47
    iput-object v0, p0, Lcn/domob/ui/main/DViewManager;->mHandleView:Landroid/view/ViewGroup;

    .line 77
    iput-object p2, p0, Lcn/domob/ui/main/DViewManager;->mDService:Lcn/domob/wall/core/DService;

    .line 78
    iput-object p1, p0, Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;

    .line 80
    new-instance v0, Lcn/domob/ui/main/AdResp;

    invoke-direct {v0}, Lcn/domob/ui/main/AdResp;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/main/DViewManager;->adResp:Lcn/domob/ui/main/AdResp;

    .line 81
    new-instance v0, Lcn/domob/ui/main/DViewAdModel;

    iget-object v1, p0, Lcn/domob/ui/main/DViewManager;->mDService:Lcn/domob/wall/core/DService;

    invoke-direct {v0, v1}, Lcn/domob/ui/main/DViewAdModel;-><init>(Lcn/domob/wall/core/DService;)V

    iput-object v0, p0, Lcn/domob/ui/main/DViewManager;->dViewAdModel:Lcn/domob/ui/main/DViewAdModel;

    .line 82
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->dViewAdModel:Lcn/domob/ui/main/DViewAdModel;

    invoke-virtual {v0, p0}, Lcn/domob/ui/main/DViewAdModel;->setReceiveAdDataListener(Lcn/domob/ui/main/DViewAdModel$AdDataListener;)V

    .line 83
    new-instance v0, Lcn/domob/ui/main/DViewManager$a;

    invoke-direct {v0, p0}, Lcn/domob/ui/main/DViewManager$a;-><init>(Lcn/domob/ui/main/DViewManager;)V

    iput-object v0, p0, Lcn/domob/ui/main/DViewManager;->handler:Lcn/domob/ui/main/DViewManager$a;

    .line 84
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;

    const-string v1, "domob"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/main/DViewManager;->sp:Landroid/content/SharedPreferences;

    .line 85
    invoke-direct {p0}, Lcn/domob/ui/main/DViewManager;->initView()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Lcn/domob/wall/core/DService;

    invoke-direct {v0, p1, p2, p3}, Lcn/domob/wall/core/DService;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcn/domob/ui/main/DViewManager;-><init>(Landroid/content/Context;Lcn/domob/wall/core/DService;)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcn/domob/ui/main/DViewManager;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/DViewManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->handleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcn/domob/ui/main/DViewManager;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/DViewManager;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/domob/ui/main/DViewManager;->handleView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcn/domob/ui/main/DViewManager;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/DViewManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/domob/ui/main/DViewManager;)Lcn/domob/ui/main/Home;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/DViewManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->home:Lcn/domob/ui/main/Home;

    return-object v0
.end method

.method static synthetic access$200()Lcn/domob/ui/main/Logger;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcn/domob/ui/main/DViewManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/DViewManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcn/domob/ui/main/DViewManager;)Lcn/domob/wall/core/DService;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/DViewManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->mDService:Lcn/domob/wall/core/DService;

    return-object v0
.end method

.method static synthetic access$500(Lcn/domob/ui/main/DViewManager;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/DViewManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->mHandleView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcn/domob/ui/main/DViewManager;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/DViewManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->mHandleViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcn/domob/ui/main/DViewManager;I)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3
    .param p0, "x0"    # Lcn/domob/ui/main/DViewManager;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcn/domob/ui/main/DViewManager;->getHandleViewLayoutParams(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcn/domob/ui/main/DViewManager;)Lcn/domob/ui/main/DViewManager$GetDataListener;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/DViewManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->mGetDataListener:Lcn/domob/ui/main/DViewManager$GetDataListener;

    return-object v0
.end method

.method static synthetic access$900(Lcn/domob/ui/main/DViewManager;)Lcn/domob/ui/main/AdResp;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/main/DViewManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->adResp:Lcn/domob/ui/main/AdResp;

    return-object v0
.end method

.method private getHandleViewLayoutParams(I)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 6
    .param p1, "locationType"    # I

    .prologue
    const/16 v3, 0xf

    const/4 v1, -0x2

    const/4 v2, -0x1

    .line 278
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 281
    packed-switch p1, :pswitch_data_20

    .line 299
    :goto_c
    return-object v0

    .line 284
    :pswitch_d
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 286
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_c

    .line 291
    :pswitch_16
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 293
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_c

    .line 281
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_16
        :pswitch_d
    .end packed-switch
.end method

.method private initHomeDialogView()V
    .registers 4

    .prologue
    .line 305
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;

    const v2, 0x1030010

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/ui/main/DViewManager;->mHomeDialog:Landroid/app/Dialog;

    .line 307
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->mHomeDialog:Landroid/app/Dialog;

    new-instance v1, Lcn/domob/ui/main/DViewManager$2;

    invoke-direct {v1, p0}, Lcn/domob/ui/main/DViewManager$2;-><init>(Lcn/domob/ui/main/DViewManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 323
    return-void
.end method

.method private initView()V
    .registers 4

    .prologue
    .line 141
    new-instance v0, Lcn/domob/ui/main/Home;

    iget-object v1, p0, Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/ui/main/DViewManager;->mDService:Lcn/domob/wall/core/DService;

    invoke-direct {v0, v1, v2}, Lcn/domob/ui/main/Home;-><init>(Landroid/content/Context;Lcn/domob/wall/core/DService;)V

    iput-object v0, p0, Lcn/domob/ui/main/DViewManager;->home:Lcn/domob/ui/main/Home;

    .line 142
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initHomeView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/DViewManager;->home:Lcn/domob/ui/main/Home;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->home:Lcn/domob/ui/main/Home;

    invoke-virtual {v0, p0}, Lcn/domob/ui/main/Home;->setHomeViewListener(Lcn/domob/ui/main/Home$HomeViewListener;)V

    .line 144
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->home:Lcn/domob/ui/main/Home;

    invoke-virtual {v0}, Lcn/domob/ui/main/Home;->getHomeView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/main/DViewManager;->homeView:Landroid/view/View;

    .line 147
    invoke-direct {p0}, Lcn/domob/ui/main/DViewManager;->initHomeDialogView()V

    .line 148
    return-void
.end method

.method private isDataExpired()Z
    .registers 12

    .prologue
    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 331
    iget-object v2, p0, Lcn/domob/ui/main/DViewManager;->sp:Landroid/content/SharedPreferences;

    const-string v3, "mTimeout"

    const-wide/32 v4, 0x5265c00

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 333
    iget-object v4, p0, Lcn/domob/ui/main/DViewManager;->sp:Landroid/content/SharedPreferences;

    const-string v5, "lastRequestNetTime"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 334
    sget-object v6, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v7, "current:%d lastRequest:%d timeout:%d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 336
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_49

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_49

    .line 337
    const/4 v0, 0x1

    .line 339
    :goto_48
    return v0

    :cond_49
    const/4 v0, 0x0

    goto :goto_48
.end method

.method private loadData()V
    .registers 5

    .prologue
    .line 164
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    const-string v1, "lastRequestNetTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->home:Lcn/domob/ui/main/Home;

    invoke-virtual {v0}, Lcn/domob/ui/main/Home;->showProgressBar()V

    .line 170
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Start to fetch data"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->ptLog(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->dViewAdModel:Lcn/domob/ui/main/DViewAdModel;

    invoke-virtual {v0}, Lcn/domob/ui/main/DViewAdModel;->requestAdData()V

    .line 173
    return-void
.end method

.method private showDownloadDialog()V
    .registers 3

    .prologue
    .line 373
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/ui/main/DViewManager$4;

    invoke-direct {v1, p0}, Lcn/domob/ui/main/DViewManager$4;-><init>(Lcn/domob/ui/main/DViewManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 402
    return-void
.end method

.method private showHandleView()V
    .registers 3

    .prologue
    .line 236
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/ui/main/DViewManager$1;

    invoke-direct {v1, p0}, Lcn/domob/ui/main/DViewManager$1;-><init>(Lcn/domob/ui/main/DViewManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method

.method private showSearchDialog()V
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/ui/main/DViewManager$3;

    invoke-direct {v1, p0}, Lcn/domob/ui/main/DViewManager$3;-><init>(Lcn/domob/ui/main/DViewManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 6
    .param p1, "paramViewGroup"    # Landroid/view/ViewGroup;
    .param p2, "paramHandleView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, -0x1

    .line 221
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Start to add handle view"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;

    const-string v1, "l_handle"

    invoke-static {v0, v1}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1c

    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;

    const-string v1, "l_home"

    invoke-static {v0, v1}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_26

    .line 223
    :cond_1c
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "\u5c0a\u656c\u7684\u5f00\u53d1\u8005\uff1a"

    const-string v2, "\u8bf7\u53c2\u7167\u6587\u6863\u6dfb\u52a0res\u4e0b\u8d44\u6e90"

    invoke-virtual {v0, v1, v2}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    :goto_25
    return-void

    .line 226
    :cond_26
    iput-object p1, p0, Lcn/domob/ui/main/DViewManager;->mHandleViewGroup:Landroid/view/ViewGroup;

    .line 227
    iput-object p2, p0, Lcn/domob/ui/main/DViewManager;->mHandleView:Landroid/view/ViewGroup;

    .line 228
    invoke-direct {p0}, Lcn/domob/ui/main/DViewManager;->showHandleView()V

    goto :goto_25
.end method

.method public onBackButtonClicked()V
    .registers 3

    .prologue
    .line 411
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "backButtonClicked"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->mHomeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_10

    .line 413
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->mHomeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 416
    :cond_10
    return-void
.end method

.method public onDownloadToolButtonClicked()V
    .registers 3

    .prologue
    .line 435
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "downloader clicked"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 436
    invoke-direct {p0}, Lcn/domob/ui/main/DViewManager;->showDownloadDialog()V

    .line 437
    return-void
.end method

.method public onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
    .registers 5
    .param p1, "errorCode"    # Lcn/domob/wall/core/DService$ErrorCode;
    .param p2, "errorContent"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->home:Lcn/domob/ui/main/Home;

    invoke-virtual {v0}, Lcn/domob/ui/main/Home;->getDownloadManager()Lcn/dm/download/DownLoadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/dm/download/DownLoadManager;->clearTask()V

    .line 480
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Fail to receive ad data"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->errorLog(Ljava/lang/String;)V

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/ui/main/DViewManager;->isDataReady:Z

    .line 482
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->mGetDataListener:Lcn/domob/ui/main/DViewManager$GetDataListener;

    if-eqz v0, :cond_1c

    .line 483
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->mGetDataListener:Lcn/domob/ui/main/DViewManager$GetDataListener;

    invoke-interface {v0, p1, p2}, Lcn/domob/ui/main/DViewManager$GetDataListener;->onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    .line 485
    :cond_1c
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->handler:Lcn/domob/ui/main/DViewManager$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/DViewManager$a;->sendEmptyMessage(I)Z

    .line 486
    return-void
.end method

.method public onRefreshButtonClicked()V
    .registers 3

    .prologue
    .line 428
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "refreshButtonClicked"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 429
    invoke-direct {p0}, Lcn/domob/ui/main/DViewManager;->loadData()V

    .line 431
    return-void
.end method

.method public onSearchButtonClicked()V
    .registers 3

    .prologue
    .line 421
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "searchButtonClicked"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 422
    invoke-direct {p0}, Lcn/domob/ui/main/DViewManager;->showSearchDialog()V

    .line 424
    return-void
.end method

.method public onSuccessReceiveData(Lcn/domob/ui/main/AdResp;)V
    .registers 6
    .param p1, "resp"    # Lcn/domob/ui/main/AdResp;

    .prologue
    .line 445
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->home:Lcn/domob/ui/main/Home;

    invoke-virtual {v0}, Lcn/domob/ui/main/Home;->getDownloadManager()Lcn/dm/download/DownLoadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/dm/download/DownLoadManager;->clearTask()V

    .line 446
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Receive ad data"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 447
    iput-object p1, p0, Lcn/domob/ui/main/DViewManager;->adResp:Lcn/domob/ui/main/AdResp;

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/ui/main/DViewManager;->isDataReady:Z

    .line 451
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 452
    const-string v1, "mTimeout"

    invoke-virtual {p1}, Lcn/domob/ui/main/AdResp;->getControlInfo()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/wall/core/bean/ControlInfo;->getTimeout()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 453
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 456
    invoke-virtual {p1}, Lcn/domob/ui/main/AdResp;->getControlInfo()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/ControlInfo;->isChangeEnterPic()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-virtual {p1}, Lcn/domob/ui/main/AdResp;->getControlInfo()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/ControlInfo;->getEnterPicURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 457
    const-string v1, "mHandleUrl"

    invoke-virtual {p1}, Lcn/domob/ui/main/AdResp;->getControlInfo()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/wall/core/bean/ControlInfo;->getEnterPicURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 458
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 466
    :goto_4f
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->mGetDataListener:Lcn/domob/ui/main/DViewManager$GetDataListener;

    if-eqz v0, :cond_60

    .line 467
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->mGetDataListener:Lcn/domob/ui/main/DViewManager$GetDataListener;

    invoke-virtual {p1}, Lcn/domob/ui/main/AdResp;->getControlInfo()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/ControlInfo;->getNumberOfNewAd()I

    move-result v1

    invoke-interface {v0, v1}, Lcn/domob/ui/main/DViewManager$GetDataListener;->onSuccessReceiveData(I)V

    .line 473
    :cond_60
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Fetch data finish"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->ptLog(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->handler:Lcn/domob/ui/main/DViewManager$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/DViewManager$a;->sendEmptyMessage(I)Z

    .line 475
    return-void

    .line 462
    :cond_6e
    const-string v1, "mHandleUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 463
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4f
.end method

.method public preLoad()V
    .registers 3

    .prologue
    .line 157
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Start to preLoad"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcn/domob/ui/main/DViewManager;->loadData()V

    .line 159
    return-void
.end method

.method public setAddViewListener(Lcn/domob/ui/main/DViewManager$GetDataListener;)V
    .registers 2
    .param p1, "pGetDataListener"    # Lcn/domob/ui/main/DViewManager$GetDataListener;

    .prologue
    .line 133
    iput-object p1, p0, Lcn/domob/ui/main/DViewManager;->mGetDataListener:Lcn/domob/ui/main/DViewManager$GetDataListener;

    .line 134
    return-void
.end method

.method public showWall()V
    .registers 3

    .prologue
    .line 182
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Start to show wall"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->mHomeDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/ui/main/DViewManager;->homeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->mHomeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 186
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->mDService:Lcn/domob/wall/core/DService;

    sget-object v1, Lcn/domob/wall/core/DService$ReportUserActionType;->ENTRY:Lcn/domob/wall/core/DService$ReportUserActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doUserActionReport(Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 188
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->home:Lcn/domob/ui/main/Home;

    invoke-virtual {v0}, Lcn/domob/ui/main/Home;->isShowEWallEntry()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 189
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Send report: E_ENTRY_SHOW"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager;->mDService:Lcn/domob/wall/core/DService;

    sget-object v1, Lcn/domob/wall/core/DService$EWallReportType;->E_ENTRY_SHOW:Lcn/domob/wall/core/DService$EWallReportType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doEWallReport(Lcn/domob/wall/core/DService$EWallReportType;)V

    .line 195
    :cond_30
    iget-boolean v0, p0, Lcn/domob/ui/main/DViewManager;->isDataReady:Z

    if-eqz v0, :cond_3a

    invoke-direct {p0}, Lcn/domob/ui/main/DViewManager;->isDataExpired()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 196
    :cond_3a
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Need to request new data"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcn/domob/ui/main/DViewManager;->loadData()V

    .line 204
    :goto_44
    return-void

    .line 200
    :cond_45
    sget-object v0, Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "Data is ready and not expired"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    goto :goto_44
.end method
