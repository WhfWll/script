.class Lcn/dbox/ui/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/ui/a/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/b/a;->a(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;)Lcn/dbox/ui/common/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/bean/d;

.field final synthetic b:Lcn/dbox/ui/b/a;


# direct methods
.method constructor <init>(Lcn/dbox/ui/b/a;Lcn/dbox/core/bean/d;)V
    .registers 3

    .prologue
    .line 79
    iput-object p1, p0, Lcn/dbox/ui/b/a$2;->b:Lcn/dbox/ui/b/a;

    iput-object p2, p0, Lcn/dbox/ui/b/a$2;->a:Lcn/dbox/core/bean/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IJ)V
    .registers 10

    .prologue
    .line 83
    iget-object v0, p0, Lcn/dbox/ui/b/a$2;->b:Lcn/dbox/ui/b/a;

    iget-object v0, v0, Lcn/dbox/ui/b/a;->e:Lcn/dbox/ui/d/a;

    if-eqz v0, :cond_34

    .line 84
    iget-object v0, p0, Lcn/dbox/ui/b/a$2;->b:Lcn/dbox/ui/b/a;

    iget-object v0, v0, Lcn/dbox/ui/b/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_35

    .line 85
    iget-object v0, p0, Lcn/dbox/ui/b/a$2;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    .line 87
    invoke-virtual {v0, p2}, Lcn/dbox/core/bean/a;->a(I)V

    .line 88
    iget-object v1, p0, Lcn/dbox/ui/b/a$2;->b:Lcn/dbox/ui/b/a;

    iget-object v1, v1, Lcn/dbox/ui/b/a;->e:Lcn/dbox/ui/d/a;

    sget-object v2, Lcn/dbox/core/b$d;->c:Lcn/dbox/core/b$d;

    iget-object v3, p0, Lcn/dbox/ui/b/a$2;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v3}, Lcn/dbox/core/bean/d;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/dbox/ui/b/a$2;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v4}, Lcn/dbox/core/bean/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Lcn/dbox/ui/d/a;->a(Lcn/dbox/core/bean/a;Lcn/dbox/core/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_34
    :goto_34
    return-void

    .line 94
    :cond_35
    const v0, -0xc0a08

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_34
.end method
