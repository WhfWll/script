.class Lcn/dbox/ui/common/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/common/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/common/a;


# direct methods
.method constructor <init>(Lcn/dbox/ui/common/a;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcn/dbox/ui/common/a$1;->a:Lcn/dbox/ui/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/dbox/ui/common/a$1;->a:Lcn/dbox/ui/common/a;

    iget-object v0, v0, Lcn/dbox/ui/common/a;->a:Lcn/dbox/ui/common/a$a;

    if-eqz v0, :cond_d

    .line 32
    iget-object v0, p0, Lcn/dbox/ui/common/a$1;->a:Lcn/dbox/ui/common/a;

    iget-object v0, v0, Lcn/dbox/ui/common/a;->a:Lcn/dbox/ui/common/a$a;

    invoke-interface {v0}, Lcn/dbox/ui/common/a$a;->a()V

    .line 35
    :cond_d
    return-void
.end method
