.class Lcn/domob/android/j/a$12;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/a;->z()V
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
    .line 485
    iput-object p1, p0, Lcn/domob/android/j/a$12;->a:Lcn/domob/android/j/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 490
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/j/a$12;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->c(Lcn/domob/android/j/a;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 491
    iget-object v0, p0, Lcn/domob/android/j/a$12;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->r(Lcn/domob/android/j/a;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 492
    iget-object v0, p0, Lcn/domob/android/j/a$12;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->c(Lcn/domob/android/j/a;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 493
    iget-object v1, p0, Lcn/domob/android/j/a$12;->a:Lcn/domob/android/j/a;

    invoke-static {v1}, Lcn/domob/android/j/a;->s(Lcn/domob/android/j/a;)I

    move-result v1

    .line 494
    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    .line 495
    iget-object v1, p0, Lcn/domob/android/j/a$12;->a:Lcn/domob/android/j/a;

    invoke-static {v1}, Lcn/domob/android/j/a;->j(Lcn/domob/android/j/a;)Lcn/domob/android/j/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/j/d;->a(I)V

    .line 505
    :cond_2c
    :goto_2c
    return-void

    .line 498
    :cond_2d
    iget-object v0, p0, Lcn/domob/android/j/a$12;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->t(Lcn/domob/android/j/a;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 499
    iget-object v0, p0, Lcn/domob/android/j/a$12;->a:Lcn/domob/android/j/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/android/j/a;->a(Lcn/domob/android/j/a;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_2c

    .line 501
    :catch_3d
    move-exception v0

    .line 502
    invoke-static {}, Lcn/domob/android/j/a;->m()Lcn/domob/android/i/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_2c
.end method
