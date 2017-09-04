.class public Lcn/dbox/ui/common/i;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final a:I

.field b:Lcn/dbox/ui/d/e;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/16 v2, 0x2d

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    iput v2, p0, Lcn/dbox/ui/common/i;->a:I

    .line 28
    iput-object p1, p0, Lcn/dbox/ui/common/i;->c:Landroid/content/Context;

    .line 30
    invoke-virtual {p0}, Lcn/dbox/ui/common/i;->a()V

    .line 31
    iget-object v0, p0, Lcn/dbox/ui/common/i;->d:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 32
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-static {p1, v2}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    iget-object v1, p0, Lcn/dbox/ui/common/i;->d:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcn/dbox/ui/common/i;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    :cond_1f
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lcn/dbox/ui/common/i;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/common/i;->c:Landroid/content/Context;

    const-string v2, "dbox_home_titlebar"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/common/i;->d:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcn/dbox/ui/common/i;->d:Landroid/view/View;

    iget-object v1, p0, Lcn/dbox/ui/common/i;->c:Landroid/content/Context;

    const-string v2, "home_back_rl"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/dbox/ui/common/i;->g:Landroid/widget/RelativeLayout;

    .line 50
    iget-object v0, p0, Lcn/dbox/ui/common/i;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/dbox/ui/common/i$1;

    invoke-direct {v1, p0}, Lcn/dbox/ui/common/i$1;-><init>(Lcn/dbox/ui/common/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcn/dbox/ui/common/i;->d:Landroid/view/View;

    iget-object v1, p0, Lcn/dbox/ui/common/i;->c:Landroid/content/Context;

    const-string v2, "home_set_rl"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/dbox/ui/common/i;->h:Landroid/widget/RelativeLayout;

    .line 63
    iget-object v0, p0, Lcn/dbox/ui/common/i;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/dbox/ui/common/i$2;

    invoke-direct {v1, p0}, Lcn/dbox/ui/common/i$2;-><init>(Lcn/dbox/ui/common/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcn/dbox/ui/common/i;->d:Landroid/view/View;

    iget-object v1, p0, Lcn/dbox/ui/common/i;->c:Landroid/content/Context;

    const-string v2, "home_title"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/dbox/ui/common/i;->e:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcn/dbox/ui/common/i;->d:Landroid/view/View;

    iget-object v1, p0, Lcn/dbox/ui/common/i;->c:Landroid/content/Context;

    const-string v2, "home_title_text"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/dbox/ui/common/i;->f:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcn/dbox/ui/common/i;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcn/dbox/ui/common/i;->f:Landroid/widget/TextView;

    const-string v1, "\u65c5\u884c\u4f11\u95f2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcn/dbox/ui/common/i;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcn/dbox/ui/common/i;->e:Landroid/widget/ImageView;

    new-instance v1, Lcn/dbox/ui/common/i$3;

    invoke-direct {v1, p0}, Lcn/dbox/ui/common/i$3;-><init>(Lcn/dbox/ui/common/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method public a(Lcn/dbox/ui/d/e;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcn/dbox/ui/common/i;->b:Lcn/dbox/ui/d/e;

    .line 43
    return-void
.end method
