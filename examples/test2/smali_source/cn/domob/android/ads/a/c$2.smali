.class Lcn/domob/android/ads/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/e;Lcn/domob/android/ads/j$c$a;Z)V
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
    .line 254
    iput-object p1, p0, Lcn/domob/android/ads/a/c$2;->a:Lcn/domob/android/ads/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/a;)V
    .registers 4

    .prologue
    .line 267
    invoke-static {}, Lcn/domob/android/ads/a/c;->v()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Both banner and expandable part are ok in current creative. Show Ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcn/domob/android/ads/a/c$2;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v0}, Lcn/domob/android/ads/a/c;->l(Lcn/domob/android/ads/a/c;)V

    .line 270
    iget-object v0, p0, Lcn/domob/android/ads/a/c$2;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v0}, Lcn/domob/android/ads/a/c;->m(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->n()Lcn/domob/android/ads/j$c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c$a;->i()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 272
    iget-object v0, p0, Lcn/domob/android/ads/a/c$2;->a:Lcn/domob/android/ads/a/c;

    iget-object v1, p0, Lcn/domob/android/ads/a/c$2;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v1}, Lcn/domob/android/ads/a/c;->n(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/j;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->n()Lcn/domob/android/ads/j$c$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/j$c$a;)V

    .line 275
    :cond_35
    return-void
.end method

.method public b(Lcn/domob/android/ads/a;)V
    .registers 5

    .prologue
    .line 279
    invoke-static {}, Lcn/domob/android/ads/a/c;->v()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "FAILED to load domob expandable view."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcn/domob/android/ads/a/c$2;->a:Lcn/domob/android/ads/a/c;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v2, "Expandable part load failed."

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/a/c;->d(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public c(Lcn/domob/android/ads/a;)V
    .registers 4

    .prologue
    .line 259
    invoke-static {}, Lcn/domob/android/ads/a/c;->v()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Timeout while loading expandable part. Show AD."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcn/domob/android/ads/a/c$2;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v0}, Lcn/domob/android/ads/a/c;->k(Lcn/domob/android/ads/a/c;)V

    .line 261
    return-void
.end method
