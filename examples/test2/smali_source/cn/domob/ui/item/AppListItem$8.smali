.class Lcn/domob/ui/item/AppListItem$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/item/AppListItem;->setListActionClickListener()V
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
    .line 773
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem$8;->a:Lcn/domob/ui/item/AppListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 777
    # getter for: Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/item/AppListItem;->access$300()Lcn/domob/ui/main/Logger;

    move-result-object v0

    const-string v1, "action area clicked"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 778
    sget-object v0, Lcn/domob/ui/item/AppListItem$9;->a:[I

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem$8;->a:Lcn/domob/ui/item/AppListItem;

    # getter for: Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;
    invoke-static {v1}, Lcn/domob/ui/item/AppListItem;->access$600(Lcn/domob/ui/item/AppListItem;)Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    .line 797
    :goto_1e
    return-void

    .line 781
    :pswitch_1f
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem$8;->a:Lcn/domob/ui/item/AppListItem;

    sget-object v1, Lcn/domob/ui/item/AppListItem$b;->a:Lcn/domob/ui/item/AppListItem$b;

    # invokes: Lcn/domob/ui/item/AppListItem;->clickActionForDownloadAndUpdate(Lcn/domob/ui/item/AppListItem$b;)V
    invoke-static {v0, v1}, Lcn/domob/ui/item/AppListItem;->access$800(Lcn/domob/ui/item/AppListItem;Lcn/domob/ui/item/AppListItem$b;)V

    goto :goto_1e

    .line 786
    :pswitch_27
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem$8;->a:Lcn/domob/ui/item/AppListItem;

    # getter for: Lcn/domob/ui/item/AppListItem;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v0}, Lcn/domob/ui/item/AppListItem;->access$700(Lcn/domob/ui/item/AppListItem;)Lcn/domob/wall/core/DService;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem$8;->a:Lcn/domob/ui/item/AppListItem;

    # getter for: Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;
    invoke-static {v1}, Lcn/domob/ui/item/AppListItem;->access$600(Lcn/domob/ui/item/AppListItem;)Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doClickWallItemButtonReport(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 787
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem$8;->a:Lcn/domob/ui/item/AppListItem;

    # invokes: Lcn/domob/ui/item/AppListItem;->clickActionForListLanding()V
    invoke-static {v0}, Lcn/domob/ui/item/AppListItem;->access$1100(Lcn/domob/ui/item/AppListItem;)V

    goto :goto_1e

    .line 791
    :pswitch_3c
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem$8;->a:Lcn/domob/ui/item/AppListItem;

    # getter for: Lcn/domob/ui/item/AppListItem;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v0}, Lcn/domob/ui/item/AppListItem;->access$700(Lcn/domob/ui/item/AppListItem;)Lcn/domob/wall/core/DService;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/AppListItem$8;->a:Lcn/domob/ui/item/AppListItem;

    # getter for: Lcn/domob/ui/item/AppListItem;->mAdInfo:Lcn/domob/wall/core/bean/AdInfo;
    invoke-static {v1}, Lcn/domob/ui/item/AppListItem;->access$600(Lcn/domob/ui/item/AppListItem;)Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doClickWallItemButtonReport(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 792
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem$8;->a:Lcn/domob/ui/item/AppListItem;

    # invokes: Lcn/domob/ui/item/AppListItem;->clickActionForListLaunch()V
    invoke-static {v0}, Lcn/domob/ui/item/AppListItem;->access$1200(Lcn/domob/ui/item/AppListItem;)V

    goto :goto_1e

    .line 778
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_27
        :pswitch_27
        :pswitch_3c
    .end packed-switch
.end method
