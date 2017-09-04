.class Lcn/dbox/ui/common/j$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/common/j;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/common/j;


# direct methods
.method constructor <init>(Lcn/dbox/ui/common/j;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcn/dbox/ui/common/j$4;->a:Lcn/dbox/ui/common/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcn/dbox/ui/common/j$4;->a:Lcn/dbox/ui/common/j;

    invoke-static {v0}, Lcn/dbox/ui/common/j;->a(Lcn/dbox/ui/common/j;)Lcn/dbox/ui/d/g;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 97
    iget-object v0, p0, Lcn/dbox/ui/common/j$4;->a:Lcn/dbox/ui/common/j;

    invoke-static {v0}, Lcn/dbox/ui/common/j;->a(Lcn/dbox/ui/common/j;)Lcn/dbox/ui/d/g;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/common/j$4;->a:Lcn/dbox/ui/common/j;

    invoke-static {v1}, Lcn/dbox/ui/common/j;->b(Lcn/dbox/ui/common/j;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/dbox/ui/common/j$4;->a:Lcn/dbox/ui/common/j;

    invoke-static {v2}, Lcn/dbox/ui/common/j;->c(Lcn/dbox/ui/common/j;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/dbox/ui/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_35
    return-void
.end method
