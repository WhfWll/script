.class public Lcn/dbox/ui/b/a;
.super Lcn/dbox/ui/b/b;
.source "SourceFile"


# instance fields
.field a:Lcn/dbox/ui/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;Z)V
    .registers 6

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/dbox/ui/b/b;-><init>(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;Z)V

    .line 23
    iget-object v0, p0, Lcn/dbox/ui/b/a;->k:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    const v0, -0xc0a08

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/a;->setBackgroundColor(I)V

    .line 26
    iget-object v0, p0, Lcn/dbox/ui/b/a;->d:Lcn/dbox/ui/common/c;

    if-eqz v0, :cond_17

    .line 27
    iget-object v0, p0, Lcn/dbox/ui/b/a;->d:Lcn/dbox/ui/common/c;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/a;->addView(Landroid/view/View;)V

    .line 30
    :cond_17
    iget-object v0, p0, Lcn/dbox/ui/b/a;->h:Lcn/dbox/ui/common/b;

    if-eqz v0, :cond_20

    .line 31
    iget-object v0, p0, Lcn/dbox/ui/b/a;->h:Lcn/dbox/ui/common/b;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/a;->addView(Landroid/view/View;)V

    .line 34
    :cond_20
    iget-object v0, p0, Lcn/dbox/ui/b/a;->h:Lcn/dbox/ui/common/b;

    if-nez v0, :cond_38

    invoke-virtual {p2}, Lcn/dbox/core/bean/d;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_38

    .line 35
    iget-object v0, p0, Lcn/dbox/ui/b/a;->i:Lcn/dbox/ui/common/d;

    if-eqz v0, :cond_37

    .line 36
    iget-object v0, p0, Lcn/dbox/ui/b/a;->i:Lcn/dbox/ui/common/d;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/a;->addView(Landroid/view/View;)V

    .line 42
    :cond_37
    :goto_37
    return-void

    .line 39
    :cond_38
    invoke-virtual {p0, p1, p2, p3}, Lcn/dbox/ui/b/a;->a(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;)Lcn/dbox/ui/common/f;

    .line 40
    iget-object v0, p0, Lcn/dbox/ui/b/a;->b:Lcn/dbox/ui/common/f;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/a;->addView(Landroid/view/View;)V

    goto :goto_37
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;)Lcn/dbox/ui/common/f;
    .registers 6

    .prologue
    .line 51
    new-instance v0, Lcn/dbox/ui/common/f;

    invoke-direct {v0, p1}, Lcn/dbox/ui/common/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/ui/b/a;->b:Lcn/dbox/ui/common/f;

    .line 52
    iget-object v0, p0, Lcn/dbox/ui/b/a;->b:Lcn/dbox/ui/common/f;

    const v1, -0xc0a08

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/f;->setBackgroundColor(I)V

    .line 53
    iget-object v0, p0, Lcn/dbox/ui/b/a;->b:Lcn/dbox/ui/common/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/f;->setCacheColorHint(I)V

    .line 54
    iget-object v0, p0, Lcn/dbox/ui/b/a;->b:Lcn/dbox/ui/common/f;

    const-string v1, "dbox_item_selector"

    invoke-static {p1, v1}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/f;->setSelector(I)V

    .line 55
    iget-object v0, p0, Lcn/dbox/ui/b/a;->b:Lcn/dbox/ui/common/f;

    new-instance v1, Lcn/dbox/ui/b/a$1;

    invoke-direct {v1, p0}, Lcn/dbox/ui/b/a$1;-><init>(Lcn/dbox/ui/b/a;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/f;->a(Lcn/dbox/ui/common/f$b;)V

    .line 69
    iget-object v0, p0, Lcn/dbox/ui/b/a;->o:Landroid/view/View;

    if-eqz v0, :cond_3c

    .line 71
    iget-object v0, p0, Lcn/dbox/ui/b/a;->b:Lcn/dbox/ui/common/f;

    iget-object v1, p0, Lcn/dbox/ui/b/a;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/f;->addFooterView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcn/dbox/ui/b/a;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_3c
    invoke-virtual {p2}, Lcn/dbox/core/bean/d;->l()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/b/a;->s:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Lcn/dbox/ui/a/a;

    iget-object v1, p0, Lcn/dbox/ui/b/a;->s:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v1, p3}, Lcn/dbox/ui/a/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcn/dbox/core/b;)V

    iput-object v0, p0, Lcn/dbox/ui/b/a;->a:Lcn/dbox/ui/a/a;

    .line 79
    iget-object v0, p0, Lcn/dbox/ui/b/a;->a:Lcn/dbox/ui/a/a;

    new-instance v1, Lcn/dbox/ui/b/a$2;

    invoke-direct {v1, p0, p2}, Lcn/dbox/ui/b/a$2;-><init>(Lcn/dbox/ui/b/a;Lcn/dbox/core/bean/d;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/a/a;->a(Lcn/dbox/ui/a/g$a;)V

    .line 101
    iget-object v0, p0, Lcn/dbox/ui/b/a;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_62

    .line 102
    iget-object v0, p0, Lcn/dbox/ui/b/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/a;->a(I)V

    .line 105
    :cond_62
    iget-object v0, p0, Lcn/dbox/ui/b/a;->b:Lcn/dbox/ui/common/f;

    iget-object v1, p0, Lcn/dbox/ui/b/a;->a:Lcn/dbox/ui/a/a;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/f;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    iget-object v0, p0, Lcn/dbox/ui/b/a;->b:Lcn/dbox/ui/common/f;

    return-object v0
.end method
