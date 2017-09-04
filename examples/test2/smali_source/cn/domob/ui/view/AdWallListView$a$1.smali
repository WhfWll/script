.class Lcn/domob/ui/view/AdWallListView$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/view/AdWallListView$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/AdWallListView$a;


# direct methods
.method constructor <init>(Lcn/domob/ui/view/AdWallListView$a;)V
    .registers 2

    .prologue
    .line 530
    iput-object p1, p0, Lcn/domob/ui/view/AdWallListView$a$1;->a:Lcn/domob/ui/view/AdWallListView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 533
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$a$1;->a:Lcn/domob/ui/view/AdWallListView$a;

    iget-object v0, v0, Lcn/domob/ui/view/AdWallListView$a;->a:Lcn/domob/ui/view/AdWallListView;

    # getter for: Lcn/domob/ui/view/AdWallListView;->mGalleryView:Lcn/domob/ui/view/DGallery;
    invoke-static {v0}, Lcn/domob/ui/view/AdWallListView;->access$700(Lcn/domob/ui/view/AdWallListView;)Lcn/domob/ui/view/DGallery;

    move-result-object v0

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/domob/ui/view/DGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 535
    return-void
.end method
