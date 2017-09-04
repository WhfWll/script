.class Lcn/dbox/ui/common/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 111
    iput-object p1, p0, Lcn/dbox/ui/common/b$2;->a:Lcn/dbox/ui/common/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "arg1"    # Landroid/view/View;
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
    .line 116
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcn/dbox/ui/common/b;->b()Lcn/dbox/core/h/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcn/dbox/ui/common/b$2;->a:Lcn/dbox/ui/common/b;

    iget-object v0, p0, Lcn/dbox/ui/common/b$2;->a:Lcn/dbox/ui/common/b;

    invoke-static {v0}, Lcn/dbox/ui/common/b;->c(Lcn/dbox/ui/common/b;)I

    move-result v0

    iget-object v2, p0, Lcn/dbox/ui/common/b$2;->a:Lcn/dbox/ui/common/b;

    invoke-static {v2}, Lcn/dbox/ui/common/b;->d(Lcn/dbox/ui/common/b;)I

    move-result v2

    rem-int v2, p3, v2

    add-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_38

    iget-object v0, p0, Lcn/dbox/ui/common/b$2;->a:Lcn/dbox/ui/common/b;

    invoke-static {v0}, Lcn/dbox/ui/common/b;->c(Lcn/dbox/ui/common/b;)I

    move-result v0

    :goto_34
    invoke-static {v1, v0}, Lcn/dbox/ui/common/b;->a(Lcn/dbox/ui/common/b;I)I

    .line 118
    return-void

    .line 117
    :cond_38
    iget-object v0, p0, Lcn/dbox/ui/common/b$2;->a:Lcn/dbox/ui/common/b;

    invoke-static {v0}, Lcn/dbox/ui/common/b;->d(Lcn/dbox/ui/common/b;)I

    move-result v0

    rem-int v0, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_34
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcn/dbox/ui/common/b;->b()Lcn/dbox/core/h/d;

    move-result-object v0

    const-string v1, "onNothingSelected"

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 123
    return-void
.end method
