.class public Lcn/domob/ui/view/AdWallListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/ui/view/AdWallListView$6;,
        Lcn/domob/ui/view/AdWallListView$a;
    }
.end annotation


# static fields
.field private static mLogger:Lcn/domob/ui/main/Logger;


# instance fields
.field private final MORE:Ljava/lang/String;

.field private final RETURNTOP:Ljava/lang/String;

.field private SHOW_NUMBER_ONCE:I

.field private mAdWallListView:Lcn/domob/ui/view/AdWallListView;

.field private mBannerIntervalTime:I

.field mBannerList:Ljava/util/List;
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

.field private mDetailsDialog:Landroid/app/Dialog;

.field private mDisplayBanner:Z

.field private mFooterTextView:Landroid/widget/TextView;

.field private mFooterView:Landroid/view/View;

.field private mGalleryAdapter:Lcn/domob/ui/adapter/HomeGalleryAdapter;

.field private mGalleryPositon:I

.field private mGalleryView:Lcn/domob/ui/view/DGallery;

.field private mHeaderView:Landroid/view/View;

.field mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastItem:I

.field private mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

.field private mListAdapterSet:Z

.field private mPointLinear:Landroid/widget/LinearLayout;

.field private mTask:Lcn/domob/ui/view/AdWallListView$a;

.field private mTimer:Ljava/util/Timer;

.field private viewTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Lcn/domob/ui/main/Logger;

    const-class v1, Lcn/domob/ui/view/AdWallListView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/main/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 41
    const/16 v0, 0xf

    iput v0, p0, Lcn/domob/ui/view/AdWallListView;->SHOW_NUMBER_ONCE:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->viewTag:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapterSet:Z

    .line 56
    iput-boolean v1, p0, Lcn/domob/ui/view/AdWallListView;->mDisplayBanner:Z

    .line 61
    const-string v0, "\u70b9\u51fb\u8fd4\u56de\u9876\u90e8"

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->RETURNTOP:Ljava/lang/String;

    .line 62
    const-string v0, "\u66f4\u591a"

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->MORE:Ljava/lang/String;

    .line 67
    iput v1, p0, Lcn/domob/ui/view/AdWallListView;->mBannerIntervalTime:I

    .line 75
    iput v1, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryPositon:I

    .line 91
    iput-object p1, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcn/domob/ui/view/AdWallListView;->initListView()V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/16 v0, 0xf

    iput v0, p0, Lcn/domob/ui/view/AdWallListView;->SHOW_NUMBER_ONCE:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->viewTag:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapterSet:Z

    .line 56
    iput-boolean v1, p0, Lcn/domob/ui/view/AdWallListView;->mDisplayBanner:Z

    .line 61
    const-string v0, "\u70b9\u51fb\u8fd4\u56de\u9876\u90e8"

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->RETURNTOP:Ljava/lang/String;

    .line 62
    const-string v0, "\u66f4\u591a"

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->MORE:Ljava/lang/String;

    .line 67
    iput v1, p0, Lcn/domob/ui/view/AdWallListView;->mBannerIntervalTime:I

    .line 75
    iput v1, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryPositon:I

    .line 85
    iput-object p1, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Lcn/domob/ui/view/AdWallListView;->initListView()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/16 v0, 0xf

    iput v0, p0, Lcn/domob/ui/view/AdWallListView;->SHOW_NUMBER_ONCE:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->viewTag:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapterSet:Z

    .line 56
    iput-boolean v1, p0, Lcn/domob/ui/view/AdWallListView;->mDisplayBanner:Z

    .line 61
    const-string v0, "\u70b9\u51fb\u8fd4\u56de\u9876\u90e8"

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->RETURNTOP:Ljava/lang/String;

    .line 62
    const-string v0, "\u66f4\u591a"

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->MORE:Ljava/lang/String;

    .line 67
    iput v1, p0, Lcn/domob/ui/view/AdWallListView;->mBannerIntervalTime:I

    .line 75
    iput v1, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryPositon:I

    .line 79
    iput-object p1, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Lcn/domob/ui/view/AdWallListView;->initListView()V

    .line 81
    return-void
.end method

.method static synthetic access$000()Lcn/domob/ui/main/Logger;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcn/domob/ui/view/AdWallListView;Lcn/domob/ui/item/AppListItem;)V
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/AdWallListView;
    .param p1, "x1"    # Lcn/domob/ui/item/AppListItem;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcn/domob/ui/view/AdWallListView;->processItemClick(Lcn/domob/ui/item/AppListItem;)V

    return-void
