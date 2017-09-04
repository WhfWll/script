.class Lcn/dbox/ui/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/ui/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/a;


# direct methods
.method constructor <init>(Lcn/dbox/ui/a;)V
    .registers 2

    .prologue
    .line 311
    iput-object p1, p0, Lcn/dbox/ui/a$7;->a:Lcn/dbox/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 315
    invoke-static {}, Lcn/dbox/ui/a;->e()Lcn/dbox/core/h/d;

    move-result-object v0

    const-string v1, "onClickBack"

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcn/dbox/ui/a$7;->a:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->g(Lcn/dbox/ui/a;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 317
    iget-object v0, p0, Lcn/dbox/ui/a$7;->a:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->g(Lcn/dbox/ui/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 319
    :cond_1a
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 323
    invoke-static {}, Lcn/dbox/ui/a;->e()Lcn/dbox/core/h/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickSendMessage:message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 325
    if-eqz p1, :cond_3f

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_3f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_4d

    .line 327
    :cond_3f
    iget-object v0, p0, Lcn/dbox/ui/a$7;->a:Lcn/dbox/ui/a;

    iget-object v0, v0, Lcn/dbox/ui/a;->k:Landroid/content/Context;

    const-string v1, "\u7559\u8a00\u4e3a\u7a7a\u6216\u7559\u8a00\u592a\u591a\u6216\u8054\u7cfb\u65b9\u5f0f\u592a\u591a"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 334
    :goto_4c
    return-void

    .line 329
    :cond_4d
    iget-object v0, p0, Lcn/dbox/ui/a$7;->a:Lcn/dbox/ui/a;

    iget-object v0, v0, Lcn/dbox/ui/a;->k:Landroid/content/Context;

    const-string v1, "\u53d1\u9001\u6210\u529f"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 330
    iget-object v0, p0, Lcn/dbox/ui/a$7;->a:Lcn/dbox/ui/a;

    sget-object v1, Lcn/dbox/core/b$o;->d:Lcn/dbox/core/b$o;

    invoke-static {v0, v1, p1, p2}, Lcn/dbox/ui/a;->a(Lcn/dbox/ui/a;Lcn/dbox/core/b$o;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c
.end method

.method public b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Lcn/dbox/ui/a$7;->a:Lcn/dbox/ui/a;

    sget-object v1, Lcn/dbox/core/b$o;->c:Lcn/dbox/core/b$o;

    invoke-static {v0, v1, v2, v2}, Lcn/dbox/ui/a;->a(Lcn/dbox/ui/a;Lcn/dbox/core/b$o;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    const-string v1, "mailto:duobaowu@163.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 345
    iget-object v1, p0, Lcn/dbox/ui/a$7;->a:Lcn/dbox/ui/a;

    iget-object v1, v1, Lcn/dbox/ui/a;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 346
    iget-object v0, p0, Lcn/dbox/ui/a$7;->a:Lcn/dbox/ui/a;

    sget-object v1, Lcn/dbox/core/b$o;->e:Lcn/dbox/core/b$o;

    invoke-static {v0, v1, v2, v2}, Lcn/dbox/ui/a;->a(Lcn/dbox/ui/a;Lcn/dbox/core/b$o;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method
