.class public Lcom/sdu/didi/openapi/pK/a;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sdu/didi/openapi/pK/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sdu/didi/openapi/pK/a;->a()V

    return-void
.end method

.method private a()V
    .registers 10

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/high16 v6, 0x41f00000

    const/16 v5, 0x11

    const/4 v4, 0x1

    new-instance v0, Lcom/sdu/didi/openapi/ss/e;

    iget-object v1, p0, Lcom/sdu/didi/openapi/pK/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sdu/didi/openapi/ss/e;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object v2, p0, Lcom/sdu/didi/openapi/pK/a;->a:Landroid/content/Context;

    const/high16 v3, 0x40800000

    invoke-static {v2, v3}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/pK/a;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/pK/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/pK/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sdu/didi/openapi/pK/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sdu/didi/openapi/pK/a;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sdu/didi/openapi/pK/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sdu/didi/openapi/pK/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/sdu/didi/openapi/pK/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sdu/didi/openapi/pK/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sdu/didi/openapi/pK/a;->c:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/sdu/didi/openapi/pK/a;->a:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/sdu/didi/openapi/pK/a;->a:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/sdu/didi/openapi/pK/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sdu/didi/openapi/pK/a;->c:Landroid/widget/ImageView;

    const-string v2, "didi_loading_icon"

    invoke-virtual {v0, v2}, Lcom/sdu/didi/openapi/ss/e;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sdu/didi/openapi/pK/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/pK/a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdu/didi/openapi/pK/a;->b:Landroid/widget/TextView;

    const-string v1, "#666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/pK/a;->b:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41500000

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/pK/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/sdu/didi/openapi/pK/a;->a:Landroid/content/Context;

    const/high16 v2, 0x41200000

    invoke-static {v1, v2}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/sdu/didi/openapi/pK/a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/pK/a;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdu/didi/openapi/pK/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/pK/a;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdu/didi/openapi/pK/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/pK/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/sdu/didi/openapi/pK/a;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "content"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/pK/a;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sdu/didi/openapi/pK/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public show()V
    .registers 8

    const/high16 v4, 0x3f000000

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3c4c0000

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/sdu/didi/openapi/pK/a;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/sdu/didi/openapi/pK/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2f
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/pK/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/pK/a;->a:Landroid/content/Context;

    const/high16 v2, 0x43160000

    invoke-static {v1, v2}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/sdu/didi/openapi/pK/a;->a:Landroid/content/Context;

    const/high16 v3, 0x42c80000

    invoke-static {v2, v3}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
