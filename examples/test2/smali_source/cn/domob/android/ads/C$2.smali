.class Lcn/domob/android/ads/C$2;
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

.field final synthetic b:Lcn/domob/android/ads/C;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/C;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 355
    iput-object p1, p0, Lcn/domob/android/ads/C$2;->b:Lcn/domob/android/ads/C;

    iput-object p2, p0, Lcn/domob/android/ads/C$2;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 358
    iget-object v0, p0, Lcn/domob/android/ads/C$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 360
    iget-object v0, p0, Lcn/domob/android/ads/C$2;->b:Lcn/domob/android/ads/C;

    invoke-static {v0}, Lcn/domob/android/ads/C;->a(Lcn/domob/android/ads/C;)Lcn/domob/android/ads/g;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 361
    iget-object v0, p0, Lcn/domob/android/ads/C$2;->b:Lcn/domob/android/ads/C;

    invoke-static {v0}, Lcn/domob/android/ads/C;->a(Lcn/domob/android/ads/C;)Lcn/domob/android/ads/g;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/C$2;->b:Lcn/domob/android/ads/C;

    invoke-static {v1}, Lcn/domob/android/ads/C;->b(Lcn/domob/android/ads/C;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/C$2;->b:Lcn/domob/android/ads/C;

    invoke-static {v2}, Lcn/domob/android/ads/C;->c(Lcn/domob/android/ads/C;)I

    move-result v2

    iget-object v3, p0, Lcn/domob/android/ads/C$2;->b:Lcn/domob/android/ads/C;

    invoke-static {v3}, Lcn/domob/android/ads/C;->d(Lcn/domob/android/ads/C;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/android/ads/g;->c(Ljava/lang/String;ILjava/lang/String;)V

    .line 363
    :cond_28
    return-void
.end method
