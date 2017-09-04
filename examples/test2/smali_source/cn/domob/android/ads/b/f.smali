.class Lcn/domob/android/ads/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/b/f$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/i/f;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/b/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 9
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/b/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/b/f;->a:Lcn/domob/android/i/f;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/domob/android/ads/b/f;->b:Ljava/util/Map;

    .line 13
    sget-object v0, Lcn/domob/android/ads/b/f;->b:Ljava/util/Map;

    const-string v1, "close"

    new-instance v2, Lcn/domob/android/ads/b/f$1;

    invoke-direct {v2}, Lcn/domob/android/ads/b/f$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcn/domob/android/ads/b/f;->b:Ljava/util/Map;

    const-string v1, "expand"

    new-instance v2, Lcn/domob/android/ads/b/f$2;

    invoke-direct {v2}, Lcn/domob/android/ads/b/f$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcn/domob/android/ads/b/f;->b:Ljava/util/Map;

    const-string v1, "usecustomclose"

    new-instance v2, Lcn/domob/android/ads/b/f$3;

    invoke-direct {v2}, Lcn/domob/android/ads/b/f$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcn/domob/android/ads/b/f;->b:Ljava/util/Map;

    const-string v1, "open"

    new-instance v2, Lcn/domob/android/ads/b/f$4;

    invoke-direct {v2}, Lcn/domob/android/ads/b/f$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/util/Map;Lcn/domob/android/ads/b/m;)Lcn/domob/android/ads/b/b;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 39
    sget-object v0, Lcn/domob/android/ads/b/f;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create MRAID command with:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcn/domob/android/ads/b/f;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/b/f$a;

    .line 41
    if-eqz v0, :cond_27

    invoke-interface {v0, p1, p2}, Lcn/domob/android/ads/b/f$a;->a(Ljava/util/Map;Lcn/domob/android/ads/b/m;)Lcn/domob/android/ads/b/b;

    move-result-object v0

    :goto_26
    return-object v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method
