.class Lcn/dbox/ui/DBoxManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 246
    iput-object p1, p0, Lcn/dbox/ui/DBoxManager$7;->a:Lcn/dbox/ui/DBoxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 250
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$7;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->h(Lcn/dbox/ui/DBoxManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 251
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$7;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->h(Lcn/dbox/ui/DBoxManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "flat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 252
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$7;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->c(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/a;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 253
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$7;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->c(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/dbox/ui/a;->c()V

    .line 258
    :cond_27
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$7;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->a(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/DBoxManager$DBoxViewListener;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 259
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$7;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->a(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/DBoxManager$DBoxViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/dbox/ui/DBoxManager$DBoxViewListener;->onDBoxViewClosed()V

    .line 261
    :cond_38
    return-void
.end method
