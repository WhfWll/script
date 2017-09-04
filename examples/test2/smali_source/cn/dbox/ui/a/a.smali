.class public Lcn/dbox/ui/a/a;
.super Lcn/dbox/ui/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/a/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcn/dbox/core/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcn/dbox/core/b;)V
    .registers 4
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
    .line 30
    invoke-direct {p0, p1}, Lcn/dbox/ui/a/g;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcn/dbox/ui/a/a;->a:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcn/dbox/ui/a/a;->b:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcn/dbox/ui/a/a;->c:Lcn/dbox/core/b;

    .line 34
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcn/dbox/ui/a/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 134
    iget-object v0, p0, Lcn/dbox/ui/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 136
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 49
    if-nez p2, :cond_be

    .line 50
    iget-object v0, p0, Lcn/dbox/ui/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/a/a;->b:Landroid/content/Context;

    const-string v2, "dbox_cardview_item"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    new-instance v1, Lcn/dbox/ui/a/a$a;

    invoke-direct {v1, p0, v3}, Lcn/dbox/ui/a/a$a;-><init>(Lcn/dbox/ui/a/a;Lcn/dbox/ui/a/a$1;)V

    .line 55
    iget-object v0, p0, Lcn/dbox/ui/a/a;->b:Landroid/content/Context;

    const-string v2, "card_logo"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/dbox/ui/a/a$a;->a:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcn/dbox/ui/a/a;->b:Landroid/content/Context;

    const-string v2, "card_name"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/dbox/ui/a/a$a;->b:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcn/dbox/ui/a/a;->b:Landroid/content/Context;

    const-string v2, "card_tag"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/dbox/ui/a/a$a;->c:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    :goto_4e
    iget-object v0, p0, Lcn/dbox/ui/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->g()Ljava/util/ArrayList;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_140

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_140

    .line 89
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    iget-object v2, v1, Lcn/dbox/ui/a/a$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    const-string v2, "recommend"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 92
    iget-object v0, v1, Lcn/dbox/ui/a/a$a;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/dbox/ui/a/a;->b:Landroid/content/Context;

    const-string v3, "dbox_card_tag_tj"

    invoke-static {v2, v3}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 103
    :cond_83
    :goto_83
    iget-object v2, v1, Lcn/dbox/ui/a/a$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/dbox/ui/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, v1, Lcn/dbox/ui/a/a$a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/dbox/ui/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v2, p0, Lcn/dbox/ui/a/a;->c:Lcn/dbox/core/b;

    iget-object v0, p0, Lcn/dbox/ui/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcn/dbox/ui/a/a$a;->a:Landroid/widget/ImageView;

    new-instance v3, Lcn/dbox/ui/a/a$1;

    invoke-direct {v3, p0}, Lcn/dbox/ui/a/a$1;-><init>(Lcn/dbox/ui/a/a;)V

    invoke-virtual {v2, v0, v1, v3}, Lcn/dbox/core/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/dbox/core/b$k;)V

    .line 122
    return-object p2

    .line 66
    :cond_be
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/ui/a/a$a;

    .line 68
    if-nez v0, :cond_148

    .line 69
    iget-object v0, p0, Lcn/dbox/ui/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/a/a;->b:Landroid/content/Context;

    const-string v2, "dbox_cardview_item"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v1, Lcn/dbox/ui/a/a$a;

    invoke-direct {v1, p0, v3}, Lcn/dbox/ui/a/a$a;-><init>(Lcn/dbox/ui/a/a;Lcn/dbox/ui/a/a$1;)V

    .line 74
    iget-object v0, p0, Lcn/dbox/ui/a/a;->b:Landroid/content/Context;

    const-string v2, "card_logo"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/dbox/ui/a/a$a;->a:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcn/dbox/ui/a/a;->b:Landroid/content/Context;

    const-string v2, "card_name"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/dbox/ui/a/a$a;->b:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcn/dbox/ui/a/a;->b:Landroid/content/Context;

    const-string v2, "card_tag"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/dbox/ui/a/a$a;->c:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4e

    .line 93
    :cond_112
    const-string v2, "hot"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_129

    .line 94
    iget-object v0, v1, Lcn/dbox/ui/a/a$a;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/dbox/ui/a/a;->b:Landroid/content/Context;

    const-string v3, "dbox_card_tag_rm"

    invoke-static {v2, v3}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_83

    .line 95
    :cond_129
    const-string v2, "choiceness"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 96
    iget-object v0, v1, Lcn/dbox/ui/a/a$a;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/dbox/ui/a/a;->b:Landroid/content/Context;

    const-string v3, "dbox_card_tag_jx"

    invoke-static {v2, v3}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_83

    .line 99
    :cond_140
    iget-object v0, v1, Lcn/dbox/ui/a/a$a;->c:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_83

    :cond_148
    move-object v1, v0

    goto/16 :goto_4e
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method
