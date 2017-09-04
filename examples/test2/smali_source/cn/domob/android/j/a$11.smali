.class Lcn/domob/android/j/a$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/a;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/j/a;


# direct methods
.method constructor <init>(Lcn/domob/android/j/a;)V
    .registers 2

    .prologue
    .line 406
    iput-object p1, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 8
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const-wide/16 v4, 0x0

    .line 409
    invoke-static {}, Lcn/domob/android/j/a;->m()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Video playback is complete"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/j/a;->b(Lcn/domob/android/j/a;Z)Z

    .line 411
    iget-object v0, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->k(Lcn/domob/android/j/a;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 412
    iget-object v0, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->l(Lcn/domob/android/j/a;)V

    .line 414
    :cond_1e
    iget-object v0, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->j(Lcn/domob/android/j/a;)Lcn/domob/android/j/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/domob/android/j/d;->c(Z)V

    .line 415
    iget-object v0, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->m(Lcn/domob/android/j/a;)Lcn/domob/android/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/b;->a()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 416
    iget-object v0, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->m(Lcn/domob/android/j/a;)Lcn/domob/android/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/b;->b()J

    move-result-wide v0

    .line 417
    cmp-long v2, v0, v4

    if-gtz v2, :cond_48

    .line 418
    iget-object v0, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-virtual {v0}, Lcn/domob/android/j/a;->g()V

    .line 434
    :cond_47
    :goto_47
    return-void

    .line 419
    :cond_48
    cmp-long v2, v0, v4

    if-lez v2, :cond_47

    .line 420
    iget-object v2, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-static {v2}, Lcn/domob/android/j/a;->n(Lcn/domob/android/j/a;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 421
    iget-object v2, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-static {v2}, Lcn/domob/android/j/a;->o(Lcn/domob/android/j/a;)Z

    .line 423
    :cond_59
    iget-object v2, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-static {v2}, Lcn/domob/android/j/a;->q(Lcn/domob/android/j/a;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-static {v3}, Lcn/domob/android/j/a;->p(Lcn/domob/android/j/a;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    iget-object v0, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->j(Lcn/domob/android/j/a;)Lcn/domob/android/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/d;->f()V

    .line 425
    iget-object v0, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->j(Lcn/domob/android/j/a;)Lcn/domob/android/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/d;->d()V

    goto :goto_47

    .line 428
    :cond_7b
    iget-object v0, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->n(Lcn/domob/android/j/a;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 429
    iget-object v0, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->o(Lcn/domob/android/j/a;)Z

    .line 431
    :cond_88
    iget-object v0, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->j(Lcn/domob/android/j/a;)Lcn/domob/android/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/d;->f()V

    .line 432
    iget-object v0, p0, Lcn/domob/android/j/a$11;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->j(Lcn/domob/android/j/a;)Lcn/domob/android/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/d;->d()V

    goto :goto_47
.end method
