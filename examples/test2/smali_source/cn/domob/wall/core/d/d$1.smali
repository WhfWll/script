.class Lcn/domob/wall/core/d/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/d/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/d/d;-><init>(Lcn/domob/wall/core/b;Landroid/content/Context;Lcn/domob/wall/core/bean/AdExtend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/d/d;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/d/d;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcn/domob/wall/core/d/d$1;->a:Lcn/domob/wall/core/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 48
    invoke-static {}, Lcn/domob/wall/core/d/d;->a()Lcn/domob/wall/core/h/d;

    move-result-object v0

    const-string v1, "ewall close"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcn/domob/wall/core/d/d$1;->a:Lcn/domob/wall/core/d/d;

    invoke-static {v0}, Lcn/domob/wall/core/d/d;->a(Lcn/domob/wall/core/d/d;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 50
    iget-object v0, p0, Lcn/domob/wall/core/d/d$1;->a:Lcn/domob/wall/core/d/d;

    invoke-static {v0}, Lcn/domob/wall/core/d/d;->a(Lcn/domob/wall/core/d/d;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 52
    :cond_1a
    return-void
.end method
