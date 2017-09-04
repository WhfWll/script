.class public Lcn/domob/ui/view/SearchView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/ui/item/AppListItem$AppItemStatusChangeListener;
.implements Lcn/domob/ui/item/SearchListItem$SearchItemStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/ui/view/SearchView$a;,
        Lcn/domob/ui/view/SearchView$b;,
        Lcn/domob/ui/view/SearchView$EditextChangeZeroListener;
    }
.end annotation


# static fields
.field protected static final DETAILPAGETYPE:I = 0x1

.field protected static final REFRESH_LIST:I = 0x0

.field private static final SHOW_HOT_SEARCH:I = 0x2

.field private static final SHOW_NET_ERROR:I = 0x5

.field protected static final SHOW_NO_RECOMMAND_RESULT:I = 0x6

.field private static final SHOW_NO_SEARCH_RESULT:I = 0x4

.field private static final SHOW_PROGRESS:I = 0x1

.field private static final SHOW_SEARCH_RESULT:I = 0x3

.field private static mLogger:Lcn/domob/ui/main/Logger;


# instance fields
.field private dlm:Lcn/dm/download/DownLoadManager;

.field private hotString:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/SearchListItem;",
            ">;"
        }
    .end annotation
.end field

.field private listenerName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

.field private mDService:Lcn/domob/wall/core/DService;

.field private mEtSearch:Lcn/domob/ui/view/ClearEditText;

.field private mHandler:Landroid/os/Handler;

.field private mIvBack:Landroid/widget/RelativeLayout;

.field private mKeyWord:Ljava/lang/String;

.field private mLLResult:Landroid/widget/LinearLayout;

.field private mLlHotSearch:Landroid/widget/LinearLayout;

.field private mLvResult:Landroid/widget/ListView;

.field private mLvSearch:Landroid/widget/ListView;

.field private mNoSearchResult:Landroid/widget/LinearLayout;

.field private mNoSearchResultInfo:Landroid/widget/TextView;

.field private mRlNetError:Landroid/widget/RelativeLayout;

.field private mRlProgress:Landroid/widget/RelativeLayout;

.field private mSearchDialog:Landroid/app/Dialog;

.field private mTvRecommend:Landroid/widget/TextView;

.field private pb:Landroid/app/ProgressDialog;

.field private resultListAdapter:Lcn/domob/ui/adapter/SearchResultListAdapter;

.field showHotStringHandler:Landroid/os/Handler;

.field textChangeZeroListener:Lcn/domob/ui/view/SearchView$EditextChangeZeroListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 51
    new-instance v0, Lcn/domob/ui/main/Logger;

    const-class v1, Lcn/domob/ui/view/SearchView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/main/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/view/SearchView;->mLogger:Lcn/domob/ui/main/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/wall/core/DService;Landroid/app/Dialog;Lcn/domob/wall/core/bean/ControlInfo;Lcn/dm/download/DownLoadManager;)V
    .registers 7
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mDService"    # Lcn/domob/wall/core/DService;
    .param p3, "mSearchDialog"    # Landroid/app/Dialog;
    .param p4, "mControlInfo"    # Lcn/domob/wall/core/bean/ControlInfo;
    .param p5, "_dlm"    # Lcn/dm/download/DownLoadManager;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "SearchItem"

    iput-object v0, p0, Lcn/domob/ui/view/SearchView;->listenerName:Ljava/lang/String;

    .line 92
    new-instance v0, Lcn/domob/ui/view/SearchView$1;

    invoke-direct {v0, p0}, Lcn/domob/ui/view/SearchView$1;-><init>(Lcn/domob/ui/view/SearchView;)V

    iput-object v0, p0, Lcn/domob/ui/view/SearchView;->mHandler:Landroid/os/Handler;

    .line 284
    new-instance v0, Lcn/domob/ui/view/SearchView$6;

    invoke-direct {v0, p0}, Lcn/domob/ui/view/SearchView$6;-><init>(Lcn/domob/ui/view/SearchView;)V

    iput-object v0, p0, Lcn/domob/ui/view/SearchView;->textChangeZeroListener:Lcn/domob/ui/view/SearchView$EditextChangeZeroListener;

    .line 429
    new-instance v0, Lcn/domob/ui/view/SearchView$9;

    invoke-direct {v0, p0}, Lcn/domob/ui/view/SearchView$9;-><init>(Lcn/domob/ui/view/SearchView;)V

    iput-object v0, p0, Lcn/domob/ui/view/SearchView;->showHotStringHandler:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcn/domob/ui/view/SearchView;->mDService:Lcn/domob/wall/core/DService;

    .line 86
    iput-object p3, p0, Lcn/domob/ui/view/SearchView;->mSearchDialog:Landroid/app/Dialog;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/view/SearchView;->listItems:Ljava/util/List;

    .line 88
    iput-object p5, p0, Lcn/domob/ui/view/SearchView;->dlm:Lcn/dm/download/DownLoadManager;

    .line 89
    iput-object p4, p0, Lcn/domob/ui/view/SearchView;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcn/domob/ui/view/SearchView;I)V
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcn/domob/ui/view/SearchView;->changeSurface(I)V

    return-void
