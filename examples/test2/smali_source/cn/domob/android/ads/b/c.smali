.class Lcn/domob/android/ads/b/c;
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
    .line 57
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/b/b;-><init>(Ljava/util/Map;Lcn/domob/android/ads/b/m;)V

    .line 58
    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcn/domob/android/ads/b/c;->b:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->c()Lcn/domob/android/ads/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/b/h;->d()V

    .line 62
    return-void
.end method
