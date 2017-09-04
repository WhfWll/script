.class public Lcn/dbox/ui/b/c;
.super Lcn/dbox/ui/b/b;
.source "SourceFile"


# instance fields
.field private a:Lcn/dbox/ui/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;Z)V
    .registers 6

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/dbox/ui/b/b;-><init>(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;Z)V

    .line 23
    iget-object v0, p0, Lcn/dbox/ui/b/c;->k:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    const v0, -0xc0a08

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/c;->setBackgroundColor(I)V

    .line 25
    iget-object v0, p0, Lcn/dbox/ui/b/c;->d:Lcn/dbox/ui/common/c;

    if-eqz v0, :cond_17

    .line 26
    iget-object v0, p0, Lcn/dbox/ui/b/c;->d:Lcn/dbox/ui/common/c;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/c;->addView(Landroid/view/View;)V

    .line 28
    :cond_17
    iget-object v0, p0, Lcn/dbox/ui/b/c;->h:Lcn/dbox/ui/common/b;

    if-eqz v0, :cond_20

    .line 29
    iget-object v0, p0, Lcn/dbox/ui/b/c;->h:Lcn/dbox/ui/common/b;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/c;->addView(Landroid/view/View;)V

    .line 32
    :cond_20
    iget-object v0, p0, Lcn/dbox/ui/b/c;->h:Lcn/dbox/ui/common/b;

    if-nez v0, :cond_38

    invoke-virtual {p2}, Lcn/dbox/core/bean/d;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_38

    .line 33
    iget-object v0, p0, Lcn/dbox/ui/b/c;->i:Lcn/dbox/ui/common/d;

    if-eqz v0, :cond_37

    .line 34
    iget-object v0, p0, Lcn/dbox/ui/b/c;->i:Lcn/dbox/ui/common/d;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/c;->addView(Landroid/view/View;)V

    .line 40
    :cond_37
    :goto_37
    return-void

    .line 37
    :cond_38
    invoke-virtual {p0, p1, p2, p3}, Lcn/dbox/ui/b/c;->a(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;)Lcn/dbox/ui/common/f;

    .line 38
    iget-object v0, p0, Lcn/dbox/ui/b/c;->b:Lcn/dbox/ui/common/f;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/c;->addView(Landroid/view/View;)V

    goto :goto_37
.end method

.method static synthetic a(Lcn/dbox/ui/b/c;)Lcn/dbox/ui/a/e;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/dbox/ui/b/c;->a:Lcn/dbox/ui/a/e;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;)Lcn/dbox/ui/common/f;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 47
    new-instance v0, Lcn/dbox/ui/common/f;

    invoke-direct {v0, p1}, Lcn/dbox/ui/common/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/ui/b/c;->b:Lcn/dbox/ui/common/f;

    .line 48
    iget-object v0, p0, Lcn/dbox/ui/b/c;->b:Lcn/dbox/ui/common/f;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/f;->setFadingEdgeLength(I)V

    .line 49
    iget-object v0, p0, Lcn/dbox/ui/b/c;->b:Lcn/dbox/ui/common/f;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/f;->setCacheColorHint(I)V

    .line 50
    iget-object v0, p0, Lcn/dbox/ui/b/c;->b:Lcn/dbox/ui/common/f;

    new-instance v1, Lcn/dbox/ui/b/c$1;

    invoke-direct {v1, p0}, Lcn/dbox/ui/b/c$1;-><init>(Lcn/dbox/ui/b/c;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/f;->a(Lcn/dbox/ui/common/f$b;)V

    .line 65
    invoke-virtual {p2}, Lcn/dbox/core/bean/d;->l()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/b/c;->s:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcn/dbox/ui/a/e;

    iget-object v1, p0, Lcn/dbox/ui/b/c;->s:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v1, p3}, Lcn/dbox/ui/a/e;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcn/dbox/core/b;)V

    iput-object v0, p0, Lcn/dbox/ui/b/c;->a:Lcn/dbox/ui/a/e;

    .line 69
    iget-object v0, p0, Lcn/dbox/ui/b/c;->o:Landroid/view/View;

    if-eqz v0, :cond_3d

    .line 71
    iget-object v0, p0, Lcn/dbox/ui/b/c;->b:Lcn/dbox/ui/common/f;

    iget-object v1, p0, Lcn/dbox/ui/b/c;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/f;->addFooterView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcn/dbox/ui/b/c;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_3d
    iget-object v0, p0, Lcn/dbox/ui/b/c;->b:Lcn/dbox/ui/common/f;

    iget-object v1, p0, Lcn/dbox/ui/b/c;->a:Lcn/dbox/ui/a/e;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/f;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v0, p0, Lcn/dbox/ui/b/c;->b:Lcn/dbox/ui/common/f;

    new-instance v1, Lcn/dbox/ui/b/c$2;

    invoke-direct {v1, p0, p2}, Lcn/dbox/ui/b/c$2;-><init>(Lcn/dbox/ui/b/c;Lcn/dbox/core/bean/d;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/f;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    iget-object v0, p0, Lcn/dbox/ui/b/c;->b:Lcn/dbox/ui/common/f;

    return-object v0
.end method
