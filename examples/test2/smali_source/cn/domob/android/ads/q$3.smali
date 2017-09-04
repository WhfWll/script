.class Lcn/domob/android/ads/q$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/q;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/q;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/q;)V
    .registers 2

    .prologue
    .line 219
    iput-object p1, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 222
    iget-object v0, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->b(Lcn/domob/android/ads/q;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d \u3002\u3002\u3002"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 223
    iget-object v0, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 224
    iget-object v0, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/q$a;->e(Lcn/domob/android/ads/q;)V

    .line 226
    :cond_23
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 241
    iget-object v0, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 242
    const/16 v0, 0x200

    if-ne p1, v0, :cond_18

    .line 243
    iget-object v0, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/q$a;->g(Lcn/domob/android/ads/q;)V

    .line 251
    :cond_17
    :goto_17
    return-void

    .line 244
    :cond_18
    const/16 v0, 0x201

    if-ne p1, v0, :cond_28

    .line 245
    iget-object v0, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/q$a;->h(Lcn/domob/android/ads/q;)V

    goto :goto_17

    .line 248
    :cond_28
    iget-object v0, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/q$a;->d(Lcn/domob/android/ads/q;)V

    goto :goto_17
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 262
    iget-object v0, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 263
    iget-object v0, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/q$a;->i(Lcn/domob/android/ads/q;)V

    .line 265
    :cond_13
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 230
    iget-object v0, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 231
    iget-object v0, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/q$a;->c(Lcn/domob/android/ads/q;)V

    .line 234
    :cond_13
    iget-object v0, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 235
    iget-object v0, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/q$a;->j(Lcn/domob/android/ads/q;)V

    .line 237
    :cond_26
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 256
    iget-object v0, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/q$3;->a:Lcn/domob/android/ads/q;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/q$a;->f(Lcn/domob/android/ads/q;)V

    .line 258
    :cond_13
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .registers 4

    .prologue
    .line 269
    return-void
.end method
