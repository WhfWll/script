.class Lcn/domob/ui/view/AdWallListView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/view/AdWallListView;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/AdWallListView;


# direct methods
.method constructor <init>(Lcn/domob/ui/view/AdWallListView;)V
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lcn/domob/ui/view/AdWallListView$2;->a:Lcn/domob/ui/view/AdWallListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$2;->a:Lcn/domob/ui/view/AdWallListView;

    iget-object v0, v0, Lcn/domob/ui/view/AdWallListView;->mBannerList:Ljava/util/List;

    if-eqz v0, :cond_4a

    .line 146
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$2;->a:Lcn/domob/ui/view/AdWallListView;

    iget-object v0, v0, Lcn/domob/ui/view/AdWallListView;->mBannerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v1, p3, v0

    .line 147
    # getter for: Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/view/AdWallListView;->access$000()Lcn/domob/ui/main/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gallery item clicked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$2;->a:Lcn/domob/ui/view/AdWallListView;

    iget-object v0, v0, Lcn/domob/ui/view/AdWallListView;->mBannerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/item/AppListItem;

    invoke-virtual {v0}, Lcn/domob/ui/item/AppListItem;->getAdInfo()Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo;->setAdActualPosition(I)V

    .line 150
    iget-object v2, p0, Lcn/domob/ui/view/AdWallListView$2;->a:Lcn/domob/ui/view/AdWallListView;

    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$2;->a:Lcn/domob/ui/view/AdWallListView;

    iget-object v0, v0, Lcn/domob/ui/view/AdWallListView;->mBannerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/item/AppListItem;

    # invokes: Lcn/domob/ui/view/AdWallListView;->processItemClick(Lcn/domob/ui/item/AppListItem;)V
    invoke-static {v2, v0}, Lcn/domob/ui/view/AdWallListView;->access$100(Lcn/domob/ui/view/AdWallListView;Lcn/domob/ui/item/AppListItem;)V

    .line 152
    :cond_4a
    return-void
.end method
