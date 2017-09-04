.class Lcn/dbox/ui/common/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/common/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/common/c;


# direct methods
.method constructor <init>(Lcn/dbox/ui/common/c;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcn/dbox/ui/common/c$1;->a:Lcn/dbox/ui/common/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/dbox/ui/common/c$1;->a:Lcn/dbox/ui/common/c;

    iget-object v0, v0, Lcn/dbox/ui/common/c;->b:Lcn/dbox/ui/d/c;

    if-eqz v0, :cond_d

    .line 52
    iget-object v0, p0, Lcn/dbox/ui/common/c$1;->a:Lcn/dbox/ui/common/c;

    iget-object v0, v0, Lcn/dbox/ui/common/c;->b:Lcn/dbox/ui/d/c;

    invoke-interface {v0}, Lcn/dbox/ui/d/c;->b()V

    .line 54
    :cond_d
    return-void
.end method
