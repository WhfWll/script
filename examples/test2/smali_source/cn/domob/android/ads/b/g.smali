.class Lcn/domob/android/ads/b/g;
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
    .line 88
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/b/b;-><init>(Ljava/util/Map;Lcn/domob/android/ads/b/m;)V

    .line 89
    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .prologue
    .line 92
    const-string v0, "shouldUseCustomClose"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b/g;->d(Ljava/lang/String;)Z

    move-result v0

    .line 93
    iget-object v1, p0, Lcn/domob/android/ads/b/g;->b:Lcn/domob/android/ads/b/m;

    invoke-virtual {v1}, Lcn/domob/android/ads/b/m;->c()Lcn/domob/android/ads/b/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/b/h;->b(Z)V

    .line 94
    return-void
.end method
