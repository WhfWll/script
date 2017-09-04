.class Lcn/domob/android/j/e$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/j/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/j/e;

.field private b:I


# direct methods
.method constructor <init>(Lcn/domob/android/j/e;)V
    .registers 3

    .prologue
    .line 116
    iput-object p1, p0, Lcn/domob/android/j/e$c;->a:Lcn/domob/android/j/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/android/j/e$c;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 121
    :goto_0
    iget v0, p0, Lcn/domob/android/j/e$c;->b:I

    iget-object v1, p0, Lcn/domob/android/j/e$c;->a:Lcn/domob/android/j/e;

    invoke-static {v1}, Lcn/domob/android/j/e;->d(Lcn/domob/android/j/e;)I

    move-result v1

    if-ge v0, v1, :cond_27

    iget-object v0, p0, Lcn/domob/android/j/e$c;->a:Lcn/domob/android/j/e;

    invoke-static {v0}, Lcn/domob/android/j/e;->e(Lcn/domob/android/j/e;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 123
    const-wide/16 v0, 0x3e8

    :try_start_14
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 124
    iget v0, p0, Lcn/domob/android/j/e$c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/domob/android/j/e$c;->b:I
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_0

    .line 125
    :catch_1e
    move-exception v0

    .line 126
    invoke-static {}, Lcn/domob/android/j/e;->a()Lcn/domob/android/i/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    :cond_27
    iget v0, p0, Lcn/domob/android/j/e$c;->b:I

    iget-object v1, p0, Lcn/domob/android/j/e$c;->a:Lcn/domob/android/j/e;

    invoke-static {v1}, Lcn/domob/android/j/e;->d(Lcn/domob/android/j/e;)I

    move-result v1

    if-ne v0, v1, :cond_6d

    iget-object v0, p0, Lcn/domob/android/j/e$c;->a:Lcn/domob/android/j/e;

    invoke-static {v0}, Lcn/domob/android/j/e;->e(Lcn/domob/android/j/e;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 131
    iget-object v0, p0, Lcn/domob/android/j/e$c;->a:Lcn/domob/android/j/e;

    invoke-static {v0}, Lcn/domob/android/j/e;->a(Lcn/domob/android/j/e;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 132
    invoke-static {}, Lcn/domob/android/j/e;->a()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "WebView \u52a0\u8f7d\u8d85\u65f6"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcn/domob/android/j/e$c;->a:Lcn/domob/android/j/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/j/e;->b(Lcn/domob/android/j/e;Z)Z

    .line 134
    iget-object v0, p0, Lcn/domob/android/j/e$c;->a:Lcn/domob/android/j/e;

    invoke-static {v0}, Lcn/domob/android/j/e;->f(Lcn/domob/android/j/e;)V

    .line 135
    iget-object v0, p0, Lcn/domob/android/j/e$c;->a:Lcn/domob/android/j/e;

    invoke-static {v0}, Lcn/domob/android/j/e;->g(Lcn/domob/android/j/e;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 136
    iget-object v0, p0, Lcn/domob/android/j/e$c;->a:Lcn/domob/android/j/e;

    invoke-virtual {v0}, Lcn/domob/android/j/e;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/j/e$c$1;

    invoke-direct {v1, p0}, Lcn/domob/android/j/e$c$1;-><init>(Lcn/domob/android/j/e$c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    :cond_6d
    return-void
.end method
