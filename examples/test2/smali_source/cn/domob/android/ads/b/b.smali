.class abstract Lcn/domob/android/ads/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcn/domob/android/ads/b/m;


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
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcn/domob/android/ads/b/b;->a:Ljava/util/Map;

    .line 15
    iput-object p2, p0, Lcn/domob/android/ads/b/b;->b:Lcn/domob/android/ads/b/m;

    .line 16
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 21
    iget-object v0, p0, Lcn/domob/android/ads/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    if-nez v0, :cond_d

    move v0, v1

    .line 28
    :goto_c
    return v0

    .line 26
    :cond_d
    const/16 v2, 0xa

    :try_start_f
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_14

    move-result v0

    goto :goto_c

    .line 27
    :catch_14
    move-exception v0

    move v0, v1

    .line 28
    goto :goto_c
.end method

.method abstract a()V
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcn/domob/android/ads/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected c(Ljava/lang/String;)F
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcn/domob/android/ads/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    if-nez v0, :cond_d

    move v0, v1

    .line 45
    :goto_c
    return v0

    .line 43
    :cond_d
    :try_start_d
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_10} :catch_12

    move-result v0

    goto :goto_c

    .line 44
    :catch_12
    move-exception v0

    move v0, v1

    .line 45
    goto :goto_c
.end method

.method protected d(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 51
    const-string v0, "true"

    iget-object v1, p0, Lcn/domob/android/ads/b/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
