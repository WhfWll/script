.class Lcn/dbox/core/a/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/a/b;->a()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/a/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/a/b;)V
    .registers 2

    .prologue
    .line 157
    iput-object p1, p0, Lcn/dbox/core/a/b$3;->a:Lcn/dbox/core/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 160
    iget-object v0, p0, Lcn/dbox/core/a/b$3;->a:Lcn/dbox/core/a/b;

    invoke-static {v0}, Lcn/dbox/core/a/b;->a(Lcn/dbox/core/a/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/b$3;->a:Lcn/dbox/core/a/b;

    iget-object v1, v1, Lcn/dbox/core/a/b;->b:Lcn/dbox/core/a/c;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcn/dbox/core/a/b$3;->a:Lcn/dbox/core/a/b;

    invoke-static {v0}, Lcn/dbox/core/a/b;->b(Lcn/dbox/core/a/b;)Lcn/dbox/core/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 163
    iget-object v0, p0, Lcn/dbox/core/a/b$3;->a:Lcn/dbox/core/a/b;

    invoke-static {v0}, Lcn/dbox/core/a/b;->b(Lcn/dbox/core/a/b;)Lcn/dbox/core/a/c$b;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/b$3;->a:Lcn/dbox/core/a/b;

    iget-object v1, v1, Lcn/dbox/core/a/b;->a:Lcn/dbox/core/bean/a;

    invoke-interface {v0, v1}, Lcn/dbox/core/a/c$b;->f(Lcn/dbox/core/bean/a;)V

    .line 167
    :cond_22
    iget-object v0, p0, Lcn/dbox/core/a/b$3;->a:Lcn/dbox/core/a/b;

    invoke-static {v0}, Lcn/dbox/core/a/b;->c(Lcn/dbox/core/a/b;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 168
    iget-object v0, p0, Lcn/dbox/core/a/b$3;->a:Lcn/dbox/core/a/b;

    invoke-static {v0}, Lcn/dbox/core/a/b;->b(Lcn/dbox/core/a/b;)Lcn/dbox/core/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 169
    iget-object v0, p0, Lcn/dbox/core/a/b$3;->a:Lcn/dbox/core/a/b;

    invoke-static {v0}, Lcn/dbox/core/a/b;->b(Lcn/dbox/core/a/b;)Lcn/dbox/core/a/c$b;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/b$3;->a:Lcn/dbox/core/a/b;

    iget-object v1, v1, Lcn/dbox/core/a/b;->a:Lcn/dbox/core/bean/a;

    invoke-interface {v0, v1}, Lcn/dbox/core/a/c$b;->e(Lcn/dbox/core/bean/a;)V

    .line 172
    :cond_3f
    return-void
.end method
