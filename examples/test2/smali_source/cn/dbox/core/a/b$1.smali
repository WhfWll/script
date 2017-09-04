.class Lcn/dbox/core/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/core/a/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/a/c$b;Lcn/dbox/core/bean/a;Lcn/dbox/core/a/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/a/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/a/b;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcn/dbox/core/a/b$1;->a:Lcn/dbox/core/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcn/dbox/core/a/b$1;->a:Lcn/dbox/core/a/b;

    invoke-virtual {v0}, Lcn/dbox/core/a/b;->b()V

    .line 58
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcn/dbox/core/a/b$1;->a:Lcn/dbox/core/a/b;

    iget-object v0, v0, Lcn/dbox/core/a/b;->c:Lcn/dbox/ui/common/c;

    if-eqz v0, :cond_15

    .line 64
    iget-object v0, p0, Lcn/dbox/core/a/b$1;->a:Lcn/dbox/core/a/b;

    iget-object v0, v0, Lcn/dbox/core/a/b;->c:Lcn/dbox/ui/common/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/c;->a(Z)V

    .line 65
    iget-object v0, p0, Lcn/dbox/core/a/b$1;->a:Lcn/dbox/core/a/b;

    iget-object v0, v0, Lcn/dbox/core/a/b;->c:Lcn/dbox/ui/common/c;

    invoke-virtual {v0, p1}, Lcn/dbox/ui/common/c;->a(Ljava/lang/String;)V

    .line 67
    :cond_15
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcn/dbox/core/a/b$1;->a:Lcn/dbox/core/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/dbox/core/a/b;->a(Lcn/dbox/core/a/b;Z)Z

    .line 72
    return-void
.end method
