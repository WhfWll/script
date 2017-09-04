.class Lcn/domob/android/ads/C$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/C;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/domob/android/ads/C;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/C;Landroid/app/Dialog;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 322
    iput-object p1, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    iput-object p2, p0, Lcn/domob/android/ads/C$1;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcn/domob/android/ads/C$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 325
    iget-object v0, p0, Lcn/domob/android/ads/C$1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 328
    iget-object v0, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    invoke-static {v0}, Lcn/domob/android/ads/C;->a(Lcn/domob/android/ads/C;)Lcn/domob/android/ads/g;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 329
    iget-object v0, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    invoke-static {v0}, Lcn/domob/android/ads/C;->a(Lcn/domob/android/ads/C;)Lcn/domob/android/ads/g;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    invoke-static {v1}, Lcn/domob/android/ads/C;->b(Lcn/domob/android/ads/C;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    invoke-static {v2}, Lcn/domob/android/ads/C;->c(Lcn/domob/android/ads/C;)I

    move-result v2

    iget-object v3, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    invoke-static {v3}, Lcn/domob/android/ads/C;->d(Lcn/domob/android/ads/C;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/android/ads/g;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    :cond_28
    iget-object v0, p0, Lcn/domob/android/ads/C$1;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 334
    iget-object v0, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    iget-object v1, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    invoke-static {v1}, Lcn/domob/android/ads/C;->e(Lcn/domob/android/ads/C;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    invoke-static {v2}, Lcn/domob/android/ads/C;->f(Lcn/domob/android/ads/C;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    invoke-static {v3}, Lcn/domob/android/ads/C;->b(Lcn/domob/android/ads/C;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    invoke-static {v4}, Lcn/domob/android/ads/C;->c(Lcn/domob/android/ads/C;)I

    move-result v4

    iget-object v5, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    invoke-static {v5}, Lcn/domob/android/ads/C;->d(Lcn/domob/android/ads/C;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcn/domob/android/ads/C;->a(Lcn/domob/android/ads/C;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 338
    :goto_56
    return-void

    .line 336
    :cond_57
    iget-object v0, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    iget-object v1, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    invoke-static {v1}, Lcn/domob/android/ads/C;->e(Lcn/domob/android/ads/C;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    invoke-static {v2}, Lcn/domob/android/ads/C;->f(Lcn/domob/android/ads/C;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    invoke-static {v3}, Lcn/domob/android/ads/C;->b(Lcn/domob/android/ads/C;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    invoke-static {v4}, Lcn/domob/android/ads/C;->c(Lcn/domob/android/ads/C;)I

    move-result v4

    iget-object v5, p0, Lcn/domob/android/ads/C$1;->c:Lcn/domob/android/ads/C;

    invoke-static {v5}, Lcn/domob/android/ads/C;->d(Lcn/domob/android/ads/C;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/android/ads/C$1;->b:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcn/domob/android/ads/C;->a(Lcn/domob/android/ads/C;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_56
.end method
