.class Lcn/dbox/ui/DBoxManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/ui/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/ui/DBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/DBoxManager;


# direct methods
.method constructor <init>(Lcn/dbox/ui/DBoxManager;)V
    .registers 2

    .prologue
    .line 264
    iput-object p1, p0, Lcn/dbox/ui/DBoxManager$8;->a:Lcn/dbox/ui/DBoxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 268
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$8;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->c(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 273
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$8;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->c(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/dbox/ui/a;->b()V

    .line 275
    :cond_11
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$8;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->l(Lcn/dbox/ui/DBoxManager;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 280
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$8;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->l(Lcn/dbox/ui/DBoxManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 282
    :cond_11
    return-void
.end method
