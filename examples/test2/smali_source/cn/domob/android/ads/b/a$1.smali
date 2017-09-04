.class Lcn/domob/android/ads/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/b/a;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/j$c;

.field final synthetic b:Lcn/domob/android/ads/b/a;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/b/a;Lcn/domob/android/ads/j$c;)V
    .registers 3

    .prologue
    .line 85
    iput-object p1, p0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    iput-object p2, p0, Lcn/domob/android/ads/b/a$1;->a:Lcn/domob/android/ads/j$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 88
    new-instance v0, Lcn/domob/android/ads/b/m;

    iget-object v1, p0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    invoke-static {v1}, Lcn/domob/android/ads/b/a;->a(Lcn/domob/android/ads/b/a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/b/m;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    invoke-static {v2}, Lcn/domob/android/ads/b/a;->b(Lcn/domob/android/ads/b/a;)Lcn/domob/android/ads/k;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/k;->a()I

    move-result v2

    iget-object v3, p0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    invoke-static {v3}, Lcn/domob/android/ads/b/a;->c(Lcn/domob/android/ads/b/a;)Lcn/domob/android/ads/k;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/k;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b/m;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v1, p0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    invoke-static {v1, v0}, Lcn/domob/android/ads/b/a;->a(Lcn/domob/android/ads/b/a;Landroid/view/View;)Landroid/view/View;

    .line 93
    new-instance v1, Lcn/domob/android/ads/b/a$1$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/b/a$1$1;-><init>(Lcn/domob/android/ads/b/a$1;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b/m;->a(Lcn/domob/android/ads/a$b;)V

    .line 117
    new-instance v1, Lcn/domob/android/ads/b/a$1$2;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/b/a$1$2;-><init>(Lcn/domob/android/ads/b/a$1;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b/m;->a(Lcn/domob/android/ads/a$a;)V

    .line 126
    new-instance v1, Lcn/domob/android/ads/b/a$1$3;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/b/a$1$3;-><init>(Lcn/domob/android/ads/b/a$1;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b/m;->a(Lcn/domob/android/ads/b/m$a;)V

    .line 146
    iget-object v1, p0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b/m;->a(Lcn/domob/android/ads/a/d$b;)V

    .line 149
    new-instance v1, Lcn/domob/android/ads/b/a$1$4;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/b/a$1$4;-><init>(Lcn/domob/android/ads/b/a$1;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b/m;->a(Lcn/domob/android/ads/b/m$g;)V

    .line 160
    new-instance v1, Lcn/domob/android/ads/b/a$1$5;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/b/a$1$5;-><init>(Lcn/domob/android/ads/b/a$1;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b/m;->a(Lcn/domob/android/ads/b/m$f;)V

    .line 172
    iget-object v1, p0, Lcn/domob/android/ads/b/a$1;->a:Lcn/domob/android/ads/j$c;

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->k()Ljava/lang/String;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_d4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d4

    .line 175
    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 176
    invoke-static {}, Lcn/domob/android/ads/b/a;->n()Lcn/domob/android/i/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get an MRAID view instance and load with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/b/a$1;->a:Lcn/domob/android/ads/j$c;

    invoke-virtual {v3}, Lcn/domob/android/ads/j$c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcn/domob/android/ads/b/a$1;->a:Lcn/domob/android/ads/j$c;

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_99
    :goto_99
    return-void

    .line 178
    :cond_9a
    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 181
    invoke-static {}, Lcn/domob/android/ads/b/a;->n()Lcn/domob/android/i/f;

    move-result-object v1

    const-string v2, "Get an MRAID view instance and load data = [%s] with base URL=[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/domob/android/ads/b/a$1;->a:Lcn/domob/android/ads/j$c;

    invoke-virtual {v5}, Lcn/domob/android/ads/j$c;->m()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcn/domob/android/ads/b/a$1;->a:Lcn/domob/android/ads/j$c;

    invoke-virtual {v5}, Lcn/domob/android/ads/j$c;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcn/domob/android/ads/b/a$1;->a:Lcn/domob/android/ads/j$c;

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/b/a$1;->a:Lcn/domob/android/ads/j$c;

    invoke-virtual {v2}, Lcn/domob/android/ads/j$c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    .line 187
    :cond_d4
    invoke-static {}, Lcn/domob/android/ads/b/a;->n()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Content type is not available."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v2, "Content type is illegal."

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/b/a;->c(Lcn/domob/android/ads/b/a;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    goto :goto_99
.end method
