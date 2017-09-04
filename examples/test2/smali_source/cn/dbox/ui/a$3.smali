.class Lcn/dbox/ui/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/a;


# direct methods
.method constructor <init>(Lcn/dbox/ui/a;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcn/dbox/ui/a$3;->a:Lcn/dbox/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    invoke-static {}, Lcn/dbox/ui/a;->e()Lcn/dbox/core/h/d;

    move-result-object v0

    const-string v1, "refresh view"

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcn/dbox/ui/a$3;->a:Lcn/dbox/ui/a;

    iget-object v0, v0, Lcn/dbox/ui/a;->j:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 140
    iget-object v0, p0, Lcn/dbox/ui/a$3;->a:Lcn/dbox/ui/a;

    iget-object v1, p0, Lcn/dbox/ui/a$3;->a:Lcn/dbox/ui/a;

    iget-object v1, v1, Lcn/dbox/ui/a;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/a;->removeView(Landroid/view/View;)V

    .line 143
    :cond_18
    iget-object v0, p0, Lcn/dbox/ui/a$3;->a:Lcn/dbox/ui/a;

    iget-object v1, p0, Lcn/dbox/ui/a$3;->a:Lcn/dbox/ui/a;

    iget-object v1, v1, Lcn/dbox/ui/a;->i:Landroid/view/View;

    iget-object v2, p0, Lcn/dbox/ui/a$3;->a:Lcn/dbox/ui/a;

    invoke-static {v2}, Lcn/dbox/ui/a;->a(Lcn/dbox/ui/a;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/dbox/ui/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v0, p0, Lcn/dbox/ui/a$3;->a:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->b(Lcn/dbox/ui/a;)Lcn/dbox/ui/d/f;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 145
    iget-object v0, p0, Lcn/dbox/ui/a$3;->a:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->b(Lcn/dbox/ui/a;)Lcn/dbox/ui/d/f;

    move-result-object v0

    invoke-interface {v0}, Lcn/dbox/ui/d/f;->a()V

    .line 147
    :cond_38
    return-void
.end method
