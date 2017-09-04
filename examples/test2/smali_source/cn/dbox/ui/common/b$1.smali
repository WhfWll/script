.class Lcn/dbox/ui/common/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/common/b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/common/b;


# direct methods
.method constructor <init>(Lcn/dbox/ui/common/b;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcn/dbox/ui/common/b$1;->a:Lcn/dbox/ui/common/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 104
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcn/dbox/ui/common/b$1;->a:Lcn/dbox/ui/common/b;

    iget-object v0, v0, Lcn/dbox/ui/common/b;->b:Lcn/dbox/ui/d/a;

    if-eqz v0, :cond_2f

    .line 105
    iget-object v0, p0, Lcn/dbox/ui/common/b$1;->a:Lcn/dbox/ui/common/b;

    iget-object v1, v0, Lcn/dbox/ui/common/b;->b:Lcn/dbox/ui/d/a;

    iget-object v0, p0, Lcn/dbox/ui/common/b$1;->a:Lcn/dbox/ui/common/b;

    iget-object v0, v0, Lcn/dbox/ui/common/b;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/dbox/ui/common/b$1;->a:Lcn/dbox/ui/common/b;

    iget-object v2, v2, Lcn/dbox/ui/common/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v2, p3, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    sget-object v2, Lcn/dbox/core/b$d;->c:Lcn/dbox/core/b$d;

    iget-object v3, p0, Lcn/dbox/ui/common/b$1;->a:Lcn/dbox/ui/common/b;

    invoke-static {v3}, Lcn/dbox/ui/common/b;->a(Lcn/dbox/ui/common/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/dbox/ui/common/b$1;->a:Lcn/dbox/ui/common/b;

    invoke-static {v4}, Lcn/dbox/ui/common/b;->b(Lcn/dbox/ui/common/b;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Lcn/dbox/ui/d/a;->a(Lcn/dbox/core/bean/a;Lcn/dbox/core/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_2f
    return-void
.end method
