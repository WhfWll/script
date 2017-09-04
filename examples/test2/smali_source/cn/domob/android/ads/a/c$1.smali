.class Lcn/domob/android/ads/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/c;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/j$c;

.field final synthetic b:Lcn/domob/android/ads/a/c;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/j$c;)V
    .registers 3

    .prologue
    .line 150
    iput-object p1, p0, Lcn/domob/android/ads/a/c$1;->b:Lcn/domob/android/ads/a/c;

    iput-object p2, p0, Lcn/domob/android/ads/a/c$1;->a:Lcn/domob/android/ads/j$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 153
    new-instance v0, Lcn/domob/android/ads/a/e;

    iget-object v1, p0, Lcn/domob/android/ads/a/c$1;->b:Lcn/domob/android/ads/a/c;

    invoke-static {v1}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/c;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "banner"

    invoke-direct {v0, v1, v2, v5}, Lcn/domob/android/ads/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 154
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcn/domob/android/ads/a/c$1;->b:Lcn/domob/android/ads/a/c;

    invoke-static {v2}, Lcn/domob/android/ads/a/c;->b(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/k;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/k;->a()I

    move-result v2

    iget-object v3, p0, Lcn/domob/android/ads/a/c$1;->b:Lcn/domob/android/ads/a/c;

    invoke-static {v3}, Lcn/domob/android/ads/a/c;->c(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/k;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/k;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v1, p0, Lcn/domob/android/ads/a/c$1;->b:Lcn/domob/android/ads/a/c;

    invoke-static {v1, v0}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/c;Landroid/view/View;)Landroid/view/View;

    .line 156
    iget-object v1, p0, Lcn/domob/android/ads/a/c$1;->b:Lcn/domob/android/ads/a/c;

    invoke-static {v1}, Lcn/domob/android/ads/a/c;->d(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/g;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/g;->G()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 157
    iget-object v1, p0, Lcn/domob/android/ads/a/c$1;->b:Lcn/domob/android/ads/a/c;

    invoke-static {v1}, Lcn/domob/android/ads/a/c;->e(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/j;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->J()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a/e;->a(I)V

    .line 160
    :cond_4e
    new-instance v1, Lcn/domob/android/ads/a/c$1$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/c$1$1;-><init>(Lcn/domob/android/ads/a/c$1;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a/e;->a(Lcn/domob/android/ads/a$b;)V

    .line 204
    new-instance v1, Lcn/domob/android/ads/a/c$1$2;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/c$1$2;-><init>(Lcn/domob/android/ads/a/c$1;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a/e;->a(Lcn/domob/android/ads/a$a;)V

    .line 213
    iget-object v1, p0, Lcn/domob/android/ads/a/c$1;->a:Lcn/domob/android/ads/j$c;

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->k()Ljava/lang/String;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_d8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d8

    .line 216
    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 217
    invoke-static {}, Lcn/domob/android/ads/a/c;->v()Lcn/domob/android/i/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get an DomobWebView instance and load with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/a/c$1;->a:Lcn/domob/android/ads/j$c;

    invoke-virtual {v3}, Lcn/domob/android/ads/j$c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcn/domob/android/ads/a/c$1;->a:Lcn/domob/android/ads/j$c;

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_9e
    :goto_9e
    return-void

    .line 219
    :cond_9f
    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 222
    invoke-static {}, Lcn/domob/android/ads/a/c;->v()Lcn/domob/android/i/f;

    move-result-object v1

    const-string v2, "Get an DomobWebView instance and load data = [%s] with base URL=[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/domob/android/ads/a/c$1;->a:Lcn/domob/android/ads/j$c;

    invoke-virtual {v4}, Lcn/domob/android/ads/j$c;->m()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcn/domob/android/ads/a/c$1;->a:Lcn/domob/android/ads/j$c;

    invoke-virtual {v5}, Lcn/domob/android/ads/j$c;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcn/domob/android/ads/a/c$1;->a:Lcn/domob/android/ads/j$c;

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/c$1;->a:Lcn/domob/android/ads/j$c;

    invoke-virtual {v2}, Lcn/domob/android/ads/j$c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9e

    .line 227
    :cond_d8
    invoke-static {}, Lcn/domob/android/ads/a/c;->v()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Content type is not available."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcn/domob/android/ads/a/c$1;->b:Lcn/domob/android/ads/a/c;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v2, "Content type is illegal."

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/a/c;->c(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    goto :goto_9e
.end method
