.class Lcn/domob/android/ads/a/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/b;->a(Lcn/domob/android/ads/a/e;)Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/b;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/b;)V
    .registers 2

    .prologue
    .line 373
    iput-object p1, p0, Lcn/domob/android/ads/a/b$3;->a:Lcn/domob/android/ads/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 376
    iget-object v0, p0, Lcn/domob/android/ads/a/b$3;->a:Lcn/domob/android/ads/a/b;

    invoke-static {v0}, Lcn/domob/android/ads/a/b;->e(Lcn/domob/android/ads/a/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 377
    return-void
.end method
