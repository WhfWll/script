.class Lcn/domob/ui/view/SearchView$9;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/view/SearchView;
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
    .line 429
    iput-object p1, p0, Lcn/domob/ui/view/SearchView$9;->a:Lcn/domob/ui/view/SearchView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 431
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$9;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mLvSearch:Landroid/widget/ListView;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$1900(Lcn/domob/ui/view/SearchView;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcn/domob/ui/view/SearchView$a;

    iget-object v2, p0, Lcn/domob/ui/view/SearchView$9;->a:Lcn/domob/ui/view/SearchView;

    iget-object v3, p0, Lcn/domob/ui/view/SearchView$9;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->hotString:Ljava/util/List;
    invoke-static {v3}, Lcn/domob/ui/view/SearchView;->access$800(Lcn/domob/ui/view/SearchView;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/domob/ui/view/SearchView$a;-><init>(Lcn/domob/ui/view/SearchView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 432
    return-void
.end method
