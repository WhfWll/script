.class Lcn/domob/ui/item/AppListItem$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/item/AppListItem;->buildDetailsCommonView()V
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
    .line 322
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem$4;->a:Lcn/domob/ui/item/AppListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 326
    # getter for: Lcn/domob/ui/item/AppListItem;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/item/AppListItem;->access$300()Lcn/domob/ui/main/Logger;

    move-result-object v0

    const-string v1, "detail view dismiss"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem$4;->a:Lcn/domob/ui/item/AppListItem;

    # getter for: Lcn/domob/ui/item/AppListItem;->mDetailsDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcn/domob/ui/item/AppListItem;->access$400(Lcn/domob/ui/item/AppListItem;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 328
    iget-object v0, p0, Lcn/domob/ui/item/AppListItem$4;->a:Lcn/domob/ui/item/AppListItem;

    # getter for: Lcn/domob/ui/item/AppListItem;->mDetailsDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcn/domob/ui/item/AppListItem;->access$400(Lcn/domob/ui/item/AppListItem;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 331
    :cond_1a
    return-void
.end method
