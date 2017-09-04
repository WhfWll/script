.class Lcn/dbox/ui/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/ui/common/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/b/a;->a(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;)Lcn/dbox/ui/common/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/b/a;


# direct methods
.method constructor <init>(Lcn/dbox/ui/b/a;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcn/dbox/ui/b/a$1;->a:Lcn/dbox/ui/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcn/dbox/ui/b/a$1;->a:Lcn/dbox/ui/b/a;

    iget-boolean v0, v0, Lcn/dbox/ui/b/a;->l:Z

    if-nez v0, :cond_22

    .line 60
    iget-object v0, p0, Lcn/dbox/ui/b/a$1;->a:Lcn/dbox/ui/b/a;

    iget-object v0, v0, Lcn/dbox/ui/b/a;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcn/dbox/ui/b/a$1;->a:Lcn/dbox/ui/b/a;

    iget-boolean v0, v0, Lcn/dbox/ui/b/a;->t:Z

    if-nez v0, :cond_22

    .line 62
    iget-object v0, p0, Lcn/dbox/ui/b/a$1;->a:Lcn/dbox/ui/b/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/dbox/ui/b/a;->t:Z

    .line 63
    iget-object v0, p0, Lcn/dbox/ui/b/a$1;->a:Lcn/dbox/ui/b/a;

    iget-object v1, p0, Lcn/dbox/ui/b/a$1;->a:Lcn/dbox/ui/b/a;

    iget-object v1, v1, Lcn/dbox/ui/b/a;->a:Lcn/dbox/ui/a/a;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/b/a;->a(Landroid/widget/BaseAdapter;)V

    .line 66
    :cond_22
    return-void
.end method
