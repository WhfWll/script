.class Lcn/domob/android/ads/a/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/v$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/j$c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/c;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/c;)V
    .registers 2

    .prologue
    .line 355
    iput-object p1, p0, Lcn/domob/android/ads/a/c$4;->a:Lcn/domob/android/ads/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 359
    iget-object v0, p0, Lcn/domob/android/ads/a/c$4;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v0}, Lcn/domob/android/ads/a/c;->h(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/a/e;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 360
    iget-object v0, p0, Lcn/domob/android/ads/a/c$4;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v0}, Lcn/domob/android/ads/a/c;->h(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/a/e;

    move-result-object v0

    const-string v1, "javascript:(window.domobjs && window.domobjs.onDismiss) ? domobjs.onDismiss() : null"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a/e;->loadUrl(Ljava/lang/String;)V

    .line 364
    :cond_13
    iget-object v0, p0, Lcn/domob/android/ads/a/c$4;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v0}, Lcn/domob/android/ads/a/c;->p(Lcn/domob/android/ads/a/c;)V

    .line 366
    return-void
.end method
