.class public Lcn/dbox/ui/card/b;
.super Lcn/dbox/ui/common/h;
.source "SourceFile"


# instance fields
.field private n:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/dbox/core/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;",
            "Lcn/dbox/core/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/dbox/ui/common/h;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/dbox/core/b;)V

    .line 26
    iget-object v0, p0, Lcn/dbox/ui/card/b;->m:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/card/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    const v0, -0xc0a08

    invoke-virtual {p0, v0}, Lcn/dbox/ui/card/b;->setBackgroundColor(I)V

    .line 29
    invoke-virtual {p0, p1}, Lcn/dbox/ui/card/b;->a(Landroid/content/Context;)Landroid/widget/ScrollView;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/card/b;->n:Landroid/widget/ScrollView;

    .line 30
    iget-object v0, p0, Lcn/dbox/ui/card/b;->n:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/card/b;->addView(Landroid/view/View;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/widget/ScrollView;
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 34
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 41
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v0

    .line 50
    :goto_25
    iget-object v0, p0, Lcn/dbox/ui/card/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6e

    .line 51
    new-instance v4, Lcn/dbox/ui/card/e;

    iget-object v0, p0, Lcn/dbox/ui/card/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/c;

    iget-object v5, p0, Lcn/dbox/ui/card/b;->d:Lcn/dbox/core/b;

    invoke-direct {v4, p1, v0, v5}, Lcn/dbox/ui/card/e;-><init>(Landroid/content/Context;Lcn/dbox/core/bean/c;Lcn/dbox/core/b;)V

    .line 54
    iget-object v0, p0, Lcn/dbox/ui/card/b;->g:Lcn/dbox/ui/d/b;

    invoke-virtual {v4, v0}, Lcn/dbox/ui/card/e;->a(Lcn/dbox/ui/d/b;)V

    .line 56
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    if-eqz v1, :cond_50

    .line 59
    const/16 v5, 0x19

    invoke-static {p1, v5}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 61
    :cond_50
    iget-object v5, p0, Lcn/dbox/ui/card/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_62

    .line 62
    const/16 v5, 0xf

    invoke-static {p1, v5}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 65
    :cond_62
    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcn/dbox/ui/card/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 69
    :cond_6e
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 70
    return-object v2
.end method
