.class public Lcn/domob/ui/view/DGallery;
.super Landroid/widget/Gallery;
.source "SourceFile"


# instance fields
.field private isOnGalleryTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/ui/view/DGallery;->isOnGalleryTouch:Z

    .line 21
    invoke-direct {p0}, Lcn/domob/ui/view/DGallery;->initGallery()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/ui/view/DGallery;->isOnGalleryTouch:Z

    .line 26
    invoke-direct {p0}, Lcn/domob/ui/view/DGallery;->initGallery()V

    .line 27
    return-void
.end method

.method static synthetic access$002(Lcn/domob/ui/view/DGallery;Z)Z
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/DGallery;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcn/domob/ui/view/DGallery;->isOnGalleryTouch:Z

    return p1
.end method

.method private initGallery()V
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcn/domob/ui/view/DGallery$1;

    invoke-direct {v0, p0}, Lcn/domob/ui/view/DGallery$1;-><init>(Lcn/domob/ui/view/DGallery;)V

    invoke-virtual {p0, v0}, Lcn/domob/ui/view/DGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method public isOnGalleryTouch()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcn/domob/ui/view/DGallery;->isOnGalleryTouch:Z

    return v0
.end method

.method public isScroollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 61
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
    .line 51
    invoke-virtual {p0, p1, p2}, Lcn/domob/ui/view/DGallery;->isScroollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 52
    const/16 v0, 0x15

    .line 56
    :goto_8
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/domob/ui/view/DGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 57
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_e
    const/16 v0, 0x16

    goto :goto_8
.end method
