.class Lcn/dbox/ui/b/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/core/a/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/b/g;->a(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/b/g;


# direct methods
.method constructor <init>(Lcn/dbox/ui/b/g;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcn/dbox/ui/b/g$3;->a:Lcn/dbox/ui/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcn/dbox/ui/b/g$3;->a:Lcn/dbox/ui/b/g;

    iget-object v0, v0, Lcn/dbox/ui/b/g;->z:Lcn/dbox/ui/b/g$a;

    if-eqz v0, :cond_d

    .line 176
    iget-object v0, p0, Lcn/dbox/ui/b/g$3;->a:Lcn/dbox/ui/b/g;

    iget-object v0, v0, Lcn/dbox/ui/b/g;->z:Lcn/dbox/ui/b/g$a;

    invoke-interface {v0}, Lcn/dbox/ui/b/g$a;->a()V

    .line 178
    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 183
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 188
    return-void
.end method
