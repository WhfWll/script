.class Lcn/domob/ui/item/AppListItem$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/item/AppListItem;->setDetailsActionClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/item/AppListItem;


# direct methods
.method constructor <init>(Lcn/domob/ui/item/AppListItem;)V
    .registers 2

    .prologue
    .line 737
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem$7;->a:Lcn/domob/ui/item/AppListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "downloadAppInfo"    # Landroid/view/View;

    .prologue
    .line 742
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem$7;->a:Lcn/domob/ui/item/AppListItem;

    # getter for: Lcn/domob/ui/item/AppListItem;->mDetailsDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcn/domob/ui/item/AppListItem;->access$400(Lcn/domob/ui/item/AppListItem;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 743
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem$7;->a:Lcn/domob/ui/item/AppListItem;

    # getter for: Lcn/domob/ui/item/AppListItem;->mDetailsDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcn/domob/ui/item/AppListItem;->access$400(Lcn/domob/ui/item/AppListItem;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 746
    :cond_11
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem$7;->a:Lcn/domob/ui/item/AppListItem;

    # getter for: Lcn/domob/ui/item/AppListItem;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v0}, Lcn/domob/ui/item/AppListItem;->access$700(Lcn/domob/ui/item/AppListItem;)Lcn/domob/wall/core/DService;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem$7;->a:Lcn/domob/ui/item/AppListItem;

    # getter for: Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;
    invoke-static {v1}, Lcn/domob/ui/item/AppListItem;->access$600(Lcn/domob/ui/item/AppListItem;)Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doClickDetailsPageButtonReport(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 747
    sget-object v0, Lcn/domob/ui/item/AppListItem$9;->a:[I

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem$7;->a:Lcn/domob/ui/item/AppListItem;

    # getter for: Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;
    invoke-static {v1}, Lcn/domob/ui/item/AppListItem;->access$600(Lcn/domob/ui/item/AppListItem;)Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    .line 761
    :goto_35
    return-void

    .line 750
    :pswitch_36
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem$7;->a:Lcn/domob/ui/item/AppListItem;

    sget-object v1, Lcn/domob/ui/item/AppListItem$b;->b:Lcn/domob/ui/item/AppListItem$b;

    # invokes: Lcn/domob/ui/item/AppListItem;->clickActionForDownloadAndUpdate(Lcn/domob/ui/item/AppListItem$b;)V
    invoke-static {v0, v1}, Lcn/domob/ui/item/AppListItem;->access$800(Lcn/domob/ui/item/AppListItem;Lcn/domob/ui/item/AppListItem$b;)V

    goto :goto_35

    .line 754
    :pswitch_3e
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem$7;->a:Lcn/domob/ui/item/AppListItem;

    # invokes: Lcn/domob/ui/item/AppListItem;->clickActionForDetailsLanding()V
    invoke-static {v0}, Lcn/domob/ui/item/AppListItem;->access$900(Lcn/domob/ui/item/AppListItem;)V

    goto :goto_35

    .line 757
    :pswitch_44
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem$7;->a:Lcn/domob/ui/item/AppListItem;

    # invokes: Lcn/domob/ui/item/AppListItem;->clickActionForDetailsLaunch()V
    invoke-static {v0}, Lcn/domob/ui/item/AppListItem;->access$1000(Lcn/domob/ui/item/AppListItem;)V

    goto :goto_35

    .line 747
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_36
        :pswitch_36
        :pswitch_3e
        :pswitch_3e
        :pswitch_44
    .end packed-switch
.end method
