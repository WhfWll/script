.class public Lcn/domob/ui/view/ClearEditText;
.super Landroid/widget/EditText;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mClearDrawable:Landroid/graphics/drawable/Drawable;

.field private mEditextChangeZeroListener:Lcn/domob/ui/view/SearchView$EditextChangeZeroListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/domob/ui/view/ClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcn/domob/ui/view/ClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcn/domob/ui/view/ClearEditText;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-virtual {p0}, Lcn/domob/ui/view/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/domob/ui/view/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    iget-object v0, p0, Lcn/domob/ui/view/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_22

    .line 48
    invoke-virtual {p0}, Lcn/domob/ui/view/ClearEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcn/domob/ui/view/ClearEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "u_progress_cancelbtn"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/view/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    :cond_22
    iget-object v0, p0, Lcn/domob/ui/view/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xa

    iget-object v2, p0, Lcn/domob/ui/view/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    iget-object v3, p0, Lcn/domob/ui/view/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    invoke-virtual {p0, v4}, Lcn/domob/ui/view/ClearEditText;->setClearIconVisible(Z)V

    .line 54
    invoke-virtual {p0, p0}, Lcn/domob/ui/view/ClearEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 55
    invoke-virtual {p0, p0}, Lcn/domob/ui/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    return-void
.end method

.method public static shakeAnimation(I)Landroid/view/animation/Animation;
    .registers 5
    .param p0, "counts"    # I

    .prologue
    const/4 v2, 0x0

    .line 144
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x41200000

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 145
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    int-to-float v2, p0

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 146
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 147
    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 127
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 122
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v0, 0x0

    .line 85
    if-eqz p2, :cond_12

    .line 86
    invoke-virtual {p0}, Lcn/domob/ui/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    invoke-virtual {p0, v0}, Lcn/domob/ui/view/ClearEditText;->setClearIconVisible(Z)V

    .line 90
    :goto_11
    return-void

    .line 88
    :cond_12
    invoke-virtual {p0, v0}, Lcn/domob/ui/view/ClearEditText;->setClearIconVisible(Z)V

    goto :goto_11
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 110
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v0}, Lcn/domob/ui/view/ClearEditText;->setClearIconVisible(Z)V

    .line 111
    iget-object v0, p0, Lcn/domob/ui/view/ClearEditText;->mEditextChangeZeroListener:Lcn/domob/ui/view/SearchView$EditextChangeZeroListener;

    if-eqz v0, :cond_19

    .line 112
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_19

    .line 113
    iget-object v0, p0, Lcn/domob/ui/view/ClearEditText;->mEditextChangeZeroListener:Lcn/domob/ui/view/SearchView$EditextChangeZeroListener;

    invoke-interface {v0}, Lcn/domob/ui/view/SearchView$EditextChangeZeroListener;->textChange()V

    .line 116
    :cond_19
    return-void

    .line 110
    :cond_1a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0}, Lcn/domob/ui/view/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-eqz v1, :cond_42

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_42

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcn/domob/ui/view/ClearEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcn/domob/ui/view/ClearEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcn/domob/ui/view/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_47

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcn/domob/ui/view/ClearEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcn/domob/ui/view/ClearEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_47

    .line 71
    :goto_3b
    if-eqz v0, :cond_42

    .line 72
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcn/domob/ui/view/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_42
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 68
    :cond_47
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method protected setClearIconVisible(Z)V
    .registers 7
    .param p1, "visible"    # Z

    .prologue
    .line 98
    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcn/domob/ui/view/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    :goto_4
    invoke-virtual {p0}, Lcn/domob/ui/view/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcn/domob/ui/view/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcn/domob/ui/view/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {p0, v1, v2, v0, v3}, Lcn/domob/ui/view/ClearEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void

    .line 98
    :cond_1d
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public setOnEditextChangeZeroListener(Lcn/domob/ui/view/SearchView$EditextChangeZeroListener;)V
    .registers 2
    .param p1, "listener"    # Lcn/domob/ui/view/SearchView$EditextChangeZeroListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcn/domob/ui/view/ClearEditText;->mEditextChangeZeroListener:Lcn/domob/ui/view/SearchView$EditextChangeZeroListener;

    .line 41
    return-void
.end method

.method public setShakeAnimation()V
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x5

    invoke-static {v0}, Lcn/domob/ui/view/ClearEditText;->shakeAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/domob/ui/view/ClearEditText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 135
    return-void
.end method
