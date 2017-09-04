.class Lcn/domob/android/ads/a$4;
.super Lcn/domob/android/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a;)V
    .registers 2

    .prologue
    .line 290
    iput-object p1, p0, Lcn/domob/android/ads/a$4;->a:Lcn/domob/android/ads/a;

    invoke-direct {p0}, Lcn/domob/android/f/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 294
    iget-object v0, p0, Lcn/domob/android/ads/a$4;->a:Lcn/domob/android/ads/a;

    invoke-static {v0}, Lcn/domob/android/ads/a;->h(Lcn/domob/android/ads/a;)Lcn/domob/android/f/g;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/f/g;->a()Lcn/domob/android/f/h;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcn/domob/android/f/h;->d()I

    move-result v0

    .line 296
    invoke-static {}, Lcn/domob/android/ads/a;->b()Lcn/domob/android/i/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView data downloading status code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 297
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_5a

    const/16 v1, 0x190

    if-ge v0, v1, :cond_5a

    .line 299
    invoke-static {}, Lcn/domob/android/ads/a;->b()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download HTML data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcn/domob/android/ads/a$4;->a:Lcn/domob/android/ads/a;

    invoke-virtual {v0}, Lcn/domob/android/ads/a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/a$4$1;

    invoke-direct {v1, p0, p1}, Lcn/domob/android/ads/a$4$1;-><init>(Lcn/domob/android/ads/a$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 307
    :cond_5a
    return-void
.end method
