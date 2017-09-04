.class public Lcn/domob/wall/core/DService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/DService$EWallReportType;,
        Lcn/domob/wall/core/DService$OnImageDownload;,
        Lcn/domob/wall/core/DService$ReportUserActionType;,
        Lcn/domob/wall/core/DService$ReportDownLoadType;,
        Lcn/domob/wall/core/DService$ErrorCode;,
        Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;,
        Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;,
        Lcn/domob/wall/core/DService$ReceiveSearchDataListener;,
        Lcn/domob/wall/core/DService$ReceiveListDataListener;,
        Lcn/domob/wall/core/DService$ReceiveDataListener;
    }
.end annotation


# static fields
.field private static d:Ljava/lang/String;


# instance fields
.field private a:Lcn/domob/wall/core/b;

.field private b:Lcn/domob/wall/core/a;

.field private c:Lcn/domob/wall/core/download/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 411
    const-string v0, "online"

    sput-object v0, Lcn/domob/wall/core/DService;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcn/domob/wall/core/b;

    invoke-direct {v0, p1, p2, p3}, Lcn/domob/wall/core/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/b;

    .line 56
    new-instance v0, Lcn/domob/wall/core/a;

    iget-object v1, p0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/b;

    invoke-direct {v0, p1, v1}, Lcn/domob/wall/core/a;-><init>(Landroid/content/Context;Lcn/domob/wall/core/b;)V

    iput-object v0, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/a;

    .line 57
    invoke-static {p1}, Lcn/domob/wall/core/download/k;->a(Landroid/content/Context;)Lcn/domob/wall/core/download/k;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/DService;->c:Lcn/domob/wall/core/download/k;

    .line 58
    return-void
.end method

.method public static getEndpoint()Ljava/lang/String;
    .registers 1

    .prologue
    .line 418
    sget-object v0, Lcn/domob/wall/core/DService;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static setEndpoint(Ljava/lang/String;)V
    .registers 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 414
    sput-object p0, Lcn/domob/wall/core/DService;->d:Ljava/lang/String;

    .line 415
    return-void
.end method


