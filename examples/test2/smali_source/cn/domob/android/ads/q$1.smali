.class Lcn/domob/android/ads/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/q;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcn/domob/android/ads/q;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/q;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 169
    iput-object p1, p0, Lcn/domob/android/ads/q$1;->b:Lcn/domob/android/ads/q;

    iput-object p2, p0, Lcn/domob/android/ads/q$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcn/domob/android/ads/q$1;->b:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 172
    iget-object v0, p0, Lcn/domob/android/ads/q$1;->b:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/q$1;->b:Lcn/domob/android/ads/q;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/q$a;->j(Lcn/domob/android/ads/q;)V

    .line 176
    :cond_13
    iget-object v0, p0, Lcn/domob/android/ads/q$1;->b:Lcn/domob/android/ads/q;

    invoke-static {v0}, Lcn/domob/android/ads/q;->b(Lcn/domob/android/ads/q;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/q$1;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method
