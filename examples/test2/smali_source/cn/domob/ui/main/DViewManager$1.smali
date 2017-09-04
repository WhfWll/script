.class Lcn/domob/ui/main/DViewManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/main/DViewManager;->showHandleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/main/DViewManager;


# direct methods
.method constructor <init>(Lcn/domob/ui/main/DViewManager;)V
    .registers 2

    .prologue
    .line 236
    iput-object p1, p0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 241
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->handleView:Landroid/view/View;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$000(Lcn/domob/ui/main/DViewManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4a

    .line 242
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->sp:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$100(Lcn/domob/ui/main/DViewManager;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mHandleUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    # getter for: Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/main/DViewManager;->access$200()Lcn/domob/ui/main/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlerUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    new-instance v2, Lcn/domob/ui/view/HandleView;

    iget-object v3, p0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->context:Landroid/content/Context;
    invoke-static {v3}, Lcn/domob/ui/main/DViewManager;->access$300(Lcn/domob/ui/main/DViewManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v4}, Lcn/domob/ui/main/DViewManager;->access$400(Lcn/domob/ui/main/DViewManager;)Lcn/domob/wall/core/DService;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcn/domob/ui/view/HandleView;-><init>(Landroid/content/Context;Lcn/domob/wall/core/DService;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/domob/ui/view/HandleView;->initHandleView()Landroid/view/View;

    move-result-object v0

    # setter for: Lcn/domob/ui/main/DViewManager;->handleView:Landroid/view/View;
    invoke-static {v1, v0}, Lcn/domob/ui/main/DViewManager;->access$002(Lcn/domob/ui/main/DViewManager;Landroid/view/View;)Landroid/view/View;

    .line 247
    :cond_4a
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->mHandleView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$500(Lcn/domob/ui/main/DViewManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->handleView:Landroid/view/View;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$000(Lcn/domob/ui/main/DViewManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7c

    .line 248
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->mHandleView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$500(Lcn/domob/ui/main/DViewManager;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->handleView:Landroid/view/View;
    invoke-static {v1}, Lcn/domob/ui/main/DViewManager;->access$000(Lcn/domob/ui/main/DViewManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 259
    :cond_6d
    :goto_6d
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->handleView:Landroid/view/View;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$000(Lcn/domob/ui/main/DViewManager;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/domob/ui/main/DViewManager$1$1;

    invoke-direct {v1, p0}, Lcn/domob/ui/main/DViewManager$1$1;-><init>(Lcn/domob/ui/main/DViewManager$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    return-void

    .line 251
    :cond_7c
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->mHandleViewGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$600(Lcn/domob/ui/main/DViewManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->handleView:Landroid/view/View;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$000(Lcn/domob/ui/main/DViewManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_6d

    .line 252
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->mHandleViewGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$600(Lcn/domob/ui/main/DViewManager;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->handleView:Landroid/view/View;
    invoke-static {v1}, Lcn/domob/ui/main/DViewManager;->access$000(Lcn/domob/ui/main/DViewManager;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    const/4 v3, 0x0

    # invokes: Lcn/domob/ui/main/DViewManager;->getHandleViewLayoutParams(I)Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v2, v3}, Lcn/domob/ui/main/DViewManager;->access$700(Lcn/domob/ui/main/DViewManager;I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6d
.end method
