.class Lcn/dbox/ui/b/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/core/a/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/b/d;->a(Landroid/content/Context;Ljava/lang/String;Lcn/dbox/core/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/b/d;


# direct methods
.method constructor <init>(Lcn/dbox/ui/b/d;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcn/dbox/ui/b/d$2;->a:Lcn/dbox/ui/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 147
    iget-object v0, p0, Lcn/dbox/ui/b/d$2;->a:Lcn/dbox/ui/b/d;

    iget-object v0, v0, Lcn/dbox/ui/b/d;->f:Lcn/dbox/ui/b/d$a;

    if-eqz v0, :cond_d

    .line 148
    iget-object v0, p0, Lcn/dbox/ui/b/d$2;->a:Lcn/dbox/ui/b/d;

    iget-object v0, v0, Lcn/dbox/ui/b/d;->f:Lcn/dbox/ui/b/d$a;

    invoke-interface {v0}, Lcn/dbox/ui/b/d$a;->a()V

    .line 150
    :cond_d
    iget-object v0, p0, Lcn/dbox/ui/b/d$2;->a:Lcn/dbox/ui/b/d;

    iget-object v0, v0, Lcn/dbox/ui/b/d;->e:Lcn/dbox/core/b;

    iget-object v1, p0, Lcn/dbox/ui/b/d$2;->a:Lcn/dbox/ui/b/d;

    iget-object v1, v1, Lcn/dbox/ui/b/d;->c:Ljava/lang/String;

    sget-object v2, Lcn/dbox/core/b$b;->e:Lcn/dbox/core/b$b;

    const-string v3, "http://srp.12306.moxz.net/landing/"

    invoke-virtual {v0, v1, v2, v3}, Lcn/dbox/core/b;->a(Ljava/lang/String;Lcn/dbox/core/b$b;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 156
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 161
    return-void
.end method