.end method

.method static synthetic access$100(Lcn/domob/ui/view/SearchView;)Lcn/domob/ui/adapter/SearchResultListAdapter;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->resultListAdapter:Lcn/domob/ui/adapter/SearchResultListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/domob/ui/view/SearchView;)Lcn/domob/wall/core/DService;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mDService:Lcn/domob/wall/core/DService;

    return-object v0
.end method

.method static synthetic access$102(Lcn/domob/ui/view/SearchView;Lcn/domob/ui/adapter/SearchResultListAdapter;)Lcn/domob/ui/adapter/SearchResultListAdapter;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;
    .param p1, "x1"    # Lcn/domob/ui/adapter/SearchResultListAdapter;

    .prologue
    .line 50
    iput-object p1, p0, Lcn/domob/ui/view/SearchView;->resultListAdapter:Lcn/domob/ui/adapter/SearchResultListAdapter;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/domob/ui/view/SearchView;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->pb:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcn/domob/ui/view/SearchView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 50
    iput-object p1, p0, Lcn/domob/ui/view/SearchView;->pb:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcn/domob/ui/view/SearchView;)Lcn/dm/download/DownLoadManager;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->dlm:Lcn/dm/download/DownLoadManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/domob/ui/view/SearchView;)Lcn/domob/wall/core/bean/ControlInfo;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mControlInfo:Lcn/domob/wall/core/bean/ControlInfo;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/domob/ui/view/SearchView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->listenerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Lcn/domob/ui/main/Logger;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcn/domob/ui/view/SearchView;->mLogger:Lcn/domob/ui/main/Logger;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/domob/ui/view/SearchView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/domob/ui/view/SearchView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->listItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcn/domob/ui/view/SearchView;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLvResult:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/domob/ui/view/SearchView;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLvSearch:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/domob/ui/view/SearchView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcn/domob/ui/view/SearchView;Landroid/content/Context;)I
    .registers 3
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcn/domob/ui/view/SearchView;->checkNetStatus(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/domob/ui/view/SearchView;)V
    .registers 1
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcn/domob/ui/view/SearchView;->executeSearch()V

    return-void
.end method

