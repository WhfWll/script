.class Lcn/domob/ui/main/Home$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/main/Home;->initRadioButton()V
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
    .line 386
    iput-object p1, p0, Lcn/domob/ui/main/Home$3;->a:Lcn/domob/ui/main/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 6
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 391
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 392
    iget-object v1, p0, Lcn/domob/ui/main/Home$3;->a:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mAdWallRadioButton:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcn/domob/ui/main/Home;->access$400(Lcn/domob/ui/main/Home;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 393
    iget-object v0, p0, Lcn/domob/ui/main/Home$3;->a:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mEWallRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$500(Lcn/domob/ui/main/Home;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 410
    :cond_1b
    :goto_1b
    return-void

    .line 395
    :cond_1c
    iget-object v1, p0, Lcn/domob/ui/main/Home$3;->a:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mEWallRadioButton:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcn/domob/ui/main/Home;->access$600(Lcn/domob/ui/main/Home;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 397
    # getter for: Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/main/Home;->access$700()Lcn/domob/ui/main/Logger;

    move-result-object v0

    const-string v1, "Send report:E_ENTRY_CLICK"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcn/domob/ui/main/Home$3;->a:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$800(Lcn/domob/ui/main/Home;)Lcn/domob/wall/core/DService;

    move-result-object v0

    sget-object v1, Lcn/domob/wall/core/DService$EWallReportType;->E_ENTRY_CLICK:Lcn/domob/wall/core/DService$EWallReportType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doEWallReport(Lcn/domob/wall/core/DService$EWallReportType;)V

    .line 400
    iget-object v0, p0, Lcn/domob/ui/main/Home$3;->a:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mEWallRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$500(Lcn/domob/ui/main/Home;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5a

    .line 401
    # getter for: Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/main/Home;->access$700()Lcn/domob/ui/main/Logger;

    move-result-object v0

    const-string v1, "Remove child view"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcn/domob/ui/main/Home$3;->a:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mEWallRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$500(Lcn/domob/ui/main/Home;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 404
    :cond_5a
    iget-object v0, p0, Lcn/domob/ui/main/Home$3;->a:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mEWallRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$500(Lcn/domob/ui/main/Home;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/main/Home$3;->a:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v1}, Lcn/domob/ui/main/Home;->access$800(Lcn/domob/ui/main/Home;)Lcn/domob/wall/core/DService;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/Home$3;->a:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcn/domob/ui/main/Home;->access$900(Lcn/domob/ui/main/Home;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/DService;->getEView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 406
    iget-object v0, p0, Lcn/domob/ui/main/Home$3;->a:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mEWallRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$500(Lcn/domob/ui/main/Home;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1b
.end method
