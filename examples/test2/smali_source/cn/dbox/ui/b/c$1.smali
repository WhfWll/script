.class Lcn/dbox/ui/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/ui/common/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/b/c;->a(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;)Lcn/dbox/ui/common/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/b/c;


# direct methods
.method constructor <init>(Lcn/dbox/ui/b/c;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcn/dbox/ui/b/c$1;->a:Lcn/dbox/ui/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcn/dbox/ui/b/c$1;->a:Lcn/dbox/ui/b/c;

    iget-boolean v0, v0, Lcn/dbox/ui/b/c;->l:Z

    if-nez v0, :cond_24

    .line 56
    iget-object v0, p0, Lcn/dbox/ui/b/c$1;->a:Lcn/dbox/ui/b/c;

    iget-object v0, v0, Lcn/dbox/ui/b/c;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcn/dbox/ui/b/c$1;->a:Lcn/dbox/ui/b/c;

    iget-boolean v0, v0, Lcn/dbox/ui/b/c;->t:Z

    if-nez v0, :cond_24

    .line 58
    iget-object v0, p0, Lcn/dbox/ui/b/c$1;->a:Lcn/dbox/ui/b/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/dbox/ui/b/c;->t:Z

    .line 59
    iget-object v0, p0, Lcn/dbox/ui/b/c$1;->a:Lcn/dbox/ui/b/c;

    iget-object v1, p0, Lcn/dbox/ui/b/c$1;->a:Lcn/dbox/ui/b/c;

    invoke-static {v1}, Lcn/dbox/ui/b/c;->a(Lcn/dbox/ui/b/c;)Lcn/dbox/ui/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/ui/b/c;->a(Landroid/widget/BaseAdapter;)V

    .line 63
    :cond_24
    return-void
.end method
