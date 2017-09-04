.class Lcn/domob/android/ads/a/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/e;Lcn/domob/android/ads/j$c$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/e;

.field final synthetic b:Lcn/domob/android/ads/a/c;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/a/e;)V
    .registers 3

    .prologue
    .line 288
    iput-object p1, p0, Lcn/domob/android/ads/a/c$3;->b:Lcn/domob/android/ads/a/c;

    iput-object p2, p0, Lcn/domob/android/ads/a/c$3;->a:Lcn/domob/android/ads/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/a;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 292
    const-string v0, "domob"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 293
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 296
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 297
    iget-object v0, p0, Lcn/domob/android/ads/a/c$3;->b:Lcn/domob/android/ads/a/c;

    invoke-static {v0}, Lcn/domob/android/ads/a/c;->o(Lcn/domob/android/ads/a/c;)V

    .line 303
    :goto_1d
    return-void

    .line 302
    :cond_1e
    iget-object v0, p0, Lcn/domob/android/ads/a/c$3;->b:Lcn/domob/android/ads/a/c;

    iget-object v1, p0, Lcn/domob/android/ads/a/c$3;->a:Lcn/domob/android/ads/a/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcn/domob/android/ads/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    goto :goto_1d
.end method
