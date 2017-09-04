.class public Lcn/domob/ui/adapter/SearchResultListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/SearchListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/domob/wall/core/DService;Ljava/util/List;)V
    .registers 5
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mDService"    # Lcn/domob/wall/core/DService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/domob/wall/core/DService;",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/SearchListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p3, "listItems":Ljava/util/List;, "Ljava/util/List<Lcn/domob/ui/item/SearchListItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/domob/ui/adapter/SearchResultListAdapter;->mContext:Landroid/content/Context;

    .line 21
    iput-object p3, p0, Lcn/domob/ui/adapter/SearchResultListAdapter;->mListItems:Ljava/util/List;

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/adapter/SearchResultListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcn/domob/ui/adapter/SearchResultListAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcn/domob/ui/adapter/SearchResultListAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 36
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 41
    if-nez p2, :cond_11

    .line 42
    iget-object v0, p0, Lcn/domob/ui/adapter/SearchResultListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcn/domob/ui/adapter/SearchResultListAdapter;->mContext:Landroid/content/Context;

    const-string v2, "l_search_result_item"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 44
    :cond_11
    iget-object v0, p0, Lcn/domob/ui/adapter/SearchResultListAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/item/SearchListItem;

    invoke-virtual {v0, p2, p1}, Lcn/domob/ui/item/SearchListItem;->bindViews(Landroid/view/View;I)V

    .line 45
    return-object p2
.end method
