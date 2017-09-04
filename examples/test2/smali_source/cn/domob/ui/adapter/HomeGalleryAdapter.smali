.class public Lcn/domob/ui/adapter/HomeGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private mBannerList:Ljava/util/List;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/adapter/HomeGalleryAdapter;->mBannerList:Ljava/util/List;

    .line 18
    iput-object p1, p0, Lcn/domob/ui/adapter/HomeGalleryAdapter;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public getBannerList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcn/domob/ui/adapter/HomeGalleryAdapter;->mBannerList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 22
    const v0, 0x7fffffff

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcn/domob/ui/adapter/HomeGalleryAdapter;->mBannerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcn/domob/ui/adapter/HomeGalleryAdapter;->mBannerList:Ljava/util/List;

    iget-object v1, p0, Lcn/domob/ui/adapter/HomeGalleryAdapter;->mBannerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 33
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/domob/ui/adapter/HomeGalleryAdapter;->mBannerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 39
    iget-object v0, p0, Lcn/domob/ui/adapter/HomeGalleryAdapter;->mBannerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v1, p1, v0

    .line 40
    iget-object v0, p0, Lcn/domob/ui/adapter/HomeGalleryAdapter;->mBannerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/item/AppListItem;

    invoke-virtual {v0, p2, v1}, Lcn/domob/ui/item/AppListItem;->bindBannerViews(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    .line 42
    :cond_1c
    return-object p2
.end method

.method public getmContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/ui/adapter/HomeGalleryAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setBannerList(Ljava/util/List;)V
    .registers 2
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
    .line 51
    .local p1, "bannerList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/ui/item/AppListItem;>;"
    iput-object p1, p0, Lcn/domob/ui/adapter/HomeGalleryAdapter;->mBannerList:Ljava/util/List;

    .line 52
    return-void
.end method
