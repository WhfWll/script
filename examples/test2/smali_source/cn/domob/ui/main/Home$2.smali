.class Lcn/domob/ui/main/Home$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/main/Home;->showErrorMSG(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/domob/ui/main/Home;


# direct methods
.method constructor <init>(Lcn/domob/ui/main/Home;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 216
    iput-object p1, p0, Lcn/domob/ui/main/Home$2;->b:Lcn/domob/ui/main/Home;

    iput-object p2, p0, Lcn/domob/ui/main/Home$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcn/domob/ui/main/Home$2;->b:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mHome_progress_rl:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$000(Lcn/domob/ui/main/Home;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcn/domob/ui/main/Home$2;->b:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->home_progress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$100(Lcn/domob/ui/main/Home;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcn/domob/ui/main/Home$2;->b:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->home_progress_tv:Landroid/widget/TextView;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$200(Lcn/domob/ui/main/Home;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/main/Home$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcn/domob/ui/main/Home$2;->b:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->home_progress_tv:Landroid/widget/TextView;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$200(Lcn/domob/ui/main/Home;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcn/domob/ui/main/Home$2;->b:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->home_progress_tv:Landroid/widget/TextView;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$200(Lcn/domob/ui/main/Home;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcn/domob/ui/main/Home$2$1;

    invoke-direct {v1, p0}, Lcn/domob/ui/main/Home$2$1;-><init>(Lcn/domob/ui/main/Home$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    return-void
.end method
