.class public Lcn/dbox/ui/a/f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/a/f$a;
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
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/dbox/ui/a/f;->a:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcn/dbox/ui/a/f;->b:Ljava/util/ArrayList;

    .line 29
    iput-object p3, p0, Lcn/dbox/ui/a/f;->c:Lcn/dbox/core/b;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/dbox/ui/a/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 44
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

    .line 50
    if-nez p2, :cond_df

    .line 51
    iget-object v0, p0, Lcn/dbox/ui/a/f;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/a/f;->a:Landroid/content/Context;

    const-string v2, "dbox_list_container_item"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    new-instance v1, Lcn/dbox/ui/a/f$a;

    invoke-direct {v1, p0, v3}, Lcn/dbox/ui/a/f$a;-><init>(Lcn/dbox/ui/a/f;Lcn/dbox/ui/a/f$1;)V

    .line 55
    iget-object v0, p0, Lcn/dbox/ui/a/f;->a:Landroid/content/Context;

    const-string v2, "lsit_logo"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/dbox/ui/a/f$a;->a:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcn/dbox/ui/a/f;->a:Landroid/content/Context;

    const-string v2, "lsit_logo_tag"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/dbox/ui/a/f$a;->b:Landroid/widget/ImageView;

    .line 59
    iget-object v0, p0, Lcn/dbox/ui/a/f;->a:Landroid/content/Context;

    const-string v2, "list_name"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/dbox/ui/a/f$a;->c:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcn/dbox/ui/a/f;->a:Landroid/content/Context;

    const-string v2, "list_describe"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/dbox/ui/a/f$a;->d:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :goto_5e
    iget-object v0, p0, Lcn/dbox/ui/a/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->g()Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_114

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_114

    .line 71
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    iget-object v2, v1, Lcn/dbox/ui/a/f$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    const-string v2, "recommend"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 74
    iget-object v0, v1, Lcn/dbox/ui/a/f$a;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/dbox/ui/a/f;->a:Landroid/content/Context;

    const-string v3, "dbox_card_tag_tj"

    invoke-static {v2, v3}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 84
    :cond_93
    :goto_93
    iget-object v2, v1, Lcn/dbox/ui/a/f$a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/dbox/ui/a/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, v1, Lcn/dbox/ui/a/f$a;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/dbox/ui/a/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, v1, Lcn/dbox/ui/a/f$a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/dbox/ui/a/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lcn/dbox/ui/a/f;->c:Lcn/dbox/core/b;

    iget-object v0, p0, Lcn/dbox/ui/a/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcn/dbox/ui/a/f$a;->a:Landroid/widget/ImageView;

    new-instance v3, Lcn/dbox/ui/a/f$1;

    invoke-direct {v3, p0}, Lcn/dbox/ui/a/f$1;-><init>(Lcn/dbox/ui/a/f;)V

    invoke-virtual {v2, v0, v1, v3}, Lcn/dbox/core/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/dbox/core/b$k;)V

    .line 105
    return-object p2

    .line 65
    :cond_df
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/ui/a/f$a;

    move-object v1, v0

    goto/16 :goto_5e

    .line 75
    :cond_e8
    const-string v2, "hot"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 76
    iget-object v0, v1, Lcn/dbox/ui/a/f$a;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/dbox/ui/a/f;->a:Landroid/content/Context;

    const-string v3, "dbox_card_tag_rm"

    invoke-static {v2, v3}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_93

    .line 77
    :cond_fe
    const-string v2, "choiceness"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 78
    iget-object v0, v1, Lcn/dbox/ui/a/f$a;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/dbox/ui/a/f;->a:Landroid/content/Context;

    const-string v3, "dbox_card_tag_jx"

    invoke-static {v2, v3}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_93

    .line 81
    :cond_114
    iget-object v0, v1, Lcn/dbox/ui/a/f$a;->b:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_93
.end method
