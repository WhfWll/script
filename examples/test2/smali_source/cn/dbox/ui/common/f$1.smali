.class Lcn/dbox/ui/common/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/ui/common/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/common/f;


# direct methods
.method constructor <init>(Lcn/dbox/ui/common/f;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcn/dbox/ui/common/f$1;->a:Lcn/dbox/ui/common/f;

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
    .line 73
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    if-lez v0, :cond_21

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_21

    if-nez p2, :cond_21

    .line 57
    iget-object v0, p0, Lcn/dbox/ui/common/f$1;->a:Lcn/dbox/ui/common/f;

    iget-object v0, v0, Lcn/dbox/ui/common/f;->a:Lcn/dbox/ui/common/f$b;

    if-eqz v0, :cond_21

    .line 58
    iget-object v0, p0, Lcn/dbox/ui/common/f$1;->a:Lcn/dbox/ui/common/f;

    iget-object v0, v0, Lcn/dbox/ui/common/f;->a:Lcn/dbox/ui/common/f$b;

    invoke-interface {v0}, Lcn/dbox/ui/common/f$b;->a()V

    .line 62
    :cond_21
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    if-lez v0, :cond_3b

    if-nez p2, :cond_3b

    .line 64
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 66
    iget-object v1, p0, Lcn/dbox/ui/common/f$1;->a:Lcn/dbox/ui/common/f;

    iget-object v2, p0, Lcn/dbox/ui/common/f$1;->a:Lcn/dbox/ui/common/f;

    iget v2, v2, Lcn/dbox/ui/common/f;->c:I

    if-le v2, v0, :cond_39

    iget-object v0, p0, Lcn/dbox/ui/common/f$1;->a:Lcn/dbox/ui/common/f;

    iget v0, v0, Lcn/dbox/ui/common/f;->c:I

    :cond_39
    iput v0, v1, Lcn/dbox/ui/common/f;->c:I

    .line 68
    :cond_3b
    return-void
.end method
