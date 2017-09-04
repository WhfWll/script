.class Lcn/dbox/ui/b/b$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/b/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/b/b$1;


# direct methods
.method constructor <init>(Lcn/dbox/ui/b/b$1;)V
    .registers 2

    .prologue
    .line 164
    iput-object p1, p0, Lcn/dbox/ui/b/b$1$1;->a:Lcn/dbox/ui/b/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lcn/dbox/ui/b/b$1$1;->a:Lcn/dbox/ui/b/b$1;

    iget-object v0, v0, Lcn/dbox/ui/b/b$1;->a:Lcn/dbox/ui/b/b;

    iget-object v0, v0, Lcn/dbox/ui/b/b;->b:Lcn/dbox/ui/common/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/f;->setSelection(I)V

    .line 169
    return-void
.end method
