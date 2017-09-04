.class Lcn/domob/ui/view/DGallery$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/view/DGallery;->initGallery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/DGallery;


# direct methods
.method constructor <init>(Lcn/domob/ui/view/DGallery;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcn/domob/ui/view/DGallery$1;->a:Lcn/domob/ui/view/DGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 36
    if-nez v0, :cond_e

    .line 37
    iget-object v0, p0, Lcn/domob/ui/view/DGallery$1;->a:Lcn/domob/ui/view/DGallery;

    # setter for: Lcn/domob/ui/view/DGallery;->isOnGalleryTouch:Z
    invoke-static {v0, v2}, Lcn/domob/ui/view/DGallery;->access$002(Lcn/domob/ui/view/DGallery;Z)Z

    .line 41
    :cond_d
    :goto_d
    return v1

    .line 38
    :cond_e
    if-ne v0, v2, :cond_d

    .line 39
    iget-object v0, p0, Lcn/domob/ui/view/DGallery$1;->a:Lcn/domob/ui/view/DGallery;

    # setter for: Lcn/domob/ui/view/DGallery;->isOnGalleryTouch:Z
    invoke-static {v0, v1}, Lcn/domob/ui/view/DGallery;->access$002(Lcn/domob/ui/view/DGallery;Z)Z

    goto :goto_d
.end method
