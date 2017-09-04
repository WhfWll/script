.class public Lcn/dbox/ui/common/DBoxGallery;
.super Landroid/widget/Gallery;
.source "SourceFile"


# instance fields
.field private isOnGalleryTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/dbox/ui/common/DBoxGallery;->isOnGalleryTouch:Z

    .line 16
    invoke-direct {p0}, Lcn/dbox/ui/common/DBoxGallery;->initGallery()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/dbox/ui/common/DBoxGallery;->isOnGalleryTouch:Z

    .line 21
    invoke-direct {p0}, Lcn/dbox/ui/common/DBoxGallery;->initGallery()V

    .line 22
    return-void
.end method

.method static synthetic access$002(Lcn/dbox/ui/common/DBoxGallery;Z)Z
    .registers 2
    .param p0, "x0"    # Lcn/dbox/ui/common/DBoxGallery;
    .param p1, "x1"    # Z

    .prologue
    .line 10
    iput-boolean p1, p0, Lcn/dbox/ui/common/DBoxGallery;->isOnGalleryTouch:Z

    return p1
.end method

.method private initGallery()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lcn/dbox/ui/common/DBoxGallery$1;

    invoke-direct {v0, p0}, Lcn/dbox/ui/common/DBoxGallery$1;-><init>(Lcn/dbox/ui/common/DBoxGallery;)V

    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/DBoxGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 39
    return-void
.end method


# virtual methods
.method public isOnGalleryTouch()Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcn/dbox/ui/common/DBoxGallery;->isOnGalleryTouch:Z

    return v0
.end method

.method public isScroollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcn/dbox/ui/common/DBoxGallery;->isScroollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 47
    const/16 v0, 0x15

    .line 51
    :goto_8
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/dbox/ui/common/DBoxGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 52
    const/4 v0, 0x1

    return v0

    .line 49
    :cond_e
    const/16 v0, 0x16

    goto :goto_8
.end method