.end method

.method static synthetic access$200(Lcn/domob/ui/view/AdWallListView;)Lcn/domob/wall/core/DService;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/AdWallListView;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mDService:Lcn/domob/wall/core/DService;

    return-object v0
.end method

.method static synthetic access$300(Lcn/domob/ui/view/AdWallListView;I)V
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/AdWallListView;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcn/domob/ui/view/AdWallListView;->changeHomePointView(I)V

    return-void
.end method

.method static synthetic access$400(Lcn/domob/ui/view/AdWallListView;)Lcn/domob/ui/adapter/AppListAdapter;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/AdWallListView;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcn/domob/ui/view/AdWallListView;II)V
    .registers 3
    .param p0, "x0"    # Lcn/domob/ui/view/AdWallListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcn/domob/ui/view/AdWallListView;->sendListImpReports(II)V

    return-void
.end method

.method static synthetic access$700(Lcn/domob/ui/view/AdWallListView;)Lcn/domob/ui/view/DGallery;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/AdWallListView;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryView:Lcn/domob/ui/view/DGallery;

    return-object v0
.end method

.method static synthetic access$800(Lcn/domob/ui/view/AdWallListView;)Lcn/domob/ui/view/AdWallListView;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/AdWallListView;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mAdWallListView:Lcn/domob/ui/view/AdWallListView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/domob/ui/view/AdWallListView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/AdWallListView;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private changeHomePointView(I)V
    .registers 6
    .param p1, "cur"    # I

    .prologue
    .line 425
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mPointLinear:Landroid/widget/LinearLayout;

    iget v1, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryPositon:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mPointLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 427
    if-eqz v0, :cond_2e

    if-eqz v1, :cond_2e

    .line 428
    check-cast v0, Landroid/widget/ImageView;

    .line 429
    check-cast v1, Landroid/widget/ImageView;

    .line 430
    iget-object v2, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    const-string v3, "u_point_default"

    invoke-static {v2, v3}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 432
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    const-string v2, "u_point_select"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 434
    iput p1, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryPositon:I

    .line 436
    :cond_2e
    return-void
.end method

