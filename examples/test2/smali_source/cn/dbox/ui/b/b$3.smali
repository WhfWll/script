.class Lcn/dbox/ui/b/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/core/b$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/b/b;->a(Landroid/widget/BaseAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/b/b;


# direct methods
.method constructor <init>(Lcn/dbox/ui/b/b;)V
    .registers 2

    .prologue
    .line 195
    iput-object p1, p0, Lcn/dbox/ui/b/b$3;->a:Lcn/dbox/ui/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/dbox/core/b$h;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcn/dbox/ui/b/b$3;->a:Lcn/dbox/ui/b/b;

    iput-boolean v2, v0, Lcn/dbox/ui/b/b;->l:Z

    .line 214
    iget-object v0, p0, Lcn/dbox/ui/b/b$3;->a:Lcn/dbox/ui/b/b;

    iget-object v0, v0, Lcn/dbox/ui/b/b;->b:Lcn/dbox/ui/common/f;

    if-eqz v0, :cond_1b

    .line 215
    iget-object v0, p0, Lcn/dbox/ui/b/b$3;->a:Lcn/dbox/ui/b/b;

    iget-object v0, v0, Lcn/dbox/ui/b/b;->b:Lcn/dbox/ui/common/f;

    invoke-virtual {v0}, Lcn/dbox/ui/common/f;->getFirstVisiblePosition()I

    move-result v0

    if-le v0, v2, :cond_27

    .line 216
    iget-object v0, p0, Lcn/dbox/ui/b/b$3;->a:Lcn/dbox/ui/b/b;

    invoke-virtual {v0}, Lcn/dbox/ui/b/b;->d()V

    .line 221
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcn/dbox/ui/b/b$3;->a:Lcn/dbox/ui/b/b;

    iget-object v0, v0, Lcn/dbox/ui/b/b;->w:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    iget-object v0, p0, Lcn/dbox/ui/b/b$3;->a:Lcn/dbox/ui/b/b;

    iput-boolean v1, v0, Lcn/dbox/ui/b/b;->t:Z

    .line 223
    return-void

    .line 218
    :cond_27
    iget-object v0, p0, Lcn/dbox/ui/b/b$3;->a:Lcn/dbox/ui/b/b;

    invoke-virtual {v0}, Lcn/dbox/ui/b/b;->e()V

    goto :goto_1b
.end method

.method public a(Lcn/dbox/core/bean/g;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/dbox/core/bean/g;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    .line 203
    iget-object v2, p0, Lcn/dbox/ui/b/b$3;->a:Lcn/dbox/ui/b/b;

    iget-object v2, v2, Lcn/dbox/ui/b/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 205
    :cond_19
    iget-object v0, p0, Lcn/dbox/ui/b/b$3;->a:Lcn/dbox/ui/b/b;

    iget-object v0, v0, Lcn/dbox/ui/b/b;->w:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    iget-object v0, p0, Lcn/dbox/ui/b/b$3;->a:Lcn/dbox/ui/b/b;

    iput-boolean v3, v0, Lcn/dbox/ui/b/b;->t:Z

    .line 207
    return-void
.end method