.method static synthetic access$600(Lcn/domob/ui/view/SearchView;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mSearchDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$700(Lcn/domob/ui/view/SearchView;)V
    .registers 1
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcn/domob/ui/view/SearchView;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$800(Lcn/domob/ui/view/SearchView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->hotString:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcn/domob/ui/view/SearchView;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    iput-object p1, p0, Lcn/domob/ui/view/SearchView;->hotString:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcn/domob/ui/view/SearchView;)Lcn/domob/ui/view/ClearEditText;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/SearchView;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mEtSearch:Lcn/domob/ui/view/ClearEditText;

    return-object v0
.end method

.method private changeSurface(I)V
    .registers 7
    .param p1, "surface"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 440
    packed-switch p1, :pswitch_data_100

    .line 511
    :goto_6
    return-void

    .line 444
    :pswitch_7
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mRlProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mRlNetError:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLlHotSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mNoSearchResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLvResult:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_6

    .line 457
    :pswitch_21
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mRlProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mRlNetError:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLlHotSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mNoSearchResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLvResult:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_6

    .line 466
    :pswitch_3b
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mRlProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mRlNetError:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLlHotSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mNoSearchResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLLResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLvResult:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_6

    .line 476
    :pswitch_5a
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mRlProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mRlNetError:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLlHotSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLLResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mNoSearchResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mNoSearchResultInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5443\uff0c\u6ca1\u6709\u627e\u5230\u548c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/view/SearchView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u76f8\u5173\u7684\u5e94\u7528"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLvResult:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mTvRecommend:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 489
    :pswitch_9f
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mRlProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mRlNetError:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLlHotSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLLResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mNoSearchResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mNoSearchResultInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5443\uff0c\u6ca1\u6709\u627e\u5230\u548c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/view/SearchView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u76f8\u5173\u7684\u5e94\u7528"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mTvRecommend:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLvResult:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_6

    .line 502
    :pswitch_e4
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mRlProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mRlNetError:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLlHotSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mNoSearchResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mLvResult:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_6

    .line 440
    nop

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_7
        :pswitch_21
        :pswitch_3b
        :pswitch_5a
        :pswitch_e4
        :pswitch_9f
    .end packed-switch
.end method

.method private checkNetStatus(Landroid/content/Context;)I
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 379
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 383
    if-eqz v0, :cond_2a

    .line 384
    :try_start_10
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_17

    .line 396
    :goto_16
    return v2

    .line 387
    :cond_17
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1e} :catch_28

    move-result v0

    .line 388
    if-ne v1, v0, :cond_24

    move v0, v1

    :goto_22
    move v2, v0

    .line 394
    goto :goto_16

    .line 390
    :cond_24
    if-nez v0, :cond_2a

    .line 391
    const/4 v0, 0x2

    goto :goto_22

    .line 395
    :catch_28
    move-exception v0

    goto :goto_16

    :cond_2a
    move v0, v2

    goto :goto_22
.end method

