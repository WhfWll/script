.class Lcn/domob/ui/main/Home$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/main/Home$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/main/Home$2;


# direct methods
.method constructor <init>(Lcn/domob/ui/main/Home$2;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcn/domob/ui/main/Home$2$1;->a:Lcn/domob/ui/main/Home$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 228
    iget-object v0, p0, Lcn/domob/ui/main/Home$2$1;->a:Lcn/domob/ui/main/Home$2;

    iget-object v0, v0, Lcn/domob/ui/main/Home$2;->b:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mHomeViewlistener:Lcn/domob/ui/main/Home$HomeViewListener;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$300(Lcn/domob/ui/main/Home;)Lcn/domob/ui/main/Home$HomeViewListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 229
    iget-object v0, p0, Lcn/domob/ui/main/Home$2$1;->a:Lcn/domob/ui/main/Home$2;

    iget-object v0, v0, Lcn/domob/ui/main/Home$2;->b:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mHomeViewlistener:Lcn/domob/ui/main/Home$HomeViewListener;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$300(Lcn/domob/ui/main/Home;)Lcn/domob/ui/main/Home$HomeViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/ui/main/Home$HomeViewListener;->onRefreshButtonClicked()V

    .line 232
    :cond_15
    return-void
.end method
