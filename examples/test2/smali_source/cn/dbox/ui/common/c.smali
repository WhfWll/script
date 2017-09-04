.class public Lcn/dbox/ui/common/c;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final a:I

.field b:Lcn/dbox/ui/d/c;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/16 v2, 0x32

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput v2, p0, Lcn/dbox/ui/common/c;->a:I

    .line 28
    iput-object p1, p0, Lcn/dbox/ui/common/c;->c:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcn/dbox/ui/common/c;->d:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcn/dbox/ui/common/c;->a()V

    .line 31
    iget-object v0, p0, Lcn/dbox/ui/common/c;->e:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 32
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-static {p1, v2}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34
    iget-object v1, p0, Lcn/dbox/ui/common/c;->e:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcn/dbox/ui/common/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    :cond_21
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcn/dbox/ui/common/c;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/common/c;->c:Landroid/content/Context;

    const-string v2, "dbox_home_titlebar"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/common/c;->e:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcn/dbox/ui/common/c;->e:Landroid/view/View;

    iget-object v1, p0, Lcn/dbox/ui/common/c;->c:Landroid/content/Context;

    const-string v2, "home_back_rl"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/dbox/ui/common/c;->h:Landroid/widget/RelativeLayout;

    .line 47
    iget-object v0, p0, Lcn/dbox/ui/common/c;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/dbox/ui/common/c$1;

    invoke-direct {v1, p0}, Lcn/dbox/ui/common/c$1;-><init>(Lcn/dbox/ui/common/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcn/dbox/ui/common/c;->e:Landroid/view/View;

    iget-object v1, p0, Lcn/dbox/ui/common/c;->c:Landroid/content/Context;

    const-string v2, "home_set_rl"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/dbox/ui/common/c;->i:Landroid/widget/RelativeLayout;

    .line 58
    iget-object v0, p0, Lcn/dbox/ui/common/c;->i:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/dbox/ui/common/c$2;

    invoke-direct {v1, p0}, Lcn/dbox/ui/common/c$2;-><init>(Lcn/dbox/ui/common/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcn/dbox/ui/common/c;->e:Landroid/view/View;

    iget-object v1, p0, Lcn/dbox/ui/common/c;->c:Landroid/content/Context;

    const-string v2, "home_title_text"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/dbox/ui/common/c;->g:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcn/dbox/ui/common/c;->e:Landroid/view/View;

    iget-object v1, p0, Lcn/dbox/ui/common/c;->c:Landroid/content/Context;

    const-string v2, "home_title"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/dbox/ui/common/c;->f:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcn/dbox/ui/common/c;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcn/dbox/ui/common/c;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcn/dbox/ui/common/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_be

    .line 76
    iget-object v0, p0, Lcn/dbox/ui/common/c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b6

    .line 77
    iget-object v0, p0, Lcn/dbox/ui/common/c;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/dbox/ui/common/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_ab
    iget-object v0, p0, Lcn/dbox/ui/common/c;->g:Landroid/widget/TextView;

    new-instance v1, Lcn/dbox/ui/common/c$3;

    invoke-direct {v1, p0}, Lcn/dbox/ui/common/c$3;-><init>(Lcn/dbox/ui/common/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void

    .line 79
    :cond_b6
    iget-object v0, p0, Lcn/dbox/ui/common/c;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/dbox/ui/common/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ab

    .line 82
    :cond_be
    iget-object v0, p0, Lcn/dbox/ui/common/c;->g:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ab
.end method

.method public a(Lcn/dbox/ui/d/c;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcn/dbox/ui/common/c;->b:Lcn/dbox/ui/d/c;

    .line 40
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcn/dbox/ui/common/c;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 96
    iget-object v0, p0, Lcn/dbox/ui/common/c;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_9
    return-void
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, Lcn/dbox/ui/common/c;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 102
    if-eqz p1, :cond_d

    .line 103
    iget-object v0, p0, Lcn/dbox/ui/common/c;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :cond_c
    :goto_c
    return-void

    .line 105
    :cond_d
    iget-object v0, p0, Lcn/dbox/ui/common/c;->g:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c
.end method

.method public b(Z)V
    .registers 4

    .prologue
    .line 111
    iget-object v0, p0, Lcn/dbox/ui/common/c;->i:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_c

    .line 112
    if-eqz p1, :cond_d

    .line 113
    iget-object v0, p0, Lcn/dbox/ui/common/c;->i:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 118
    :cond_c
    :goto_c
    return-void

    .line 115
    :cond_d
    iget-object v0, p0, Lcn/dbox/ui/common/c;->i:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_c
.end method
