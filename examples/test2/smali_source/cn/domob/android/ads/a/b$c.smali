.class Lcn/domob/android/ads/a/b$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/b;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/b;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 298
    iput-object p1, p0, Lcn/domob/android/ads/a/b$c;->a:Lcn/domob/android/ads/a/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 297
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/a/b$c;->b:Ljava/lang/String;

    .line 300
    iput-object p3, p0, Lcn/domob/android/ads/a/b$c;->b:Ljava/lang/String;

    .line 301
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {}, Lcn/domob/android/ads/a/b;->b()Lcn/domob/android/i/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "excute js "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcn/domob/android/ads/a/b$c;->a:Lcn/domob/android/ads/a/b;

    invoke-static {v1}, Lcn/domob/android/ads/a/b;->d(Lcn/domob/android/ads/a/b;)Lcn/domob/android/ads/a/e;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 324
    iget-object v1, p0, Lcn/domob/android/ads/a/b$c;->a:Lcn/domob/android/ads/a/b;

    invoke-static {v1}, Lcn/domob/android/ads/a/b;->d(Lcn/domob/android/ads/a/b;)Lcn/domob/android/ads/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/a/e;->loadUrl(Ljava/lang/String;)V

    .line 326
    :cond_4e
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 304
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 305
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    .line 318
    :goto_8
    return-void

    .line 307
    :pswitch_9
    iget-object v0, p0, Lcn/domob/android/ads/a/b$c;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/b$c;->a(Ljava/lang/String;Z)V

    .line 308
    invoke-static {}, Lcn/domob/android/ads/a/b;->b()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "upload picture failed"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_8

    .line 313
    :pswitch_19
    iget-object v0, p0, Lcn/domob/android/ads/a/b$c;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/b$c;->a(Ljava/lang/String;Z)V

    .line 314
    invoke-static {}, Lcn/domob/android/ads/a/b;->b()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "upload picture successful"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_8

    .line 305
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_19
        :pswitch_9
    .end packed-switch
.end method
