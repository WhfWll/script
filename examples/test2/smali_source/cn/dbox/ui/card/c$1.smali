.class Lcn/dbox/ui/card/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/ui/card/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/card/c;


# direct methods
.method constructor <init>(Lcn/dbox/ui/card/c;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcn/dbox/ui/card/c$1;->a:Lcn/dbox/ui/card/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 91
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    if-lez v0, :cond_1f

    if-nez p2, :cond_1f

    .line 72
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 73
    iget-object v1, p0, Lcn/dbox/ui/card/c$1;->a:Lcn/dbox/ui/card/c;

    iget-object v2, p0, Lcn/dbox/ui/card/c$1;->a:Lcn/dbox/ui/card/c;

    # getter for: Lcn/dbox/ui/card/c;->mLastVisiblePosition:I
    invoke-static {v2}, Lcn/dbox/ui/card/c;->access$000(Lcn/dbox/ui/card/c;)I

    move-result v2

    if-le v2, v0, :cond_1c

    iget-object v0, p0, Lcn/dbox/ui/card/c$1;->a:Lcn/dbox/ui/card/c;

    # getter for: Lcn/dbox/ui/card/c;->mLastVisiblePosition:I
    invoke-static {v0}, Lcn/dbox/ui/card/c;->access$000(Lcn/dbox/ui/card/c;)I

    move-result v0

    :cond_1c
    # setter for: Lcn/dbox/ui/card/c;->mLastVisiblePosition:I
    invoke-static {v1, v0}, Lcn/dbox/ui/card/c;->access$002(Lcn/dbox/ui/card/c;I)I

    .line 78
    :cond_1f
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    if-lez v0, :cond_44

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_44

    if-nez p2, :cond_44

    .line 81
    iget-object v0, p0, Lcn/dbox/ui/card/c$1;->a:Lcn/dbox/ui/card/c;

    # getter for: Lcn/dbox/ui/card/c;->mGridViewScrollListener:Lcn/dbox/ui/card/c$a;
    invoke-static {v0}, Lcn/dbox/ui/card/c;->access$100(Lcn/dbox/ui/card/c;)Lcn/dbox/ui/card/c$a;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 82
    iget-object v0, p0, Lcn/dbox/ui/card/c$1;->a:Lcn/dbox/ui/card/c;

    # getter for: Lcn/dbox/ui/card/c;->mGridViewScrollListener:Lcn/dbox/ui/card/c$a;
    invoke-static {v0}, Lcn/dbox/ui/card/c;->access$100(Lcn/dbox/ui/card/c;)Lcn/dbox/ui/card/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/dbox/ui/card/c$a;->a()V

    .line 85
    :cond_44
    return-void
.end method
