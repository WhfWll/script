.class Lcn/domob/android/ads/G$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/j/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/G;->b(Lcn/domob/android/ads/G$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/G$a;

.field final synthetic b:Lcn/domob/android/ads/G;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/G;Lcn/domob/android/ads/G$a;)V
    .registers 3

    .prologue
    .line 398
    iput-object p1, p0, Lcn/domob/android/ads/G$7;->b:Lcn/domob/android/ads/G;

    iput-object p2, p0, Lcn/domob/android/ads/G$7;->a:Lcn/domob/android/ads/G$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 402
    iget-object v0, p0, Lcn/domob/android/ads/G$7;->b:Lcn/domob/android/ads/G;

    invoke-static {v0}, Lcn/domob/android/ads/G;->b(Lcn/domob/android/ads/G;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 403
    iget-object v0, p0, Lcn/domob/android/ads/G$7;->b:Lcn/domob/android/ads/G;

    iget-object v1, p0, Lcn/domob/android/ads/G$7;->a:Lcn/domob/android/ads/G$a;

    invoke-static {v0, v1}, Lcn/domob/android/ads/G;->a(Lcn/domob/android/ads/G;Lcn/domob/android/ads/G$a;)V

    .line 404
    :cond_f
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcn/domob/android/ads/G$7;->b:Lcn/domob/android/ads/G;

    invoke-static {v0}, Lcn/domob/android/ads/G;->b(Lcn/domob/android/ads/G;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 409
    iget-object v0, p0, Lcn/domob/android/ads/G$7;->b:Lcn/domob/android/ads/G;

    invoke-static {v0}, Lcn/domob/android/ads/G;->a(Lcn/domob/android/ads/G;)V

    .line 410
    :cond_d
    return-void
.end method
