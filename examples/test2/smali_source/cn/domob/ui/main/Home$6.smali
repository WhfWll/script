.class Lcn/domob/ui/main/Home$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/main/Home;->initSearchButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/main/Home;


# direct methods
.method constructor <init>(Lcn/domob/ui/main/Home;)V
    .registers 2

    .prologue
    .line 649
    iput-object p1, p0, Lcn/domob/ui/main/Home$6;->a:Lcn/domob/ui/main/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 653
    # getter for: Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/main/Home;->access$700()Lcn/domob/ui/main/Logger;

    move-result-object v0

    const-string v1, "searchButton clicked"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcn/domob/ui/main/Home$6;->a:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mHomeViewlistener:Lcn/domob/ui/main/Home$HomeViewListener;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$300(Lcn/domob/ui/main/Home;)Lcn/domob/ui/main/Home$HomeViewListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 655
    iget-object v0, p0, Lcn/domob/ui/main/Home$6;->a:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mHomeViewlistener:Lcn/domob/ui/main/Home$HomeViewListener;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$300(Lcn/domob/ui/main/Home;)Lcn/domob/ui/main/Home$HomeViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/ui/main/Home$HomeViewListener;->onSearchButtonClicked()V

    .line 657
    :cond_1a
    return-void
.end method
