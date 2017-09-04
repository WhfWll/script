.class Lcn/dbox/ui/b/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/ui/common/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/b/e;->a(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;)Lcn/dbox/ui/common/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/b/e;


# direct methods
.method constructor <init>(Lcn/dbox/ui/b/e;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcn/dbox/ui/b/e$2;->a:Lcn/dbox/ui/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcn/dbox/ui/b/e$2;->a:Lcn/dbox/ui/b/e;

    iget-boolean v0, v0, Lcn/dbox/ui/b/e;->l:Z

    if-nez v0, :cond_24

    .line 77
    iget-object v0, p0, Lcn/dbox/ui/b/e$2;->a:Lcn/dbox/ui/b/e;

    iget-object v0, v0, Lcn/dbox/ui/b/e;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcn/dbox/ui/b/e$2;->a:Lcn/dbox/ui/b/e;

    iget-boolean v0, v0, Lcn/dbox/ui/b/e;->t:Z

    if-nez v0, :cond_24

    .line 79
    iget-object v0, p0, Lcn/dbox/ui/b/e$2;->a:Lcn/dbox/ui/b/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/dbox/ui/b/e;->t:Z

    .line 80
    iget-object v0, p0, Lcn/dbox/ui/b/e$2;->a:Lcn/dbox/ui/b/e;

    iget-object v1, p0, Lcn/dbox/ui/b/e$2;->a:Lcn/dbox/ui/b/e;

    invoke-static {v1}, Lcn/dbox/ui/b/e;->a(Lcn/dbox/ui/b/e;)Lcn/dbox/ui/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/ui/b/e;->a(Landroid/widget/BaseAdapter;)V

    .line 83
    :cond_24
    return-void
.end method
