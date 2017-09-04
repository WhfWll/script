.class public Lcn/dbox/ui/c/a;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/c/a$b;,
        Lcn/dbox/ui/c/a$a;
    }
.end annotation


# instance fields
.field a:Lcn/dbox/ui/c/a$b;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcn/dbox/ui/c/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcn/dbox/ui/c/a;->e:I

    .line 24
    iput-object p1, p0, Lcn/dbox/ui/c/a;->b:Landroid/content/Context;

    .line 25
    invoke-virtual {p0, p1, p2}, Lcn/dbox/ui/c/a;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 26
    return-void
.end method

.method static synthetic a(Lcn/dbox/ui/c/a;)Lcn/dbox/ui/c/a$a;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/dbox/ui/c/a;->f:Lcn/dbox/ui/c/a$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcn/dbox/ui/c/a;->e:I

    return v0
.end method

.method public a(Landroid/view/View;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 183
    move v1, v0

    move v2, v0

    .line 184
    :goto_3
    iget-object v0, p0, Lcn/dbox/ui/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 185
    iget-object v0, p0, Lcn/dbox/ui/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v2, v1

    .line 184
    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 189
    :cond_1e
    return v2
.end method

.method public a(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/d;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x46

    invoke-static {p2, v3}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 96
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/16 v1, 0x28

    invoke-static {p2, v1}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    const/high16 v0, 0x3f800000

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/dbox/ui/c/a;->d:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/dbox/ui/c/a;->c:Ljava/util/ArrayList;

    .line 105
    const/4 v0, 0x0

    move v1, v0

    :goto_3c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_15f

    .line 106
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v0, 0x5a

    invoke-static {p2, v0}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v0

    const/16 v6, 0x32

    invoke-static {p2, v6}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v5, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->d()Ljava/lang/String;

    move-result-object v6

    .line 111
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->f()Ljava/util/ArrayList;

    move-result-object v7

    .line 113
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    if-eqz v7, :cond_12e

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x1

    if-lt v0, v9, :cond_12e

    if-eqz v6, :cond_12e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v9, 0x5

    if-lt v0, v9, :cond_12e

    .line 116
    const/16 v0, 0x13

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 121
    :goto_8b
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const/high16 v0, -0x1000000

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    new-instance v0, Lcn/dbox/ui/c/a$1;

    invoke-direct {v0, p0}, Lcn/dbox/ui/c/a$1;-><init>(Lcn/dbox/ui/c/a;)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    if-nez v1, :cond_b9

    .line 139
    iget-object v0, p0, Lcn/dbox/ui/c/a;->b:Landroid/content/Context;

    const-string v6, "dbox_flat_container_bg"

    invoke-static {v0, v6}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 140
    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    :cond_b9
    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v0

    const/16 v6, 0xa

    invoke-static {p2, v6}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v6

    const/4 v9, 0x5

    invoke-static {p2, v9}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v9

    const/16 v10, 0xa

    invoke-static {p2, v10}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v4, v0, v6, v9, v10}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 145
    iget-object v0, p0, Lcn/dbox/ui/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 150
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xf

    invoke-static {p2, v0}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v0

    const/16 v8, 0xf

    invoke-static {p2, v8}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v6, v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 153
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 158
    if-eqz v7, :cond_121

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v8, 0x1

    if-lt v0, v8, :cond_121

    .line 159
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    const-string v7, "new"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_135

    .line 162
    const-string v0, "dbox_flat_tag_new"

    invoke-static {p2, v0}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 163
    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    :cond_121
    :goto_121
    iget-object v0, p0, Lcn/dbox/ui/c/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3c

    .line 118
    :cond_12e
    const/16 v0, 0x11

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_8b

    .line 164
    :cond_135
    const-string v7, "hot"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14a

    .line 165
    const-string v0, "dbox_flat_tag_hot"

    invoke-static {p2, v0}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 166
    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_121

    .line 167
    :cond_14a
    const-string v7, "red"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 168
    const-string v0, "dbox_flat_tag_red"

    invoke-static {p2, v0}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 169
    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_121

    .line 178
    :cond_15f
    return-object v2
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 66
    iput p1, p0, Lcn/dbox/ui/c/a;->e:I

    .line 67
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x32

    .line 29
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-static {p1, v3}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 32
    invoke-virtual {p0, v0}, Lcn/dbox/ui/c/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/dbox/ui/c/a;->setHorizontalScrollBarEnabled(Z)V

    .line 34
    invoke-virtual {p0, p2, p1}, Lcn/dbox/ui/c/a;->a(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 36
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-static {p1, v3}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    invoke-virtual {p0, v0}, Lcn/dbox/ui/c/a;->addView(Landroid/view/View;)V

    .line 42
    return-void
.end method

.method public a(Lcn/dbox/ui/c/a$a;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcn/dbox/ui/c/a;->f:Lcn/dbox/ui/c/a$a;

    .line 86
    return-void
.end method

.method public a(Lcn/dbox/ui/c/a$b;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcn/dbox/ui/c/a;->a:Lcn/dbox/ui/c/a$b;

    .line 217
    return-void
.end method

.method public b(I)V
    .registers 5

    .prologue
    .line 195
    iget-object v0, p0, Lcn/dbox/ui/c/a;->c:Ljava/util/ArrayList;

    iget v1, p0, Lcn/dbox/ui/c/a;->e:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    iget-object v0, p0, Lcn/dbox/ui/c/a;->c:Ljava/util/ArrayList;

    iget v1, p0, Lcn/dbox/ui/c/a;->e:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 197
    iget-object v0, p0, Lcn/dbox/ui/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/dbox/ui/c/a;->b:Landroid/content/Context;

    const-string v2, "dbox_flat_container_bg"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 198
    iget-object v0, p0, Lcn/dbox/ui/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iput p1, p0, Lcn/dbox/ui/c/a;->e:I

    .line 200
    return-void
.end method

.method public computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 221
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 227
    iget-object v0, p0, Lcn/dbox/ui/c/a;->a:Lcn/dbox/ui/c/a$b;

    if-eqz v0, :cond_c

    .line 228
    iget-object v0, p0, Lcn/dbox/ui/c/a;->a:Lcn/dbox/ui/c/a$b;

    invoke-interface {v0, p2}, Lcn/dbox/ui/c/a$b;->a(I)V

    .line 230
    :cond_c
    return-void
.end method
