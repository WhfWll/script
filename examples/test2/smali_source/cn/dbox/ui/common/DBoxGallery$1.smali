.class Lcn/dbox/ui/common/DBoxGallery$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/common/DBoxGallery;->initGallery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/common/DBoxGallery;


# direct methods
.method constructor <init>(Lcn/dbox/ui/common/DBoxGallery;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcn/dbox/ui/common/DBoxGallery$1;->a:Lcn/dbox/ui/common/DBoxGallery;

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

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 31
    if-nez v0, :cond_e

    .line 32
    iget-object v0, p0, Lcn/dbox/ui/common/DBoxGallery$1;->a:Lcn/dbox/ui/common/DBoxGallery;

    # setter for: Lcn/dbox/ui/common/DBoxGallery;->isOnGalleryTouch:Z
    invoke-static {v0, v2}, Lcn/dbox/ui/common/DBoxGallery;->access$002(Lcn/dbox/ui/common/DBoxGallery;Z)Z

    .line 36
    :cond_d
    :goto_d
    return v1

    .line 33
    :cond_e
    if-ne v0, v2, :cond_d

    .line 34
    iget-object v0, p0, Lcn/dbox/ui/common/DBoxGallery$1;->a:Lcn/dbox/ui/common/DBoxGallery;

    # setter for: Lcn/dbox/ui/common/DBoxGallery;->isOnGalleryTouch:Z
    invoke-static {v0, v1}, Lcn/dbox/ui/common/DBoxGallery;->access$002(Lcn/dbox/ui/common/DBoxGallery;Z)Z

    goto :goto_d
.end method
