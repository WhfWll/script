.class Lcn/dbox/ui/common/i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/common/i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/common/i;


# direct methods
.method constructor <init>(Lcn/dbox/ui/common/i;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcn/dbox/ui/common/i$3;->a:Lcn/dbox/ui/common/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcn/dbox/ui/common/i$3;->a:Lcn/dbox/ui/common/i;

    iget-object v0, v0, Lcn/dbox/ui/common/i;->b:Lcn/dbox/ui/d/e;

    if-eqz v0, :cond_d

    .line 86
    iget-object v0, p0, Lcn/dbox/ui/common/i$3;->a:Lcn/dbox/ui/common/i;

    iget-object v0, v0, Lcn/dbox/ui/common/i;->b:Lcn/dbox/ui/d/e;

    invoke-interface {v0}, Lcn/dbox/ui/d/e;->a()V

    .line 88
    :cond_d
    return-void
.end method
