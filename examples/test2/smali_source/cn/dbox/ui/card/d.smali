.class public Lcn/dbox/ui/card/d;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field public static final a:I = 0x32


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/b;)V
    .registers 8

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/dbox/ui/card/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/b;)V

    .line 32
    iget-object v0, p0, Lcn/dbox/ui/card/d;->b:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 33
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x32

    invoke-static {p1, v2}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 36
    iget-object v1, p0, Lcn/dbox/ui/card/d;->b:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcn/dbox/ui/card/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    :cond_22
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/b;)V
    .registers 8

    .prologue
    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "dbox_channel_titlebar"

    invoke-static {p1, v1}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/card/d;->b:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcn/dbox/ui/card/d;->b:Landroid/view/View;

    const-string v1, "se_channel_header_logo"

    invoke-static {p1, v1}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/dbox/ui/card/d;->c:Landroid/widget/ImageView;

    .line 45
    iget-object v0, p0, Lcn/dbox/ui/card/d;->b:Landroid/view/View;

    const-string v1, "se_channel_header_name"

    invoke-static {p1, v1}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/dbox/ui/card/d;->d:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcn/dbox/ui/card/d;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcn/dbox/ui/card/d;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcn/dbox/ui/card/d;->c:Landroid/widget/ImageView;

    new-instance v1, Lcn/dbox/ui/card/d$1;

    invoke-direct {v1, p0}, Lcn/dbox/ui/card/d$1;-><init>(Lcn/dbox/ui/card/d;)V

    invoke-virtual {p4, p2, v0, v1}, Lcn/dbox/core/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/dbox/core/b$k;)V

    .line 68
    return-void
.end method
