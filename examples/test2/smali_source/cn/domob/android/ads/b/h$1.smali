.class Lcn/domob/android/ads/b/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/b/h;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/b/h;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcn/domob/android/ads/b/h$1;->a:Lcn/domob/android/ads/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 63
    iget-object v0, p0, Lcn/domob/android/ads/b/h$1;->a:Lcn/domob/android/ads/b/h;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/h;->e()Z

    move-result v0

    .line 64
    iget-object v1, p0, Lcn/domob/android/ads/b/h$1;->a:Lcn/domob/android/ads/b/h;

    invoke-static {v1}, Lcn/domob/android/ads/b/h;->a(Lcn/domob/android/ads/b/h;)Z

    move-result v1

    if-eq v1, v0, :cond_26

    .line 65
    iget-object v1, p0, Lcn/domob/android/ads/b/h$1;->a:Lcn/domob/android/ads/b/h;

    invoke-static {v1, v0}, Lcn/domob/android/ads/b/h;->a(Lcn/domob/android/ads/b/h;Z)Z

    .line 66
    iget-object v0, p0, Lcn/domob/android/ads/b/h$1;->a:Lcn/domob/android/ads/b/h;

    invoke-static {v0}, Lcn/domob/android/ads/b/h;->b(Lcn/domob/android/ads/b/h;)Lcn/domob/android/ads/b/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b/h$1;->a:Lcn/domob/android/ads/b/h;

    invoke-static {v1}, Lcn/domob/android/ads/b/h;->a(Lcn/domob/android/ads/b/h;)Z

    move-result v1

    invoke-static {v1}, Lcn/domob/android/ads/b/n;->a(Z)Lcn/domob/android/ads/b/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b/m;->a(Lcn/domob/android/ads/b/j;)V

    .line 69
    :cond_26
    iget-object v0, p0, Lcn/domob/android/ads/b/h$1;->a:Lcn/domob/android/ads/b/h;

    invoke-static {v0}, Lcn/domob/android/ads/b/h;->c(Lcn/domob/android/ads/b/h;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void
.end method
