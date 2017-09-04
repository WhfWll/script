.class Lcn/domob/ui/main/Home$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/main/Home;->showProgressBar()V
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
    .line 199
    iput-object p1, p0, Lcn/domob/ui/main/Home$1;->a:Lcn/domob/ui/main/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcn/domob/ui/main/Home$1;->a:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mHome_progress_rl:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$000(Lcn/domob/ui/main/Home;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcn/domob/ui/main/Home$1;->a:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->home_progress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$100(Lcn/domob/ui/main/Home;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcn/domob/ui/main/Home$1;->a:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->home_progress_tv:Landroid/widget/TextView;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$200(Lcn/domob/ui/main/Home;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    return-void
.end method
