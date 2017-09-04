.class final Lcn/domob/android/ads/b/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/b/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Lcn/domob/android/ads/b/m;)Lcn/domob/android/ads/b/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/domob/android/ads/b/m;",
            ")",
            "Lcn/domob/android/ads/b/b;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Lcn/domob/android/ads/b/c;

    invoke-direct {v0, p1, p2}, Lcn/domob/android/ads/b/c;-><init>(Ljava/util/Map;Lcn/domob/android/ads/b/m;)V

    return-object v0
.end method
