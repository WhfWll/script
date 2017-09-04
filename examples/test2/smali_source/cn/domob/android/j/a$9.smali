.class Lcn/domob/android/j/a$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 363
    iput-object p1, p0, Lcn/domob/android/j/a$9;->a:Lcn/domob/android/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 367
    iget-object v0, p0, Lcn/domob/android/j/a$9;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->c(Lcn/domob/android/j/a;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 368
    invoke-static {}, Lcn/domob/android/j/a;->m()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "video prepared"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcn/domob/android/j/a$9;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->d(Lcn/domob/android/j/a;)V

    .line 373
    iget-object v0, p0, Lcn/domob/android/j/a$9;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->e(Lcn/domob/android/j/a;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 374
    iget-object v0, p0, Lcn/domob/android/j/a$9;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->c(Lcn/domob/android/j/a;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 378
    :goto_27
    iget-object v0, p0, Lcn/domob/android/j/a$9;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->c(Lcn/domob/android/j/a;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/j/a$9;->a:Lcn/domob/android/j/a;

    invoke-static {v1}, Lcn/domob/android/j/a;->f(Lcn/domob/android/j/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 379
    iget-object v0, p0, Lcn/domob/android/j/a$9;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->g(Lcn/domob/android/j/a;)I

    move-result v0

    if-gtz v0, :cond_4f

    .line 380
    iget-object v0, p0, Lcn/domob/android/j/a$9;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->c(Lcn/domob/android/j/a;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 381
    if-lez v0, :cond_4f

    .line 382
    iget-object v1, p0, Lcn/domob/android/j/a$9;->a:Lcn/domob/android/j/a;

    invoke-static {v1, v0}, Lcn/domob/android/j/a;->a(Lcn/domob/android/j/a;I)I

    .line 385
    :cond_4f
    iget-object v0, p0, Lcn/domob/android/j/a$9;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->h(Lcn/domob/android/j/a;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 386
    invoke-static {}, Lcn/domob/android/j/a;->m()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/j/a$9;->a:Lcn/domob/android/j/a;

    invoke-static {v2}, Lcn/domob/android/j/a;->c(Lcn/domob/android/j/a;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcn/domob/android/j/a$9;->a:Lcn/domob/android/j/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/j/a;->a(Lcn/domob/android/j/a;Z)Z

    .line 393
    iget-object v0, p0, Lcn/domob/android/j/a$9;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->i(Lcn/domob/android/j/a;)V

    .line 396
    :cond_86
    return-void

    .line 376
    :cond_87
    iget-object v0, p0, Lcn/domob/android/j/a$9;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->c(Lcn/domob/android/j/a;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_27
.end method
