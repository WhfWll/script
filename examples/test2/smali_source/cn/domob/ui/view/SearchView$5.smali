.class Lcn/domob/ui/view/SearchView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/view/SearchView;->getSearchView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/SearchView;


# direct methods
.method constructor <init>(Lcn/domob/ui/view/SearchView;)V
    .registers 2

    .prologue
    .line 194
    iput-object p1, p0, Lcn/domob/ui/view/SearchView$5;->a:Lcn/domob/ui/view/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
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
    .line 200
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$5;->a:Lcn/domob/ui/view/SearchView;

    # invokes: Lcn/domob/ui/view/SearchView;->hideSoftInput()V
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$700(Lcn/domob/ui/view/SearchView;)V

    .line 202
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$5;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mEtSearch:Lcn/domob/ui/view/ClearEditText;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$900(Lcn/domob/ui/view/SearchView;)Lcn/domob/ui/view/ClearEditText;

    move-result-object v1

    iget-object v0, p0, Lcn/domob/ui/view/SearchView$5;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->hotString:Ljava/util/List;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$800(Lcn/domob/ui/view/SearchView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcn/domob/ui/view/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$5;->a:Lcn/domob/ui/view/SearchView;

    const/4 v1, 0x1

    # invokes: Lcn/domob/ui/view/SearchView;->changeSurface(I)V
    invoke-static {v0, v1}, Lcn/domob/ui/view/SearchView;->access$000(Lcn/domob/ui/view/SearchView;I)V

    .line 204
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$5;->a:Lcn/domob/ui/view/SearchView;

    # invokes: Lcn/domob/ui/view/SearchView;->executeSearch()V
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$400(Lcn/domob/ui/view/SearchView;)V

    .line 205
    return-void
.end method
