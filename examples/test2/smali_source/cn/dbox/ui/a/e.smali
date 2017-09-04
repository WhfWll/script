.class public Lcn/dbox/ui/a/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/a/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/dbox/core/b;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcn/dbox/core/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;",
            "Lcn/dbox/core/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcn/dbox/ui/a/e;->a:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcn/dbox/ui/a/e;->b:Ljava/util/ArrayList;

    .line 34
    iput-object p3, p0, Lcn/dbox/ui/a/e;->c:Lcn/dbox/core/b;

    .line 35
    invoke-static {p1}, Lcn/dbox/ui/common/k;->g(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcn/dbox/ui/a/e;->d:I

    .line 37
    invoke-static {p1}, Lcn/dbox/ui/common/k;->i(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcn/dbox/ui/a/e;->e:I

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcn/dbox/ui/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 57
    if-nez p2, :cond_163

    .line 58
    iget-object v0, p0, Lcn/dbox/ui/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/a/e;->a:Landroid/content/Context;

    const-string v2, "dbox_feeds_item"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance v1, Lcn/dbox/ui/a/e$a;

    invoke-direct {v1, p0, v3}, Lcn/dbox/ui/a/e$a;-><init>(Lcn/dbox/ui/a/e;Lcn/dbox/ui/a/e$1;)V

    .line 62
    iget-object v0, p0, Lcn/dbox/ui/a/e;->a:Landroid/content/Context;

    const-string v2, "list_thumbnail"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/dbox/ui/a/e$a;->a:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcn/dbox/ui/a/e;->a:Landroid/content/Context;

    const-string v2, "list_title_tag"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/dbox/ui/a/e$a;->b:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcn/dbox/ui/a/e;->a:Landroid/content/Context;

    const-string v2, "list_title"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/dbox/ui/a/e$a;->c:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcn/dbox/ui/a/e;->a:Landroid/content/Context;

    const-string v2, "list_large_image"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/dbox/ui/a/e$a;->d:Landroid/widget/ImageView;

    .line 70
    iget-object v0, v1, Lcn/dbox/ui/a/e$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcn/dbox/ui/a/e;->d:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    iget-object v0, v1, Lcn/dbox/ui/a/e$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcn/dbox/ui/a/e;->e:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    iget-object v0, p0, Lcn/dbox/ui/a/e;->a:Landroid/content/Context;

    const-string v2, "list_describe"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/dbox/ui/a/e$a;->e:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcn/dbox/ui/a/e;->a:Landroid/content/Context;

    const-string v2, "list_describe_btn"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/dbox/ui/a/e$a;->f:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    :goto_92
    iget-object v0, p0, Lcn/dbox/ui/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->g()Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_19a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_19a

    .line 84
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    iget-object v2, v1, Lcn/dbox/ui/a/e$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    const-string v2, "recommend"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16c

    .line 87
    iget-object v0, v1, Lcn/dbox/ui/a/e$a;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/dbox/ui/a/e;->a:Landroid/content/Context;

    const-string v3, "dbox_feeds_tag_jian"

    invoke-static {v2, v3}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 97
    :cond_c7
    :goto_c7
    iget-object v0, v1, Lcn/dbox/ui/a/e$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 98
    iget-object v0, v1, Lcn/dbox/ui/a/e$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 99
    iget-object v0, v1, Lcn/dbox/ui/a/e$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 100
    iget-object v0, v1, Lcn/dbox/ui/a/e$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 101
    iget-object v0, v1, Lcn/dbox/ui/a/e$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 104
    iget-object v2, v1, Lcn/dbox/ui/a/e$a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/dbox/ui/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, v1, Lcn/dbox/ui/a/e$a;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/dbox/ui/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, v1, Lcn/dbox/ui/a/e$a;->f:Landroid/widget/TextView;

    const-string v2, ">>"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, v1, Lcn/dbox/ui/a/e$a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/dbox/ui/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 108
    iget-object v2, p0, Lcn/dbox/ui/a/e;->c:Lcn/dbox/core/b;

    iget-object v0, p0, Lcn/dbox/ui/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcn/dbox/ui/a/e$a;->a:Landroid/widget/ImageView;

    new-instance v4, Lcn/dbox/ui/a/e$1;

    invoke-direct {v4, p0}, Lcn/dbox/ui/a/e$1;-><init>(Lcn/dbox/ui/a/e;)V

    invoke-virtual {v2, v0, v3, v4}, Lcn/dbox/core/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/dbox/core/b$k;)V

    .line 126
    iget-object v0, v1, Lcn/dbox/ui/a/e$a;->d:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 128
    iget-object v2, v1, Lcn/dbox/ui/a/e$a;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/dbox/ui/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v2, p0, Lcn/dbox/ui/a/e;->c:Lcn/dbox/core/b;

    iget-object v0, p0, Lcn/dbox/ui/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcn/dbox/ui/a/e$a;->d:Landroid/widget/ImageView;

    new-instance v3, Lcn/dbox/ui/a/e$2;

    invoke-direct {v3, p0}, Lcn/dbox/ui/a/e$2;-><init>(Lcn/dbox/ui/a/e;)V

    invoke-virtual {v2, v0, v1, v3}, Lcn/dbox/core/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/dbox/core/b$k;)V

    .line 148
    return-object p2

    .line 79
    :cond_163
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/ui/a/e$a;

    move-object v1, v0

    goto/16 :goto_92

    .line 88
    :cond_16c
    const-string v2, "hot"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_183

    .line 89
    iget-object v0, v1, Lcn/dbox/ui/a/e$a;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/dbox/ui/a/e;->a:Landroid/content/Context;

    const-string v3, "dbox_feeds_tag_re"

    invoke-static {v2, v3}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_c7

    .line 90
    :cond_183
    const-string v2, "choiceness"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 91
    iget-object v0, v1, Lcn/dbox/ui/a/e$a;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/dbox/ui/a/e;->a:Landroid/content/Context;

    const-string v3, "dbox_feeds_tag_jing"

    invoke-static {v2, v3}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_c7

    .line 94
    :cond_19a
    iget-object v0, v1, Lcn/dbox/ui/a/e$a;->b:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c7
.end method
