.class public Lcn/dbox/ui/b/f;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Lcn/dbox/ui/common/e;

.field b:Lcn/dbox/ui/common/e$b;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/dbox/core/bean/d;)V
    .registers 4

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/dbox/ui/b/f;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, p1, p2}, Lcn/dbox/ui/b/f;->a(Landroid/content/Context;Lcn/dbox/core/bean/d;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcn/dbox/ui/b/f;->a:Lcn/dbox/ui/common/e;

    if-eqz v0, :cond_f

    .line 58
    iget-object v0, p0, Lcn/dbox/ui/b/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 59
    iget-object v0, p0, Lcn/dbox/ui/b/f;->a:Lcn/dbox/ui/common/e;

    iget-object v1, p0, Lcn/dbox/ui/b/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/e;->loadUrl(Ljava/lang/String;)V

    .line 62
    :cond_f
    return-void
.end method

.method public a(Landroid/content/Context;Lcn/dbox/core/bean/d;)V
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 21
    invoke-virtual {p2}, Lcn/dbox/core/bean/d;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/b/f;->c:Ljava/lang/String;

    .line 22
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 24
    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    const v1, -0xc0a08

    invoke-virtual {p0, v1}, Lcn/dbox/ui/b/f;->setBackgroundColor(I)V

    .line 28
    new-instance v1, Lcn/dbox/ui/common/e;

    invoke-direct {v1, p1, p2}, Lcn/dbox/ui/common/e;-><init>(Landroid/content/Context;Lcn/dbox/core/bean/d;)V

    iput-object v1, p0, Lcn/dbox/ui/b/f;->a:Lcn/dbox/ui/common/e;

    .line 29
    iget-object v1, p0, Lcn/dbox/ui/b/f;->a:Lcn/dbox/ui/common/e;

    invoke-virtual {v1, v0}, Lcn/dbox/ui/common/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v0, p0, Lcn/dbox/ui/b/f;->a:Lcn/dbox/ui/common/e;

    new-instance v1, Lcn/dbox/ui/b/f$1;

    invoke-direct {v1, p0}, Lcn/dbox/ui/b/f$1;-><init>(Lcn/dbox/ui/b/f;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/e;->a(Lcn/dbox/ui/common/e$a;)V

    .line 43
    iget-object v0, p0, Lcn/dbox/ui/b/f;->a:Lcn/dbox/ui/common/e;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/f;->addView(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public a(Lcn/dbox/ui/common/e$b;)V
    .registers 3

    .prologue
    .line 50
    iput-object p1, p0, Lcn/dbox/ui/b/f;->b:Lcn/dbox/ui/common/e$b;

    .line 51
    iget-object v0, p0, Lcn/dbox/ui/b/f;->a:Lcn/dbox/ui/common/e;

    if-eqz v0, :cond_b

    .line 52
    iget-object v0, p0, Lcn/dbox/ui/b/f;->a:Lcn/dbox/ui/common/e;

    invoke-virtual {v0, p1}, Lcn/dbox/ui/common/e;->a(Lcn/dbox/ui/common/e$b;)V

    .line 54
    :cond_b
    return-void
.end method
