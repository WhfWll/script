.class Lcn/domob/ui/view/SearchView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 150
    iput-object p1, p0, Lcn/domob/ui/view/SearchView$2;->a:Lcn/domob/ui/view/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$2;->a:Lcn/domob/ui/view/SearchView;

    iget-object v1, p0, Lcn/domob/ui/view/SearchView$2;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/view/SearchView;->access$200(Lcn/domob/ui/view/SearchView;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcn/domob/ui/view/SearchView;->checkNetStatus(Landroid/content/Context;)I
    invoke-static {v0, v1}, Lcn/domob/ui/view/SearchView;->access$300(Lcn/domob/ui/view/SearchView;Landroid/content/Context;)I

    move-result v0

    .line 155
    if-nez v0, :cond_1f

    .line 156
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$2;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$200(Lcn/domob/ui/view/SearchView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    :goto_1e
    return-void

    .line 159
    :cond_1f
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$2;->a:Lcn/domob/ui/view/SearchView;

    # invokes: Lcn/domob/ui/view/SearchView;->executeSearch()V
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$400(Lcn/domob/ui/view/SearchView;)V

    goto :goto_1e
.end method
