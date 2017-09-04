.class Lcn/domob/ui/view/AdWallListView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/ui/adapter/AppListAdapter$ListItemShowListener;


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
    .line 184
    iput-object p1, p0, Lcn/domob/ui/view/AdWallListView$4;->a:Lcn/domob/ui/view/AdWallListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListItemStartToShow()V
    .registers 4

    .prologue
    .line 189
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$4;->a:Lcn/domob/ui/view/AdWallListView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/domob/ui/view/AdWallListView$4;->a:Lcn/domob/ui/view/AdWallListView;

    # getter for: Lcn/domob/ui/view/AdWallListView;->mListAdapter:Lcn/domob/ui/adapter/AppListAdapter;
    invoke-static {v2}, Lcn/domob/ui/view/AdWallListView;->access$400(Lcn/domob/ui/view/AdWallListView;)Lcn/domob/ui/adapter/AppListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/ui/adapter/AppListAdapter;->getCount()I

    move-result v2

    # invokes: Lcn/domob/ui/view/AdWallListView;->sendListImpReports(II)V
    invoke-static {v0, v1, v2}, Lcn/domob/ui/view/AdWallListView;->access$500(Lcn/domob/ui/view/AdWallListView;II)V

    .line 190
    return-void
.end method
