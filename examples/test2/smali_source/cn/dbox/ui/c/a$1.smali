.class Lcn/dbox/ui/c/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/c/a;->a(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/c/a;


# direct methods
.method constructor <init>(Lcn/dbox/ui/c/a;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcn/dbox/ui/c/a$1;->a:Lcn/dbox/ui/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcn/dbox/ui/c/a$1;->a:Lcn/dbox/ui/c/a;

    invoke-virtual {v0, p1}, Lcn/dbox/ui/c/a;->a(Landroid/view/View;)I

    move-result v0

    .line 129
    iget-object v1, p0, Lcn/dbox/ui/c/a$1;->a:Lcn/dbox/ui/c/a;

    invoke-static {v1}, Lcn/dbox/ui/c/a;->a(Lcn/dbox/ui/c/a;)Lcn/dbox/ui/c/a$a;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 130
    iget-object v1, p0, Lcn/dbox/ui/c/a$1;->a:Lcn/dbox/ui/c/a;

    invoke-static {v1}, Lcn/dbox/ui/c/a;->a(Lcn/dbox/ui/c/a;)Lcn/dbox/ui/c/a$a;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, p1, v2}, Lcn/dbox/ui/c/a$a;->a(ILandroid/view/View;Ljava/lang/Object;)V

    .line 134
    :cond_1b
    iget-object v1, p0, Lcn/dbox/ui/c/a$1;->a:Lcn/dbox/ui/c/a;

    invoke-virtual {v1, v0}, Lcn/dbox/ui/c/a;->b(I)V

    .line 135
    return-void
.end method
