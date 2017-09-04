.class Lcn/dbox/ui/a$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/a$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/a$4;


# direct methods
.method constructor <init>(Lcn/dbox/ui/a$4;)V
    .registers 2

    .prologue
    .line 199
    iput-object p1, p0, Lcn/dbox/ui/a$4$2;->a:Lcn/dbox/ui/a$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcn/dbox/ui/a$4$2;->a:Lcn/dbox/ui/a$4;

    iget-object v0, v0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->d(Lcn/dbox/ui/a;)Lcn/dbox/ui/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/dbox/ui/b/b;->a()I

    move-result v3

    .line 205
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 207
    :goto_13
    if-ge v1, v3, :cond_47

    iget-object v0, p0, Lcn/dbox/ui/a$4$2;->a:Lcn/dbox/ui/a$4;

    iget-object v0, v0, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

    .line 209
    iget-object v0, p0, Lcn/dbox/ui/a$4$2;->a:Lcn/dbox/ui/a$4;

    iget-object v0, v0, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0, v1}, Lcn/dbox/core/bean/a;->a(I)V

    .line 211
    iget-object v0, p0, Lcn/dbox/ui/a$4$2;->a:Lcn/dbox/ui/a$4;

    iget-object v0, v0, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 216
    :cond_47
    iget-object v0, p0, Lcn/dbox/ui/a$4$2;->a:Lcn/dbox/ui/a$4;

    iget-object v0, v0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->d(Lcn/dbox/ui/a;)Lcn/dbox/ui/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/dbox/ui/b/b;->b()I

    move-result v3

    move v1, v2

    .line 217
    :goto_54
    if-ge v1, v3, :cond_94

    iget-object v0, p0, Lcn/dbox/ui/a$4$2;->a:Lcn/dbox/ui/a$4;

    iget-object v0, v0, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->k()Lcn/dbox/core/bean/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/dbox/core/bean/d$a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_94

    .line 218
    iget-object v0, p0, Lcn/dbox/ui/a$4$2;->a:Lcn/dbox/ui/a$4;

    iget-object v0, v0, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->k()Lcn/dbox/core/bean/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/dbox/core/bean/d$a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0, v2}, Lcn/dbox/core/bean/a;->a(I)V

    .line 219
    iget-object v0, p0, Lcn/dbox/ui/a$4$2;->a:Lcn/dbox/ui/a$4;

    iget-object v0, v0, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->k()Lcn/dbox/core/bean/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/dbox/core/bean/d$a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_54

    .line 222
    :cond_94
    iget-object v0, p0, Lcn/dbox/ui/a$4$2;->a:Lcn/dbox/ui/a$4;

    iget-object v0, v0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    iget-object v1, p0, Lcn/dbox/ui/a$4$2;->a:Lcn/dbox/ui/a$4;

    iget-object v1, v1, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v1}, Lcn/dbox/core/bean/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcn/dbox/ui/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcn/dbox/ui/a$4$2;->a:Lcn/dbox/ui/a$4;

    iget-object v0, v0, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 227
    iget-object v0, p0, Lcn/dbox/ui/a$4$2;->a:Lcn/dbox/ui/a$4;

    iget-object v0, v0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    iget-object v0, v0, Lcn/dbox/ui/a;->d:Lcn/dbox/core/b;

    iget-object v1, p0, Lcn/dbox/ui/a$4$2;->a:Lcn/dbox/ui/a$4;

    iget-object v1, v1, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    sget-object v2, Lcn/dbox/core/b$b;->e:Lcn/dbox/core/b$b;

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/b;->a(Lcn/dbox/core/bean/d;Lcn/dbox/core/b$b;)V

    .line 229
    :cond_c2
    return-void
.end method
