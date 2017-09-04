.class Lcn/dbox/ui/card/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/card/e;->a(Landroid/content/Context;Lcn/dbox/core/bean/c;Lcn/dbox/core/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/card/e;


# direct methods
.method constructor <init>(Lcn/dbox/ui/card/e;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcn/dbox/ui/card/e$1;->a:Lcn/dbox/ui/card/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 90
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcn/dbox/ui/card/e$1;->a:Lcn/dbox/ui/card/e;

    invoke-static {v0}, Lcn/dbox/ui/card/e;->a(Lcn/dbox/ui/card/e;)Lcn/dbox/ui/d/b;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 91
    iget-object v0, p0, Lcn/dbox/ui/card/e$1;->a:Lcn/dbox/ui/card/e;

    iget-object v0, v0, Lcn/dbox/ui/card/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_27

    .line 92
    iget-object v0, p0, Lcn/dbox/ui/card/e$1;->a:Lcn/dbox/ui/card/e;

    invoke-static {v0}, Lcn/dbox/ui/card/e;->a(Lcn/dbox/ui/card/e;)Lcn/dbox/ui/d/b;

    move-result-object v1

    iget-object v0, p0, Lcn/dbox/ui/card/e$1;->a:Lcn/dbox/ui/card/e;

    iget-object v0, v0, Lcn/dbox/ui/card/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    sget-object v2, Lcn/dbox/core/b$e;->c:Lcn/dbox/core/b$e;

    invoke-interface {v1, v0, v2}, Lcn/dbox/ui/d/b;->a(Lcn/dbox/core/bean/d;Lcn/dbox/core/b$e;)V

    .line 98
    :cond_27
    return-void
.end method
