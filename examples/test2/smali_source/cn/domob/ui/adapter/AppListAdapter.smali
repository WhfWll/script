.class public Lcn/domob/ui/adapter/AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/ui/adapter/AppListAdapter$ListItemShowListener;
    }
.end annotation


# static fields
.field private static mLogger:Lcn/domob/ui/main/Logger;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/ui/item/AppListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemShowListener:Lcn/domob/ui/adapter/AppListAdapter$ListItemShowListener;

.field private mNeedNotify:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcn/domob/ui/main/Logger;

    const-class v1, Lcn/domob/ui/adapter/AppListAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/main/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/adapter/AppListAdapter;->mLogger:Lcn/domob/ui/main/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mCount:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mItemList:Ljava/util/List;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mNeedNotify:Z

    .line 45
    iput-object p1, p0, Lcn/domob/ui/adapter/AppListAdapter;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 50
    iget v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mCount:I

    iget-object v1, p0, Lcn/domob/ui/adapter/AppListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    iget v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mCount:I

    .line 51
    :goto_c
    return v0

    .line 50
    :cond_d
    iget-object v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_c
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemSize()I
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getListItemShowListener()Lcn/domob/ui/adapter/AppListAdapter$ListItemShowListener;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mListItemShowListener:Lcn/domob/ui/adapter/AppListAdapter$ListItemShowListener;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    sget-object v0, Lcn/domob/ui/adapter/AppListAdapter;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getListView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcn/domob/ui/adapter/AppListAdapter;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to get view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->ptLog(Ljava/lang/String;)V

    .line 69
    iget-boolean v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mNeedNotify:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mListItemShowListener:Lcn/domob/ui/adapter/AppListAdapter$ListItemShowListener;

    if-eqz v0, :cond_40

    .line 70
    iget-object v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mListItemShowListener:Lcn/domob/ui/adapter/AppListAdapter$ListItemShowListener;

    invoke-interface {v0}, Lcn/domob/ui/adapter/AppListAdapter$ListItemShowListener;->onListItemStartToShow()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mNeedNotify:Z

    .line 74
    :cond_40
    if-nez p2, :cond_87

    .line 75
    sget-object v0, Lcn/domob/ui/adapter/AppListAdapter;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to init convertView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->ptLog(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/adapter/AppListAdapter;->mContext:Landroid/content/Context;

    const-string v2, "l_home_list_element"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2    # "convertView":Landroid/view/View;
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 80
    .restart local p2    # "convertView":Landroid/view/View;
    sget-object v0, Lcn/domob/ui/adapter/AppListAdapter;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish to init convertView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->ptLog(Ljava/lang/String;)V

    .line 83
    :cond_87
    iget-object v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/item/AppListItem;

    invoke-virtual {v0, p2, p1}, Lcn/domob/ui/item/AppListItem;->bindListViews(Landroid/view/View;I)V

    .line 84
    sget-object v0, Lcn/domob/ui/adapter/AppListAdapter;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish to get view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->ptLog(Ljava/lang/String;)V

    .line 85
    return-object p2
.end method

.method public setCount(I)V
    .registers 3
    .param p1, "_count"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_b

    .end local p1    # "_count":I
    :goto_8
    iput p1, p0, Lcn/domob/ui/adapter/AppListAdapter;->mCount:I

    .line 38
    return-void

    .line 37
    .restart local p1    # "_count":I
    :cond_b
    iget-object v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_8
.end method

.method public setItemList(Ljava/util/List;I)V
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
    .line 30
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcn/domob/ui/item/AppListItem;>;"
    iput-object p1, p0, Lcn/domob/ui/adapter/AppListAdapter;->mItemList:Ljava/util/List;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/ui/adapter/AppListAdapter;->mNeedNotify:Z

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_e

    .end local p2    # "showNumberOnce":I
    :goto_b
    iput p2, p0, Lcn/domob/ui/adapter/AppListAdapter;->mCount:I

    .line 34
    return-void

    .line 33
    .restart local p2    # "showNumberOnce":I
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_b
.end method

.method public setListItemShowListener(Lcn/domob/ui/adapter/AppListAdapter$ListItemShowListener;)V
    .registers 2
    .param p1, "listItemShowListener"    # Lcn/domob/ui/adapter/AppListAdapter$ListItemShowListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcn/domob/ui/adapter/AppListAdapter;->mListItemShowListener:Lcn/domob/ui/adapter/AppListAdapter$ListItemShowListener;

    .line 94
    return-void
.end method
