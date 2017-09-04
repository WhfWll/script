.class public Lcn/dbox/ui/a/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/a/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/d;",
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
            "Lcn/dbox/core/bean/d;",
            ">;",
            "Lcn/dbox/core/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p2, p0, Lcn/dbox/ui/a/b;->a:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lcn/dbox/ui/a/b;->b:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Lcn/dbox/ui/a/b;->c:Lcn/dbox/core/b;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcn/dbox/ui/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_11

    .line 34
    iget-object v0, p0, Lcn/dbox/ui/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 37
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcn/dbox/ui/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcn/dbox/ui/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    goto :goto_10
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 54
    if-nez p2, :cond_e9

    .line 55
    iget-object v0, p0, Lcn/dbox/ui/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/a/b;->b:Landroid/content/Context;

    const-string v2, "dbox_cardview_layout_item"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v1, Lcn/dbox/ui/a/b$a;

    invoke-direct {v1, p0, v3}, Lcn/dbox/ui/a/b$a;-><init>(Lcn/dbox/ui/a/b;Lcn/dbox/ui/a/b$1;)V

    .line 60
    iget-object v0, p0, Lcn/dbox/ui/a/b;->b:Landroid/content/Context;

    const-string v2, "card_logo"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/dbox/ui/a/b$a;->a:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lcn/dbox/ui/a/b;->b:Landroid/content/Context;

    const-string v2, "card_name"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/dbox/ui/a/b$a;->b:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcn/dbox/ui/a/b;->b:Landroid/content/Context;

    const-string v2, "card_tag"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/dbox/ui/a/b$a;->c:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :goto_4f
    iget-object v0, p0, Lcn/dbox/ui/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_127

    .line 75
    iget-object v0, p0, Lcn/dbox/ui/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->f()Ljava/util/ArrayList;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_112

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_112

    .line 77
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    iget-object v2, v1, Lcn/dbox/ui/a/b$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    const-string v2, "new"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 80
    iget-object v0, v1, Lcn/dbox/ui/a/b$a;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/dbox/ui/a/b;->b:Landroid/content/Context;

    const-string v3, "dbox_card_tag_new"

    invoke-static {v2, v3}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 93
    :cond_8c
    :goto_8c
    iget-object v0, p0, Lcn/dbox/ui/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_11f

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_119

    .line 96
    iget-object v2, v1, Lcn/dbox/ui/a/b$a;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_bf
    iget-object v2, v1, Lcn/dbox/ui/a/b$a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/dbox/ui/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 106
    iget-object v2, p0, Lcn/dbox/ui/a/b;->c:Lcn/dbox/core/b;

    iget-object v0, p0, Lcn/dbox/ui/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcn/dbox/ui/a/b$a;->a:Landroid/widget/ImageView;

    new-instance v3, Lcn/dbox/ui/a/b$1;

    invoke-direct {v3, p0}, Lcn/dbox/ui/a/b$1;-><init>(Lcn/dbox/ui/a/b;)V

    invoke-virtual {v2, v0, v1, v3}, Lcn/dbox/core/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/dbox/core/b$k;)V

    .line 129
    :goto_e8
    return-object p2

    .line 71
    :cond_e9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/ui/a/b$a;

    move-object v1, v0

    goto/16 :goto_4f

    .line 81
    :cond_f2
    const-string v2, "hot"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    .line 82
    iget-object v0, v1, Lcn/dbox/ui/a/b$a;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/dbox/ui/a/b;->b:Landroid/content/Context;

    const-string v3, "dbox_card_tag_hot"

    invoke-static {v2, v3}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8c

    .line 83
    :cond_108
    const-string v2, "red"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    goto/16 :goto_8c

    .line 87
    :cond_112
    iget-object v0, v1, Lcn/dbox/ui/a/b$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8c

    .line 98
    :cond_119
    iget-object v2, v1, Lcn/dbox/ui/a/b$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bf

    .line 101
    :cond_11f
    iget-object v0, v1, Lcn/dbox/ui/a/b$a;->b:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bf

    .line 126
    :cond_127
    iget-object v0, v1, Lcn/dbox/ui/a/b$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e8
.end method
