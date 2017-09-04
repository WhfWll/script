.class Lcn/dbox/ui/a$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/ui/b/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/a$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/a$4;


# direct methods
.method constructor <init>(Lcn/dbox/ui/a$4;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcn/dbox/ui/a$4$1;->a:Lcn/dbox/ui/a$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcn/dbox/ui/a$4$1;->a:Lcn/dbox/ui/a$4;

    iget-object v0, v0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->c(Lcn/dbox/ui/a;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 184
    iget-object v0, p0, Lcn/dbox/ui/a$4$1;->a:Lcn/dbox/ui/a$4;

    iget-object v0, v0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->c(Lcn/dbox/ui/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 185
    iget-object v0, p0, Lcn/dbox/ui/a$4$1;->a:Lcn/dbox/ui/a$4;

    iget-object v0, v0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->c(Lcn/dbox/ui/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 188
    :cond_23
    return-void
.end method
