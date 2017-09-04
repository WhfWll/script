.class Lcn/domob/android/ads/a/d$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/d$7;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/d$7;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/d$7;)V
    .registers 2

    .prologue
    .line 302
    iput-object p1, p0, Lcn/domob/android/ads/a/d$7$1;->a:Lcn/domob/android/ads/a/d$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 305
    invoke-static {}, Lcn/domob/android/ads/a/d;->b()Lcn/domob/android/i/f;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/d$7$1;->a:Lcn/domob/android/ads/a/d$7;

    iget-object v1, v1, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    const-string v2, "Video dialog dismissed."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcn/domob/android/ads/a/d$7$1;->a:Lcn/domob/android/ads/a/d$7;

    iget-object v0, v0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/a/d;Z)Z

    .line 308
    iget-object v0, p0, Lcn/domob/android/ads/a/d$7$1;->a:Lcn/domob/android/ads/a/d$7;

    iget-object v0, v0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->g(Lcn/domob/android/ads/a/d;)V

    .line 311
    iget-object v0, p0, Lcn/domob/android/ads/a/d$7$1;->a:Lcn/domob/android/ads/a/d$7;

    iget-object v0, v0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->h(Lcn/domob/android/ads/a/d;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 314
    iget-object v0, p0, Lcn/domob/android/ads/a/d$7$1;->a:Lcn/domob/android/ads/a/d$7;

    iget-object v0, v0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->i(Lcn/domob/android/ads/a/d;)V

    .line 315
    :cond_2d
    return-void
.end method
