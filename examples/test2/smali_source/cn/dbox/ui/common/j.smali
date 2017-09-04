.class public Lcn/dbox/ui/common/j;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/app/Dialog;

.field private j:Landroid/content/Context;

.field private k:Lcn/dbox/ui/d/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0, p1}, Lcn/dbox/ui/common/j;->a(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method static synthetic a(Lcn/dbox/ui/common/j;)Lcn/dbox/ui/d/g;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/dbox/ui/common/j;->k:Lcn/dbox/ui/d/g;

    return-object v0
.end method

.method static synthetic b(Lcn/dbox/ui/common/j;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/dbox/ui/common/j;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcn/dbox/ui/common/j;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/dbox/ui/common/j;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcn/dbox/ui/common/j;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/dbox/ui/common/j;->i:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 118
    new-instance v0, Lcn/dbox/ui/common/a;

    iget-object v1, p0, Lcn/dbox/ui/common/j;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/dbox/ui/common/a;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v1, Lcn/dbox/ui/common/j$6;

    invoke-direct {v1, p0}, Lcn/dbox/ui/common/j$6;-><init>(Lcn/dbox/ui/common/j;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/a;->a(Lcn/dbox/ui/common/a$a;)V

    .line 128
    iget-object v1, p0, Lcn/dbox/ui/common/j;->i:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcn/dbox/ui/common/j;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 130
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 41
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "dbox_set"

    invoke-static {p1, v2}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/common/j;->a:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcn/dbox/ui/common/j;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iput-object p1, p0, Lcn/dbox/ui/common/j;->j:Landroid/content/Context;

    .line 46
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x1030010

    invoke-direct {v0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/dbox/ui/common/j;->i:Landroid/app/Dialog;

    .line 48
    iget-object v0, p0, Lcn/dbox/ui/common/j;->a:Landroid/view/View;

    const-string v2, "about_suggest"

    invoke-static {p1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/dbox/ui/common/j;->b:Landroid/widget/EditText;

    .line 50
    iget-object v0, p0, Lcn/dbox/ui/common/j;->a:Landroid/view/View;

    const-string v2, "about_suggest_tel"

    invoke-static {p1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/dbox/ui/common/j;->c:Landroid/widget/EditText;

    .line 54
    iget-object v0, p0, Lcn/dbox/ui/common/j;->a:Landroid/view/View;

    const-string v2, "set_about"

    invoke-static {p1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/dbox/ui/common/j;->d:Landroid/widget/RelativeLayout;

    .line 56
    iget-object v0, p0, Lcn/dbox/ui/common/j;->d:Landroid/widget/RelativeLayout;

    new-instance v2, Lcn/dbox/ui/common/j$1;

    invoke-direct {v2, p0}, Lcn/dbox/ui/common/j$1;-><init>(Lcn/dbox/ui/common/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcn/dbox/ui/common/j;->a:Landroid/view/View;

    const-string v2, "set_contact"

    invoke-static {p1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/dbox/ui/common/j;->e:Landroid/widget/RelativeLayout;

    .line 69
    iget-object v0, p0, Lcn/dbox/ui/common/j;->e:Landroid/widget/RelativeLayout;

    new-instance v2, Lcn/dbox/ui/common/j$2;

    invoke-direct {v2, p0}, Lcn/dbox/ui/common/j$2;-><init>(Lcn/dbox/ui/common/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcn/dbox/ui/common/j;->a:Landroid/view/View;

    const-string v2, "about_back_rl"

    invoke-static {p1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/dbox/ui/common/j;->f:Landroid/widget/RelativeLayout;

    .line 81
    iget-object v0, p0, Lcn/dbox/ui/common/j;->f:Landroid/widget/RelativeLayout;

    new-instance v2, Lcn/dbox/ui/common/j$3;

    invoke-direct {v2, p0}, Lcn/dbox/ui/common/j$3;-><init>(Lcn/dbox/ui/common/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcn/dbox/ui/common/j;->a:Landroid/view/View;

    const-string v2, "about_send"

    invoke-static {p1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/dbox/ui/common/j;->g:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcn/dbox/ui/common/j;->g:Landroid/widget/TextView;

    new-instance v2, Lcn/dbox/ui/common/j$4;

    invoke-direct {v2, p0}, Lcn/dbox/ui/common/j$4;-><init>(Lcn/dbox/ui/common/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcn/dbox/ui/common/j;->a:Landroid/view/View;

    const-string v2, "about_set"

    invoke-static {p1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/dbox/ui/common/j;->h:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcn/dbox/ui/common/j;->h:Landroid/widget/TextView;

    new-instance v2, Lcn/dbox/ui/common/j$5;

    invoke-direct {v2, p0}, Lcn/dbox/ui/common/j$5;-><init>(Lcn/dbox/ui/common/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p0, v1}, Lcn/dbox/ui/common/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v0, p0, Lcn/dbox/ui/common/j;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/j;->addView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method public a(Lcn/dbox/ui/d/g;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcn/dbox/ui/common/j;->k:Lcn/dbox/ui/d/g;

    .line 39
    return-void
.end method
