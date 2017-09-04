.class Lcn/dbox/core/d/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/core/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/d/e;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/d/e;


# direct methods
.method constructor <init>(Lcn/dbox/core/d/e;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 182
    iget-object v0, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v0}, Lcn/dbox/core/d/e;->c(Lcn/dbox/core/d/e;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d \u3002\u3002\u3002"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    iget-object v0, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v0}, Lcn/dbox/core/d/e;->a(Lcn/dbox/core/d/e;)Lcn/dbox/core/d/e$a;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 185
    iget-object v0, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v0}, Lcn/dbox/core/d/e;->a(Lcn/dbox/core/d/e;)Lcn/dbox/core/d/e$a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v1}, Lcn/dbox/core/d/e;->b(Lcn/dbox/core/d/e;)Lcn/dbox/core/bean/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/dbox/core/d/e$a;->i(Lcn/dbox/core/bean/a;)V

    .line 187
    :cond_27
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 202
    iget-object v0, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v0}, Lcn/dbox/core/d/e;->a(Lcn/dbox/core/d/e;)Lcn/dbox/core/d/e$a;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 203
    const/16 v0, 0x200

    if-ne p1, v0, :cond_1c

    .line 204
    iget-object v0, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v0}, Lcn/dbox/core/d/e;->a(Lcn/dbox/core/d/e;)Lcn/dbox/core/d/e$a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v1}, Lcn/dbox/core/d/e;->b(Lcn/dbox/core/d/e;)Lcn/dbox/core/bean/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/dbox/core/d/e$a;->k(Lcn/dbox/core/bean/a;)V

    .line 214
    :cond_1b
    :goto_1b
    return-void

    .line 206
    :cond_1c
    const/16 v0, 0x201

    if-ne p1, v0, :cond_30

    .line 207
    iget-object v0, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v0}, Lcn/dbox/core/d/e;->a(Lcn/dbox/core/d/e;)Lcn/dbox/core/d/e$a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v1}, Lcn/dbox/core/d/e;->b(Lcn/dbox/core/d/e;)Lcn/dbox/core/bean/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/dbox/core/d/e$a;->l(Lcn/dbox/core/bean/a;)V

    goto :goto_1b

    .line 210
    :cond_30
    iget-object v0, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v0}, Lcn/dbox/core/d/e;->a(Lcn/dbox/core/d/e;)Lcn/dbox/core/d/e$a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v1}, Lcn/dbox/core/d/e;->b(Lcn/dbox/core/d/e;)Lcn/dbox/core/bean/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/dbox/core/d/e$a;->h(Lcn/dbox/core/bean/a;)V

    goto :goto_1b
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 191
    iget-object v0, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v0}, Lcn/dbox/core/d/e;->a(Lcn/dbox/core/d/e;)Lcn/dbox/core/d/e$a;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 192
    iget-object v0, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v0}, Lcn/dbox/core/d/e;->a(Lcn/dbox/core/d/e;)Lcn/dbox/core/d/e$a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v1}, Lcn/dbox/core/d/e;->b(Lcn/dbox/core/d/e;)Lcn/dbox/core/bean/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/dbox/core/d/e$a;->g(Lcn/dbox/core/bean/a;)V

    .line 195
    :cond_17
    iget-object v0, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v0}, Lcn/dbox/core/d/e;->a(Lcn/dbox/core/d/e;)Lcn/dbox/core/d/e$a;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 196
    iget-object v0, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v0}, Lcn/dbox/core/d/e;->a(Lcn/dbox/core/d/e;)Lcn/dbox/core/d/e$a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v1}, Lcn/dbox/core/d/e;->b(Lcn/dbox/core/d/e;)Lcn/dbox/core/bean/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/dbox/core/d/e$a;->m(Lcn/dbox/core/bean/a;)V

    .line 198
    :cond_2e
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v0}, Lcn/dbox/core/d/e;->a(Lcn/dbox/core/d/e;)Lcn/dbox/core/d/e$a;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 219
    iget-object v0, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v0}, Lcn/dbox/core/d/e;->a(Lcn/dbox/core/d/e;)Lcn/dbox/core/d/e$a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/d/e$3;->a:Lcn/dbox/core/d/e;

    invoke-static {v1}, Lcn/dbox/core/d/e;->b(Lcn/dbox/core/d/e;)Lcn/dbox/core/bean/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/dbox/core/d/e$a;->j(Lcn/dbox/core/bean/a;)V

    .line 221
    :cond_17
    return-void
.end method
