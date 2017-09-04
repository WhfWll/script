.class Lcn/dbox/ui/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/ui/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/a;


# direct methods
.method constructor <init>(Lcn/dbox/ui/a;)V
    .registers 2

    .prologue
    .line 279
    iput-object p1, p0, Lcn/dbox/ui/a$5;->a:Lcn/dbox/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcn/dbox/ui/a$5;->a:Lcn/dbox/ui/a;

    invoke-virtual {v0}, Lcn/dbox/ui/a;->b()V

    .line 291
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcn/dbox/ui/a$5;->a:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->c(Lcn/dbox/ui/a;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 284
    iget-object v0, p0, Lcn/dbox/ui/a$5;->a:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->c(Lcn/dbox/ui/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 286
    :cond_11
    return-void
.end method
