.class Lcn/domob/ui/view/AdWallListView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 156
    iput-object p1, p0, Lcn/domob/ui/view/AdWallListView$3;->a:Lcn/domob/ui/view/AdWallListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 161
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    # getter for: Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/view/AdWallListView;->access$000()Lcn/domob/ui/main/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$3;->a:Lcn/domob/ui/view/AdWallListView;

    iget-object v0, v0, Lcn/domob/ui/view/AdWallListView;->mBannerList:Ljava/util/List;

    if-eqz v0, :cond_63

    .line 164
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$3;->a:Lcn/domob/ui/view/AdWallListView;

    iget-object v0, v0, Lcn/domob/ui/view/AdWallListView;->mBannerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_63

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$3;->a:Lcn/domob/ui/view/AdWallListView;

    iget-object v0, v0, Lcn/domob/ui/view/AdWallListView;->mBannerList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/item/AppListItem;

    invoke-virtual {v0}, Lcn/domob/ui/item/AppListItem;->getAdInfo()Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$3;->a:Lcn/domob/ui/view/AdWallListView;

    # getter for: Lcn/domob/ui/view/AdWallListView;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v0}, Lcn/domob/ui/view/AdWallListView;->access$200(Lcn/domob/ui/view/AdWallListView;)Lcn/domob/wall/core/DService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doImpReports(Ljava/util/ArrayList;)V

    .line 168
    # getter for: Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/view/AdWallListView;->access$000()Lcn/domob/ui/main/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to send imp reports\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 171
    :cond_63
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$3;->a:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, p0, Lcn/domob/ui/view/AdWallListView$3;->a:Lcn/domob/ui/view/AdWallListView;

    iget-object v1, v1, Lcn/domob/ui/view/AdWallListView;->mBannerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p3, v1

    # invokes: Lcn/domob/ui/view/AdWallListView;->changeHomePointView(I)V
    invoke-static {v0, v1}, Lcn/domob/ui/view/AdWallListView;->access$300(Lcn/domob/ui/view/AdWallListView;I)V

    .line 173
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    # getter for: Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/view/AdWallListView;->access$000()Lcn/domob/ui/main/Logger;

    move-result-object v0

    const-string v1, "onNothingSelected"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 178
    return-void
.end method
