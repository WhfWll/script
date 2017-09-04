.class Lcn/dbox/ui/DBoxManager$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/DBoxManager;->showLandingPageAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/dbox/ui/DBoxManager;


# direct methods
.method constructor <init>(Lcn/dbox/ui/DBoxManager;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 398
    iput-object p1, p0, Lcn/dbox/ui/DBoxManager$9;->b:Lcn/dbox/ui/DBoxManager;

    iput-object p2, p0, Lcn/dbox/ui/DBoxManager$9;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 402
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$9;->b:Lcn/dbox/ui/DBoxManager;

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcn/dbox/ui/DBoxManager$9;->b:Lcn/dbox/ui/DBoxManager;

    invoke-static {v2}, Lcn/dbox/ui/DBoxManager;->g(Lcn/dbox/ui/DBoxManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1030010

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcn/dbox/ui/DBoxManager;->a(Lcn/dbox/ui/DBoxManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 404
    new-instance v0, Lcn/dbox/ui/b/d;

    iget-object v1, p0, Lcn/dbox/ui/DBoxManager$9;->b:Lcn/dbox/ui/DBoxManager;

    invoke-static {v1}, Lcn/dbox/ui/DBoxManager;->g(Lcn/dbox/ui/DBoxManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/dbox/ui/DBoxManager$9;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/dbox/ui/DBoxManager$9;->b:Lcn/dbox/ui/DBoxManager;

    invoke-static {v3}, Lcn/dbox/ui/DBoxManager;->k(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/core/b;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcn/dbox/ui/b/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/dbox/core/b;)V

    .line 406
    new-instance v1, Lcn/dbox/ui/DBoxManager$9$1;

    invoke-direct {v1, p0}, Lcn/dbox/ui/DBoxManager$9$1;-><init>(Lcn/dbox/ui/DBoxManager$9;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/b/d;->a(Lcn/dbox/ui/b/d$a;)V

    .line 417
    iget-object v1, p0, Lcn/dbox/ui/DBoxManager$9;->b:Lcn/dbox/ui/DBoxManager;

    invoke-static {v1}, Lcn/dbox/ui/DBoxManager;->m(Lcn/dbox/ui/DBoxManager;)Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 418
    iget-object v1, p0, Lcn/dbox/ui/DBoxManager$9;->b:Lcn/dbox/ui/DBoxManager;

    invoke-static {v1}, Lcn/dbox/ui/DBoxManager;->m(Lcn/dbox/ui/DBoxManager;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 419
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$9;->b:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->m(Lcn/dbox/ui/DBoxManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 420
    return-void
.end method
