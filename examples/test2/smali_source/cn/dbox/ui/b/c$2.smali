.class Lcn/dbox/ui/b/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/b/c;->a(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;)Lcn/dbox/ui/common/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/bean/d;

.field final synthetic b:Lcn/dbox/ui/b/c;


# direct methods
.method constructor <init>(Lcn/dbox/ui/b/c;Lcn/dbox/core/bean/d;)V
    .registers 3

    .prologue
    .line 76
    iput-object p1, p0, Lcn/dbox/ui/b/c$2;->b:Lcn/dbox/ui/b/c;

    iput-object p2, p0, Lcn/dbox/ui/b/c$2;->a:Lcn/dbox/core/bean/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcn/dbox/ui/b/c$2;->b:Lcn/dbox/ui/b/c;

    iget-object v0, v0, Lcn/dbox/ui/b/c;->e:Lcn/dbox/ui/d/a;

    if-eqz v0, :cond_34

    .line 83
    iget-object v0, p0, Lcn/dbox/ui/b/c$2;->b:Lcn/dbox/ui/b/c;

    iget-object v0, v0, Lcn/dbox/ui/b/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_34

    .line 84
    iget-object v0, p0, Lcn/dbox/ui/b/c$2;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    .line 86
    invoke-virtual {v0, p3}, Lcn/dbox/core/bean/a;->a(I)V

    .line 87
    iget-object v1, p0, Lcn/dbox/ui/b/c$2;->b:Lcn/dbox/ui/b/c;

    iget-object v1, v1, Lcn/dbox/ui/b/c;->e:Lcn/dbox/ui/d/a;

    sget-object v2, Lcn/dbox/core/b$d;->c:Lcn/dbox/core/b$d;

    iget-object v3, p0, Lcn/dbox/ui/b/c$2;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v3}, Lcn/dbox/core/bean/d;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/dbox/ui/b/c$2;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v4}, Lcn/dbox/core/bean/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Lcn/dbox/ui/d/a;->a(Lcn/dbox/core/bean/a;Lcn/dbox/core/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_34
    return-void
.end method