.method private initHomeGalleryPointView()V
    .registers 6

    .prologue
    .line 400
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mPointLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 401
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/ui/utility/DUtil;->getScreenDensity(Landroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x9

    .line 402
    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/ui/utility/DUtil;->getScreenDensity(Landroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x9

    .line 403
    iget-object v2, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/ui/utility/DUtil;->getScreenDensity(Landroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x9

    .line 404
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 406
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 407
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 410
    const/4 v0, 0x0

    :goto_2a
    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mBannerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5d

    .line 411
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 412
    if-nez v0, :cond_51

    .line 413
    iget-object v2, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    const-string v4, "u_point_select"

    invoke-static {v2, v4}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 419
    :goto_46
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    iget-object v2, p0, Lcn/domob/ui/view/AdWallListView;->mPointLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 416
    :cond_51
    iget-object v2, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    const-string v4, "u_point_default"

    invoke-static {v2, v4}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_46

    .line 422
    :cond_5d
    return-void
.end method

.method private processItemClick(Lcn/domob/ui/item/AppListItem;)V
    .registers 5
    .param p1, "listItem"    # Lcn/domob/ui/item/AppListItem;

    .prologue
    .line 466
    invoke-virtual {p1}, Lcn/domob/ui/item/AppListItem;->getAdInfo()Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mDService:Lcn/domob/wall/core/DService;

    invoke-virtual {p1}, Lcn/domob/ui/item/AppListItem;->getAdInfo()Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/DService;->doClickWallItemReport(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 469
    sget-object v1, Lcn/domob/ui/view/AdWallListView$6;->a:[I

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_2c

    .line 486
    :goto_1c
    return-void

    .line 473
    :pswitch_1d
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mDService:Lcn/domob/wall/core/DService;

    invoke-virtual {p1}, Lcn/domob/ui/item/AppListItem;->getAdInfo()Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->onClickWallItem(Lcn/domob/wall/core/bean/AdInfo;)V

    goto :goto_1c

    .line 480
    :pswitch_27
    invoke-direct {p0, p1}, Lcn/domob/ui/view/AdWallListView;->showDetailsDialogView(Lcn/domob/ui/item/AppListItem;)V

    goto :goto_1c

    .line 469
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1d
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method private refreshBannerList(Ljava/util/List;I)V
    .registers 5
    .param p2, "_bannerIntervalTime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "_bannerList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/ui/item/AppListItem;>;"
    iput-object p1, p0, Lcn/domob/ui/view/AdWallListView;->mBannerList:Ljava/util/List;

    .line 358
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryView:Lcn/domob/ui/view/DGallery;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryAdapter:Lcn/domob/ui/adapter/HomeGalleryAdapter;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mBannerList:Ljava/util/List;

    if-eqz v0, :cond_26

    .line 360
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryView:Lcn/domob/ui/view/DGallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/domob/ui/view/DGallery;->setSelection(I)V

    .line 361
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryAdapter:Lcn/domob/ui/adapter/HomeGalleryAdapter;

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mBannerList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcn/domob/ui/adapter/HomeGalleryAdapter;->setBannerList(Ljava/util/List;)V

    .line 362
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryAdapter:Lcn/domob/ui/adapter/HomeGalleryAdapter;

    invoke-virtual {v0}, Lcn/domob/ui/adapter/HomeGalleryAdapter;->notifyDataSetChanged()V

    .line 363
    invoke-direct {p0, p2}, Lcn/domob/ui/view/AdWallListView;->setAutoScroll(I)V

    .line 364
    invoke-direct {p0}, Lcn/domob/ui/view/AdWallListView;->initHomeGalleryPointView()V

    .line 369
    :cond_26
    return-void
.end method

.method private refreshItemList(Ljava/util/List;)V
    .registers 5
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
    .line 336
    .local p1, "_itemList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/ui/item/AppListItem;>;"
    iput-object p1, p0, Lcn/domob/ui/view/AdWallListView;->mItemList:Ljava/util/List;

    .line 338
    iget-boolean v0, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapterSet:Z

    if-nez v0, :cond_e

    .line 339
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    invoke-virtual {p0, v0}, Lcn/domob/ui/view/AdWallListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapterSet:Z

    .line 343
    :cond_e
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mItemList:Ljava/util/List;

    if-eqz v0, :cond_24

    .line 344
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mItemList:Ljava/util/List;

    iget v2, p0, Lcn/domob/ui/view/AdWallListView;->SHOW_NUMBER_ONCE:I

    invoke-virtual {v0, v1, v2}, Lcn/domob/ui/adapter/AppListAdapter;->setItemList(Ljava/util/List;I)V

    .line 345
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    invoke-virtual {v0}, Lcn/domob/ui/adapter/AppListAdapter;->notifyDataSetChanged()V

    .line 347
    :cond_24
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mFooterTextView:Landroid/widget/TextView;

    const-string v1, "\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual {p0}, Lcn/domob/ui/view/AdWallListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_40

    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_40

    .line 350
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/domob/ui/view/AdWallListView;->removeFooterView(Landroid/view/View;)Z

    .line 352
    :cond_40
    return-void
.end method

.method private sendListImpReports(II)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 256
    sget-object v0, Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to send imp reports,start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/view/AdWallListView;->viewTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 257
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, p1

    .line 258
    :goto_34
    add-int v0, p1, p2

    if-ge v1, v0, :cond_56

    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_56

    .line 259
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/item/AppListItem;

    invoke-virtual {v0}, Lcn/domob/ui/item/AppListItem;->getAdInfo()Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v0

    .line 260
    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->setAdActualPosition(I)V

    .line 261
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_34

    .line 263
    :cond_56
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mDService:Lcn/domob/wall/core/DService;

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/DService;->doImpReports(Ljava/util/ArrayList;)V

    .line 265
    return-void
.end method

.method private setAutoScroll(I)V
    .registers 8
    .param p1, "_bannerIntervalTime"    # I

    .prologue
    const/4 v3, 0x5

    .line 376
    sget-object v0, Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoscroll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 377
    iput p1, p0, Lcn/domob/ui/view/AdWallListView;->mBannerIntervalTime:I

    .line 378
    iget v0, p0, Lcn/domob/ui/view/AdWallListView;->mBannerIntervalTime:I

    if-gt v0, v3, :cond_25

    iget v0, p0, Lcn/domob/ui/view/AdWallListView;->mBannerIntervalTime:I

    if-lez v0, :cond_25

    .line 379
    iput v3, p0, Lcn/domob/ui/view/AdWallListView;->mBannerIntervalTime:I

    .line 382
    :cond_25
    iget v0, p0, Lcn/domob/ui/view/AdWallListView;->mBannerIntervalTime:I

    if-lez v0, :cond_4f

    .line 383
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_32

    .line 385
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 387
    :cond_32
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mTimer:Ljava/util/Timer;

    .line 388
    new-instance v0, Lcn/domob/ui/view/AdWallListView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/domob/ui/view/AdWallListView$a;-><init>(Lcn/domob/ui/view/AdWallListView;Lcn/domob/ui/view/AdWallListView$1;)V

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mTask:Lcn/domob/ui/view/AdWallListView$a;

    .line 389
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mTask:Lcn/domob/ui/view/AdWallListView$a;

    const-wide/16 v2, 0x0

    iget v4, p0, Lcn/domob/ui/view/AdWallListView;->mBannerIntervalTime:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 394
    :cond_4f
    return-void
.end method

.method private setDisplayBanner(Z)V
    .registers 5
    .param p1, "displayBanner"    # Z

    .prologue
    .line 296
    sget-object v0, Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayBanner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 299
    sget-object v0, Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 300
    iget-boolean v0, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapterSet:Z

    if-eqz v0, :cond_44

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_44

    .line 301
    sget-object v0, Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "list adapter is already set, do not add/removew banner view dynamically"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 323
    :goto_43
    return-void

    .line 305
    :cond_44
    iput-boolean p1, p0, Lcn/domob/ui/view/AdWallListView;->mDisplayBanner:Z

    .line 307
    if-eqz p1, :cond_7e

    .line 309
    :try_start_48
    invoke-virtual {p0}, Lcn/domob/ui/view/AdWallListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_53

    .line 310
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/domob/ui/view/AdWallListView;->addHeaderView(Landroid/view/View;)V

    .line 316
    :cond_53
    :goto_53
    sget-object v0, Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "header count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/domob/ui/view/AdWallListView;->getHeaderViewsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6f} :catch_70

    goto :goto_43

    .line 318
    :catch_70
    move-exception v0

    .line 319
    sget-object v1, Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v2, "Error occurs when adding/removing views"

    invoke-virtual {v1, v2}, Lcn/domob/ui/main/Logger;->errorLog(Ljava/lang/String;)V

    .line 320
    sget-object v1, Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;

    invoke-virtual {v1, v0}, Lcn/domob/ui/main/Logger;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_43

    .line 314
    :cond_7e
    :try_start_7e
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/domob/ui/view/AdWallListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_83} :catch_70

    goto :goto_53
.end method

.method private setShowNumber(I)V
    .registers 2
    .param p1, "showNumberOnce"    # I

    .prologue
    .line 327
    if-lez p1, :cond_4

    .line 328
    iput p1, p0, Lcn/domob/ui/view/AdWallListView;->SHOW_NUMBER_ONCE:I

    .line 330
    :cond_4
    return-void
.end method

.method private showDetailsDialogView(Lcn/domob/ui/item/AppListItem;)V
    .registers 5
    .param p1, "listItem"    # Lcn/domob/ui/item/AppListItem;

    .prologue
    .line 493
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mDetailsDialog:Landroid/app/Dialog;

    .line 495
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Lcn/domob/ui/item/AppListItem;->bindDetailsView(Landroid/app/Dialog;)Landroid/view/View;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mDetailsDialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 497
    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 498
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 499
    return-void
.end method


# virtual methods
.method public getDService()Lcn/domob/wall/core/DService;
    .registers 2

    .prologue
    .line 504
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mDService:Lcn/domob/wall/core/DService;

    return-object v0
.end method

.method public getGalleryAdapter()Lcn/domob/ui/adapter/HomeGalleryAdapter;
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryAdapter:Lcn/domob/ui/adapter/HomeGalleryAdapter;

    return-object v0
.end method

.method public getListAdapter()Lcn/domob/ui/adapter/AppListAdapter;
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    return-object v0
.end method

.method public getViewTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->viewTag:Ljava/lang/String;

    return-object v0
.end method

.method public initListView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 96
    sget-object v0, Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "initListView"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 97
    iput-object p0, p0, Lcn/domob/ui/view/AdWallListView;->mAdWallListView:Lcn/domob/ui/view/AdWallListView;

    .line 99
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    const-string v2, "l_home_list_footer"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mFooterView:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mFooterView:Landroid/view/View;

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    const-string v2, "more_textview"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mFooterTextView:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mFooterTextView:Landroid/widget/TextView;

    const-string v1, "\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/domob/ui/view/AdWallListView;->addFooterView(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0, p0}, Lcn/domob/ui/view/AdWallListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 110
    new-instance v0, Lcn/domob/ui/view/AdWallListView$1;

    invoke-direct {v0, p0}, Lcn/domob/ui/view/AdWallListView$1;-><init>(Lcn/domob/ui/view/AdWallListView;)V

    invoke-virtual {p0, v0}, Lcn/domob/ui/view/AdWallListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    const-string v2, "l_home_banner"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mHeaderView:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mHeaderView:Landroid/view/View;

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    const-string v2, "gallery1"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/view/DGallery;

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryView:Lcn/domob/ui/view/DGallery;

    .line 132
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mHeaderView:Landroid/view/View;

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    const-string v2, "gallery_point_linear"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mPointLinear:Landroid/widget/LinearLayout;

    .line 136
    new-instance v0, Lcn/domob/ui/adapter/HomeGalleryAdapter;

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/domob/ui/adapter/HomeGalleryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryAdapter:Lcn/domob/ui/adapter/HomeGalleryAdapter;

    .line 137
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryView:Lcn/domob/ui/view/DGallery;

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryAdapter:Lcn/domob/ui/adapter/HomeGalleryAdapter;

    invoke-virtual {v0, v1}, Lcn/domob/ui/view/DGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 140
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryView:Lcn/domob/ui/view/DGallery;

    new-instance v1, Lcn/domob/ui/view/AdWallListView$2;

    invoke-direct {v1, p0}, Lcn/domob/ui/view/AdWallListView$2;-><init>(Lcn/domob/ui/view/AdWallListView;)V

    invoke-virtual {v0, v1}, Lcn/domob/ui/view/DGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mGalleryView:Lcn/domob/ui/view/DGallery;

    new-instance v1, Lcn/domob/ui/view/AdWallListView$3;

    invoke-direct {v1, p0}, Lcn/domob/ui/view/AdWallListView$3;-><init>(Lcn/domob/ui/view/AdWallListView;)V

    invoke-virtual {v0, v1}, Lcn/domob/ui/view/DGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 183
    new-instance v0, Lcn/domob/ui/adapter/AppListAdapter;

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/domob/ui/adapter/AppListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    .line 184
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    new-instance v1, Lcn/domob/ui/view/AdWallListView$4;

    invoke-direct {v1, p0}, Lcn/domob/ui/view/AdWallListView$4;-><init>(Lcn/domob/ui/view/AdWallListView;)V

    invoke-virtual {v0, v1}, Lcn/domob/ui/adapter/AppListAdapter;->setListItemShowListener(Lcn/domob/ui/adapter/AppListAdapter$ListItemShowListener;)V

    .line 195
    return-void
.end method

.method public isDisplayBanner()Z
    .registers 2

    .prologue
    .line 457
    iget-boolean v0, p0, Lcn/domob/ui/view/AdWallListView;->mDisplayBanner:Z

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 201
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcn/domob/ui/view/AdWallListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/domob/ui/view/AdWallListView;->mLastItem:I

    .line 202
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 206
    sget-object v0, Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/ui/view/AdWallListView;->mLastItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 208
    iget v0, p0, Lcn/domob/ui/view/AdWallListView;->mLastItem:I

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    invoke-virtual {v1}, Lcn/domob/ui/adapter/AppListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_9a

    if-nez p2, :cond_9a

    .line 211
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    invoke-virtual {v0}, Lcn/domob/ui/adapter/AppListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcn/domob/ui/view/AdWallListView;->SHOW_NUMBER_ONCE:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    invoke-virtual {v1}, Lcn/domob/ui/adapter/AppListAdapter;->getItemSize()I

    move-result v1

    if-lt v0, v1, :cond_9b

    .line 212
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    invoke-virtual {v1}, Lcn/domob/ui/adapter/AppListAdapter;->getItemSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/adapter/AppListAdapter;->setCount(I)V

    .line 213
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mFooterTextView:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u8fd4\u56de\u9876\u90e8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mDService:Lcn/domob/wall/core/DService;

    if-eqz v0, :cond_8b

    iget v0, p0, Lcn/domob/ui/view/AdWallListView;->mLastItem:I

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    invoke-virtual {v1}, Lcn/domob/ui/adapter/AppListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_8b

    .line 217
    sget-object v0, Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "send PGDN report"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mDService:Lcn/domob/wall/core/DService;

    sget-object v1, Lcn/domob/wall/core/DService$ReportUserActionType;->PGDN:Lcn/domob/wall/core/DService$ReportUserActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doUserActionReport(Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 219
    iget v0, p0, Lcn/domob/ui/view/AdWallListView;->mLastItem:I

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    invoke-virtual {v1}, Lcn/domob/ui/adapter/AppListAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcn/domob/ui/view/AdWallListView;->mLastItem:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcn/domob/ui/view/AdWallListView;->sendListImpReports(II)V

    .line 221
    :cond_8b
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mFooterView:Landroid/view/View;

    new-instance v1, Lcn/domob/ui/view/AdWallListView$5;

    invoke-direct {v1, p0}, Lcn/domob/ui/view/AdWallListView$5;-><init>(Lcn/domob/ui/view/AdWallListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    :cond_95
    :goto_95
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    invoke-virtual {v0}, Lcn/domob/ui/adapter/AppListAdapter;->notifyDataSetChanged()V

    .line 248
    :cond_9a
    return-void

    .line 233
    :cond_9b
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mFooterTextView:Landroid/widget/TextView;

    const-string v1, "\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    invoke-virtual {v0}, Lcn/domob/ui/adapter/AppListAdapter;->getCount()I

    move-result v0

    .line 235
    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    iget v2, p0, Lcn/domob/ui/view/AdWallListView;->SHOW_NUMBER_ONCE:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcn/domob/ui/adapter/AppListAdapter;->setCount(I)V

    .line 237
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mDService:Lcn/domob/wall/core/DService;

    if-eqz v0, :cond_95

    .line 238
    sget-object v0, Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "send PGDN report"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView;->mDService:Lcn/domob/wall/core/DService;

    sget-object v1, Lcn/domob/wall/core/DService$ReportUserActionType;->PGDN:Lcn/domob/wall/core/DService$ReportUserActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doUserActionReport(Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 240
    iget v0, p0, Lcn/domob/ui/view/AdWallListView;->mLastItem:I

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;

    invoke-virtual {v1}, Lcn/domob/ui/adapter/AppListAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcn/domob/ui/view/AdWallListView;->mLastItem:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcn/domob/ui/view/AdWallListView;->sendListImpReports(II)V

    goto :goto_95
.end method

.method public refreshItemListWithBanner(Ljava/util/List;ILjava/util/List;I)V
    .registers 6
    .param p2, "showNumberOnce"    # I
    .param p4, "_bannerIntervalTime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "_itemList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/ui/item/AppListItem;>;"
    .local p3, "_bannerList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/ui/item/AppListItem;>;"
    invoke-direct {p0, p2}, Lcn/domob/ui/view/AdWallListView;->setShowNumber(I)V

    .line 275
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/domob/ui/view/AdWallListView;->setDisplayBanner(Z)V

    .line 276
    invoke-direct {p0, p1}, Lcn/domob/ui/view/AdWallListView;->refreshItemList(Ljava/util/List;)V

    .line 277
    invoke-direct {p0, p3, p4}, Lcn/domob/ui/view/AdWallListView;->refreshBannerList(Ljava/util/List;I)V

    .line 279
    return-void
.end method

.method public refreshItemListWithNoBanner(Ljava/util/List;I)V
    .registers 4
    .param p2, "showNumberOnce"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "_itemList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/ui/item/AppListItem;>;"
    invoke-direct {p0, p2}, Lcn/domob/ui/view/AdWallListView;->setShowNumber(I)V

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/domob/ui/view/AdWallListView;->setDisplayBanner(Z)V

    .line 289
    invoke-direct {p0, p1}, Lcn/domob/ui/view/AdWallListView;->refreshItemList(Ljava/util/List;)V

    .line 291
    return-void
.end method

.method public setDService(Lcn/domob/wall/core/DService;)V
    .registers 2
    .param p1, "mDService"    # Lcn/domob/wall/core/DService;

    .prologue
    .line 508
    iput-object p1, p0, Lcn/domob/ui/view/AdWallListView;->mDService:Lcn/domob/wall/core/DService;

    .line 509
    return-void
.end method

.method public setViewTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "_viewTag"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Lcn/domob/ui/view/AdWallListView;->viewTag:Ljava/lang/String;

    .line 519
    return-void
.end method
