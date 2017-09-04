.class public Lcn/dbox/ui/common/a;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/common/a$a;
    }
.end annotation


# instance fields
.field a:Lcn/dbox/ui/common/a$a;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p0, p1}, Lcn/dbox/ui/common/a;->a(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 19
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "dbox_about_me"

    invoke-static {p1, v2}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/dbox/ui/common/a;->b:Landroid/view/View;

    .line 21
    iget-object v1, p0, Lcn/dbox/ui/common/a;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object v1, p0, Lcn/dbox/ui/common/a;->b:Landroid/view/View;

    const-string v2, "about_send"

    invoke-static {p1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object v1, p0, Lcn/dbox/ui/common/a;->b:Landroid/view/View;

    const-string v2, "about_back_rl"

    invoke-static {p1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/dbox/ui/common/a$1;

    invoke-direct {v2, p0}, Lcn/dbox/ui/common/a$1;-><init>(Lcn/dbox/ui/common/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object v0, p0, Lcn/dbox/ui/common/a;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/a;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public a(Lcn/dbox/ui/common/a$a;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcn/dbox/ui/common/a;->a:Lcn/dbox/ui/common/a$a;

    .line 47
    return-void
.end method
