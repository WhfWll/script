.class Lcn/domob/android/ads/G$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/G;->a(Lcn/domob/android/ads/G$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/G;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/G;)V
    .registers 2

    .prologue
    .line 322
    iput-object p1, p0, Lcn/domob/android/ads/G$5;->a:Lcn/domob/android/ads/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 325
    iget-object v0, p0, Lcn/domob/android/ads/G$5;->a:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->q()V

    .line 326
    return-void
.end method
