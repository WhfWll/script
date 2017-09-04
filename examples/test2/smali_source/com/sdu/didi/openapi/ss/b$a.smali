.class public Lcom/sdu/didi/openapi/ss/b$a;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdu/didi/openapi/ss/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sdu/didi/openapi/ss/b;


# direct methods
.method protected constructor <init>(Lcom/sdu/didi/openapi/ss/b;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/sdu/didi/openapi/ss/b$a;->a:Lcom/sdu/didi/openapi/ss/b;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p3}, Lcom/sdu/didi/openapi/ss/b$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 13

    const/high16 v10, 0x42700000

    const/high16 v6, 0x41a00000

    const/high16 v9, 0x40c00000

    const/4 v8, 0x1

    const/4 v7, -0x1

    invoke-virtual {p0, v8}, Lcom/sdu/didi/openapi/ss/b$a;->requestWindowFeature(I)Z

    new-instance v0, Lcom/sdu/didi/openapi/ss/e;

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdu/didi/openapi/ss/e;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x43960000

    invoke-static {v3, v4}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x43820000

    invoke-static {v4, v5}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v4, "didi_info_icon"

    invoke-virtual {v0, v4}, Lcom/sdu/didi/openapi/ss/e;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41f00000

    invoke-static {v4, v5}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    const-string v3, "#ff878787"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41980000

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42c80000

    invoke-static {v4, v5}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    const/high16 v4, 0x41800000

    invoke-virtual {v0, v3, v4}, Landroid/widget/Button;->setTextSize(IF)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setGravity(I)V

    const-string v3, "\u6211\u77e5\u9053\u4e86"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v4, "#ffff8903"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x43480000

    invoke-static {v4, v5}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42480000

    invoke-static {v5, v6}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/b$a;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x433e0000

    invoke-static {v4, v5}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/sdu/didi/openapi/ss/c;

    invoke-direct {v3, p0}, Lcom/sdu/didi/openapi/ss/c;-><init>(Lcom/sdu/didi/openapi/ss/b$a;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1, v2}, Lcom/sdu/didi/openapi/ss/b$a;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
