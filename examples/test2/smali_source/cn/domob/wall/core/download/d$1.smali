.class Lcn/domob/wall/core/download/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/download/d;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcn/domob/wall/core/download/d;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/download/d;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 127
    iput-object p1, p0, Lcn/domob/wall/core/download/d$1;->c:Lcn/domob/wall/core/download/d;

    iput-object p2, p0, Lcn/domob/wall/core/download/d$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcn/domob/wall/core/download/d$1;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcn/domob/wall/core/download/d$1;->c:Lcn/domob/wall/core/download/d;

    invoke-static {v0}, Lcn/domob/wall/core/download/d;->a(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/download/d$a;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 131
    iget-object v0, p0, Lcn/domob/wall/core/download/d$1;->c:Lcn/domob/wall/core/download/d;

    invoke-static {v0}, Lcn/domob/wall/core/download/d;->a(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/download/d$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/download/d$1;->c:Lcn/domob/wall/core/download/d;

    invoke-static {v1}, Lcn/domob/wall/core/download/d;->b(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/bean/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/wall/core/download/d$a;->s(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 135
    :cond_17
    iget-object v0, p0, Lcn/domob/wall/core/download/d$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/wall/core/download/d$1;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method
