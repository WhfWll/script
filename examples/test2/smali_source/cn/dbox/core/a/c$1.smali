.class Lcn/dbox/core/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/a/c;->g()Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/a/c;


# direct methods
.method constructor <init>(Lcn/dbox/core/a/c;)V
    .registers 2

    .prologue
    .line 300
    iput-object p1, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    const/4 v5, -0x1

    .line 306
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {}, Lcn/dbox/core/a/c;->c()Lcn/dbox/core/h/d;

    move-result-object v1

    iget-object v2, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "----on Download start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcn/dbox/core/a/c;->d()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 313
    const/4 v0, 0x0

    .line 314
    iget-object v1, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v1}, Lcn/dbox/core/a/c;->a(Lcn/dbox/core/a/c;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_4c

    .line 315
    iget-object v0, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->a(Lcn/dbox/core/a/c;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 317
    :cond_4c
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_ed

    .line 318
    :cond_54
    iget-object v0, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/dbox/core/a/c;->a(Lcn/dbox/core/a/c;Z)Z

    .line 319
    iget-object v0, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->b(Lcn/dbox/core/a/c;)V

    .line 320
    iget-object v0, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->a(Lcn/dbox/core/a/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Loading video..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 323
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v1}, Lcn/dbox/core/a/c;->a(Lcn/dbox/core/a/c;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030007

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 325
    new-instance v1, Lcn/dbox/core/a/c$1$1;

    invoke-direct {v1, p0}, Lcn/dbox/core/a/c$1$1;-><init>(Lcn/dbox/core/a/c$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 345
    new-instance v1, Landroid/widget/VideoView;

    iget-object v2, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v2}, Lcn/dbox/core/a/c;->a(Lcn/dbox/core/a/c;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 346
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 347
    new-instance v2, Landroid/widget/MediaController;

    iget-object v3, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v3}, Lcn/dbox/core/a/c;->a(Lcn/dbox/core/a/c;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 348
    invoke-virtual {v2, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 349
    invoke-virtual {v2, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 350
    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 351
    new-instance v2, Lcn/dbox/core/a/c$1$2;

    invoke-direct {v2, p0}, Lcn/dbox/core/a/c$1$2;-><init>(Lcn/dbox/core/a/c$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 361
    new-instance v2, Lcn/dbox/core/a/c$1$3;

    invoke-direct {v2, p0, v0}, Lcn/dbox/core/a/c$1$3;-><init>(Lcn/dbox/core/a/c$1;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 369
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v3}, Lcn/dbox/core/a/c;->a(Lcn/dbox/core/a/c;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 370
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 371
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 378
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 380
    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 383
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 384
    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 385
    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 407
    :cond_ec
    :goto_ec
    return-void

    .line 387
    :cond_ed
    invoke-static {}, Lcn/dbox/core/a/c;->c()Lcn/dbox/core/h/d;

    move-result-object v0

    const-string v1, "should not alert a dialog now"

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    goto :goto_ec

    .line 393
    :cond_f7
    iget-object v0, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->e(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_112

    .line 394
    iget-object v0, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->e(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$b;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v1}, Lcn/dbox/core/a/c;->d(Lcn/dbox/core/a/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    iget-object v2, v2, Lcn/dbox/core/a/c;->b:Lcn/dbox/core/bean/a;

    invoke-interface {v0, p1, v1, v2}, Lcn/dbox/core/a/c$b;->a(Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/bean/a;)V

    .line 398
    :cond_112
    iget-object v0, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->f(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$c;

    move-result-object v0

    if-eqz v0, :cond_12d

    .line 399
    iget-object v0, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->f(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$c;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v1}, Lcn/dbox/core/a/c;->d(Lcn/dbox/core/a/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    iget-object v2, v2, Lcn/dbox/core/a/c;->c:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lcn/dbox/core/a/c$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_12d
    iget-object v0, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->g(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$a;

    move-result-object v0

    if-eqz v0, :cond_ec

    .line 403
    iget-object v0, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->g(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v1}, Lcn/dbox/core/a/c;->d(Lcn/dbox/core/a/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    iget-object v2, v2, Lcn/dbox/core/a/c;->d:Lcn/dbox/core/bean/d;

    invoke-interface {v0, p1, v1, v2}, Lcn/dbox/core/a/c$a;->a(Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/bean/d;)V

    goto :goto_ec
.end method
