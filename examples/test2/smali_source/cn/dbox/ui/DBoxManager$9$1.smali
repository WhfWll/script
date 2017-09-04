.class Lcn/dbox/ui/DBoxManager$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/ui/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/DBoxManager$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/DBoxManager$9;


# direct methods
.method constructor <init>(Lcn/dbox/ui/DBoxManager$9;)V
    .registers 2

    .prologue
    .line 406
    iput-object p1, p0, Lcn/dbox/ui/DBoxManager$9$1;->a:Lcn/dbox/ui/DBoxManager$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$9$1;->a:Lcn/dbox/ui/DBoxManager$9;

    iget-object v0, v0, Lcn/dbox/ui/DBoxManager$9;->b:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->m(Lcn/dbox/ui/DBoxManager;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 411
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$9$1;->a:Lcn/dbox/ui/DBoxManager$9;

    iget-object v0, v0, Lcn/dbox/ui/DBoxManager$9;->b:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->m(Lcn/dbox/ui/DBoxManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 412
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$9$1;->a:Lcn/dbox/ui/DBoxManager$9;

    iget-object v0, v0, Lcn/dbox/ui/DBoxManager$9;->b:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->m(Lcn/dbox/ui/DBoxManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 415
    :cond_23
    return-void
.end method
