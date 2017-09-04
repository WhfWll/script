.class public Lcn/domob/ui/adapter/DownloadManagerListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/ui/adapter/DownloadManagerListAdapter$a;
    }
.end annotation


# static fields
.field private static mLogger:Lcn/domob/ui/main/Logger;


# instance fields
.field private mChildList:Ljava/util/ArrayList;
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

.field private mContext:Landroid/content/Context;

.field private mGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPos:[I

.field private mSlidingMenu:Landroid/view/View;

.field private mViewStub:Landroid/view/View;

.field private mViewStubMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<[I",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcn/domob/ui/main/Logger;

    const-class v1, Lcn/domob/ui/adapter/DownloadManagerListAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/main/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mLogger:Lcn/domob/ui/main/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/wall/core/DService;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
    .registers 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mDService"    # Lcn/domob/wall/core/DService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/domob/wall/core/DService;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/DownLoadListItem;",
            ">;>;",
            "Ljava/util/Map",
            "<[I",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p3, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lcn/domob/ui/item/DownLoadListItem;>;>;"
    .local p5, "viewStubMap":Ljava/util/Map;, "Ljava/util/Map<[ILandroid/view/View;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 54
    iput-object p1, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mContext:Landroid/content/Context;

    .line 55
    iput-object p4, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mChildList:Ljava/util/ArrayList;

    .line 56
    iput-object p3, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mGroupList:Ljava/util/ArrayList;

    .line 57
    iput-object p5, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mViewStubMap:Ljava/util/Map;

    .line 58
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .registers 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .registers 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 104
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/DownLoadListItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mChildList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    if-nez p4, :cond_22

    .line 137
    sget-object v0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mLogger:Lcn/domob/ui/main/Logger;

    const-string v1, "convertView is null"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mContext:Landroid/content/Context;

    const-string v2, "l_download_list_item"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .end local p4    # "convertView":Landroid/view/View;
    check-cast p4, Landroid/widget/LinearLayout;

    .line 142
    .restart local p4    # "convertView":Landroid/view/View;
    :cond_22
    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "ll_sliding_menu"

    invoke-static {v0, v1}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mSlidingMenu:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mViewStubMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 144
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mPos:[I

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mViewStub:Landroid/view/View;

    goto :goto_3a

    .line 149
    :cond_59
    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mPos:[I

    if-eqz v0, :cond_7f

    .line 150
    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mPos:[I

    aget v0, v0, v3

    if-ne v0, p1, :cond_69

    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mPos:[I

    aget v0, v0, v4

    if-eq v0, p2, :cond_6e

    .line 151
    :cond_69
    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mSlidingMenu:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_6e
    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mPos:[I

    aget v0, v0, v3

    if-ne v0, p1, :cond_7f

    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mPos:[I

    aget v0, v0, v4

    if-ne v0, p2, :cond_7f

    .line 154
    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mViewStub:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_7f
    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/item/DownLoadListItem;

    invoke-virtual {v0, p4, p1, p2}, Lcn/domob/ui/item/DownLoadListItem;->bindViews(Landroid/view/View;II)V

    .line 159
    return-object p4
.end method

.method public getChildrenCount(I)I
    .registers 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .registers 4
    .param p1, "groupPosition"    # I

    .prologue
    .line 96
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mGroupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 123
    iget-object v0, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mContext:Landroid/content/Context;

    const-string v2, "l_download_group_item"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 125
    iget-object v1, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mContext:Landroid/content/Context;

    const-string v2, "tv_download"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 126
    invoke-virtual {p0, p1}, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public setChildList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/DownLoadListItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lcn/domob/ui/item/DownLoadListItem;>;>;"
    iput-object p1, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mChildList:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public setGroupList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->mGroupList:Ljava/util/ArrayList;

    .line 41
    return-void
.end method