.method private executeSearch()V
    .registers 4

    .prologue
    .line 297
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mEtSearch:Lcn/domob/ui/view/ClearEditText;

    invoke-virtual {v0}, Lcn/domob/ui/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/view/SearchView;->mKeyWord:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mDService:Lcn/domob/wall/core/DService;

    new-instance v1, Lcn/domob/ui/view/SearchView$7;

    invoke-direct {v1, p0}, Lcn/domob/ui/view/SearchView$7;-><init>(Lcn/domob/ui/view/SearchView;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->setReceiveSearchDataListener(Lcn/domob/wall/core/DService$ReceiveSearchDataListener;)V

    .line 353
    const-string v0, ""

    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 354
    invoke-direct {p0}, Lcn/domob/ui/view/SearchView;->hideSoftInput()V

    .line 356
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/domob/ui/view/SearchView;->changeSurface(I)V

    .line 357
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 358
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mDService:Lcn/domob/wall/core/DService;

    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->requestSearchDataAsyn(Ljava/lang/String;)V

    .line 362
    :goto_37
    return-void

    .line 360
    :cond_38
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    const-string v1, "\u8f93\u5165\u7684\u5173\u952e\u5b57\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_37
.end method

.method private hideSoftInput()V
    .registers 4

    .prologue
    .line 369
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 370
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mEtSearch:Lcn/domob/ui/view/ClearEditText;

    invoke-virtual {v1}, Lcn/domob/ui/view/ClearEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 371
    return-void
.end method

.method private initData()V
    .registers 3

    .prologue
    .line 405
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mDService:Lcn/domob/wall/core/DService;

    new-instance v1, Lcn/domob/ui/view/SearchView$8;

    invoke-direct {v1, p0}, Lcn/domob/ui/view/SearchView$8;-><init>(Lcn/domob/ui/view/SearchView;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->setReceiveHotSearchDataListener(Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;)V

    .line 424
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mDService:Lcn/domob/wall/core/DService;

    invoke-virtual {v0}, Lcn/domob/wall/core/DService;->requestHotSearchDataAsyn()V

    .line 426
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 427
    return-void
.end method


# virtual methods
.method public getSearchView()Landroid/view/View;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 128
    iget-object v0, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    const-string v2, "l_search_main"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 131
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    const-string v2, "et_search"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/domob/ui/view/ClearEditText;

    iput-object v1, p0, Lcn/domob/ui/view/SearchView;->mEtSearch:Lcn/domob/ui/view/ClearEditText;

    .line 132
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    const-string v3, "u_search_icon_left"

    invoke-static {v2, v3}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 135
    const/4 v2, -0x7

    const/4 v3, 0x3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    iget-object v2, p0, Lcn/domob/ui/view/SearchView;->mEtSearch:Lcn/domob/ui/view/ClearEditText;

    invoke-virtual {v2, v1, v6, v6, v6}, Lcn/domob/ui/view/ClearEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mEtSearch:Lcn/domob/ui/view/ClearEditText;

    iget-object v2, p0, Lcn/domob/ui/view/SearchView;->textChangeZeroListener:Lcn/domob/ui/view/SearchView$EditextChangeZeroListener;

    invoke-virtual {v1, v2}, Lcn/domob/ui/view/ClearEditText;->setOnEditextChangeZeroListener(Lcn/domob/ui/view/SearchView$EditextChangeZeroListener;)V

    .line 139
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    const-string v2, "ll_hotsearch_list"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/domob/ui/view/SearchView;->mLlHotSearch:Landroid/widget/LinearLayout;

    .line 141
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    const-string v2, "lv_hotsearch_list"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcn/domob/ui/view/SearchView;->mLvSearch:Landroid/widget/ListView;

    .line 143
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    const-string v2, "tv_recomend"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/domob/ui/view/SearchView;->mTvRecommend:Landroid/widget/TextView;

    .line 145
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    const-string v2, "rl_progress"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/domob/ui/view/SearchView;->mRlProgress:Landroid/widget/RelativeLayout;

    .line 148
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    const-string v2, "rl_net_error"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/domob/ui/view/SearchView;->mRlNetError:Landroid/widget/RelativeLayout;

    .line 150
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mRlNetError:Landroid/widget/RelativeLayout;

    new-instance v2, Lcn/domob/ui/view/SearchView$2;

    invoke-direct {v2, p0}, Lcn/domob/ui/view/SearchView$2;-><init>(Lcn/domob/ui/view/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    const-string v2, "ll_search_result"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/domob/ui/view/SearchView;->mLLResult:Landroid/widget/LinearLayout;

    .line 166
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    const-string v2, "lv_search_result_list"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcn/domob/ui/view/SearchView;->mLvResult:Landroid/widget/ListView;

    .line 167
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mLvResult:Landroid/widget/ListView;

    new-instance v2, Lcn/domob/ui/view/SearchView$b;

    invoke-direct {v2, p0, v6}, Lcn/domob/ui/view/SearchView$b;-><init>(Lcn/domob/ui/view/SearchView;Lcn/domob/ui/view/SearchView$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 169
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    const-string v2, "ll_nosearch_result"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/domob/ui/view/SearchView;->mNoSearchResult:Landroid/widget/LinearLayout;

    .line 170
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    const-string v2, "tv_noresult_info"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/domob/ui/view/SearchView;->mNoSearchResultInfo:Landroid/widget/TextView;

    .line 172
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    const-string v2, "rl_back"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/domob/ui/view/SearchView;->mIvBack:Landroid/widget/RelativeLayout;

    .line 173
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mIvBack:Landroid/widget/RelativeLayout;

    new-instance v2, Lcn/domob/ui/view/SearchView$3;

    invoke-direct {v2, p0}, Lcn/domob/ui/view/SearchView$3;-><init>(Lcn/domob/ui/view/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;

    const-string v2, "btn_search"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 185
    new-instance v2, Lcn/domob/ui/view/SearchView$4;

    invoke-direct {v2, p0}, Lcn/domob/ui/view/SearchView$4;-><init>(Lcn/domob/ui/view/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mLvSearch:Landroid/widget/ListView;

    new-instance v2, Lcn/domob/ui/view/SearchView$5;

    invoke-direct {v2, p0}, Lcn/domob/ui/view/SearchView$5;-><init>(Lcn/domob/ui/view/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    invoke-direct {p0}, Lcn/domob/ui/view/SearchView;->initData()V

    .line 211
    return-object v0
.end method

.method public onAppItemDownloadStatusChanged(Lcn/domob/ui/main/Constants$DownloadStatus;)V
    .registers 4
    .param p1, "status"    # Lcn/domob/ui/main/Constants$DownloadStatus;

    .prologue
    .line 559
    sget-object v0, Lcn/domob/ui/view/SearchView;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "onAppItemDownloadStatusChanged, do nothing"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public onSearchItemDownloadStatusChanged(Lcn/domob/ui/main/Constants$DownloadStatus;)V
    .registers 4
    .param p1, "status"    # Lcn/domob/ui/main/Constants$DownloadStatus;

    .prologue
    .line 568
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 569
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 570
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 571
    iget-object v1, p0, Lcn/domob/ui/view/SearchView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 572
    return-void
.end method
