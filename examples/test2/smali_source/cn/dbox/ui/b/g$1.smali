.class Lcn/dbox/ui/b/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/b/g;-><init>(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/bean/d;

.field final synthetic b:Lcn/dbox/ui/b/g;


# direct methods
.method constructor <init>(Lcn/dbox/ui/b/g;Lcn/dbox/core/bean/d;)V
    .registers 3

    .prologue
    .line 73
    iput-object p1, p0, Lcn/dbox/ui/b/g$1;->b:Lcn/dbox/ui/b/g;

    iput-object p2, p0, Lcn/dbox/ui/b/g$1;->a:Lcn/dbox/core/bean/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcn/dbox/ui/b/g$1;->b:Lcn/dbox/ui/b/g;

    iget-object v0, v0, Lcn/dbox/ui/b/g;->a:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 78
    iget-object v0, p0, Lcn/dbox/ui/b/g$1;->b:Lcn/dbox/ui/b/g;

    iget-object v1, p0, Lcn/dbox/ui/b/g$1;->b:Lcn/dbox/ui/b/g;

    iget-object v1, v1, Lcn/dbox/ui/b/g;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/b/g;->removeView(Landroid/view/View;)V

    .line 80
    :cond_f
    iget-object v0, p0, Lcn/dbox/ui/b/g$1;->b:Lcn/dbox/ui/b/g;

    iget-object v0, v0, Lcn/dbox/ui/b/g;->y:Lcn/dbox/core/a/c;

    iget-object v1, p0, Lcn/dbox/ui/b/g$1;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v1}, Lcn/dbox/core/bean/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/a/c;->a(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcn/dbox/ui/b/g$1;->b:Lcn/dbox/ui/b/g;

    iget-object v1, p0, Lcn/dbox/ui/b/g$1;->b:Lcn/dbox/ui/b/g;

    iget-object v1, v1, Lcn/dbox/ui/b/g;->y:Lcn/dbox/core/a/c;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/b/g;->addView(Landroid/view/View;)V

    .line 82
    return-void
.end method
