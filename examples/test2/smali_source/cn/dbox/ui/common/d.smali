.class public Lcn/dbox/ui/common/d;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p0, p1}, Lcn/dbox/ui/common/d;->a(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 18
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "dbox_container_noad"

    invoke-static {p1, v2}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/dbox/ui/common/d;->a:Landroid/view/View;

    .line 20
    iget-object v1, p0, Lcn/dbox/ui/common/d;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object v0, p0, Lcn/dbox/ui/common/d;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/d;->addView(Landroid/view/View;)V

    .line 24
    return-void
.end method
