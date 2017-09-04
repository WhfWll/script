.class Lcn/domob/ui/view/AdWallListView$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/view/AdWallListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/AdWallListView;


# direct methods
.method private constructor <init>(Lcn/domob/ui/view/AdWallListView;)V
    .registers 2

    .prologue
    .line 524
    iput-object p1, p0, Lcn/domob/ui/view/AdWallListView$a;->a:Lcn/domob/ui/view/AdWallListView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/domob/ui/view/AdWallListView;Lcn/domob/ui/view/AdWallListView$1;)V
    .registers 3

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcn/domob/ui/view/AdWallListView$a;-><init>(Lcn/domob/ui/view/AdWallListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 526
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$a;->a:Lcn/domob/ui/view/AdWallListView;

    # getter for: Lcn/domob/ui/view/AdWallListView;->mGalleryView:Lcn/domob/ui/view/DGallery;
    invoke-static {v0}, Lcn/domob/ui/view/AdWallListView;->access$700(Lcn/domob/ui/view/AdWallListView;)Lcn/domob/ui/view/DGallery;

    move-result-object v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$a;->a:Lcn/domob/ui/view/AdWallListView;

    # getter for: Lcn/domob/ui/view/AdWallListView;->mGalleryView:Lcn/domob/ui/view/DGallery;
    invoke-static {v0}, Lcn/domob/ui/view/AdWallListView;->access$700(Lcn/domob/ui/view/AdWallListView;)Lcn/domob/ui/view/DGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/ui/view/DGallery;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 528
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$a;->a:Lcn/domob/ui/view/AdWallListView;

    # getter for: Lcn/domob/ui/view/AdWallListView;->mAdWallListView:Lcn/domob/ui/view/AdWallListView;
    invoke-static {v0}, Lcn/domob/ui/view/AdWallListView;->access$800(Lcn/domob/ui/view/AdWallListView;)Lcn/domob/ui/view/AdWallListView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/ui/view/AdWallListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$a;->a:Lcn/domob/ui/view/AdWallListView;

    # getter for: Lcn/domob/ui/view/AdWallListView;->mGalleryView:Lcn/domob/ui/view/DGallery;
    invoke-static {v0}, Lcn/domob/ui/view/AdWallListView;->access$700(Lcn/domob/ui/view/AdWallListView;)Lcn/domob/ui/view/DGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/ui/view/DGallery;->isOnGalleryTouch()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 529
    # getter for: Lcn/domob/ui/view/AdWallListView;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/view/AdWallListView;->access$000()Lcn/domob/ui/main/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start auto scroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$a;->a:Lcn/domob/ui/view/AdWallListView;

    # getter for: Lcn/domob/ui/view/AdWallListView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/domob/ui/view/AdWallListView;->access$900(Lcn/domob/ui/view/AdWallListView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/ui/view/AdWallListView$a$1;

    invoke-direct {v1, p0}, Lcn/domob/ui/view/AdWallListView$a$1;-><init>(Lcn/domob/ui/view/AdWallListView$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 539
    :cond_5a
    return-void
.end method
