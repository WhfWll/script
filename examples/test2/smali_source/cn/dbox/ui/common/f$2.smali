.class Lcn/dbox/ui/common/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/ui/common/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/common/f;


# direct methods
.method constructor <init>(Lcn/dbox/ui/common/f;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcn/dbox/ui/common/f$2;->a:Lcn/dbox/ui/common/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
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
    .line 95
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcn/dbox/ui/common/f$2;->a:Lcn/dbox/ui/common/f;

    iget-object v0, v0, Lcn/dbox/ui/common/f;->b:Lcn/dbox/ui/common/f$a;

    if-eqz v0, :cond_d

    .line 96
    iget-object v0, p0, Lcn/dbox/ui/common/f$2;->a:Lcn/dbox/ui/common/f;

    iget-object v0, v0, Lcn/dbox/ui/common/f;->b:Lcn/dbox/ui/common/f$a;

    invoke-interface {v0}, Lcn/dbox/ui/common/f$a;->a()V

    .line 98
    :cond_d
    return-void
.end method
