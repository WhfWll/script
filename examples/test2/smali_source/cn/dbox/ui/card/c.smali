.class public Lcn/dbox/ui/card/c;
.super Landroid/widget/GridView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/card/c$a;
    }
.end annotation


# instance fields
.field private mGridViewScrollListener:Lcn/dbox/ui/card/c$a;

.field private mLastVisiblePosition:I

.field mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcn/dbox/ui/card/c;->mLastVisiblePosition:I

    .line 65
    new-instance v0, Lcn/dbox/ui/card/c$1;

    invoke-direct {v0, p0}, Lcn/dbox/ui/card/c$1;-><init>(Lcn/dbox/ui/card/c;)V

    iput-object v0, p0, Lcn/dbox/ui/card/c;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 24
    invoke-virtual {p0, p1}, Lcn/dbox/ui/card/c;->initView(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcn/dbox/ui/card/c;->mLastVisiblePosition:I

    .line 65
    new-instance v0, Lcn/dbox/ui/card/c$1;

    invoke-direct {v0, p0}, Lcn/dbox/ui/card/c$1;-><init>(Lcn/dbox/ui/card/c;)V

    iput-object v0, p0, Lcn/dbox/ui/card/c;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 36
    invoke-virtual {p0, p1}, Lcn/dbox/ui/card/c;->initView(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcn/dbox/ui/card/c;->mLastVisiblePosition:I

    .line 65
    new-instance v0, Lcn/dbox/ui/card/c$1;

    invoke-direct {v0, p0}, Lcn/dbox/ui/card/c$1;-><init>(Lcn/dbox/ui/card/c;)V

    iput-object v0, p0, Lcn/dbox/ui/card/c;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 30
    invoke-virtual {p0, p1}, Lcn/dbox/ui/card/c;->initView(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcn/dbox/ui/card/c;)I
    .registers 2
    .param p0, "x0"    # Lcn/dbox/ui/card/c;

    .prologue
    .line 13
    iget v0, p0, Lcn/dbox/ui/card/c;->mLastVisiblePosition:I

    return v0
.end method

.method static synthetic access$002(Lcn/dbox/ui/card/c;I)I
    .registers 2
    .param p0, "x0"    # Lcn/dbox/ui/card/c;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcn/dbox/ui/card/c;->mLastVisiblePosition:I

    return p1
.end method

.method static synthetic access$100(Lcn/dbox/ui/card/c;)Lcn/dbox/ui/card/c$a;
    .registers 2
    .param p0, "x0"    # Lcn/dbox/ui/card/c;

    .prologue
    .line 13
    iget-object v0, p0, Lcn/dbox/ui/card/c;->mGridViewScrollListener:Lcn/dbox/ui/card/c$a;

    return-object v0
.end method


# virtual methods
.method public getGridViewLastVisiblePosition()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcn/dbox/ui/card/c;->mLastVisiblePosition:I

    if-nez v0, :cond_a

    .line 60
    invoke-virtual {p0}, Lcn/dbox/ui/card/c;->getLastVisiblePosition()I

    move-result v0

    iput v0, p0, Lcn/dbox/ui/card/c;->mLastVisiblePosition:I

    .line 62
    :cond_a
    iget v0, p0, Lcn/dbox/ui/card/c;->mLastVisiblePosition:I

    return v0
.end method

.method public initView(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 40
    const v0, -0xc0a08

    invoke-virtual {p0, v0}, Lcn/dbox/ui/card/c;->setBackgroundColor(I)V

    .line 41
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 44
    invoke-virtual {p0, v0}, Lcn/dbox/ui/card/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-virtual {p0, v2}, Lcn/dbox/ui/card/c;->setCacheColorHint(I)V

    .line 46
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/dbox/ui/card/c;->setStretchMode(I)V

    .line 47
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcn/dbox/ui/card/c;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object v0, p0, Lcn/dbox/ui/card/c;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/card/c;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 50
    invoke-virtual {p0, v3}, Lcn/dbox/ui/card/c;->setVerticalScrollBarEnabled(Z)V

    .line 51
    return-void
.end method

.method public setOnGridViewScrollListener(Lcn/dbox/ui/card/c$a;)V
    .registers 2
    .param p1, "gridViewScrollListener"    # Lcn/dbox/ui/card/c$a;

    .prologue
    .line 96
    iput-object p1, p0, Lcn/dbox/ui/card/c;->mGridViewScrollListener:Lcn/dbox/ui/card/c$a;

    .line 97
    return-void
.end method
