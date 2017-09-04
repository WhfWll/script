.class Lcn/domob/android/ads/b/d;
.super Lcn/domob/android/ads/b/b;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/util/Map;Lcn/domob/android/ads/b/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/domob/android/ads/b/m;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/b/b;-><init>(Ljava/util/Map;Lcn/domob/android/ads/b/m;)V

    .line 68
    return-void
.end method


# virtual methods
.method a()V
    .registers 7

    .prologue
    .line 71
    const-string v0, "w"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b/d;->a(Ljava/lang/String;)I

    move-result v2

    .line 72
    const-string v0, "h"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b/d;->a(Ljava/lang/String;)I

    move-result v3

    .line 73
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string v0, "shouldUseCustomClose"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b/d;->d(Ljava/lang/String;)Z

    move-result v4

    .line 75
    const-string v0, "lockOrientation"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b/d;->d(Ljava/lang/String;)Z

    move-result v5

    .line 77
    if-gtz v2, :cond_28

    .line 78
    iget-object v0, p0, Lcn/domob/android/ads/b/d;->b:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->c()Lcn/domob/android/ads/b/h;

    move-result-object v0

    iget v2, v0, Lcn/domob/android/ads/b/h;->c:I

    .line 79
    :cond_28
    if-gtz v3, :cond_32

    .line 80
    iget-object v0, p0, Lcn/domob/android/ads/b/d;->b:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->c()Lcn/domob/android/ads/b/h;

    move-result-object v0

    iget v3, v0, Lcn/domob/android/ads/b/h;->d:I

    .line 82
    :cond_32
    iget-object v0, p0, Lcn/domob/android/ads/b/d;->b:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->c()Lcn/domob/android/ads/b/h;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/b/h;->a(Ljava/lang/String;IIZZ)V

    .line 83
    return-void
.end method