# virtual methods
.method public doClickDetailsPageButtonReport(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 3
    .param p1, "adInfo"    # Lcn/domob/wall/core/bean/AdInfo;

    .prologue
    .line 383
    iget-object v0, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/a;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/a;->d(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 384
    return-void
.end method

.method public doClickWallItemButtonReport(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 3
    .param p1, "adInfo"    # Lcn/domob/wall/core/bean/AdInfo;

    .prologue
    .line 371
    iget-object v0, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/a;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/a;->e(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 372
    return-void
.end method

.method public doClickWallItemReport(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 3
    .param p1, "adInfo"    # Lcn/domob/wall/core/bean/AdInfo;

    .prologue
    .line 359
    iget-object v0, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/a;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/a;->f(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 360
    return-void
.end method

.method public doDownLoadReport(Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V
    .registers 4
    .param p1, "adInfo"    # Lcn/domob/wall/core/bean/AdInfo;
    .param p2, "type"    # Lcn/domob/wall/core/DService$ReportDownLoadType;

    .prologue
    .line 395
    iget-object v0, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/a;

    invoke-virtual {v0, p1, p2}, Lcn/domob/wall/core/a;->a(Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V

    .line 396
    return-void
.end method

.method public doEWallReport(Lcn/domob/wall/core/DService$EWallReportType;)V
    .registers 3
    .param p1, "type"    # Lcn/domob/wall/core/DService$EWallReportType;

    .prologue
    .line 486
    iget-object v0, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/a;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/a;->a(Lcn/domob/wall/core/DService$EWallReportType;)V

    .line 487
    return-void
.end method

.method public doImpReports(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "adInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/domob/wall/core/bean/AdInfo;>;"
    iget-object v0, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/a;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/a;->a(Ljava/util/ArrayList;)V

    .line 408
    return-void
.end method

.method public doUserActionReport(Lcn/domob/wall/core/DService$ReportUserActionType;)V
    .registers 3
    .param p1, "type"    # Lcn/domob/wall/core/DService$ReportUserActionType;

    .prologue
    .line 403
    iget-object v0, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/a;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/a;->a(Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 404
    return-void
.end method

.method public getEView(Landroid/content/Context;)Landroid/view/View;
    .registers 3
    .param p1, "mContex"    # Landroid/content/Context;

    .prologue
    .line 469
    iget-object v0, p0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/b;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/b;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClickDetailsPageButton(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 3
    .param p1, "adInfo"    # Lcn/domob/wall/core/bean/AdInfo;

    .prologue
    .line 345
    iget-object v0, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/a;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/a;->a(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 347
    return-void
.end method

.method public onClickWallItem(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 3
    .param p1, "adInfo"    # Lcn/domob/wall/core/bean/AdInfo;

    .prologue
    .line 319
    iget-object v0, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/a;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/a;->c(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 321
    return-void
.end method

.method public onClickWallItemButton(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 3
    .param p1, "adInfo"    # Lcn/domob/wall/core/bean/AdInfo;

    .prologue
    .line 332
    iget-object v0, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/a;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/a;->b(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 334
    return-void
.end method

.method public requestDataAsyn()V
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/b;

    invoke-virtual {v0}, Lcn/domob/wall/core/b;->a()V

    .line 227
    return-void
.end method

.method public requestDetailsDataAsyn(Ljava/lang/String;)V
    .registers 3
    .param p1, "ids"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/b;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/b;->b(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public requestHotSearchDataAsyn()V
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/b;

    invoke-virtual {v0}, Lcn/domob/wall/core/b;->c()V

    .line 262
    return-void
.end method

.method public requestImage(Ljava/lang/String;Landroid/widget/ImageView;Lcn/domob/wall/core/DService$OnImageDownload;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "img"    # Landroid/widget/ImageView;
    .param p3, "pOnImageDownload"    # Lcn/domob/wall/core/DService$OnImageDownload;

    .prologue
    .line 444
    iget-object v0, p0, Lcn/domob/wall/core/DService;->c:Lcn/domob/wall/core/download/k;

    invoke-virtual {v0, p1, p2, p3}, Lcn/domob/wall/core/download/k;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/domob/wall/core/DService$OnImageDownload;)V

    .line 445
    return-void
.end method

.method public requestListsDataAsyn()V
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/b;

    invoke-virtual {v0}, Lcn/domob/wall/core/b;->b()V

    .line 238
    return-void
.end method

.method public requestSearchDataAsyn(Ljava/lang/String;)V
    .registers 3
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/b;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/b;->a(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public setReceiveDataListener(Lcn/domob/wall/core/DService$ReceiveDataListener;)V
    .registers 3
    .param p1, "receiveDataListener"    # Lcn/domob/wall/core/DService$ReceiveDataListener;

    .prologue
    .line 164
    iget-object v0, p0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/b;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/DService$ReceiveDataListener;)V

    .line 165
    return-void
.end method

.method public setReceiveDetailsDataListener(Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;)V
    .registers 3
    .param p1, "receiveDetailsDataListener"    # Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;

    .prologue
    .line 200
    iget-object v0, p0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/b;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;)V

    .line 201
    return-void
.end method

.method public setReceiveHotSearchDataListener(Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;)V
    .registers 3
    .param p1, "receiveHotSearchDataListener"    # Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;

    .prologue
    .line 213
    iget-object v0, p0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/b;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;)V

    .line 215
    return-void
.end method

.method public setReceiveListDataListener(Lcn/domob/wall/core/DService$ReceiveListDataListener;)V
    .registers 3
    .param p1, "receiveListDataListener"    # Lcn/domob/wall/core/DService$ReceiveListDataListener;

    .prologue
    .line 176
    iget-object v0, p0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/b;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/DService$ReceiveListDataListener;)V

    .line 177
    return-void
.end method

.method public setReceiveSearchDataListener(Lcn/domob/wall/core/DService$ReceiveSearchDataListener;)V
    .registers 3
    .param p1, "receiveSearchDataListener"    # Lcn/domob/wall/core/DService$ReceiveSearchDataListener;

    .prologue
    .line 188
    iget-object v0, p0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/b;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/DService$ReceiveSearchDataListener;)V

    .line 189
    return-void
.end method

.method public setloadImgLock()V
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcn/domob/wall/core/DService;->c:Lcn/domob/wall/core/download/k;

    invoke-virtual {v0}, Lcn/domob/wall/core/download/k;->b()V

    .line 452
    return-void
.end method

.method public setloadImgUnLock()V
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcn/domob/wall/core/DService;->c:Lcn/domob/wall/core/download/k;

    invoke-virtual {v0}, Lcn/domob/wall/core/download/k;->c()V

    .line 459
    return-void
.end method
