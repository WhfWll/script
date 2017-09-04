.class Lcn/dbox/ui/c/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/ui/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/c/b;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcn/dbox/ui/c/b;


# direct methods
.method constructor <init>(Lcn/dbox/ui/c/b;Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 62
    iput-object p1, p0, Lcn/dbox/ui/c/b$1;->b:Lcn/dbox/ui/c/b;

    iput-object p2, p0, Lcn/dbox/ui/c/b$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 66
    iget-object v0, p0, Lcn/dbox/ui/c/b$1;->b:Lcn/dbox/ui/c/b;

    invoke-static {v0}, Lcn/dbox/ui/c/b;->a(Lcn/dbox/ui/c/b;)Lcn/dbox/ui/common/g;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 67
    iget-object v0, p0, Lcn/dbox/ui/c/b$1;->b:Lcn/dbox/ui/c/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/dbox/ui/c/b;->o:Z

    .line 69
    iget-object v0, p0, Lcn/dbox/ui/c/b$1;->b:Lcn/dbox/ui/c/b;

    iget-boolean v0, v0, Lcn/dbox/ui/c/b;->o:Z

    if-eqz v0, :cond_2a

    .line 70
    iget-object v0, p0, Lcn/dbox/ui/c/b$1;->b:Lcn/dbox/ui/c/b;

    iget-object v0, v0, Lcn/dbox/ui/c/b;->g:Lcn/dbox/ui/d/b;

    if-eqz v0, :cond_2a

    .line 71
    iget-object v0, p0, Lcn/dbox/ui/c/b$1;->b:Lcn/dbox/ui/c/b;

    iget-object v1, v0, Lcn/dbox/ui/c/b;->g:Lcn/dbox/ui/d/b;

    iget-object v0, p0, Lcn/dbox/ui/c/b$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    sget-object v2, Lcn/dbox/core/b$e;->c:Lcn/dbox/core/b$e;

    invoke-interface {v1, v0, v2}, Lcn/dbox/ui/d/b;->a(Lcn/dbox/core/bean/d;Lcn/dbox/core/b$e;)V

    .line 74
    :cond_2a
    iget-object v0, p0, Lcn/dbox/ui/c/b$1;->b:Lcn/dbox/ui/c/b;

    invoke-static {v0}, Lcn/dbox/ui/c/b;->a(Lcn/dbox/ui/c/b;)Lcn/dbox/ui/common/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/dbox/ui/common/g;->setCurrentItem(IZ)V

    .line 77
    :cond_34
    return-void
.end method
